# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lakefile.Variantff6c54a67be717e1b796a794a447ecf9c647ac1c5f5efbfa541ab9e29744d676

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0105ac0586bf7f409653e469edc38bdcd6cc92fd` · SHA-256 `ff6c54a67be717e1b796a794a447ecf9c647ac1c5f5efbfa541ab9e29744d676`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Lake
open Lake DSL

set_option autoImplicit false

package «finite-witness-residue» where

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git" @ "v4.30.0"

@[default_target]
lean_lib Think where
```
