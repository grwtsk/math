/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import Mathlib.Tactic

/-! # The forbidden full-period interval in an odd Frobenius flow -/
namespace GRWTSK.NumberTheory.AlpogeOddAlternatingPath

open Finset

/-- Ending the oldest possible flow at each interior site leaves a single
positive part, independent of the subdivision of the available capacity. -/
theorem oldest_remaining (c : ℝ) (hc : 0 ≤ c) (removals : List ℝ)
    (h : ∀ x ∈ removals, 0 ≤ x) :
    removals.foldr (fun u a => max (a-u) 0) c = max (c-removals.sum) 0 := by
  induction removals with
  | nil => simp [hc]
  | cons x xs ih =>
    have hx : 0 ≤ x := h x (by simp)
    have hs : ∀ a ∈ xs, 0 ≤ a := fun a ha => h a (by simp [ha])
    simp only [List.foldr_cons, List.sum_cons, ih hs]
    grind

/-- In scaled coordinates each internal load is a sum of adjacent heights,
and the odd/even cost differs by the factor P = p^r. -/
theorem incident_defect (a : ℕ → ℝ) (P : ℝ) (m : ℕ) :
    P*a 0 + a (2*m) -
        ∑ i ∈ range m, (P*(a (2*i)+a (2*i+1))+(a (2*i+1)+a (2*i+2))) =
      -(P+1)*((∑ i ∈ range m, (a (2*i)+a (2*i+1)))-a 0) := by
  induction m with
  | zero => simp; ring
  | succ m ih =>
    simp only [sum_range_succ, Nat.mul_succ]
    linear_combination ih

/-- A positive surplus can have only one center when the two directed
cross-costs are reciprocal and all other demands are nonnegative. -/
theorem incompatible_centers {a b c u v : ℝ} (hc : 0 < c)
    (h₁ : c*b ≤ u) (h₂ : a/c ≤ v) : ¬ (u < a ∧ v < b) := by
  rintro ⟨h,k⟩
  have hs := (div_lt_iff₀ hc).mp (h₂.trans_lt k)
  nlinarith

end GRWTSK.NumberTheory.AlpogeOddAlternatingPath
