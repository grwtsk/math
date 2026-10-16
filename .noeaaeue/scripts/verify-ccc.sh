#!/bin/sh
# Fresh scoped CCC source checks; installed pinned dependency objects only.
set -eu
cd "$(CDPATH= cd -- "$(dirname -- "$0")/../.." && pwd)"
exec python3 .noeaaeue/scripts/verify_ccc_control_soundness.py "$@"
