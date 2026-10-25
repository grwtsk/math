# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lakefile.Varianta8ad702a1e131ece23d80b499e63b26d4965fa177c6b0384d3d6e4a7e5ef535a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ae20d50566770ac509f44d9426a8c63abf3f6350` · SHA-256 `a8ad702a1e131ece23d80b499e63b26d4965fa177c6b0384d3d6e4a7e5ef535a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Lake
open Lake DSL

set_option autoImplicit false

package «finite-witness-residue» where

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git" @ "v4.30.0"

@[default_target]
lean_lib Think where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/originals/a94ce7c66063deb0cc6d98a0a248c5e787f9336973280de2d038c65b75034e5e"
```
