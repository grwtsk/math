/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.RealFunctions.RationalLogEnclosure

/-! # Dyadic range reduction for rational logarithm enclosures -/

set_option autoImplicit false

namespace GRWTSK.RealFunctions

/-- Enclose the logarithm by splitting the argument into a power of two
and its rational quotient. -/
def rationalLogDyadicEnclosure (z : ℚ) (a k : ℕ) : ℚ × ℚ :=
  let b := rationalLogEnclosure 2 k
  let u := rationalLogEnclosure (z / 2 ^ a) k
  (a * b.1 + u.1, a * b.2 + u.2)

/-- The same lower-sample and tail contract holds when the quotient is at
least one. Choosing a quotient below two keeps both series arguments small. -/
theorem rationalLogDyadicEnclosure_correct (z : ℚ) (a k : ℕ)
    (hz : (2 : ℚ) ^ a ≤ z) :
    0 ≤ (rationalLogDyadicEnclosure z a k).1 ∧
      ((rationalLogDyadicEnclosure z a k).1 : ℝ) ≤ Real.log (z : ℝ) ∧
      Real.log (z : ℝ) - ((rationalLogDyadicEnclosure z a k).1 : ℝ) ≤
        ((rationalLogDyadicEnclosure z a k).2 : ℝ) := by
  let u : ℚ := z / 2 ^ a
  have hu : 1 ≤ u := (le_div_iff₀ (by positivity)).2 (by simpa using hz)
  have hup : 0 < (u : ℝ) := by exact_mod_cast (zero_lt_one.trans_le hu)
  have hprod : (2 : ℝ) ^ a * (u : ℝ) = (z : ℝ) := by
    simp only [u, Rat.cast_div, Rat.cast_pow, Rat.cast_ofNat]
    field_simp
  have hlog : Real.log (z : ℝ) = (a : ℝ) * Real.log 2 + Real.log (u : ℝ) := by
    rw [← hprod, Real.log_mul (by positivity : (2 : ℝ) ^ a ≠ 0) hup.ne', Real.log_pow]
  obtain ⟨h2, hl2, he2⟩ := rationalLogEnclosure_correct 2 (by norm_num) k
  obtain ⟨hU, hlU, heU⟩ := rationalLogEnclosure_correct u hu k
  simp only [Rat.cast_ofNat] at hl2 he2
  simp only [u] at hlog hlU heU
  refine ⟨add_nonneg (mul_nonneg (by positivity) h2) hU, ?_, ?_⟩
  · simp only [rationalLogDyadicEnclosure, Rat.cast_add, Rat.cast_mul, Rat.cast_natCast, hlog]
    exact add_le_add (mul_le_mul_of_nonneg_left hl2 (by positivity)) hlU
  · simp only [rationalLogDyadicEnclosure, Rat.cast_add, Rat.cast_mul, Rat.cast_natCast, hlog]
    have h := mul_le_mul_of_nonneg_left he2 (show (0 : ℝ) ≤ a by positivity)
    linarith

end GRWTSK.RealFunctions
