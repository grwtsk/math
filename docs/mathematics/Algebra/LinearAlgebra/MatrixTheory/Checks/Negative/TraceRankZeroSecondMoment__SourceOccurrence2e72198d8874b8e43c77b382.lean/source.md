# Complete source: GRWTSK.LinearAlgebra.Matrix.Checks.Negative.TraceRankZeroSecondMoment

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c89157140f0246314af869533374405f20d7e4a3` · SHA-256 `34a74d31f85952e588e39a8070cd3fe1b1174b4d7330c63959aeb45b6792bf4e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Intentionally rejected: the zero Hermitian matrix does not have strictly
positive second moment. The intended false inequality is 0 < 0. -/
import GRWTSK.LinearAlgebra.Matrix.TraceRank

example : 0 < (((0 : Matrix Unit Unit ℂ) ^ 2).trace).re := by
  have hv : (((0 : Matrix Unit Unit ℂ) ^ 2).trace).re = 0 := by simp
  rw [hv]
  exact (show (0 : ℝ) ≤ 0 from le_rfl)
```
