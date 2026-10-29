-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.BumpMellinWeight.Variantf62f81b2420ba9e167b6a2d532eba69355538c58efe16123a333af6cc0068735","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f62f81b2420ba9e167b6a2d532eba69355538c58efe16123a333af6cc0068735","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.BumpMellinWeight.Variantf62f81b2420ba9e167b6a2d532eba69355538c58efe16123a333af6cc0068735","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"f62f81b2420ba9e167b6a2d532eba69355538c58efe16123a333af6cc0068735","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-refocus-20261006/dependencies/owner-source-captures/SourceActualBumpMellinLineBudget.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualBumpVerticalBudget

/-!
Literal #381/#383 polynomial bump Mellin weight and its quantitative high-frequency budget.
The independently prescribed weight uses the exact source normalization and ordinary square.
The identification with the actual bilateral correlation and the actual prime contour remain
separate source-transport obligations; no signed contour head is estimated here.
AI attribution: OpenAI Codex.
-/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.BumpMellinWeight.Variantf62f81b2420ba9e167b6a2d532eba69355538c58efe16123a333af6cc0068735

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceActualBumpMellinLineBudget
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.RiemannHypothesis.SourceBumpLaplace
open FormalResearch.RiemannHypothesis.SourceActualBumpVerticalBudget
noncomputable section

/-- The actual independently specified polynomial/bump weight from #381. -/
def bumpMellinWeight (A : ℝ) (s : ℂ) : ℂ :=
  ((A / sourceNormalization A : ℝ) : ℂ) * s ^ 2 * (s - 1) ^ 2 *
    bumpLaplace ((A : ℂ) * (s - 1 / 2)) ^ 2

/-- The actual bump estimate specialized to the full high-frequency right line. -/
theorem bump_on_right_line_norm_le (A c t : ℝ) (hA : 1 ≤ A) (hc : 1 < c)
    (ht : 1 ≤ |t|) :
    ‖bumpLaplace ((A : ℂ) * ((c : ℂ) + (t : ℂ) * Complex.I - 1 / 2))‖ ≤
      204288 * Real.exp (A * (c - 1 / 2)) / (A ^ 5 * |t| ^ 5) := by
  let z : ℂ := (A : ℂ) * ((c : ℂ) + (t : ℂ) * Complex.I - 1 / 2)
  have hzre : z.re = A * (c - 1 / 2) := by simp [z, Complex.mul_re]
  have hzim : z.im = A * t := by simp [z, Complex.mul_im]
  have hlower : A * |t| ≤ ‖z‖ := by
    have h := Complex.abs_im_le_norm z
    simpa only [hzim, abs_mul, abs_of_nonneg (show 0 ≤ A by linarith)] using h
  have hn : 1 ≤ ‖z‖ := by nlinarith
  have hc0 : 0 ≤ c - 1 / 2 := by linarith
  have hre : 0 ≤ z.re := by rw [hzre]; positivity
  have hb := actual_bump_vertical_norm_le z hre hn
  have hp : A ^ 5 * |t| ^ 5 ≤ ‖z‖ ^ 5 := by
    simpa only [mul_pow] using pow_le_pow_left₀ (by positivity) hlower 5
  calc
    _ ≤ 204288 * Real.exp z.re / ‖z‖ ^ 5 := hb
    _ ≤ 204288 * Real.exp z.re / (A ^ 5 * |t| ^ 5) :=
      div_le_div_of_nonneg_left (by positivity) (by positivity) hp
    _ = _ := by rw [hzre]

