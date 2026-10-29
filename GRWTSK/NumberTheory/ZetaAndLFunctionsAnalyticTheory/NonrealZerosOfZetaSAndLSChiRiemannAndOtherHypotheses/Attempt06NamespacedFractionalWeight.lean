-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.FractionalWeight.Varianta32dbede46a0fdcd640761b8c8ca94706f5ea8c171f07fc52e8a60c9b84b8b78","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a32dbede46a0fdcd640761b8c8ca94706f5ea8c171f07fc52e8a60c9b84b8b78","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.FractionalWeight.Varianta32dbede46a0fdcd640761b8c8ca94706f5ea8c171f07fc52e8a60c9b84b8b78","mathematical_subject":"Analysis.Integration","original_sha256":"a32dbede46a0fdcd640761b8c8ca94706f5ea8c171f07fc52e8a60c9b84b8b78","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/continuous-research-01a109fc/pass11/hadamard_review/attempt06.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.XiToeplitz
import FormalResearch.RiemannHypothesis.ZeroSymmetry
import Zeta23.FromPNTPlus.ZetaBounds
import Mathlib.MeasureTheory.Function.Floor

/-!
Actual real-zeta sign and actual xi center normalization by the pinned Euler integral.
Human programme direction: grwtsk contributors. OpenAI Codex proof construction.
Scratch verification only; no Hadamard product, RH, PF or zero enumeration is assumed.
-/

namespace GRWTSK.Analysis.RealAnalysis.Integration.FractionalWeight.Varianta32dbede46a0fdcd640761b8c8ca94706f5ea8c171f07fc52e8a60c9b84b8b78

set_option autoImplicit false
namespace ContinuousResearch.ActualRealZetaSign
open MeasureTheory Set Complex
open FormalResearch.RiemannHypothesis
noncomputable section

def fractionalWeight (σ u : ℝ) : ℝ := Int.fract u * u ^ (-σ - 1)

theorem fractionalWeight_integrable {σ : ℝ} (hσ : 0 < σ) :
    IntegrableOn (fractionalWeight σ) (Ioi 1) := by
  have hi : IntegrableOn (fun u : ℝ => u ^ (-σ - 1)) (Ioi 1) :=
    integrableOn_Ioi_rpow_of_lt (by linarith) (by norm_num)
  exact hi.bdd_mul measurable_fract.aestronglyMeasurable
    (ae_of_all _ fun u => by
      rw [Real.norm_eq_abs, abs_of_nonneg (Int.fract_nonneg u)]
      exact (Int.fract_lt_one u).le)

theorem fractionalWeight_nonneg (σ : ℝ) {u : ℝ} (hu : 0 ≤ u) :
    0 ≤ fractionalWeight σ u :=
  mul_nonneg (Int.fract_nonneg u) (Real.rpow_nonneg hu _)

theorem real_centered_euler_integral {σ : ℝ} (hσ : 0 < σ) :
    (∫ u in Ioi (1 : ℝ), ((⌊u⌋ : ℝ) + 1 / 2 - u) * u ^ (-σ - 1)) =
      1 / (2 * σ) - ∫ u in Ioi (1 : ℝ), fractionalWeight σ u := by
  have hi : IntegrableOn (fun u : ℝ => u ^ (-σ - 1)) (Ioi 1) :=
    integrableOn_Ioi_rpow_of_lt (by linarith) (by norm_num)
  have he : (fun u : ℝ => ((⌊u⌋ : ℝ) + 1 / 2 - u) * u ^ (-σ - 1)) =
      fun u => (1 / 2 : ℝ) * u ^ (-σ - 1) - fractionalWeight σ u := by
    funext u
    simp only [fractionalWeight, Int.fract]
    ring
  rw [he, integral_sub (hi.const_mul _) (fractionalWeight_integrable hσ),
    integral_const_mul, integral_Ioi_rpow_of_lt (by linarith : -σ - 1 < -1) (by norm_num)]
  simp
  field_simp

