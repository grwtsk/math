/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Tactic

/-! # Multipliers of self-dual lattice mixtures -/
namespace GRWTSK.NumberTheory.XiSelfDualCombZeros

/-- For a reciprocal pair of dilations the centered Mellin multiplier is a
hyperbolic cosine. Mixing this pair with the unit comb tunes its constant term. -/
theorem mixed_multiplier (c d u : ℝ) (hc : 0 < c) (hd : 0 < d) :
    1 - c/(c+d) + c/(c+d)*u/c = (d+u)/(c+d) := by
  have : 0 < c+d := by linarith
  field_simp; ring

theorem real_multiplier_pos {h δ : ℝ} (hh : 0 < h) (hd : 0 < δ) (t : ℝ) :
    0 < Real.cosh (δ*h) + Real.cos (t*h) := by
  have h₁ := Real.one_lt_cosh.mpr (ne_of_gt (mul_pos hd hh))
  linarith [Real.neg_one_le_cos (t*h)]

theorem first_nonreal_zero (h δ : ℝ) (hh : h ≠ 0) :
    Complex.cosh (↑δ * (↑h : ℂ)) +
      Complex.cos (((↑Real.pi : ℂ) / ↑h + ↑δ * Complex.I) * ↑h) = 0 := by
  have hh' : (h : ℂ) ≠ 0 := by exact_mod_cast hh
  rw [show ((↑Real.pi : ℂ) / ↑h + ↑δ * Complex.I) * ↑h =
    ↑Real.pi + (↑δ * ↑h) * Complex.I by field_simp <;> ring, Complex.cos_add_mul_I]
  simp

/-- The same upper-half-plane zero occurs at any odd multiple of pi. -/
theorem band_zero {x : ℝ} (hx : Real.cos x = -1) (hs : Real.sin x = 0)
    (h δ : ℝ) (hh : h ≠ 0) :
    Complex.cosh (↑δ * (↑h : ℂ)) +
      Complex.cos (((↑x : ℂ) / ↑h + ↑δ * Complex.I) * ↑h) = 0 := by
  have hh' : (h : ℂ) ≠ 0 := by exact_mod_cast hh
  have hc' : Complex.cos (x : ℂ) = -1 := by rw [← Complex.ofReal_cos, hx]; norm_num
  have hs' : Complex.sin (x : ℂ) = 0 := by rw [← Complex.ofReal_sin, hs]; norm_num
  rw [show ((↑x : ℂ) / ↑h + ↑δ * Complex.I) * ↑h =
    ↑x + (↑δ * ↑h) * Complex.I by field_simp <;> ring, Complex.cos_add_mul_I, hc', hs']
  ring

end GRWTSK.NumberTheory.XiSelfDualCombZeros
