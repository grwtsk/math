/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the file LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.SpecialFunctions.ComplexGammaGrowth

/-!
# Reciprocal Gamma growth away from the real axis

MSC2020: 33B15, 30D15. Reflection and two recurrence steps reduce the
reciprocal Gamma function on a fixed strip to the existing Euler-integral
upper bound at 3-z. The imaginary-part lower bound excludes every pole and
makes both recurrence denominators at least one. No Gamma lower-bound
hypothesis, Stirling formula, or division at an exceptional point is used.

Consumer: the actual Dirichlet central-strip estimate. Primary inputs are
Loeffler's Gamma reflection and recurrence at the repository Mathlib pin.
SOURCE_PROOF_CANDIDATE; elaboration, kernel replay, transitive axiom audit and
independent review NOT_RUN. Novelty UNASSESSED. Coordination: math#1801.
-/

set_option autoImplicit false
noncomputable section

open GRWTSK.SpecialFunctions.ComplexGammaGrowth

namespace GRWTSK.SpecialFunctions.ReciprocalGammaStrip

/-- A non-real point is not one of the totalized Gamma poles. -/
theorem gamma_ne_zero_of_im_ne {z : ℂ} (hz : z.im ≠ 0) : Complex.Gamma z ≠ 0 := by
  apply Complex.Gamma_ne_zero
  intro n hn
  apply hz
  simpa only [Complex.neg_im, Complex.natCast_im, neg_zero] using congrArg Complex.im hn

/-- Uniform reciprocal bound on -1<=Re(z)<=2, |Im(z)|>=1. -/
theorem norm_inv_Gamma_le_strip {z : ℂ}
    (hl : -1 ≤ z.re) (hu : z.re ≤ 2) (hi : 1 ≤ |z.im|) :
    ‖(Complex.Gamma z)⁻¹‖ ≤
      (2 * Real.exp (4 * Real.log 8) / Real.pi) * Real.exp (Real.pi * |z.im|) := by
  have him : z.im ≠ 0 := by intro h; simp [h] at hi
  have him1 : (1 - z : ℂ).im ≠ 0 := by simpa using neg_ne_zero.mpr him
  have hG := gamma_ne_zero_of_im_ne him
  have hG1 := gamma_ne_zero_of_im_ne him1
  have hpi : (Real.pi : ℂ) ≠ 0 := Complex.ofReal_ne_zero.mpr Real.pi_pos.ne'
  have hsin : Complex.sin (Real.pi * z) ≠ 0 := by
    intro h
    have hr := Complex.Gamma_mul_Gamma_one_sub z
    rw [h, div_zero] at hr
    exact (mul_ne_zero hG hG1) hr
  have hreflect : (Complex.Gamma z)⁻¹ =
      Complex.Gamma (1 - z) * Complex.sin (Real.pi * z) / Real.pi := by
    have hr := (eq_div_iff hsin).mp (Complex.Gamma_mul_Gamma_one_sub z)
    apply (eq_div_iff hpi).mpr
    calc
      _ = (Complex.Gamma z)⁻¹ *
          ((Complex.Gamma z * Complex.Gamma (1 - z)) * Complex.sin (Real.pi * z)) :=
        congrArg (fun v : ℂ => (Complex.Gamma z)⁻¹ * v) hr.symm
      _ = _ := by simp only [← mul_assoc, inv_mul_cancel₀ hG, one_mul]
  have hnorm1 : 1 ≤ ‖(1 : ℂ) - z‖ := by
    have h := Complex.abs_im_le_norm ((1 : ℂ) - z)
    simp only [Complex.sub_im, Complex.one_im, zero_sub, abs_neg] at h
    exact hi.trans h
  have hnorm2 : 1 ≤ ‖(2 : ℂ) - z‖ := by
    have h := Complex.abs_im_le_norm ((2 : ℂ) - z)
    have he : |((2 : ℂ) - z).im| = |z.im| := by simp
    rw [he] at h
    exact hi.trans h
  have hn1 : (1 : ℂ) - z ≠ 0 := by
    intro h
    rw [h, norm_zero] at hnorm1
    norm_num at hnorm1
  have hn2 : (2 : ℂ) - z ≠ 0 := by
    intro h
    rw [h, norm_zero] at hnorm2
    norm_num at hnorm2
  have hrec1 : ‖Complex.Gamma (2 - z)‖ =
      ‖(1 : ℂ) - z‖ * ‖Complex.Gamma (1 - z)‖ := by
    have h := congrArg norm (Complex.Gamma_add_one (1 - z) hn1)
    simpa only [show (1 - z) + 1 = 2 - z by ring, norm_mul] using h
  have hrec2 : ‖Complex.Gamma (3 - z)‖ =
      ‖(2 : ℂ) - z‖ * ‖Complex.Gamma (2 - z)‖ := by
    have h := congrArg norm (Complex.Gamma_add_one (2 - z) hn2)
    simpa only [show (2 - z) + 1 = 3 - z by ring, norm_mul] using h
  have hgrowth : ‖Complex.Gamma (1 - z)‖ ≤ 2 * Real.exp (4 * Real.log 8) := by
    calc
      _ ≤ ‖Complex.Gamma (2 - z)‖ := by
        rw [hrec1]
        exact le_mul_of_one_le_left (norm_nonneg _) hnorm1
      _ ≤ ‖Complex.Gamma (3 - z)‖ := by
        rw [hrec2]
        exact le_mul_of_one_le_left (norm_nonneg _) hnorm2
      _ ≤ _ := by
        apply norm_Gamma_le_envelope (R := 4)
        · change 1 ≤ 3 - z.re
          linarith
        · change 3 - z.re ≤ 4
          linarith
  have hphase : ‖Complex.sin (Real.pi * z)‖ ≤ Real.exp (Real.pi * |z.im|) := by
    have h := (norm_cos_sin_le_exp_im (Real.pi * z)).2
    simpa only [Complex.im_ofReal_mul, abs_mul, abs_of_pos Real.pi_pos] using h
  rw [hreflect, norm_div, norm_mul, Complex.norm_of_nonneg Real.pi_pos.le]
  calc
    _ ≤ (2 * Real.exp (4 * Real.log 8) * Real.exp (Real.pi * |z.im|)) / Real.pi :=
      div_le_div_of_nonneg_right
        (mul_le_mul hgrowth hphase (norm_nonneg _) (by positivity)) Real.pi_pos.le
    _ = _ := by ring

