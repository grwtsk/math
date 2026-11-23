/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Mathlib.Basic.Real.Basic
import Mathlib.Tactic

/-! The dyadic exponent optimization for the Euler terms in the Newman heat transition. -/

namespace GRWTSK.XiNewmanEulerTransition

/-- The four bounds for a logarithmic phase on a dyadic interval of length exp(u L). -/
noncomputable def logSumExponent (u : ℝ) : ℝ :=
  min u (min (13/414 + 173/207*u) (min (13/194 + 139/194*u) (13/84 + u/2)))

/-- The least transition constant obtained from these four lines. -/
noncomputable def transition : ℝ := 148176/57695

private theorem line_below {a b u k v c : ℝ} (hab : a < b) (hua : a ≤ u)
    (hub : u ≤ b) (hc : 0 ≤ c)
    (ha : k+v*a ≤ a/2 + c*a*(1-a)/4)
    (hb : k+v*b ≤ b/2 + c*b*(1-b)/4) :
    k+v*u ≤ u/2 + c*u*(1-u)/4 := by
  let D := fun x : ℝ => x/2 + c*x*(1-x)/4 - (k+v*x)
  have h : (b-a)*D u = (b-u)*D a + (u-a)*D b + c/4*(b-a)*(u-a)*(b-u) := by
    dsimp [D]
    ring
  have hn : 0 ≤ (b-a)*D u := by
    rw [h]
    have h₁ : 0 ≤ D a := sub_nonneg.mpr ha
    have h₂ : 0 ≤ D b := sub_nonneg.mpr hb
    positivity
  exact sub_nonneg.mp ((mul_nonneg_iff_of_pos_left (sub_pos.mpr hab)).mp hn)

/-- The optimal bound over the entire interval, including the intermediate ranges of lengths. -/
theorem envelope_bound {u : ℝ} (hu : 0 ≤ u) (hu' : u ≤ 1/2) :
    logSumExponent u ≤ u/2 + transition*u*(1-u)/4 := by
  unfold logSumExponent transition
  by_cases h₁ : u ≤ 13/68
  · apply (min_le_left _ _).trans
    simpa using (line_below (k := 0) (v := 1) (a := 0) (b := 13/68)
      (c := 148176/57695) (by norm_num) hu h₁ (by norm_num) (by norm_num) (by norm_num))
  by_cases h₂ : u ≤ 1430/4789
  · apply ((min_le_right _ _).trans (min_le_left _ _)).trans
    exact line_below (a := 13/68) (b := 1430/4789) (by norm_num) (le_of_not_ge h₁)
      h₂ (by norm_num) (by norm_num) (by norm_num)
  by_cases h₃ : u ≤ 715/1764
  · apply ((min_le_right _ _).trans ((min_le_right _ _).trans (min_le_left _ _))).trans
    exact line_below (a := 1430/4789) (b := 715/1764) (by norm_num) (le_of_not_ge h₂)
      h₃ (by norm_num) (by norm_num) (by norm_num)
  · apply ((min_le_right _ _).trans ((min_le_right _ _).trans (min_le_right _ _))).trans
    simpa [div_eq_mul_inv, mul_comm, mul_left_comm, mul_assoc] using
      (line_below (k := 13/84) (v := 1/2) (a := 715/1764) (b := 1/2)
        (c := 148176/57695) (by norm_num) (le_of_not_ge h₃) hu' (by norm_num)
        (by norm_num) (by norm_num))

/-- The active affine exponents meet the quadratic majorant exactly at this length. -/
theorem envelope_attained :
    logSumExponent (715/1764) =
      (715/1764)/2 + transition*(715/1764)*(1-715/1764)/4 := by
  norm_num [logSumExponent, transition, min_def]

/-- A strict margin above the transition gives exponential decay on every longer block. -/
theorem long_block_decay {u c d : ℝ} (hu : 0 ≤ u) (hu' : u ≤ 1/2)
    (hd : transition+d ≤ c) :
    logSumExponent u - u/2 - c*u*(1-u)/4 ≤ -d*u*(1-u)/4 := by
  have hp : 0 ≤ u*(1-u) := mul_nonneg hu (by linarith)
  nlinarith [envelope_bound hu hu', mul_nonneg hp (sub_nonneg.mpr hd)]

/-- Reciprocal expansion with the quadratic remainder retained. -/
theorem reciprocal_phase {l d : ℝ} (hl : l ≠ 0) (hd : l+2*d ≠ 0) :
    2/(l+2*d) = 2/l - 4*d/l^2 + 8*d^2/(l^2*(l+2*d)) := by
  field_simp
  ring

end GRWTSK.XiNewmanEulerTransition
