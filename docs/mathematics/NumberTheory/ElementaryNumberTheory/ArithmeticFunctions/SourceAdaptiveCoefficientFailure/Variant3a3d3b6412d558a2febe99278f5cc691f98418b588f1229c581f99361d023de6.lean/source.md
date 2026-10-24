# Complete source: GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.SourceAdaptiveCoefficientFailure.Variant3a3d3b6412d558a2febe99278f5cc691f98418b588f1229c581f99361d023de6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c63e9040743ed3b8c73d2b3a0c3a5373adead541` · SHA-256 `3a3d3b6412d558a2febe99278f5cc691f98418b588f1229c581f99361d023de6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceAdaptiveSignedCoefficientRows
import Mathlib.NumberTheory.ArithmeticFunction.VonMangoldt

/-! Exact failure of a direct multiplicative identification of the existing
closed rectangle coefficient. This does not rule out a different proved lift.
Direction: grwtsk contributors. Formal construction: OpenAI Codex. -/
set_option autoImplicit false

namespace RH16AdaptiveCoefficientFailure

open ArithmeticFunction RH16AdaptiveSignedCoefficients

theorem rectangle_four_thirteen_five : truncatedConvolution 4 13 5 = Real.log 5 := by
  norm_num [truncatedConvolution, Finset.sum_Icc_succ_top,
    vonMangoldt_apply_prime (by norm_num : Nat.Prime 5)]

theorem rectangle_four_thirteen_seven : truncatedConvolution 4 13 7 = Real.log 7 := by
  norm_num [truncatedConvolution, Finset.sum_Icc_succ_top,
    vonMangoldt_apply_prime (by norm_num : Nat.Prime 7)]

theorem rectangle_four_thirteen_thirty_five : truncatedConvolution 4 13 35 = 0 := by
  norm_num [truncatedConvolution, Finset.sum_Icc_succ_top]

theorem rectangle_four_thirteen_nonzero_factors :
    truncatedConvolution 4 13 5 * truncatedConvolution 4 13 7 ≠ 0 := by
  rw [rectangle_four_thirteen_five, rectangle_four_thirteen_seven]
  exact ne_of_gt (mul_pos (Real.log_pos (by norm_num)) (Real.log_pos (by norm_num)))

theorem rectangle_four_thirteen_not_multiplicative :
    truncatedConvolution 4 13 (5 * 7) ≠
      truncatedConvolution 4 13 5 * truncatedConvolution 4 13 7 := by
  norm_num only [show (5 * 7 : ℕ) = 35 by norm_num,
    rectangle_four_thirteen_thirty_five]
  exact Ne.symm rectangle_four_thirteen_nonzero_factors

end RH16AdaptiveCoefficientFailure
```
