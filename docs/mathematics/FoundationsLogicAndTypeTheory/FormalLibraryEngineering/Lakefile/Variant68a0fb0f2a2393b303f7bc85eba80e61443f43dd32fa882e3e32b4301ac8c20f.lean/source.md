# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lakefile.Variant68a0fb0f2a2393b303f7bc85eba80e61443f43dd32fa882e3e32b4301ac8c20f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b2ba7444d7d5b0dbc5e48d1b494133256a4ecc07` · SHA-256 `68a0fb0f2a2393b303f7bc85eba80e61443f43dd32fa882e3e32b4301ac8c20f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Lake
open Lake DSL

package «fcrs» where
  version := v!"0.4.0"

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git" @
  "905b95818eb32af7874a58b427f50c1711a5e96c"

@[default_target]
lean_lib FCRS
```
