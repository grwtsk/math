#!/bin/sh
set -eu

cd "$(git rev-parse --show-toplevel)"

echo "== toolchain =="
cat lean-toolchain

echo "== dependency manifest =="
test -f lake-manifest.json

echo "== build =="
lake build --wfail

echo "== theorem registry and axiom audit =="
sh scripts/verify-registry.sh

echo "== lint =="
lake lint

echo "== git diff =="
git diff --check

echo "formal-research: verification gates passed"
