-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualNormalizationLeOneOfFourLe.Variantce5d73b47be131d503cf2f48f0d39a0af87d9629b17b34d8d40a0dfbde68ecf8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ce5d73b47be131d503cf2f48f0d39a0af87d9629b17b34d8d40a0dfbde68ecf8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ActualNormalizationLeOneOfFourLe.Variantce5d73b47be131d503cf2f48f0d39a0af87d9629b17b34d8d40a0dfbde68ecf8","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"ce5d73b47be131d503cf2f48f0d39a0af87d9629b17b34d8d40a0dfbde68ecf8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-continuation-20261006/root/check-20261006T172033Z-1791307233899293000/ActualBoundaryStrip.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import ActualFourthCorrelationCalibration

/-!
Source-specific lower bounds in a fixed physical strip near the support edge.
These estimates concern the literal normalized q, with its original Z.
They do not substitute model arithmetic for the actual Chebyshev error.
AI attribution: OpenAI Codex independent mathematical research.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualNormalizationLeOneOfFourLe.Variantce5d73b47be131d503cf2f48f0d39a0af87d9629b17b34d8d40a0dfbde68ecf8

set_option autoImplicit false

namespace RH16IndependentChallengeNext

open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.RiemannHypothesis.SourceDerivativeCoefficientBound
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity

noncomputable section

/-- The original normalization is below one on this explicit real scale range. -/
theorem actual_normalization_le_one_of_four_le (A : ℝ) (hA : 4 ≤ A) :
    sourceNormalization A ≤ 1 := by
  have hp : 0 < A := by linarith
  have hA2 : 16 ≤ A ^ 2 := by nlinarith
  have hr0 : 0 ≤ (A ^ 2)⁻¹ := by positivity
  have hr1 : (A ^ 2)⁻¹ ≤ (1 / 16 : ℝ) := by
    simpa only [one_div] using one_div_le_one_div_of_le (by norm_num : (0 : ℝ) < 16) hA2
  have hr2 : ((A ^ 2)⁻¹) ^ 2 ≤ (1 / 256 : ℝ) := by nlinarith
  have he : sourceNormalization A = normPolynomial ((A ^ 2)⁻¹) := by
    unfold sourceNormalization normPolynomial
    field_simp
    ring
  rw [he]
  unfold normPolynomial
  nlinarith

/-- The actual source is even, including both closed support endpoints. -/
theorem actual_normalized_test_even (A : ℝ) (hA : 0 < A) (x : ℝ) :
    normalizedTest explicitSecondDerivative A (-x) =
      normalizedTest explicitSecondDerivative A x := by
  rw [normalizedTest_eq_indicator A hA]
  have hi : normalizedInterior A (-x) = normalizedInterior A x := by
    unfold normalizedInterior secondInterior bumpInterior
    ring
  by_cases hx : x ∈ Set.Icc (-A) A
  · have hnx : -x ∈ Set.Icc (-A) A := by constructor <;> linarith [hx.1, hx.2]
    rw [Set.indicator_of_mem hx, Set.indicator_of_mem hnx, hi]
  · have hnx : -x ∉ Set.Icc (-A) A := by
      intro h
      apply hx
      constructor <;> linarith [h.1, h.2]
    rw [Set.indicator_of_notMem hx, Set.indicator_of_notMem hnx]

/-- A concrete positive lower bound retains the true edge vanishing order. -/
theorem actual_normalized_test_right_edge_lower (A δ : ℝ) (hA : 4 ≤ A)
    (hδ0 : 0 ≤ δ) (hδ1 : δ ≤ 1) :
    δ ^ 2 / (A ^ 4 * Real.sqrt A) ≤
      normalizedTest explicitSecondDerivative A (A - δ) := by
  have hp : 0 < A := by linarith
  have hZp : 0 < sourceNormalization A := source_normalization_pos A (by linarith)
  have hsZ : 0 < Real.sqrt (sourceNormalization A) := Real.sqrt_pos.mpr hZp
  have hZa : Real.sqrt (sourceNormalization A) ≤ 1 :=
    Real.sqrt_le_one.mpr (actual_normalization_le_one_of_four_le A hA)
  have hsa : 0 < Real.sqrt A := Real.sqrt_pos.mpr hp
  have hD : 0 < A ^ 4 * Real.sqrt A := by positivity
  have hx : A - δ ∈ Set.Icc (-A) A := by constructor <;> linarith
  rw [normalizedTest_eq_indicator A hp, Set.indicator_of_mem hx]
  let v := δ / A
  let u := 1 - v
  let s := 2 - v
  let B := 8 * (7 * u ^ 2 - 1) - δ ^ 2 * s ^ 2 / 4
  have hv0 : 0 ≤ v := by dsimp [v]; positivity
  have hv1 : v ≤ 1 / 4 := by
    dsimp [v]
    apply (div_le_iff₀ hp).mpr
    linarith
  have hu0 : 3 / 4 ≤ u := by dsimp [u]; linarith
  have hu1 : u ≤ 1 := by dsimp [u]; linarith
  have hs0 : 1 ≤ s := by dsimp [s]; linarith
  have hs1 : s ≤ 2 := by dsimp [s]; linarith
  have hu2 : 9 / 16 ≤ u ^ 2 := by nlinarith
  have hδ2 : δ ^ 2 ≤ 1 := by nlinarith
  have hs2 : s ^ 2 ≤ 4 := by nlinarith
  have hprod : δ ^ 2 * s ^ 2 ≤ 4 := by
    nlinarith [mul_le_mul_of_nonneg_left hs2 (sq_nonneg δ)]
  have hB : 22 ≤ B := by dsimp [B]; nlinarith
  have hs2l : 1 ≤ s ^ 2 := by nlinarith
  have hnum : δ ^ 2 ≤ δ ^ 2 * s ^ 2 * B := by
    have h₁ := mul_le_mul_of_nonneg_left hs2l (sq_nonneg δ)
    have h₂ := mul_le_mul_of_nonneg_left hB (mul_nonneg (sq_nonneg δ) (sq_nonneg s))
    nlinarith
  have he : normalizedInterior A (A - δ) =
      (δ ^ 2 * s ^ 2 * B) /
        (A ^ 4 * Real.sqrt A * Real.sqrt (sourceNormalization A)) := by
    dsimp [normalizedInterior, secondInterior, bumpInterior, B, s, u, v]
    field_simp
    ring
  rw [he]
  calc
    δ ^ 2 / (A ^ 4 * Real.sqrt A) ≤
        δ ^ 2 / (A ^ 4 * Real.sqrt A * Real.sqrt (sourceNormalization A)) := by
      apply div_le_div_of_nonneg_left (sq_nonneg δ) (by positivity)
      nlinarith
    _ ≤ _ := (div_le_div_iff_of_pos_right (by positivity)).mpr hnum

/-- Evenness gives the matching lower bound at the other actual support edge. -/
theorem actual_normalized_test_left_edge_lower (A δ : ℝ) (hA : 4 ≤ A)
    (hδ0 : 0 ≤ δ) (hδ1 : δ ≤ 1) :
    δ ^ 2 / (A ^ 4 * Real.sqrt A) ≤
      normalizedTest explicitSecondDerivative A (-A + δ) := by
  rw [show -A + δ = -(A - δ) by ring,
    actual_normalized_test_even A (by linarith) (A - δ)]
  exact actual_normalized_test_right_edge_lower A δ hA hδ0 hδ1

end
end RH16IndependentChallengeNext
