-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.LeadingCoefficient.Variant9d2975379d83224038d4aebf7c952ec222ba066c1e10350b48a1c0128b83192f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9d2975379d83224038d4aebf7c952ec222ba066c1e10350b48a1c0128b83192f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.LeadingCoefficient.Variant9d2975379d83224038d4aebf7c952ec222ba066c1e10350b48a1c0128b83192f","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"9d2975379d83224038d4aebf7c952ec222ba066c1e10350b48a1c0128b83192f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/cache-source-audit/source/9d2975379d83224038d4aebf7c952ec222ba066c1e10350b48a1c0128b83192f.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceLaplaceEndpoint

/-!
# Quantitative exponential sensitivity of the actual compact source

The actual scaled norm limit gives a positive eventual lower bound for every
fixed point in the right half-plane away from the prescribed pole. Both the
constant and the threshold may depend on that fixed complex parameter. The
right pole itself disproves a statement omitting the pole exclusion.

AI attribution: Codex authored this module and its proofs.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.LeadingCoefficient.Variant9d2975379d83224038d4aebf7c952ec222ba066c1e10350b48a1c0128b83192f

namespace FormalResearch.RiemannHypothesis.PoleSourceSensitivity

open Filter
open SourceLaplaceEndpoint SourceLaplaceDetection

noncomputable section

/-- The exact fixed-parameter coefficient in the actual source's scaled limit. -/
def leadingCoefficient (z : ℂ) : ℂ :=
  (147456 / (4096 / 109395) : ℂ) * (z ^ 2 - 1 / 4) ^ 2 / z ^ 10

/-- The leading coefficient is nonzero when the actual pole exclusion is retained. -/
theorem leading_coefficient_ne_zero (z : ℂ) (hz : 0 < z.re) (hpole : z ^ 2 ≠ 1 / 4) :
    leadingCoefficient z ≠ 0 := by
  have hzne : z ≠ 0 := by intro h; simp [h] at hz
  exact div_ne_zero (mul_ne_zero (by norm_num)
    (pow_ne_zero _ (sub_ne_zero.mpr hpole))) (pow_ne_zero _ hzne)

/-- The genuine scaled norm response eventually exceeds half its positive leading magnitude. -/
theorem source_laplace_scaled_eventually_ge_half (z : ℂ) (hz : 0 < z.re)
    (hpole : z ^ 2 ≠ 1 / 4) :
    ∀ᶠ A : ℝ in atTop, ‖leadingCoefficient z‖ / 2 ≤
      A ^ 9 * Real.exp (-2 * A * z.re) * ‖sourceLaplace A z‖ := by
  have hpos : 0 < ‖leadingCoefficient z‖ := norm_pos_iff.mpr
    (leading_coefficient_ne_zero z hz hpole)
  have hlimit : Tendsto (fun A : ℝ ↦ A ^ 9 * Real.exp (-2 * A * z.re) *
      ‖sourceLaplace A z‖) atTop (nhds ‖leadingCoefficient z‖) :=
    source_laplace_norm_scaled_tendsto z hz
  have h := (tendsto_const_nhds : Tendsto (fun _ : ℝ ↦ ‖leadingCoefficient z‖ / 2)
      atTop (nhds (‖leadingCoefficient z‖ / 2))).eventually_lt hlimit (by linarith)
  exact h.mono (fun _ hA ↦ hA.le)

/-- The actual source has positive exponential lower sensitivity at every fixed right-half-plane
parameter away from its exact pole zeros. No uniformity in the complex parameter is asserted. -/
theorem source_laplace_exponential_lower_bound (z : ℂ) (hz : 0 < z.re)
    (hpole : z ^ 2 ≠ 1 / 4) :
    ∃ c : ℝ, 0 < c ∧ ∃ R : ℝ, 1 ≤ R ∧ ∀ A : ℝ, R ≤ A →
      c * Real.exp (2 * A * z.re) / A ^ 9 ≤ ‖sourceLaplace A z‖ := by
  have hpos : 0 < ‖leadingCoefficient z‖ := norm_pos_iff.mpr
    (leading_coefficient_ne_zero z hz hpole)
  obtain ⟨R, hR⟩ := eventually_atTop.mp (source_laplace_scaled_eventually_ge_half z hz hpole)
  refine ⟨‖leadingCoefficient z‖ / 2, by positivity, max R 1, le_max_right _ _, ?_⟩
  intro A hA
  have hAone : 1 ≤ A := (le_max_right _ _).trans hA
  have hApos : 0 < A := by linarith
  have hbound := hR A ((le_max_left _ _).trans hA)
  have he : Real.exp (-2 * A * z.re) * Real.exp (2 * A * z.re) = 1 := by
    rw [← Real.exp_add, show -2 * A * z.re + 2 * A * z.re = 0 by ring, Real.exp_zero]
  apply (div_le_iff₀ (pow_pos hApos 9)).mpr
  calc
    _ ≤ (A ^ 9 * Real.exp (-2 * A * z.re) * ‖sourceLaplace A z‖) *
        Real.exp (2 * A * z.re) :=
      mul_le_mul_of_nonneg_right hbound (Real.exp_pos _).le
    _ = ‖sourceLaplace A z‖ * A ^ 9 := by
      calc
        _ = ‖sourceLaplace A z‖ * A ^ 9 *
            (Real.exp (-2 * A * z.re) * Real.exp (2 * A * z.re)) := by ring
        _ = _ := by rw [he, mul_one]

