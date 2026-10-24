# Complete source: GRWTSK.LinearAlgebra.SchrodingerTransfer.Checks.Negative.IdentifyDistinctSLElements

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3f6d40f3eba49865c3804fa03db001c4f9070b2a` · SHA-256 `dbbf4e260ebcf35a6bdaa603c527e14a40dfff1affe5d7c64d0b6c5ff87624e2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.LinearAlgebra.SchrodingerTransfer
open GRWTSK.LinearAlgebra.SchrodingerTransfer
example : (schrodingerSL (0 : ℚ) 0 : Matrix (Fin 2) (Fin 2) ℚ) = (schrodingerSL (1 : ℚ) 0 : Matrix (Fin 2) (Fin 2) ℚ) := by rfl
```
