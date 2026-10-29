-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.ElementaryNumberTheory.ArithmeticFunctions
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.RectangleFourThirteenFive.Variant76783a50dc0b1d845301c17a1cf66c2a28aa3ec773fbf8f14f19fd5284915c49","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"76783a50dc0b1d845301c17a1cf66c2a28aa3ec773fbf8f14f19fd5284915c49","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.ArithmeticFunctions.SourceCorpus.RectangleFourThirteenFive.Variant76783a50dc0b1d845301c17a1cf66c2a28aa3ec773fbf8f14f19fd5284915c49","mathematical_subject":"NumberTheory.ArithmeticFunctions","original_sha256":"76783a50dc0b1d845301c17a1cf66c2a28aa3ec773fbf8f14f19fd5284915c49","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-openai-refocus-20261007/coefficient-failure/SourceAdaptiveCoefficientFailure.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceAdaptiveSignedCoefficientRows
import Mathlib.NumberTheory.ArithmeticFunction.VonMangoldt

/-! Exact failure of a direct multiplicative identification of the existing
closed rectangle coefficient. This does not rule out a different proved lift.
Direction: grwtsk contributors. Formal construction: OpenAI Codex. -/

namespace GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.RectangleFourThirteenFive.Variant76783a50dc0b1d845301c17a1cf66c2a28aa3ec773fbf8f14f19fd5284915c49

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