theorem riemannZeta_real_euler {σ : ℝ} (hσ : 0 < σ) (h1 : σ ≠ 1) :
    riemannZeta (σ : ℂ) =
      ((σ / (σ - 1) - σ * ∫ u in Ioi (1 : ℝ), fractionalWeight σ u : ℝ) : ℂ) := by
  have hz := Zeta0EqZeta (N := 1) (by norm_num) (s := (σ : ℂ))
    (by simpa using hσ) (by exact_mod_cast h1)
  have he : (∫ u in Ioi (1 : ℝ),
      ((⌊u⌋ : ℂ) + 1 / 2 - u) * (u : ℂ) ^ (-((σ : ℂ) + 1))) =
      Complex.ofReal (∫ u in Ioi (1 : ℝ),
        ((⌊u⌋ : ℝ) + 1 / 2 - u) * u ^ (-σ - 1)) := by
    rw [← integral_complex_ofReal]
    apply setIntegral_congr_fun measurableSet_Ioi
    intro u hu
    dsimp only
    have hu0 : 0 ≤ u := (by norm_num : (0 : ℝ) < 1).le.trans hu.le
    rw [show -((σ : ℂ) + 1) = ((-σ - 1 : ℝ) : ℂ) by push_cast; ring,
      ← Complex.ofReal_cpow hu0]
    push_cast
    rfl
  rw [riemannZeta0_apply] at hz
  simp only [Nat.cast_one] at hz
  rw [he, real_centered_euler_integral hσ] at hz
  have hσc : (σ : ℂ) ≠ 0 := ofReal_ne_zero.mpr hσ.ne'
  have h1c : (1 - (σ : ℂ)) ≠ 0 := sub_ne_zero.mpr (by exact_mod_cast Ne.symm h1)
  have hsc1 : (σ : ℂ) - 1 ≠ 0 := sub_ne_zero.mpr (by exact_mod_cast h1)
  simp only [Finset.sum_range_succ, Finset.sum_range_zero, Nat.cast_zero,
    Nat.cast_one, Complex.zero_cpow hσc, div_zero, zero_add, one_cpow, div_one] at hz
  rw [← hz]
  push_cast
  field_simp [hσc, h1c, hsc1]
  ring

theorem riemannZeta_ofReal_neg {σ : ℝ} (hσ : 0 < σ) (h1 : σ < 1) :
    (riemannZeta (σ : ℂ)).re < 0 := by
  rw [riemannZeta_real_euler hσ (ne_of_lt h1), ofReal_re]
  have hi : 0 ≤ ∫ u in Ioi (1 : ℝ), fractionalWeight σ u :=
    integral_nonneg_of_ae (ae_restrict_of_forall_mem measurableSet_Ioi
      fun u hu => fractionalWeight_nonneg σ ((by norm_num : (0 : ℝ) < 1).le.trans hu.le))
  have hp : σ / (σ - 1) < 0 := div_neg_of_pos_of_neg hσ (by linarith)
  have hn : 0 ≤ σ * ∫ u in Ioi (1 : ℝ), fractionalWeight σ u := mul_nonneg hσ.le hi
  linarith

theorem nontrivial_zero_im_ne_zero {ρ : ℂ} (hρ : NontrivialZetaZero ρ) : ρ.im ≠ 0 := by
  intro him
  have hr : ρ = (ρ.re : ℂ) := by apply Complex.ext <;> simp [him]
  have hn := riemannZeta_ofReal_neg hρ.mem_critical_strip.1 hρ.mem_critical_strip.2
  rw [← hr, hρ.1] at hn
  norm_num at hn

/-- The literal real value of Deligne's factor; no amplitude is chosen. -/
def realGammaR (σ : ℝ) : ℝ := Real.pi ^ (-σ / 2) * Real.Gamma (σ / 2)

