/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Ring

set_option autoImplicit false

/-!
# Finite reciprocal enclosures of logarithmic increments

All approximating expressions use finite arithmetic. Positive ordered nodes
are checked against the actual endpoints; no numerical logarithm is assumed.
These are source proof candidates: NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.Analysis.ErrorBounds.FiniteLogEnclosure

open scoped BigOperators
noncomputable section

/-- Right-endpoint reciprocal sum. -/
def lowerSum (x : ℕ → ℝ) (N : ℕ) : ℝ :=
  ∑ i ∈ Finset.range N, (x (i + 1) - x i) / x (i + 1)

/-- Left-endpoint reciprocal sum. -/
def upperSum (x : ℕ → ℝ) (N : ℕ) : ℝ :=
  ∑ i ∈ Finset.range N, (x (i + 1) - x i) / x i

/-- A positive cell has explicit rational bounds when its endpoints are rational. -/
theorem log_step_bounds {a b : ℝ} (ha : 0 < a) (hab : a ≤ b) :
    (b - a) / b ≤ Real.log b - Real.log a ∧
      Real.log b - Real.log a ≤ (b - a) / a := by
  have hb : 0 < b := ha.trans_le hab
  have hu := Real.log_le_sub_one_of_pos (div_pos hb ha)
  have hl := Real.log_le_sub_one_of_pos (div_pos ha hb)
  rw [Real.log_div (ne_of_gt hb) (ne_of_gt ha)] at hu
  rw [Real.log_div (ne_of_gt ha) (ne_of_gt hb)] at hl
  have eu : b / a - 1 = (b - a) / a := by field_simp [ne_of_gt ha]
  have el : a / b - 1 = -((b - a) / b) := by field_simp [ne_of_gt hb]; ring
  rw [eu] at hu
  rw [el] at hl
  exact ⟨by linarith, hu⟩

/-- Every adjacent cell is used, including zero-length cells. -/
theorem chain_bounds (x : ℕ → ℝ) (hx : Monotone x) (h0 : 0 < x 0) (N : ℕ) :
    lowerSum x N ≤ Real.log (x N) - Real.log (x 0) ∧
      Real.log (x N) - Real.log (x 0) ≤ upperSum x N := by
  induction N with
  | zero => simp [lowerSum, upperSum]
  | succ N ih =>
    have hs := log_step_bounds (h0.trans_le (hx (Nat.zero_le N))) (hx (Nat.le_succ N))
    simp only [lowerSum, upperSum, Finset.sum_range_succ] at ih ⊢
    constructor <;> linarith [ih.1, ih.2, hs.1, hs.2]

theorem lower_nonneg (x : ℕ → ℝ) (hx : Monotone x) (h0 : 0 < x 0) (N : ℕ) :
    0 ≤ lowerSum x N := by
  apply Finset.sum_nonneg
  intro i _
  exact div_nonneg (sub_nonneg.mpr (hx (Nat.le_succ i)))
    (h0.trans_le (hx (Nat.zero_le (i + 1)))).le

/-- Turning the interval into a midpoint and radius keeps both inequalities. -/
theorem midpoint_error (x : ℕ → ℝ) (hx : Monotone x) (h0 : 0 < x 0) (N : ℕ) :
    |(Real.log (x N) - Real.log (x 0)) - (lowerSum x N + upperSum x N) / 2| ≤
      (upperSum x N - lowerSum x N) / 2 := by
  have h := chain_bounds x hx h0 N
  exact abs_le.mpr ⟨by linarith [h.1, h.2], by linarith [h.1, h.2]⟩

/-- Exact width of the enclosure on a constant-step grid. No logarithms remain. -/
theorem constant_step_gap (x : ℕ → ℝ) (N : ℕ) (d : ℝ)
    (hstep : ∀ i < N, x (i + 1) - x i = d) :
    upperSum x N - lowerSum x N = d * (1 / x 0 - 1 / x N) := by
  induction N with
  | zero => simp [lowerSum, upperSum]
  | succ N ih =>
    have hp := ih (fun i hi => hstep i (Nat.lt_succ_of_lt hi))
    have hs := hstep N (Nat.lt_succ_self N)
    simp only [lowerSum, upperSum, Finset.sum_range_succ] at hp ⊢
    simp only [hs, div_eq_mul_inv, one_mul] at hp ⊢
    nlinarith [hp]

/-- An empty chain is not a logarithm enclosure for a distinct named endpoint. -/
theorem empty_chain_is_not_log_two :
    ¬ Real.log 2 ≤ upperSum (fun i => 1 + (i : ℝ)) 0 := by
  have h := Real.log_pos (show (1 : ℝ) < 2 by norm_num)
  simpa [upperSum] using not_le.mpr h

end
end GRWTSK.Analysis.ErrorBounds.FiniteLogEnclosure
