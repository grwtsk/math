# Complete source: GRWTSK.Algebra.LinearAlgebra.MatrixTheory.Checks.Negative.TraceRankZeroSecondMoment

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5ce3c23007d27b8de730c255637db49a54e39d56` · SHA-256 `86ba14d1dceb4d822ca182034a89bbcebe654bc5640ec8168b3cd2fbccd9001a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Intentionally rejected: the zero Hermitian matrix does not have strictly
positive second moment. The intended false inequality is 0 < 0. -/
import GRWTSK.Algebra.LinearAlgebra.MatrixTheory.TraceRank

example : 0 < (((0 : Matrix Unit Unit ℂ) ^ 2).trace).re := by
  have hv : (((0 : Matrix Unit Unit ℂ) ^ 2).trace).re = 0 := by simp
  rw [hv]
  exact (show (0 : ℝ) ≤ 0 from le_rfl)
```
