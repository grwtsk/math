# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.19e30ba1297f831fd01704a3a3d47d7a51bf60ea27b69fad5fa4e4fa3587b32aSourceAdaptiveCo.Variant46b3f95ec197eeded6d47424a136231e23fbd14345888dfad1de96d6ad65a51d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `06cf39c9c5405adbe002b3a9b2e1c5271e45e67b` · SHA-256 `0aa1512c80d4f9d7b3abebaed3696160aee1891bbfa130dfe20c90a53ef5e780`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ExpFourBetween.Variant19e30ba1297f831fd01704a3a3d47d7a51bf60ea27b69fad5fa4e4fa3587b32a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"19e30ba1297f831fd01704a3a3d47d7a51bf60ea27b69fad5fa4e4fa3587b32a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.AnalyticNumberTheory.SourceCorpus.ExpFourBetween.Variant19e30ba1297f831fd01704a3a3d47d7a51bf60ea27b69fad5fa4e4fa3587b32a","mathematical_subject":"NumberTheory.AnalyticNumberTheory","original_sha256":"19e30ba1297f831fd01704a3a3d47d7a51bf60ea27b69fad5fa4e4fa3587b32a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-root-01a11259-boundary-next-rate-ingestion/concurrent-native-recovery/bytes/19e30ba1297f831fd01704a3a3d47d7a51bf60ea27b69fad5fa4e4fa3587b32a--SourceAdaptiveCoefficientFailure.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceAdaptiveSignedCoefficientRows
import Mathlib.NumberTheory.ArithmeticFunction.VonMangoldt
import Mathlib.Analysis.Complex.ExponentialBounds

/-! Exact failure of a direct multiplicative identification of the existing
closed rectangle coefficient. This does not rule out a different proved lift.
Direction: grwtsk contributors. Formal construction: OpenAI Codex. -/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ExpFourBetween.Variant19e30ba1297f831fd01704a3a3d47d7a51bf60ea27b69fad5fa4e4fa3587b32a

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