private theorem pole_norm_on_line_le (c t : ℝ) (ht : 1 ≤ |t|) :
    ‖(c : ℂ) + (t : ℂ) * Complex.I‖ ^ 2 *
      ‖(c : ℂ) + (t : ℂ) * Complex.I - 1‖ ^ 2 ≤
      (1 + c ^ 2) * (1 + (c - 1) ^ 2) * |t| ^ 4 := by
  have h1 : ‖(c : ℂ) + (t : ℂ) * Complex.I‖ ^ 2 = c ^ 2 + t ^ 2 := by
    simp only [Complex.sq_norm, Complex.normSq_apply]
    simp
    ring
  have h2 : ‖(c : ℂ) + (t : ℂ) * Complex.I - 1‖ ^ 2 = (c - 1) ^ 2 + t ^ 2 := by
    simp only [Complex.sq_norm, Complex.normSq_apply]
    simp
    ring
  have ht2 : 1 ≤ t ^ 2 := by nlinarith [sq_abs t]
  have hc1 : c ^ 2 + t ^ 2 ≤ (1 + c ^ 2) * t ^ 2 := by nlinarith [sq_nonneg c]
  have hc2 : (c - 1) ^ 2 + t ^ 2 ≤ (1 + (c - 1) ^ 2) * t ^ 2 := by
    nlinarith [sq_nonneg (c - 1)]
  rw [h1, h2]
  calc
    _ ≤ ((1 + c ^ 2) * t ^ 2) * ((1 + (c - 1) ^ 2) * t ^ 2) :=
      mul_le_mul hc1 hc2 (by positivity) (by positivity)
    _ = _ := by
      have ha : |t| ^ 4 = t ^ 4 := by
        calc
          |t| ^ 4 = (|t| ^ 2) ^ 2 := by ring
          _ = (t ^ 2) ^ 2 := by rw [sq_abs]
          _ = t ^ 4 := by ring
      rw [ha]
      ring

/-- The full ordinary-square source weight has the paper's A⁻⁹ |t|⁻⁶ bound. -/
theorem bumpMellinWeight_on_line_norm_le (A c t : ℝ) (hA : 1 ≤ A) (hc : 1 < c)
    (ht : 1 ≤ |t|) :
    ‖bumpMellinWeight A ((c : ℂ) + (t : ℂ) * Complex.I)‖ ≤
      (204288 : ℝ) ^ 2 / sourceNormalization A *
        (1 + c ^ 2) * (1 + (c - 1) ^ 2) *
        Real.exp ((2 * c - 1) * A) / (A ^ 9 * |t| ^ 6) := by
  have hZ := source_normalization_pos A hA
  have hb := bump_on_right_line_norm_le A c t hA hc ht
  have hp := pole_norm_on_line_le c t ht
  have he : Real.exp (A * (c - 1 / 2)) ^ 2 = Real.exp ((2 * c - 1) * A) := by
    rw [← Real.exp_nat_mul]
    congr 1
    norm_num
    ring
  have hn :
      ‖bumpMellinWeight A ((c : ℂ) + (t : ℂ) * Complex.I)‖ =
        (A / sourceNormalization A) *
          (‖(c : ℂ) + (t : ℂ) * Complex.I‖ ^ 2 *
            ‖(c : ℂ) + (t : ℂ) * Complex.I - 1‖ ^ 2) *
          ‖bumpLaplace ((A : ℂ) * ((c : ℂ) + (t : ℂ) * Complex.I - 1 / 2))‖ ^ 2 := by
    unfold bumpMellinWeight
    simp only [norm_mul, norm_pow, Complex.norm_real, Real.norm_eq_abs]
    rw [abs_of_nonneg (by positivity : 0 ≤ A / sourceNormalization A)]
    ring
  rw [hn]
  calc
    _ ≤ (A / sourceNormalization A) *
        ((1 + c ^ 2) * (1 + (c - 1) ^ 2) * |t| ^ 4) *
        (204288 * Real.exp (A * (c - 1 / 2)) / (A ^ 5 * |t| ^ 5)) ^ 2 := by
      gcongr
    _ = _ := by
      rw [div_pow, mul_pow, he]
      have hA0 : A ≠ 0 := by linarith
      have ht0 : |t| ≠ 0 := by linarith
      field_simp

end
end FormalResearch.RiemannHypothesis.SourceActualBumpMellinLineBudget