/-- Explicit fixed-strip cost for the reciprocal real archimedean factor. -/
def reciprocalStripConstant : ℝ :=
  (2 / Real.pi) * Real.exp (4 * Real.log 8 + 2 * |Real.log Real.pi|)

/-- The constant is strictly positive. -/
theorem reciprocalStripConstant_pos : 0 < reciprocalStripConstant := by
  unfold reciprocalStripConstant
  exact mul_pos (div_pos (by norm_num) Real.pi_pos) (Real.exp_pos _)

/-- The range includes both s and s+1 for -1<=Re(s)<=2, |Im(s)|>=2. -/
theorem norm_inv_GammaR_le_strip {w : ℂ}
    (hl : -2 ≤ w.re) (hu : w.re ≤ 4) (hi : 2 ≤ |w.im|) :
    ‖(Complex.Gammaℝ w)⁻¹‖ ≤
      reciprocalStripConstant * Real.exp (Real.pi * |w.im| / 2) := by
  have hr : (w / 2 : ℂ).re = w.re / 2 := by simp
  have him : |(w / 2 : ℂ).im| = |w.im| / 2 := by simp [abs_div]
  have hhalfL : -1 ≤ (w / 2 : ℂ).re := by rw [hr]; linarith
  have hhalfU : (w / 2 : ℂ).re ≤ 2 := by rw [hr]; linarith
  have hhalfI : 1 ≤ |(w / 2 : ℂ).im| := by rw [him]; linarith
  have hpower : ‖(((Real.pi : ℂ) ^ (-w / 2))⁻¹)‖ ≤
      Real.exp (2 * |Real.log Real.pi|) := by
    rw [← Complex.cpow_neg, show -(-w / 2) = w / 2 by ring]
    exact norm_ofReal_cpow_le_exp_abs Real.pi_pos
      (abs_le.mpr ⟨by linarith, hhalfU⟩)
  have hgamma := norm_inv_Gamma_le_strip hhalfL hhalfU hhalfI
  rw [him, show Real.pi * (|w.im| / 2) = Real.pi * |w.im| / 2 by ring] at hgamma
  rw [Complex.Gammaℝ_def, mul_inv, norm_mul]
  calc
    _ ≤ Real.exp (2 * |Real.log Real.pi|) *
        ((2 * Real.exp (4 * Real.log 8) / Real.pi) *
          Real.exp (Real.pi * |w.im| / 2)) :=
      mul_le_mul hpower hgamma (norm_nonneg _) (by positivity)
    _ = _ := by
      rw [reciprocalStripConstant, Real.exp_add]
      ring

end GRWTSK.SpecialFunctions.ReciprocalGammaStrip
