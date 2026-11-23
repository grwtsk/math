/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import Mathlib.Algebra.BigOperators.Intervals
import Mathlib.Algebra.Order.BigOperators.Ring.Finset
import Mathlib.Basic.Real.Basic
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Positivity
import Mathlib.Tactic.Ring

/-!
# The signed period loss across lifts

The slope and height use the same mean log period with coefficients
`k+2j−1−m` and `k`. In a fixed cell the latitude of the weights across
lifts is much smaller than their common baseline.
-/

namespace GRWTSK.NumberTheory.AlpogePeriodWeightResidual

open Finset

/-- For any number `m+1` of lifts, the residual is a weighted sum of
successive gaps. The first lift has zero-based index zero. -/
theorem residual_eq_gap_sum (m : ℕ) (w : ℕ → ℝ) :
    ∑ j ∈ range (m+1), (2*(j : ℝ)-m)*w j =
      ∑ j ∈ range m, ((j : ℝ)+1)*(m-j)*(w (j+1)-w j) := by
  let A (j : ℕ) : ℝ := j*((m:ℝ)+1-j)
  have h (j : ℕ) : 2*(j:ℝ)-m = A j - A (j+1) := by simp [A]; ring
  simp_rw [h, sub_mul]
  rw [sum_sub_distrib, sum_range_succ' (fun j => A j*w j),
    sum_range_succ (fun j => A (j+1)*w j)]
  simp [A, ← sum_sub_distrib, mul_sub]
  exact sum_congr rfl (fun _ _ => by ring)

private theorem odd_sum (h : ℕ) : ∑ j ∈ range h, (2*(j:ℝ)+1) = (h:ℝ)^2 := by
  induction h with
  | zero => simp
  | succ h ih => rw [sum_range_succ, ih, Nat.cast_succ]; ring

/-- Pair opposite lifts. Their large common weight cancels exactly. -/
theorem residual_eq_pair_sum (h : ℕ) (w : ℕ → ℝ) :
    ∑ j ∈ range (2*h), (2*(j:ℝ)+1-2*h)*w j =
      ∑ i ∈ range h, (2*(i:ℝ)+1)*(w (h+i)-w (h-1-i)) := by
  rw [two_mul h, sum_range_add]
  rw [← sum_range_reflect (fun j => (2*(j:ℝ)+1-2*h)*w j) h, ← sum_add_distrib]
  refine sum_congr rfl fun i hi => ?_
  have hi' : i < h := mem_range.mp hi
  have hn : h - 1 - i + 1 + i = h := by omega
  have hr : ((h - 1 - i : ℕ) : ℝ) + 1 + i = h := by exact_mod_cast hn
  push_cast
  rw [show ((h-1-i : ℕ) : ℝ) = (h:ℝ)-1-i by linarith]
  ring

/-- Sharp interval bound at every finite set of weight places; each place
has its own baseline and width. -/
theorem abs_period_residual_le {ι : Type*} (S : Finset ι) (h : ℕ)
    (w : ι → ℕ → ℝ) (base width : ι → ℝ) (L : ℝ)
    (hw : ∀ τ ∈ S, ∀ j < 2*h, base τ ≤ w τ j ∧ w τ j ≤ base τ + width τ) :
    |(∑ τ ∈ S, ∑ j ∈ range (2*h), (2*(j:ℝ)+1-2*h)*w τ j)*L| ≤
      |L| *(h:ℝ)^2 * ∑ τ ∈ S, width τ := by
  have hb (τ : ι) (hτ : τ ∈ S) :
      |∑ j ∈ range (2*h), (2*(j:ℝ)+1-2*h)*w τ j| ≤ (h:ℝ)^2 * width τ := by
    rw [residual_eq_pair_sum]
    calc _ ≤ ∑ i ∈ range h, |(2*(i:ℝ)+1)*(w τ (h+i)-w τ (h-1-i))| :=
           abs_sum_le_sum_abs _ _
         _ ≤ ∑ i ∈ range h, (2*(i:ℝ)+1)*width τ := by
           refine sum_le_sum fun i hi => ?_
           have hi' := mem_range.mp hi
           obtain ⟨ha,hb⟩ := hw τ hτ (h+i) (by omega)
           obtain ⟨hc,hd⟩ := hw τ hτ (h-1-i) (by omega)
           rw [abs_mul, abs_of_nonneg (by positivity : 0 ≤ 2*(i:ℝ)+1)]
           exact mul_le_mul_of_nonneg_left (abs_le.mpr ⟨by linarith, by linarith⟩) (by positivity)
         _ = _ := by rw [← sum_mul, odd_sum]
  rw [abs_mul, mul_comm _ |L|, mul_assoc]
  apply mul_le_mul_of_nonneg_left _ (abs_nonneg L)
  exact (abs_sum_le_sum_abs _ _).trans ((sum_le_sum hb).trans_eq (mul_sum ..).symm)

end GRWTSK.NumberTheory.AlpogePeriodWeightResidual
