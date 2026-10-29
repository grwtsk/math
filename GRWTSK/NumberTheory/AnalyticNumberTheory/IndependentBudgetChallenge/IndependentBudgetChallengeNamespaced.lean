-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.BaselineAtSix.Variant0b64109ca46924dc5f8048c011f493fe1a638d5765801b8c1ed051a9182e75b4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0b64109ca46924dc5f8048c011f493fe1a638d5765801b8c1ed051a9182e75b4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.AnalyticNumberTheory.SourceCorpus.BaselineAtSix.Variant0b64109ca46924dc5f8048c011f493fe1a638d5765801b8c1ed051a9182e75b4","mathematical_subject":"NumberTheory.AnalyticNumberTheory","original_sha256":"0b64109ca46924dc5f8048c011f493fe1a638d5765801b8c1ed051a9182e75b4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-continuation-20261006/resume-action/independent-budget-review/attempt2/IndependentBudgetChallenge.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceMangoldtDirectBudget

/-! Independent endpoint/sign and source-consumer challenge. -/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.BaselineAtSix.Variant0b64109ca46924dc5f8048c011f493fe1a638d5765801b8c1ed051a9182e75b4

set_option autoImplicit false
namespace RH16IndependentBudgetReview
open RH16ResumeBudget
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateMertensResidual
open FormalResearch.RiemannHypothesis.SourcePairing
open OmegaResearch.CriticalRelativePairing
noncomputable section

theorem baseline_at_six : criticalBaselineCorrection 6 = -(6 / 91 : ℝ) := by
  unfold criticalBaselineCorrection
  norm_num

theorem residual_tail_at_six (K A : ℝ) (hA : 6 ≤ A)
    (hQ : criticalRelativePairing A ≤ K) :
    mertensResidual A ≤ K - 6 / 91 := by
  have h := residual_upper_of_criticalRelative_tail K 6 A (by norm_num) hA hQ
  rw [baseline_at_six] at h
  linarith

theorem all_real_at_six (K : ℝ)
    (hQ : ∀ A : ℝ, 6 ≤ A → criticalRelativePairing A ≤ K) :
    ∀ A : ℝ, 1 ≤ A →
      min (originalPrefixLower 6) (archimedeanMultiplier 0 - 2 * (K - 6 / 91)) ≤
        sourceQuadraticValue explicitSecondDerivative A := by
  have h := all_real_source_lower_of_criticalRelative_tail K 6 (by norm_num) hQ
  rw [baseline_at_six] at h
  simpa only [sub_eq_add_neg] using h

theorem Mangoldt_residual_at_six (C A : ℝ) (hA : 6 ≤ A)
    (hwork : -C ≤ FormalResearch.RiemannHypothesis.SourceMangoldtAbel.criticalMangoldtWork A) :
    mertensResidual A ≤ C - 1 - 6 / 91 := by
  have h := residual_upper_of_original_Mangoldt_work_lower C 6 A (by norm_num) hA hwork
  rw [baseline_at_six] at h
  linarith

end
end RH16IndependentBudgetReview
