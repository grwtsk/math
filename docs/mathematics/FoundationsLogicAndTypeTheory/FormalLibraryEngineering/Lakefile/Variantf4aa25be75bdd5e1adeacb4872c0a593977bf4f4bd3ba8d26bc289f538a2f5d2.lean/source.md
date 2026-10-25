# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lakefile.Variantf4aa25be75bdd5e1adeacb4872c0a593977bf4f4bd3ba8d26bc289f538a2f5d2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `53c4036234ca5a51f980c97c081bbb3fbf341654` · SHA-256 `f4aa25be75bdd5e1adeacb4872c0a593977bf4f4bd3ba8d26bc289f538a2f5d2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Lake
open Lake DSL

package «cord-single-entry» where
  version := v!"1.0.0"

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git" @ "v4.32.2"

@[default_target]
lean_lib CordTheory

lean_exe cordTheoryCheck where
  root := `Main
```
