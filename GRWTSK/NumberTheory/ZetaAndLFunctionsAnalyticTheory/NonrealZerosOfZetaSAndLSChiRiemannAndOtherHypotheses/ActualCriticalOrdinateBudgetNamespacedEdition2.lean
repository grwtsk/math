-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualZetaHalfReLeNegOne.Variant700003a2412b960ef43d1f049cfd9caeb93a4ee90f90fa24c46d555a390595be","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"700003a2412b960ef43d1f049cfd9caeb93a4ee90f90fa24c46d555a390595be","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ActualZetaHalfReLeNegOne.Variant700003a2412b960ef43d1f049cfd9caeb93a4ee90f90fa24c46d555a390595be","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"700003a2412b960ef43d1f049cfd9caeb93a4ee90f90fa24c46d555a390595be","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/rh16-continuation-20261006-challenge-next/ActualCriticalOrdinateBudget-Native01/ActualCriticalOrdinateBudget.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualCriticalZeroHead
import SourceActualEarlyFractionalZeta

/-!
Actual critical zero ordinates and their source Mellin weights. The genuine fractional
head excludes the ordinate zero. Local finiteness then supplies one fixed low-ordinate
radius; the critical bump exponent is exactly zero. This makes no off-axis assertion.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualZetaHalfReLeNegOne.Variant700003a2412b960ef43d1f049cfd9caeb93a4ee90f90fa24c46d555a390595be

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.ActualCriticalOrdinateBudget
open Zeta23 Set Finset
open SourcePairing SourceBumpLaplace SourceActualBumpVerticalBudget
open SourceActualInitialPrimeContour SourceActualPrimeBumpDictionary
open SourceActualBumpMovingHeight SourceActualZeroTailBudget SourceActualCriticalZeroHead
open SourceActualEarlyFractionalLimit SourceActualEarlyFractionalZeta
noncomputable section

/-- The actual Euler head and its positive fractional mass give a strict negative value. -/
theorem actual_zeta_half_re_le_neg_one :
    (riemannZeta (1 / 2 : ℂ)).re ≤ -1 := by
  linarith only [earlyFractionalConstant_bounds.1,
    earlyFractionalConstant_add_zeta_half_eq_zero]

/-- No eta identification is presumed: this follows from the source-backed Euler identity. -/
theorem actual_zeta_half_ne_zero : riemannZeta (1 / 2 : ℂ) ≠ 0 := by
  intro h
  have := actual_zeta_half_re_le_neg_one
  rw [h, Complex.zero_re] at this
  norm_num at this

/-- Every actual critical zero has a nonzero ordinate, without excluding off-axis zeros. -/
theorem actual_critical_ordinate_ne_zero (ρ : (zetaZeros zetaSeam).carrier)
    (hρ : (ρ : ℂ).re = 1 / 2) : (ρ : ℂ).im ≠ 0 := by
  intro hi
  have he : (ρ : ℂ) = (1 / 2 : ℂ) := by
    apply Complex.ext <;> simp [hρ, hi]
  have hz : riemannZeta (ρ : ℂ) = 0 := ρ.2.1
  exact actual_zeta_half_ne_zero (he ▸ hz)

