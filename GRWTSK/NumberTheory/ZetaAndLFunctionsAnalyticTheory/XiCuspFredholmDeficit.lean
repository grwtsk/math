/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import Mathlib.Basic.Complex.Basic
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Ring

/-! One-point contribution of a missing xi quartet to the positive
Fredholm ratio at the ordinate 3i/2. -/

namespace GRWTSK.NumberTheory.XiCuspFredholmDeficit

/-- The regularized paired contribution at an imaginary test point. -/
theorem quartet_identity (a : ℂ) (b : ℝ) (ha : a ≠ 0) :
    Complex.normSq (1 + (b : ℂ) / a^2) =
      1 + 2*b / Complex.normSq a + b*(b-4*a.im^2)/(Complex.normSq a)^2 := by
  have hn : Complex.normSq a ≠ 0 := (Complex.normSq_pos.mpr ha).ne'
  rw [show (1 : ℂ) + (b : ℂ) / a^2 = (a^2 + (b : ℂ))/a^2 by field_simp]
  rw [Complex.normSq_div, Complex.normSq_add, map_pow, Complex.normSq_ofReal]
  field_simp [hn]
  simp [Complex.mul_re,Complex.mul_im,pow_two,Complex.normSq_apply]
  ring

/-- Each omitted quartet in the critical strip gives a strictly
positive relative excess which has a uniform bound up to height T. -/
theorem quartet_lower_bound (a : ℂ) (T : ℝ) (ha : a ≠ 0)
    (strip : a.im^2 < 1/4) (height : a.re^2 ≤ T^2) :
    1 + (9/2)/(T^2+1/4) < Complex.normSq (1 + ((9/4 : ℝ) : ℂ)/a^2) := by
  have hn : 0 < Complex.normSq a := Complex.normSq_pos.mpr ha
  have hT : Complex.normSq a ≤ T^2+1/4 := by
    rw [Complex.normSq_apply]; nlinarith
  have hb : 0 < (9/4 : ℝ)*(9/4-4*a.im^2)/(Complex.normSq a)^2 :=
    div_pos (mul_pos (by norm_num) (by linarith)) (sq_pos_of_pos hn)
  have he := div_le_div_of_nonneg_left (by norm_num : 0 ≤ (9/2 : ℝ)) hn hT
  rw [quartet_identity a (9/4) ha]
  linarith

end GRWTSK.NumberTheory.XiCuspFredholmDeficit
