-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceVariance.Variantfd2c28d2c19d2710564688a5bb8825aa2bacb064e52a3e6842d9f9e6a23a77d1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fd2c28d2c19d2710564688a5bb8825aa2bacb064e52a3e6842d9f9e6a23a77d1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.SourceVariance.Variantfd2c28d2c19d2710564688a5bb8825aa2bacb064e52a3e6842d9f9e6a23a77d1","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"fd2c28d2c19d2710564688a5bb8825aa2bacb064e52a3e6842d9f9e6a23a77d1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/FormalResearch/RiemannHypothesis/SourceAdaptiveGaussianConsumer.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceAdaptiveGaussianBudget

/-!
# Original all-real signed source with its Gaussian approximation price paid

Research direction and high-priority emphasis: grwtsk contributors.
Precise lemma selection and formal construction: OpenAI Codex, 7 October 2026.
The literal original closed cutoff and every Lambda(n)-1 coefficient remain.
The signed arithmetic cap in the last two consumers is explicitly open.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceVariance.Variantfd2c28d2c19d2710564688a5bb8825aa2bacb064e52a3e6842d9f9e6a23a77d1

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceAdaptiveGaussianConsumer

open MeasureTheory ProbabilityTheory SourceKapitzaSquareShell SourceCenteredSmoothing
open SourceAdaptiveGaussianBudget GaussianSourceConsumer SourceKapitzaCompensatedReadout
open SourceKapitzaSignedReduction
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open scoped NNReal ENNReal BigOperators

/-- At each real scale the variance uses exactly the original closed natural cutoff. -/
def sourceVariance (A : ℝ) : ℝ≥0 := cutoffVariance ⌊Real.exp (2 * A)⌋₊

/-- Both unchanged signed tangent channels with the paid positive Gaussian variance. -/
def sourceGaussianTangent (A : ℝ) : ℝ :=
  smoothedTangentReadout (gaussianReal 0 (sourceVariance A)) A ⌊Real.exp (2 * A)⌋₊

/-- All value and slope masses have unconditional suppliers at every finite cutoff. -/
theorem paid_finite_tangent_error {A : ℝ} (hA : 200 ≤ A) (N : ℕ) :
    |finiteCompensatedReadout A N -
      smoothedTangentReadout (gaussianReal 0 (cutoffVariance N)) A N| ≤
      (tangentErrorConstant + 25 / 2) / A ^ 2 := by
  have hA0 : A ≠ 0 := by linarith
  have h := gaussian_finite_tangent_error hA (cutoffVariance N) N
  change |finiteCompensatedReadout A N -
      smoothedTangentReadout (gaussianReal 0 (cutoffVariance N)) A N| ≤
    tangentErrorConstant / A ^ 2 +
      ((5 / (2 * A ^ 2)) * (cutoffVariance N : ℝ)) * coefficientMass N +
      ((5 / A ^ 2) * Real.sqrt (cutoffVariance N : ℝ)) * driftMass N at h
  calc
    _ ≤ tangentErrorConstant / A ^ 2 +
        ((5 / (2 * A ^ 2)) * (cutoffVariance N : ℝ)) * coefficientMass N +
        ((5 / A ^ 2) * Real.sqrt (cutoffVariance N : ℝ)) * driftMass N := h
    _ = tangentErrorConstant / A ^ 2 +
        (5 / (2 * A ^ 2)) * ((cutoffVariance N : ℝ) * coefficientMass N) +
        (5 / A ^ 2) * (Real.sqrt (cutoffVariance N : ℝ) * driftMass N) := by ring
    _ ≤ tangentErrorConstant / A ^ 2 +
        (5 / (2 * A ^ 2)) * 1 + (5 / A ^ 2) * 2 :=
      add_le_add (add_le_add le_rfl
        (mul_le_mul_of_nonneg_left (variance_coefficientMass_le_one N) (by positivity)))
        (mul_le_mul_of_nonneg_left (sqrt_variance_driftMass_le_two N) (by positivity))
    _ = (tangentErrorConstant + 25 / 2) / A ^ 2 := by field_simp; ring

/-- This is the literal all-real original source; no approximation-price premise remains. -/
theorem paid_original_source_error {A : ℝ} (hA : 200 ≤ A) :
    |compensatedSourceSum A - sourceGaussianTangent A| ≤
      (tangentErrorConstant + 25 / 2) / A ^ 2 := by
  rw [compensatedSourceSum_eq_finiteCompensatedReadout]
  exact paid_finite_tangent_error hA ⌊Real.exp (2 * A)⌋₊

theorem sourceVariance_pos (A : ℝ) : 0 < sourceVariance A :=
  cutoffVariance_pos _

/-- The next principal consumer exposes only its remaining signed tangent cap.
This theorem supplies no witness for that open arithmetic premise. -/
theorem compensated_tail_of_source_gaussian_tangent_cap
    (hcap : ∃ R : ℝ, 200 ≤ R ∧ ∃ B : ℝ, ∀ A : ℝ, R ≤ A →
      sourceGaussianTangent A ≤ B) : CompensatedTailUpperBound := by
  rcases hcap with ⟨R, hR, B, hB⟩
  refine ⟨R, by linarith, B + (tangentErrorConstant + 25 / 2), ?_⟩
  intro A hRA
  have hA : 200 ≤ A := hR.trans hRA
  have he := (abs_le.mp (paid_original_source_error hA)).2
  have hlog : 0 ≤ Real.log 2 := Real.log_nonneg (by norm_num)
  have hC : 0 ≤ tangentErrorConstant + 25 / 2 := by
    unfold tangentErrorConstant SourceKapitzaStorage.quadraticConstant
    positivity
  have hA2 : 1 ≤ A ^ 2 := by nlinarith
  have hp := div_le_self hC hA2
  linarith [hB A hRA]

/-- Original EstimateObligation consumes the paid approximation and the explicit signed cap. -/
theorem estimate_of_source_gaussian_tangent_cap
    (hcap : ∃ R : ℝ, 200 ≤ R ∧ ∃ B : ℝ, ∀ A : ℝ, R ≤ A →
      sourceGaussianTangent A ≤ B) : CorrelationAssembly.EstimateObligation :=
  estimate_of_compensated_tail (compensated_tail_of_source_gaussian_tangent_cap hcap)

end FormalResearch.RiemannHypothesis.SourceAdaptiveGaussianConsumer
