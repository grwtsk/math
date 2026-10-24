-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualAdaptiveDepthGeFourSquare.Variant353d58ed97a084ac75b1626cfcbdce028637b595db0dc9170a4bd508b5978732","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"353d58ed97a084ac75b1626cfcbdce028637b595db0dc9170a4bd508b5978732","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.ActualAdaptiveDepthGeFourSquare.Variant353d58ed97a084ac75b1626cfcbdce028637b595db0dc9170a4bd508b5978732","mathematical_subject":"Foundations.Unclassified","original_sha256":"353d58ed97a084ac75b1626cfcbdce028637b595db0dc9170a4bd508b5978732","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-root-01a11259-boundary-next/informative/attempt02.source.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceAdaptiveSignedCoefficientRows

/-! Exact closed natural-floor depth budget; no arithmetic weighted cap.
grwtsk contributors: direction/selection/corrections/evaluation. Codex: formal construction. -/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualAdaptiveDepthGeFourSquare.Variant353d58ed97a084ac75b1626cfcbdce028637b595db0dc9170a4bd508b5978732

set_option autoImplicit false
noncomputable section
namespace RH16ActualAdaptiveDepthBudget
open RH16AdaptiveVaughan
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateVaughanSource EstimateSourceMobiusKernel EstimateMertensAbel

/-- The actual auxiliary prime-power depth includes four complete short-cutoff squares. -/
theorem actual_adaptive_depth_ge_four_square (A : ℝ) (hA : 32 ≤ A) :
    4 * (vaughanCutoff A) ^ 2 ≤ adaptiveMangoldtDepth A := by
  have ha : 0 ≤ A := by linarith
  have hU : (vaughanCutoff A : ℝ) ≤ A ^ 2 := Nat.floor_le (sq_nonneg A)
  have hA2 : 945 ≤ A ^ 2 := by nlinarith
  have hexp := Real.pow_div_factorial_le_exp (2 * A) (by linarith : 0 ≤ 2 * A) 8
  norm_num at hexp
  have hpoly : 6 * A ^ 6 ≤ (2 * A) ^ 8 / (40320 : ℝ) := by
    nlinarith [mul_nonneg (pow_nonneg ha 6) (sub_nonneg.mpr hA2)]
  have hc : (vaughanCutoff A : ℝ) ^ 3 ≤ A ^ 6 := by
    simpa only [← pow_mul] using
      pow_le_pow_left₀ (Nat.cast_nonneg (vaughanCutoff A)) hU 3
  have he : ((4 * (vaughanCutoff A) ^ 3 : ℕ) : ℝ) ≤ Real.exp (2 * A) := by
    push_cast
    nlinarith [pow_nonneg ha 6]
  have hn : 4 * (vaughanCutoff A) ^ 3 ≤ sourceKernelCutoff A := by
    exact (Nat.le_floor_iff (Real.exp_pos (2 * A)).le).mpr he
  unfold adaptiveMangoldtDepth
  apply (Nat.le_div_iff_mul_le (vaughanCutoff_pos A (by linarith : 1 ≤ A))).mpr
  simpa only [pow_succ, Nat.mul_assoc] using hn
end RH16ActualAdaptiveDepthBudget
