# Complete source: GRWTSK.Algebra.LinearAlgebra.SchrodingerTransfer.Checks.Positive.ExactCoordinatesAndDeterminant

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a93820b4ab2500005172b708ce10106cd7adce1e` · SHA-256 `7191d351f69b0c3226aee484ebe106c79a26991d1e9bae7c4187f335bc3d4882`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Algebra.LinearAlgebra.SchrodingerTransfer
open GRWTSK.LinearAlgebra.SchrodingerTransfer
example {R : Type*} [CommRing R] (E V previous current next : R) : next + previous + V * current = E * current ↔ rawState next current = (schrodingerTransfer E V).mulVec (rawState current previous) := schrodinger_recurrence_iff_transfer E V previous current next
example {R : Type*} [CommRing R] (E V : R) : (schrodingerTransfer E V).det = 1 := det_schrodingerTransfer E V
example : (schrodingerSL (0 : ℚ) 0 : Matrix (Fin 2) (Fin 2) ℚ) ≠ (schrodingerSL (1 : ℚ) 0 : Matrix (Fin 2) (Fin 2) ℚ) := schrodinger_same_SL_syntax_not_equal
```
