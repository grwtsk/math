# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Declarations.Variant7566aa7e911e232c2eb85dc3c2ad164121d5db30ca15b7dfa2f750d3a3eb3634

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `999d34a0e023641b604c782822dbfe0aad2a1985` · SHA-256 `7566aa7e911e232c2eb85dc3c2ad164121d5db30ca15b7dfa2f750d3a3eb3634`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
