#!/bin/sh

export CC_ALIASES="/usr/bin/cc"
export AS_ALIASES="/usr/bin/as"
export AR_ALIASES="/usr/bin/ar"
export LD_ALIASES="/usr/bin/ld"

# To be adapted to local setup
PATH=/opt/local/bin:${PATH}
ECLAIR_PATH=${ECLAIR_PATH:-/opt/bugseng/eclair/bin/}

case "${ECLAIR_PATH}" in
*/) ;;
"") ;;
*)
    ECLAIR_PATH=${ECLAIR_PATH}/
    ;;
esac

export ECLAIR_PATH
