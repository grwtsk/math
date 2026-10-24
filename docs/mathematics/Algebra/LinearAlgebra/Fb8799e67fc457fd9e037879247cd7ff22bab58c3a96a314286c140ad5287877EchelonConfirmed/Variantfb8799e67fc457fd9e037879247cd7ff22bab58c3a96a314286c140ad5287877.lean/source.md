# Complete source: GRWTSK.Algebra.LinearAlgebra.Fb8799e67fc457fd9e037879247cd7ff22bab58c3a96a314286c140ad5287877EchelonConfirmed.Variantfb8799e67fc457fd9e037879247cd7ff22bab58c3a96a314286c140ad5287877

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7eb7a9f05337fa1b6bc135249de2c5abe59ab2b4` · SHA-256 `fb8799e67fc457fd9e037879247cd7ff22bab58c3a96a314286c140ad5287877`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.LinearAlgebra.Matrix.Echelon.Decomposition
set_option pp.universes true
set_option pp.fullNames true
set_option pp.maxSteps 100000
#check @Matrix.IsPivotedBy
#check @Matrix.IsPivotedBy.rank_eq
#check @Echelon.Decomposition
#check @Echelon.Decomposition.mk
#check @Echelon.Decomposition.rank_eq
```
