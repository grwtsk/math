import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Tactic

/-! Finite-window and spectral-comparison steps in the Weil counting argument. -/

namespace GRWTSK.XiWeilWindowWeyl

/-- Positive-part window overlap after a path has visited both extremes. -/
def overlap (width low high : ℝ) : ℝ := max (width - (high - low)) 0

theorem overlap_after_step (T low high step : ℝ) (hl : low ≤ 0) (hh : 0 ≤ high) :
    overlap T (min low step) (max high step) ≤ max (T - |step|) 0 := by
  unfold overlap
  apply max_le_max_right
  rcases le_total 0 step with hs | hs
  · rw [abs_of_nonneg hs]
    linarith [le_max_right high step, min_le_left low step]
  · rw [abs_of_nonpos hs]
    linarith [le_max_left high step, min_le_right low step]

/-- Schur error at a positive energy gap in the omitted modes. -/
theorem tail_form_comparison {gap coupling x y : ℝ} (h : 0 < gap) :
    -(coupling ^ 2 / gap) * x ^ 2 ≤ gap * y ^ 2 - 2 * coupling * x * y := by
  field_simp
  nlinarith [sq_nonneg (gap * y - coupling * x)]

/-- At the birth of a new jump length the two return walks of length two
contribute its weight squared. Nonnegative additional walks preserve injectivity. -/
theorem threshold_atom_strict {remainder : ℝ → ℝ} (hr : MonotoneOn remainder (Set.Ici 0))
    {a b : ℝ} (ha : 0 ≤ a) (hab : a < b) :
    a ^ 2 + remainder a < b ^ 2 + remainder b := by
  have h := hr (show a ∈ Set.Ici 0 from ha)
    (show b ∈ Set.Ici 0 from ha.trans hab.le) hab.le
  nlinarith [mul_pos (sub_pos.mpr hab) (show 0 < b + a by linarith)]

end GRWTSK.XiWeilWindowWeyl
