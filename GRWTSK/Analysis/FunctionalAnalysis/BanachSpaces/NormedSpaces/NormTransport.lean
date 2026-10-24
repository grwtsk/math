import Mathlib

/-!
Research direction: grwtsk contributors.
Implementation prepared with ChatGPT assistance. Ordinary mathematical lemmas
and Mathlib retain their authorship. Kernel compilation has not been run for
this additive source. No arithmetic growth hypothesis is asserted.
-/

noncomputable section
namespace GRWTSK.Analysis.NormTransport

/-- Exact reconstruction is charged in norm, without an artificial factor two. -/
theorem reconstruction_bound {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
    (x y r : E) (a : ℝ) (h : x = a • y + r) :
    ‖x‖ ≤ |a| * ‖y‖ + ‖r‖ := by
  rw [h]
  simpa only [norm_smul, Real.norm_eq_abs] using norm_add_le (a • y) r

/-- The list is in parent-to-child order. Each pair is (gain, residual norm). -/
def budget : List (ℝ × ℝ) → ℝ → ℝ
  | [], terminal => terminal
  | (gain, residual) :: tail, terminal => gain * budget tail terminal + residual

/-- The reconstruction identity and residual cost are retained at every edge. -/
inductive Chain {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E] :
    E → E → List (ℝ × ℝ) → Prop
  | nil (x : E) : Chain x x []
  | step {x y z r : E} {a error : ℝ} {tail : List (ℝ × ℝ)}
      (reconstruct : x = a • y + r) (residual : ‖r‖ ≤ error)
      (next : Chain y z tail) : Chain x z ((|a|, error) :: tail)

theorem Chain.bound {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
    {x z : E} {steps : List (ℝ × ℝ)} (h : Chain x z steps) :
    ‖x‖ ≤ budget steps ‖z‖ := by
  induction h with
  | nil x => exact le_rfl
  | @step x y z r a error tail reconstruct residual next ih =>
      calc
        ‖x‖ ≤ |a| * ‖y‖ + ‖r‖ := reconstruction_bound x y r a reconstruct
        _ ≤ |a| * budget tail ‖z‖ + error :=
          add_le_add (mul_le_mul_of_nonneg_left ih (abs_nonneg a)) residual
        _ = budget ((|a|, error) :: tail) ‖z‖ := rfl

theorem budget_nonnegative (steps : List (ℝ × ℝ))
    (h : ∀ p ∈ steps, 0 ≤ p.1 ∧ 0 ≤ p.2) {terminal : ℝ} (ht : 0 ≤ terminal) :
    0 ≤ budget steps terminal := by
  induction steps with
  | nil => exact ht
  | cons p tail ih =>
      have hp := h p (by simp)
      have hh : ∀ q ∈ tail, 0 ≤ q.1 ∧ 0 ≤ q.2 := by
        intro q hq; exact h q (by simp [hq])
      exact add_nonneg (mul_nonneg hp.1 (ih hh)) hp.2

/-- Unit gains accumulate residual norms additively, not exponentially. -/
theorem budget_unit_gains (errors : List ℝ) (terminal : ℝ) :
    budget (errors.map (fun e => ((1 : ℝ), e))) terminal = terminal + errors.sum := by
  induction errors with
  | nil => simp [budget]
  | cons e es ih => simp only [List.map_cons, budget, one_mul, ih, List.sum_cons]; ring

end GRWTSK.Analysis.NormTransport
#print axioms GRWTSK.Analysis.NormTransport.Chain.bound
