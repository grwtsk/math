# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.19e30ba1297f831fd01704a3a3d47d7a51bf60ea27b69fad5fa4e4fa3587b32aSourceAdaptiveCo.Variant942f8e31262b56b418b8a799757772f27e99c4573b4475a6d8e0d235dfa5b17e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `992cecdf17d3334f714770ea340fb9293a6d8fcb` · SHA-256 `942f8e31262b56b418b8a799757772f27e99c4573b4475a6d8e0d235dfa5b17e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceAdaptiveSignedCoefficientRows
import Mathlib.NumberTheory.ArithmeticFunction.VonMangoldt
import Mathlib.Analysis.Complex.ExponentialBounds

/-! Exact failure of a direct multiplicative identification of the existing
closed rectangle coefficient. This does not rule out a different proved lift.
Direction: grwtsk contributors. Formal construction: OpenAI Codex. -/
set_option autoImplicit false

namespace RH16AdaptiveCoefficientFailure

open ArithmeticFunction RH16AdaptiveSignedCoefficients
open RH16AdaptiveVaughan
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateVaughanSource EstimateSourceMobiusKernel

theorem exp_four_between : (54 : ℝ) < Real.exp 4 ∧ Real.exp 4 < 55 := by
  have he : Real.exp 4 = (Real.exp 1) ^ 4 := by
    rw [← Real.exp_nat_mul]
    norm_num
  rw [he]
  constructor
  · calc
      (54 : ℝ) < (2.7182818283 : ℝ) ^ 4 := by norm_num
      _ ≤ (Real.exp 1) ^ 4 := by
        gcongr
        exact Real.exp_one_gt_d9.le
  · calc
      (Real.exp 1) ^ 4 ≤ (2.7182818286 : ℝ) ^ 4 := by
        gcongr
        exact Real.exp_one_lt_d9.le
      _ < 55 := by norm_num

theorem source_cutoff_two : sourceKernelCutoff 2 = 54 := by
  unfold sourceKernelCutoff
  change ⌊Real.exp (2 * 2)⌋₊ = 54
  norm_num only [show (2 * 2 : ℝ) = 4 by norm_num]
  exact Nat.floor_eq_iff (by positivity) |>.2
    ⟨exp_four_between.1.le,
      by
        convert exp_four_between.2 using 1 <;> norm_num
        rfl⟩

theorem mobius_cutoff_two : vaughanCutoff 2 = 4 := by
  norm_num [vaughanCutoff]

theorem mangoldt_depth_two : adaptiveMangoldtDepth 2 = 13 := by
  rw [adaptiveMangoldtDepth, source_cutoff_two, mobius_cutoff_two]


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

theorem actual_cutoff_not_multiplicative :
    truncatedConvolution (vaughanCutoff 2) (adaptiveMangoldtDepth 2) (5 * 7) ≠
      truncatedConvolution (vaughanCutoff 2) (adaptiveMangoldtDepth 2) 5 *
        truncatedConvolution (vaughanCutoff 2) (adaptiveMangoldtDepth 2) 7 := by
  simpa only [mobius_cutoff_two, mangoldt_depth_two] using
    rectangle_four_thirteen_not_multiplicative

end RH16AdaptiveCoefficientFailure
```
