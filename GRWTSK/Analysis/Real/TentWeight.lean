/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human research direction: R.A. Jacob Martone. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Ring

set_option autoImplicit false

/-!
# Normalized triangular weight and the exact hinge identity

The maximum is one, not the radius. Its integral main term is the radius,
not the full interval width. Positivity is exactly the open interval.
This is elementary real algebra, not a prime-distribution theorem.
Source draft for #261/#189; NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.Analysis.Real.TentWeight

/-- A normalized nonnegative tent, with zero values at both endpoints. -/
noncomputable def tent (x h t : ℝ) : ℝ := max 0 (1 - |t - x| / h)

theorem tent_nonneg (x h t : ℝ) : 0 ≤ tent x h t := le_max_left _ _

theorem tent_le_one (x h t : ℝ) (hh : 0 < h) : tent x h t ≤ 1 := by
  have hd := div_nonneg (abs_nonneg (t - x)) hh.le
  exact max_le (by norm_num) (by linarith)

/-- Strict support, including the fact that both boundary weights vanish. -/
theorem tent_pos_iff (x h t : ℝ) (hh : 0 < h) :
    0 < tent x h t ↔ x - h < t ∧ t < x + h := by
  unfold tent
  rw [lt_max_iff]
  simp only [lt_self_iff_false, false_or, sub_pos, div_lt_one hh, abs_lt]
  constructor <;> rintro ⟨h₁, h₂⟩ <;> constructor <;> linarith

theorem tent_eq_zero_of_outside (x h t : ℝ) (hh : 0 < h)
    (hout : ¬ (x - h < t ∧ t < x + h)) : tent x h t = 0 := by
  apply le_antisymm _ (tent_nonneg x h t)
  apply le_of_not_gt
  exact fun hp => hout ((tent_pos_iff x h t hh).mp hp)

theorem tent_on_left (x h t : ℝ) (hh : 0 < h)
    (hl : x - h ≤ t) (hr : t ≤ x) :
    tent x h t = (t - (x - h)) / h := by
  have hv : 0 ≤ (t - (x - h)) / h := div_nonneg (by linarith) hh.le
  have he : 1 - (-(t - x)) / h = (t - (x - h)) / h := by
    field_simp [ne_of_gt hh]
    ring
  rw [tent, abs_of_nonpos (by linarith), he, max_eq_right hv]

theorem tent_on_right (x h t : ℝ) (hh : 0 < h)
    (hl : x ≤ t) (hr : t ≤ x + h) :
    tent x h t = (x + h - t) / h := by
  have hv : 0 ≤ (x + h - t) / h := div_nonneg (by linarith) hh.le
  have he : 1 - (t - x) / h = (x + h - t) / h := by
    field_simp [ne_of_gt hh]
    ring
  rw [tent, abs_of_nonneg (by linarith), he, max_eq_right hv]

/-- Second differencing a linear hinge gives the unnormalized tent h*tent.
No averaging, limit interchange or analytic explicit formula is used. -/
theorem hinge_second_difference (x h t : ℝ) (hh : 0 < h) :
    max (x + h - t) 0 - 2 * max (x - t) 0 + max (x - h - t) 0 =
      h * tent x h t := by
  by_cases hleft : t ≤ x - h
  · rw [tent_eq_zero_of_outside x h t hh (by intro ht; linarith [ht.1])]
    rw [max_eq_left (by linarith), max_eq_left (by linarith),
      max_eq_left (by linarith)]
    ring
  by_cases hmid : t ≤ x
  · rw [tent_on_left x h t hh (by linarith) hmid]
    rw [max_eq_left (by linarith), max_eq_left (by linarith),
      max_eq_right (by linarith)]
    field_simp [ne_of_gt hh]
    ring
  by_cases hright : t ≤ x + h
  · rw [tent_on_right x h t hh (by linarith) hright]
    rw [max_eq_left (by linarith), max_eq_right (by linarith),
      max_eq_right (by linarith)]
    field_simp [ne_of_gt hh]
    ring
  · rw [tent_eq_zero_of_outside x h t hh (by intro ht; linarith [ht.2])]
    rw [max_eq_right (by linarith), max_eq_right (by linarith),
      max_eq_right (by linarith)]
    ring

/-- The affine terms in a first Riesz explicit formula cancel exactly. -/
theorem affine_second_difference (x h c d : ℝ) :
    (c * (x + h) + d) - 2 * (c * x + d) + (c * (x - h) + d) = 0 := by
  ring

/-- The normalized second difference of the quadratic pole term is h, not 2h. -/
theorem quadratic_main_second_difference (x h : ℝ) (hh : 0 < h) :
    ((x + h) ^ 2 / 2 - 2 * (x ^ 2 / 2) + (x - h) ^ 2 / 2) / h = h := by
  field_simp [ne_of_gt hh]
  ring

end GRWTSK.Analysis.Real.TentWeight