/-- The actual source transform is even in its complex parameter at every admitted radius. -/
theorem source_laplace_even (A : ℝ) (z : ℂ) (hA : 1 ≤ A) :
    sourceLaplace A (-z) = sourceLaplace A z := by
  rw [source_laplace_eq_bump_square A (-z) hA, source_laplace_eq_bump_square A z hA]
  simp only [neg_sq, mul_neg, SourceBumpLaplace.bump_laplace_even]

/-- Evenness gives positive exponential lower sensitivity in the left half-plane, with a
constant and radius threshold depending on the fixed parameter and with both poles excluded. -/
theorem source_laplace_left_exponential_lower_bound (z : ℂ) (hz : z.re < 0)
    (hpole : z ^ 2 ≠ 1 / 4) :
    ∃ c : ℝ, 0 < c ∧ ∃ R : ℝ, 1 ≤ R ∧ ∀ A : ℝ, R ≤ A →
      c * Real.exp (-2 * A * z.re) / A ^ 9 ≤ ‖sourceLaplace A z‖ := by
  have hneg : 0 < (-z).re := by simp only [Complex.neg_re]; linarith
  have hpneg : (-z) ^ 2 ≠ 1 / 4 := by simpa only [neg_sq] using hpole
  obtain ⟨c, hc, R, hR, htail⟩ := source_laplace_exponential_lower_bound (-z) hneg hpneg
  refine ⟨c, hc, R, hR, ?_⟩
  intro A hA
  have hb := htail A hA
  have he : 2 * A * (-z).re = -2 * A * z.re := by simp only [Complex.neg_re]; ring
  rw [he, source_laplace_even A z (hR.trans hA)] at hb
  exact hb

/-- Every fixed off-axis parameter away from the prescribed poles has exponential norm
sensitivity governed by the absolute real part, without any uniformity in that parameter. -/
theorem source_laplace_off_axis_exponential_lower_bound (z : ℂ) (hz : z.re ≠ 0)
    (hpole : z ^ 2 ≠ 1 / 4) :
    ∃ c : ℝ, 0 < c ∧ ∃ R : ℝ, 1 ≤ R ∧ ∀ A : ℝ, R ≤ A →
      c * Real.exp (2 * A * |z.re|) / A ^ 9 ≤ ‖sourceLaplace A z‖ := by
  by_cases hpos : 0 < z.re
  · simpa only [abs_of_pos hpos] using source_laplace_exponential_lower_bound z hpos hpole
  have hneg : z.re < 0 := lt_of_le_of_ne (le_of_not_gt hpos) hz
  obtain ⟨c, hc, R, hR, htail⟩ := source_laplace_left_exponential_lower_bound z hneg hpole
  refine ⟨c, hc, R, hR, ?_⟩
  intro A hA
  have he : 2 * A * |z.re| = -2 * A * z.re := by rw [abs_of_neg hneg]; ring
  rw [he]
  exact htail A hA

/-- The actual right pole has zero response, so no positive exponential lower bound exists there. -/
theorem right_pole_has_no_positive_exponential_lower_bound :
    ¬∃ c : ℝ, 0 < c ∧ ∃ R : ℝ, 1 ≤ R ∧ ∀ A : ℝ, R ≤ A →
      c * Real.exp A / A ^ 9 ≤ ‖sourceLaplace A (1 / 2)‖ := by
  rintro ⟨c, hc, R, hR, htail⟩
  have hb := htail R le_rfl
  rw [(source_laplace_poles_zero R hR).1, norm_zero] at hb
  have hRpos : 0 < R := by linarith
  have hp : 0 < c * Real.exp R / R ^ 9 :=
    div_pos (mul_pos hc (Real.exp_pos R)) (pow_pos hRpos 9)
  linarith

end
end FormalResearch.RiemannHypothesis.PoleSourceSensitivity
