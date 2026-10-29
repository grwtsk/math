/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Cotangent
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Positivity
import Mathlib.Tactic.Ring

set_option autoImplicit false

/-!
# Height bounds for the actual complex sine and cotangent

The exponential ratio bounds the full cotangent, not only its principal part.
Both height signs are covered. No assertion at a real cotangent pole is used.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.Analysis.ComplexAnalysis.TrigonometricHeightBounds

/-- A bound depending only on the imaginary coordinate. -/
theorem norm_sin_le_exp_abs_im (z : ℂ) :
    ‖Complex.sin z‖ ≤ Real.exp |z.im| := by
  change ‖(Complex.exp (-z * Complex.I) - Complex.exp (z * Complex.I)) *
    Complex.I / 2‖ ≤ _
  rw [norm_div, norm_mul, Complex.norm_I, mul_one]
  norm_num only [Complex.norm_ofNat]
  have h := norm_sub_le (Complex.exp (-z * Complex.I)) (Complex.exp (z * Complex.I))
  have h₁ : (-z * Complex.I).re = z.im := by simp
  have h₂ : (z * Complex.I).re = -z.im := by simp
  rw [Complex.norm_exp, Complex.norm_exp, h₁, h₂] at h
  have hp := Real.exp_le_exp.mpr (le_abs_self z.im)
  have hn := Real.exp_le_exp.mpr (neg_le_abs z.im)
  linarith

/-- A small exponential coordinate has a denominator bounded away from zero. -/
theorem norm_cot_ratio_le_three (q : ℂ) (hq : ‖q‖ ≤ 1 / 2) :
    ‖(q + 1) / (Complex.I * (1 - q))‖ ≤ (3 : ℝ) := by
  have hd : (1 / 2 : ℝ) ≤ ‖(1 : ℂ) - q‖ := by
    have ht := norm_le_norm_sub_add (1 : ℂ) q
    rw [norm_one] at ht
    linarith
  have hn : ‖q + 1‖ ≤ (3 / 2 : ℝ) := by
    have ht := norm_add_le q (1 : ℂ)
    rw [norm_one] at ht
    linarith
  rw [norm_div, norm_mul, Complex.norm_I, one_mul]
  apply (div_le_iff₀ (by linarith : 0 < ‖(1 : ℂ) - q‖)).mpr
  linarith

/-- The upper half-plane estimate follows from the actual exponential ratio. -/
theorem norm_cot_le_three_of_one_le_im (z : ℂ) (hz : 1 ≤ z.im) :
    ‖Complex.cot z‖ ≤ (3 : ℝ) := by
  rw [Complex.cot_eq_exp_ratio]
  apply norm_cot_ratio_le_three
  have hr : (2 * Complex.I * z).re = -(2 * z.im) := by simp
  rw [Complex.norm_exp, hr, Real.exp_neg, inv_eq_one_div]
  have he : 2 ≤ Real.exp (2 * z.im) := by
    linarith [Real.add_one_le_exp (2 * z.im)]
  apply (div_le_iff₀ (Real.exp_pos _)).mpr
  linarith

/-- Oddness transfers the same estimate to the negative height, without a line projection. -/
theorem norm_cot_le_three (z : ℂ) (hz : 1 ≤ |z.im|) :
    ‖Complex.cot z‖ ≤ (3 : ℝ) := by
  by_cases hp : 0 ≤ z.im
  · apply norm_cot_le_three_of_one_le_im
    simpa only [abs_of_nonneg hp] using hz
  · have hn : z.im < 0 := lt_of_not_ge hp
    have h := norm_cot_le_three_of_one_le_im (-z) (by
      simpa only [Complex.neg_im, abs_of_neg hn] using hz)
    simpa [Complex.cot, Complex.cos_neg, Complex.sin_neg] using h

/-- The normalization occurring in the differentiated zeta functional equation. -/
theorem norm_half_pi_cot_le (s : ℂ) (hs : 1 ≤ |s.im|) :
    ‖((Real.pi : ℂ) / 2) *
      (Complex.cos ((Real.pi : ℂ) * s / 2) /
        Complex.sin ((Real.pi : ℂ) * s / 2))‖ ≤ 3 * Real.pi / 2 := by
  have hi : 1 ≤ |((Real.pi : ℂ) * s / 2).im| := by
    have he : ((Real.pi : ℂ) * s / 2).im = Real.pi * s.im / 2 := by simp
    rw [he, abs_div, abs_mul, abs_of_pos Real.pi_pos]
    norm_num only [abs_of_pos (show (0 : ℝ) < 2 by norm_num)]
    nlinarith [Real.two_le_pi, mul_le_mul_of_nonneg_left hs Real.pi_pos.le]
  have hb := norm_cot_le_three ((Real.pi : ℂ) * s / 2) hi
  change ‖((Real.pi : ℂ) / 2) * Complex.cot ((Real.pi : ℂ) * s / 2)‖ ≤ _
  rw [norm_mul, norm_div, Complex.norm_real, Real.norm_eq_abs, abs_of_pos Real.pi_pos]
  norm_num only [Complex.norm_ofNat]
  nlinarith [mul_le_mul_of_nonneg_left hb (by positivity : 0 ≤ Real.pi / 2)]

end GRWTSK.Analysis.ComplexAnalysis.TrigonometricHeightBounds
