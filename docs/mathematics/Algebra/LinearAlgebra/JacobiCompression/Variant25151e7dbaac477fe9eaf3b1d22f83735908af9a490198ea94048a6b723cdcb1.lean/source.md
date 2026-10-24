# Complete source: GRWTSK.Algebra.LinearAlgebra.JacobiCompression.Variant25151e7dbaac477fe9eaf3b1d22f83735908af9a490198ea94048a6b723cdcb1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f66f45beffbbb048f1e5e6350d9da9c40addc361` · SHA-256 `25151e7dbaac477fe9eaf3b1d22f83735908af9a490198ea94048a6b723cdcb1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.QSeries.OnePrimeMoment
import Mathlib.Data.Matrix.Basic

/-!
# Exact Jacobi compression data
-/

namespace Mathematics.SemiLocalDefect.QSeries

open scoped BigOperators

abbrev RationalMatrix (rank : Nat) :=
  Matrix (Fin rank) (Fin rank) ℚ

def rationalQuadraticForm
    {rank : Nat}
    (matrix : RationalMatrix rank)
    (vector : Fin rank → ℚ) : ℚ :=
  ∑ row, ∑ column,
    vector row * matrix row column * vector column

structure JacobiCompression
    (system : OnePrimeMomentSystem)
    (rank : Nat) where
  defect : RationalMatrix rank
  symmetric :
    ∀ row column,
      defect row column =
        defect column row
  exactEvaluation :
    ∀ row column,
      defect row column =
        (system.moment
          (row.val + column.val)).evaluateThrough
            rank system.q
  compressionDigest : CompressionId

end Mathematics.SemiLocalDefect.QSeries
```