theorem gammaR_ofReal (σ : ℝ) : Complex.Gammaℝ (σ : ℂ) = (realGammaR σ : ℂ) := by
  rw [Complex.Gammaℝ_def]
  have he : -(σ : ℂ) / 2 = ((-σ / 2 : ℝ) : ℂ) := by push_cast; ring
  have hx : (σ : ℂ) / 2 = ((σ / 2 : ℝ) : ℂ) := by push_cast; ring
  rw [he, ← Complex.ofReal_cpow Real.pi_pos.le, hx, Complex.Gamma_ofReal]
  simp only [realGammaR, ofReal_mul]

theorem realGammaR_pos {σ : ℝ} (hσ : 0 < σ) : 0 < realGammaR σ :=
  mul_pos (Real.rpow_pos_of_pos Real.pi_pos _) (Real.Gamma_pos_of_pos (by linarith))

theorem xi_real_euler {σ : ℝ} (hσ : 0 < σ) (h1 : σ ≠ 1) :
    XiToeplitz.xi (σ : ℂ) =
      ((σ * (σ - 1) * realGammaR σ / 2 *
        (σ / (σ - 1) - σ * ∫ u in Ioi (1 : ℝ), fractionalWeight σ u) : ℝ) : ℂ) := by
  have hΓ : Complex.Gammaℝ (σ : ℂ) ≠ 0 := Complex.Gammaℝ_ne_zero_of_re_pos (by simpa using hσ)
  have hc : completedRiemannZeta (σ : ℂ) =
      Complex.Gammaℝ (σ : ℂ) * riemannZeta (σ : ℂ) := by
    have h := riemannZeta_def_of_ne_zero (s := (σ : ℂ)) (ofReal_ne_zero.mpr hσ.ne')
    exact (mul_comm _ _).trans ((eq_div_iff hΓ).mp h) |>.symm
  rw [XiToeplitz.xi_eq_completed (ofReal_ne_zero.mpr hσ.ne') (by exact_mod_cast h1),
    hc, gammaR_ofReal, riemannZeta_real_euler hσ h1]
  push_cast
  ring

theorem xi_ofReal_re_pos {σ : ℝ} (hσ : 0 < σ) (h1 : σ < 1) :
    0 < (XiToeplitz.xi (σ : ℂ)).re := by
  rw [xi_real_euler hσ (ne_of_lt h1), ofReal_re]
  have hz : σ / (σ - 1) - σ * ∫ u in Ioi (1 : ℝ), fractionalWeight σ u < 0 := by
    simpa only [riemannZeta_real_euler hσ (ne_of_lt h1), ofReal_re] using
      riemannZeta_ofReal_neg hσ h1
  have hp : σ * (σ - 1) * realGammaR σ / 2 < 0 :=
    div_neg_of_neg_of_pos (mul_neg_of_neg_of_pos
      (mul_neg_of_pos_of_neg hσ (by linarith)) (realGammaR_pos hσ)) (by norm_num)
  exact mul_pos_of_neg_of_neg hp hz

theorem coefficient_zero_exact :
    XiToeplitz.coefficient 0 = realGammaR (1 / 2) / 8 *
      (1 + (1 / 2 : ℝ) * ∫ u in Ioi (1 : ℝ), fractionalWeight (1 / 2) u) := by
  have he := xi_real_euler (by norm_num : (0 : ℝ) < 1 / 2)
    (by norm_num : (1 / 2 : ℝ) ≠ 1)
  norm_num at he
  rw [XiToeplitz.coefficient_zero, he]
  simp only [mul_re]
  norm_num
  ring

theorem coefficient_zero_pos : 0 < XiToeplitz.coefficient 0 := by
  rw [XiToeplitz.coefficient_zero]
  convert xi_ofReal_re_pos (by norm_num : (0 : ℝ) < 1 / 2) (by norm_num : (1 / 2 : ℝ) < 1) using 1
  norm_num

end
end ContinuousResearch.ActualRealZetaSign
