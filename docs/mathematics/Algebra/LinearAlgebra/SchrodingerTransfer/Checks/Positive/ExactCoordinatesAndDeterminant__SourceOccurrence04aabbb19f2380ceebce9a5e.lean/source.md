# Complete source: GRWTSK.LinearAlgebra.SchrodingerTransfer.Checks.Positive.ExactCoordinatesAndDeterminant

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `91307f3d0226dcbecfbc7961dbfd734d54d6eccc` · SHA-256 `30b877518e43d16112176b24468c530f44834f7cb9fca30729306582a97058a8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.LinearAlgebra.SchrodingerTransfer
open GRWTSK.LinearAlgebra.SchrodingerTransfer
example {R : Type*} [CommRing R] (E V previous current next : R) : next + previous + V * current = E * current ↔ rawState next current = (schrodingerTransfer E V).mulVec (rawState current previous) := schrodinger_recurrence_iff_transfer E V previous current next
example {R : Type*} [CommRing R] (E V : R) : (schrodingerTransfer E V).det = 1 := det_schrodingerTransfer E V
example : (schrodingerSL (0 : ℚ) 0 : Matrix (Fin 2) (Fin 2) ℚ) ≠ (schrodingerSL (1 : ℚ) 0 : Matrix (Fin 2) (Fin 2) ℚ) := schrodinger_same_SL_syntax_not_equal
```
