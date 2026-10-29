-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.ActualUpperCoefficientMomentAbsLe.Variant81dd3af7f8988a70dc5273e5d0d57ee5223e3495fcb92e823111af01dff7daf6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"81dd3af7f8988a70dc5273e5d0d57ee5223e3495fcb92e823111af01dff7daf6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.ActualUpperCoefficientMomentAbsLe.Variant81dd3af7f8988a70dc5273e5d0d57ee5223e3495fcb92e823111af01dff7daf6","mathematical_subject":"Analysis.Integration","original_sha256":"81dd3af7f8988a70dc5273e5d0d57ee5223e3495fcb92e823111af01dff7daf6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-root-01a11259-refocus/selected-source-delta/81dd3af7f8988a70dc52-ActualFullKappaNumericBounds.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceFullPositiveKappa

/-!
Genuine full positive-axis fractional-part coefficients have explicit numerical
bounds, and their leading coefficient is positive. Both sides of the unit seam
are retained. No zeta identification or signed arithmetic estimate is used.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.ActualUpperCoefficientMomentAbsLe.Variant81dd3af7f8988a70dc5273e5d0d57ee5223e3495fcb92e823111af01dff7daf6

set_option autoImplicit false
namespace RH16IndependentChallengeNext

open MeasureTheory Set
open FormalResearch.RiemannHypothesis
open SourceFullPositiveKappa SourceUpperCubicKappa SourceCubicUpperLogMoments
open SourceCubicSignedUpperCoefficients

noncomputable section

/-- Genuine centered upper moments retain their half factor and exact factorial mass. -/
theorem actualUpperCoefficientMoment_abs_le (j : ℕ) :
    |cubicUpperCoefficientMoment j| ≤ (2 : ℝ) ^ j * (j.factorial : ℝ) := by
  have hn := norm_integral_le_of_norm_le
    (f := cubicUpperCoefficientWeight j) ((upperLogWeight_integrable j).div_const 2) (by
      filter_upwards [ae_restrict_mem measurableSet_Ioi] with u hu
      rw [Real.norm_eq_abs, cubicUpperCoefficientWeight, abs_mul,
        abs_of_nonneg (upperLogWeight_nonneg j hu.le)]
      calc
        _ ≤ (1 / 2 : ℝ) * upperLogWeight j u :=
          mul_le_mul_of_nonneg_right (centeredSawtooth_abs_le_half u)
            (upperLogWeight_nonneg j hu.le)
        _ = _ := by ring)
  rw [Real.norm_eq_abs, integral_div, upperLogWeight_integral] at hn
  unfold cubicUpperCoefficientMoment
  convert hn using 1
  rw [pow_succ]
  ring

/-- Each literal upper coefficient has a factorial bound from genuine upper moments. -/
theorem actualUpperKappa_succ_abs_le (j : ℕ) :
    |upperCubicKappa (j + 1)| ≤ (2 : ℝ) ^ (j + 1) * ((j + 1).factorial : ℝ) := by
  rw [upperCubicKappa_eq_moments, Nat.add_sub_cancel]
  calc
    _ ≤ |((j + 1 : ℕ) : ℝ) * cubicUpperCoefficientMoment j| +
        |cubicUpperCoefficientMoment (j + 1) / 2| := by
      simpa only [sub_eq_add_neg, abs_neg] using
        abs_add_le (((j + 1 : ℕ) : ℝ) * cubicUpperCoefficientMoment j)
          (-(cubicUpperCoefficientMoment (j + 1) / 2))
    _ = ((j + 1 : ℕ) : ℝ) * |cubicUpperCoefficientMoment j| +
        |cubicUpperCoefficientMoment (j + 1)| / 2 := by
      rw [abs_mul, abs_div, abs_of_nonneg (Nat.cast_nonneg _),
        abs_of_pos (by norm_num : (0 : ℝ) < 2)]
    _ ≤ ((j + 1 : ℕ) : ℝ) * ((2 : ℝ) ^ j * (j.factorial : ℝ)) +
        ((2 : ℝ) ^ (j + 1) * ((j + 1).factorial : ℝ)) / 2 :=
      add_le_add (mul_le_mul_of_nonneg_left (actualUpperCoefficientMoment_abs_le j)
        (Nat.cast_nonneg _))
        (div_le_div_of_nonneg_right (actualUpperCoefficientMoment_abs_le (j + 1))
          (by norm_num))
    _ = _ := by
      simp only [Nat.factorial_succ, Nat.cast_mul]
      rw [pow_succ]
      ring

/-- Full fractional coefficients keep all signed lower moments in their numerical bound. -/
theorem actualFullPositiveKappa_succ_abs_le (j : ℕ) :
    |fullPositiveKappa (j + 1)| ≤ 3 * (2 : ℝ) ^ (j + 1) * ((j + 1).factorial : ℝ) := by
  rw [fullPositiveKappa_eq_upper_add_lower_succ]
  calc
    _ ≤ |upperCubicKappa (j + 1)| +
        |(-1 : ℝ) ^ j * (2 : ℝ) ^ (j + 2) * ((j + 1).factorial : ℝ)| := abs_add_le _ _
    _ = |upperCubicKappa (j + 1)| +
        (2 : ℝ) ^ (j + 2) * ((j + 1).factorial : ℝ) := by
      simp only [abs_mul, abs_pow, abs_neg, abs_one, one_pow, one_mul,
        abs_of_nonneg (by positivity : (0 : ℝ) ≤ 2),
        abs_of_nonneg (show (0 : ℝ) ≤ ((j + 1).factorial : ℝ) from Nat.cast_nonneg _)]
    _ ≤ (2 : ℝ) ^ (j + 1) * ((j + 1).factorial : ℝ) +
        (2 : ℝ) ^ (j + 2) * ((j + 1).factorial : ℝ) :=
      add_le_add (actualUpperKappa_succ_abs_le j) le_rfl
    _ = _ := by
      rw [show j + 2 = (j + 1) + 1 by omega, pow_succ]
      ring

/-- The true leading full-positive coefficient is between two and six. -/
theorem actualFullPositiveKappa_one_bounds :
    (2 : ℝ) ≤ fullPositiveKappa 1 ∧ fullPositiveKappa 1 ≤ 6 := by
  have hu := actualUpperKappa_succ_abs_le 0
  norm_num at hu
  have he := fullPositiveKappa_four_endpoint_corrections.1
  have hl := (abs_le.mp hu).1
  have hh := (abs_le.mp hu).2
  constructor <;> linarith

/-- Actual leading positivity requires no analytic-continuation or arithmetic premise. -/
theorem actualFullPositiveKappa_one_pos : 0 < fullPositiveKappa 1 := by
  exact lt_of_lt_of_le (by norm_num : (0 : ℝ) < 2) actualFullPositiveKappa_one_bounds.1

/-- All four literal full-positive coefficients have explicit numerical absolute budgets. -/
theorem actualFullPositiveKappa_four_abs_bounds :
    |fullPositiveKappa 1| ≤ 6 ∧ |fullPositiveKappa 2| ≤ 24 ∧
      |fullPositiveKappa 3| ≤ 144 ∧ |fullPositiveKappa 4| ≤ 1152 := by
  have h0 := actualFullPositiveKappa_succ_abs_le 0
  have h1 := actualFullPositiveKappa_succ_abs_le 1
  have h2 := actualFullPositiveKappa_succ_abs_le 2
  have h3 := actualFullPositiveKappa_succ_abs_le 3
  norm_num at h0 h1 h2 h3
  exact ⟨h0, h1, h2, h3⟩

end
end RH16IndependentChallengeNext
