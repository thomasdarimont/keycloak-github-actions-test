#!/usr/bin/env bash

set -o errexit
set -o nounset
set -o pipefail

: "${PR_TITLE:?Environment variable must be set}"

main() {
    
    if [[ ! "$PR_TITLE" =~ ^KEYCLOAK\-[0-9]{1,5}[[:space:]].{1,120}$ ]]; then
        echo "PR title must start with KEYCLOAK-issue followed by a space and a message! Example: 'KEYCLOAK-1234 Adds new feature'." >&2
        exit 1
    fi
}

main