/-- Actual finite low ordinates give a fixed radius valid for every actual critical zero. -/
theorem actual_critical_ordinate_radius :
    ∃ R0 : ℝ, 1 ≤ R0 ∧ ∀ ρ : (zetaZeros zetaSeam).carrier,
      (ρ : ℂ).re = 1 / 2 → 1 ≤ R0 * |(ρ : ℂ).im| := by
  classical
  let F := (actualZeroHeightHead_finite 4).toFinset.filter
    (fun ρ : (zetaZeros zetaSeam).carrier => (ρ : ℂ).re = 1 / 2)
  have hfinite (G : Finset (zetaZeros zetaSeam).carrier)
      (hG : ∀ ρ ∈ G, (ρ : ℂ).re = 1 / 2) :
      ∃ R0 : ℝ, 1 ≤ R0 ∧ ∀ ρ ∈ G, 1 ≤ R0 * |(ρ : ℂ).im| := by
    induction G using Finset.induction_on with
    | empty => exact ⟨1, le_rfl, by simp⟩
    | @insert ρ G hnot ih =>
      obtain ⟨r, hr, hb⟩ := ih (fun σ hσ => hG σ (mem_insert_of_mem hσ))
      have hp : 0 < |(ρ : ℂ).im| :=
        abs_pos.mpr (actual_critical_ordinate_ne_zero ρ (hG ρ (mem_insert_self _ _)))
      refine ⟨max r |(ρ : ℂ).im|⁻¹, hr.trans (le_max_left _ _), ?_⟩
      intro σ hσ
      rcases mem_insert.mp hσ with hσ | hσ
      · subst σ
        calc
          1 = |(ρ : ℂ).im|⁻¹ * |(ρ : ℂ).im| := (inv_mul_cancel₀ hp.ne').symm
          _ ≤ max r |(ρ : ℂ).im|⁻¹ * |(ρ : ℂ).im| :=
            mul_le_mul_of_nonneg_right (le_max_right _ _) hp.le
      · exact (hb σ hσ).trans
          (mul_le_mul_of_nonneg_right (le_max_left _ _) (abs_nonneg _))
  obtain ⟨R0, hR0, hb⟩ := hfinite F (fun ρ hρ => (mem_filter.mp hρ).2)
  refine ⟨R0, hR0, fun ρ hρ => ?_⟩
  by_cases hh : |(ρ : ℂ).im| < 4
  · exact hb ρ (mem_filter.mpr ⟨by simpa [F] using hh, hρ⟩)
  · nlinarith [le_of_not_gt hh]

private theorem critical_bump_norm_le (A : ℝ) (s : ℂ) (hA : 1 ≤ A)
    (hs : s.re = 1 / 2) (ht : 1 ≤ A * |s.im|) :
    ‖bumpLaplace ((A : ℂ) * (s - 1 / 2))‖ ≤
      204288 / (A ^ 5 * |s.im| ^ 5) := by
  let z : ℂ := (A : ℂ) * (s - 1 / 2)
  have hzr : z.re = 0 := by simp [z, Complex.mul_re, hs]
  have hzi : z.im = A * s.im := by simp [z, Complex.mul_im]
  have hl : A * |s.im| ≤ ‖z‖ := by
    simpa only [hzi, abs_mul, abs_of_nonneg (show 0 ≤ A by linarith)] using
      Complex.abs_im_le_norm z
  have hz : 1 ≤ ‖z‖ := ht.trans hl
  have hp : A ^ 5 * |s.im| ^ 5 ≤ ‖z‖ ^ 5 := by
    simpa only [mul_pow] using pow_le_pow_left₀ (by positivity) hl 5
  have htt : 0 < |s.im| := by nlinarith [abs_nonneg s.im]
  have hb := actual_bump_vertical_norm_le z (by rw [hzr]) hz
  rw [hzr, Real.exp_zero, mul_one] at hb
  exact hb.trans (div_le_div_of_nonneg_left (by norm_num) (by positivity) hp)

/-- The critical source weight has no growing exponential, even at small nonzero ordinates. -/
theorem actual_critical_mellin_norm_le (A R0 : ℝ) (s : ℂ) (hR0 : 1 ≤ R0)
    (hA : R0 ≤ A) (hs : s.re = 1 / 2) (ht : 1 ≤ R0 * |s.im|) :
    ‖actualInitialPrimeMellin A s‖ ≤
      ((204288 : ℝ) ^ 2 * 109395 / 4096 * (1 + R0 ^ 2) ^ 2) /
        A ^ 9 / |s.im| ^ 6 := by
  have hA1 : 1 ≤ A := hR0.trans hA
  have ha : 0 < A := by linarith
  have htpos : 0 < |s.im| := by nlinarith [abs_nonneg s.im]
  have hfreq : 1 ≤ A * |s.im| := ht.trans
    (mul_le_mul_of_nonneg_right hA (abs_nonneg _))
  have hb := critical_bump_norm_le A s hA1 hs hfreq
  have hZ := source_normalization_pos A hA1
  have hZl := actualBumpNormalization_lower A hA1
  have h1 : ‖s‖ ^ 2 = 1 / 4 + s.im ^ 2 := by
    simp only [Complex.sq_norm, Complex.normSq_apply, hs]
    ring
  have h2 : ‖s - 1‖ ^ 2 = 1 / 4 + s.im ^ 2 := by
    simp only [Complex.sq_norm, Complex.normSq_apply, Complex.sub_re,
      Complex.sub_im, Complex.one_re, Complex.one_im, sub_zero, hs]
    ring
  have hsq : 1 ≤ R0 ^ 2 * s.im ^ 2 := by
    nlinarith [sq_abs s.im, sq_nonneg (R0 * |s.im| - 1)]
  have hp : ‖s‖ ^ 2 * ‖s - 1‖ ^ 2 ≤ (1 + R0 ^ 2) ^ 2 * |s.im| ^ 4 := by
    rw [h1, h2, ← sq_abs s.im]
    calc
      _ = (1 / 4 + |s.im| ^ 2) ^ 2 := by ring
      _ ≤ ((1 + R0 ^ 2) * |s.im| ^ 2) ^ 2 := by
        apply pow_le_pow_left₀ (by positivity)
        nlinarith [sq_abs s.im]
      _ = _ := by ring
  rw [actualInitialPrimeMellin_eq_bumpMellinWeight hA1]
  have hn : ‖bumpMellinWeight A s‖ =
      (A / sourceNormalization A) * (‖s‖ ^ 2 * ‖s - 1‖ ^ 2) *
        ‖bumpLaplace ((A : ℂ) * (s - 1 / 2))‖ ^ 2 := by
    unfold bumpMellinWeight
    simp only [norm_mul, norm_pow, Complex.norm_real, Real.norm_eq_abs]
    rw [abs_of_nonneg (by positivity : 0 ≤ A / sourceNormalization A)]
    ring
  rw [hn]
  have hinv : (sourceNormalization A)⁻¹ ≤ (4096 / 109395 : ℝ)⁻¹ :=
    inv_anti₀ (by norm_num) hZl
  calc
    _ ≤ (A / sourceNormalization A) * ((1 + R0 ^ 2) ^ 2 * |s.im| ^ 4) *
        (204288 / (A ^ 5 * |s.im| ^ 5)) ^ 2 := by gcongr
    _ = (sourceNormalization A)⁻¹ *
        ((204288 : ℝ) ^ 2 * (1 + R0 ^ 2) ^ 2 / A ^ 9 / |s.im| ^ 6) := by
      field_simp
      <;> ring
    _ ≤ (4096 / 109395 : ℝ)⁻¹ *
        ((204288 : ℝ) ^ 2 * (1 + R0 ^ 2) ^ 2 / A ^ 9 / |s.im| ^ 6) :=
      mul_le_mul_of_nonneg_right hinv (by positivity)
    _ = _ := by norm_num; ring

end
end FormalResearch.RiemannHypothesis.ActualCriticalOrdinateBudget
