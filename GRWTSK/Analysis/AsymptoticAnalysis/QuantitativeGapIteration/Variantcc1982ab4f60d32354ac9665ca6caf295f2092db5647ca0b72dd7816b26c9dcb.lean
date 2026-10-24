import FormalResearch.PositiveAtlas.QuantitativeGap
import Mathlib.Topology.Algebra.InfiniteSum.Order

/-!
# Exact refinement losses and a sufficient uniform budget

Products retain every lower norm loss, and the normalized sum retains every
energy defect. The sufficient infinite-series criterion is conditional on the
actual family's positive product floor and summable defect budget.

Originating direction and evaluation: grwtsk contributors.
Proof construction: OpenAI Codex.
-/

namespace FormalResearch.PositiveAtlas.QuantitativeGap

open scoped BigOperators

/-- Cumulative squared lower norm factors. -/
def lossProduct (c : ℕ → ℝ) (n : ℕ) : ℝ :=
  ∏ j ∈ Finset.range n, c j ^ 2

@[simp] theorem lossProduct_zero (c : ℕ → ℝ) : lossProduct c 0 = 1 := by
  simp [lossProduct]

theorem lossProduct_succ (c : ℕ → ℝ) (n : ℕ) :
    lossProduct c (n + 1) = lossProduct c n * c n ^ 2 := by
  exact Finset.prod_range_succ _ _

theorem lossProduct_pos (c : ℕ → ℝ) (hc : ∀ j, 0 < c j) (n : ℕ) :
    0 < lossProduct c n := by
  exact Finset.prod_pos fun j _ => sq_pos_of_pos (hc j)

/-- The exact lower-bound recurrence, without rounding or suppressed defects. -/
def refinementBudget (Δ₀ : ℝ) (c ε : ℕ → ℝ) : ℕ → ℝ
  | 0 => Δ₀
  | n + 1 => c n ^ 2 * refinementBudget Δ₀ c ε n - ε n

/-- Closed finite iteration, including division by the next cumulative loss. -/
theorem refinementBudget_eq (Δ₀ : ℝ) (c ε : ℕ → ℝ) (hc : ∀ j, 0 < c j) (n : ℕ) :
    refinementBudget Δ₀ c ε n = lossProduct c n *
      (Δ₀ - ∑ j ∈ Finset.range n, ε j / lossProduct c (j + 1)) := by
  induction n with
  | zero => simp [refinementBudget]
  | succ n ih =>
    rw [refinementBudget, ih, Finset.sum_range_succ, lossProduct_succ]
    have hp : lossProduct c n ≠ 0 := ne_of_gt (lossProduct_pos c hc n)
    have hc' : c n ≠ 0 := ne_of_gt (hc n)
    rw [lossProduct_succ]
    field_simp
    <;> ring

/-- Any family obeying the one-step inequality dominates the exact budget. -/
theorem refinement_lower_bound (Δ : ℕ → ℝ) (c ε : ℕ → ℝ)
    (hstep : ∀ j, c j ^ 2 * Δ j - ε j ≤ Δ (j + 1)) (n : ℕ) :
    refinementBudget (Δ 0) c ε n ≤ Δ n := by
  induction n with
  | zero => exact le_rfl
  | succ n ih =>
    exact (sub_le_sub_right (mul_le_mul_of_nonneg_left ih (sq_nonneg _)) _).trans (hstep n)

/-- The requested finite normalized estimate follows from the actual recurrence. -/
theorem refinement_iteration (Δ : ℕ → ℝ) (c ε : ℕ → ℝ) (hc : ∀ j, 0 < c j)
    (hstep : ∀ j, c j ^ 2 * Δ j - ε j ≤ Δ (j + 1)) (n : ℕ) :
    lossProduct c n *
      (Δ 0 - ∑ j ∈ Finset.range n, ε j / lossProduct c (j + 1)) ≤ Δ n := by
  rw [← refinementBudget_eq (Δ 0) c ε hc n]
  exact refinement_lower_bound Δ c ε hstep n

/-- A finite-prefix budget and a product floor already suffice for uniformity. -/
theorem uniform_of_prefix_budget (Δ : ℕ → ℝ) (c ε : ℕ → ℝ)
    (hc : ∀ j, 0 < c j) (pstar δ : ℝ) (hδ : 0 ≤ δ)
    (hproduct : ∀ n, pstar ≤ lossProduct c n)
    (hbudget : ∀ n, ∑ j ∈ Finset.range n, ε j / lossProduct c (j + 1) ≤ Δ 0 - δ)
    (hstep : ∀ j, c j ^ 2 * Δ j - ε j ≤ Δ (j + 1)) (n : ℕ) :
    pstar * δ ≤ Δ n := by
  have hb : δ ≤ Δ 0 - ∑ j ∈ Finset.range n, ε j / lossProduct c (j + 1) := by
    linarith [hbudget n]
  exact (mul_le_mul_of_nonneg_right (hproduct n) hδ).trans
    ((mul_le_mul_of_nonneg_left hb (le_of_lt (lossProduct_pos c hc n))).trans
      (refinement_iteration Δ c ε hc hstep n))

/-- The summable nonnegative defect criterion implies all finite-prefix budgets.
The series includes the zero atom of the error budget: no tail is silently dropped. -/
theorem uniform_of_summable_budget (Δ : ℕ → ℝ) (c ε : ℕ → ℝ)
    (hc : ∀ j, 0 < c j) (hε : ∀ j, 0 ≤ ε j) (pstar δ : ℝ) (hδ : 0 ≤ δ)
    (hproduct : ∀ n, pstar ≤ lossProduct c n)
    (hsummable : Summable (fun j => ε j / lossProduct c (j + 1)))
    (hbudget : (∑' j, ε j / lossProduct c (j + 1)) ≤ Δ 0 - δ)
    (hstep : ∀ j, c j ^ 2 * Δ j - ε j ≤ Δ (j + 1)) (n : ℕ) :
    pstar * δ ≤ Δ n := by
  apply uniform_of_prefix_budget Δ c ε hc pstar δ hδ hproduct _ hstep n
  intro k
  exact (hsummable.sum_le_tsum (Finset.range k) (fun j _ =>
    div_nonneg (hε j) (le_of_lt (lossProduct_pos c hc (j + 1))))).trans hbudget

end FormalResearch.PositiveAtlas.QuantitativeGap
