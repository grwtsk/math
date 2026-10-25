# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lakefile.Variant9adaafba337dca0fdc2efe671ce6fdd3d05a5ff02ea2402c4cbfbd17a0eefacd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f3dea3353207c443172e37c6806cc7859202eaa6` · SHA-256 `9adaafba337dca0fdc2efe671ce6fdd3d05a5ff02ea2402c4cbfbd17a0eefacd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Lake
open Lake DSL

package think where

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git" @ "v4.30.0"

lean_lib Think where
  srcDir := "lib/rendering/shader/core/lean"
  roots := #[`Think]
```
