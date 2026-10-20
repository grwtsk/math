/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human research direction: R.A. Jacob Martone. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Ordered finite state folds with an absolute index

A pure finite recurrence, not a process runner. Each step receives the current
state and its actual absolute index. The refinement theorem preserves all steps
and their order; it is not a reassociation theorem for rounded arithmetic.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.Algebra.BigOperators.IndexedStateFold

universe u
variable {State : Type u}

/-- Tail-recursive spelling; no cached value or success flag is supplied. -/
def run (step : ℕ → State → State) : ℕ → ℕ → State → State
  | _, 0, state => state
  | start, count+1, state => run step (start+1) count (step start state)

/-- Identify the entire final state with a specified recurrence, not just one
projection or a final Boolean. No step is skipped at a block boundary. -/
theorem run_spec (step : ℕ → State → State) (spec : ℕ → State)
    (hstep : ∀ j, step j (spec j) = spec (j+1)) (start count : ℕ) :
    run step start count (spec start) = spec (start+count) := by
  induction count generalizing start with
  | zero => simp [run]
  | succ count ih =>
      rw [run, hstep, ih]
      congr 1
      omega

/-- Exact ordered composition. The second cursor starts after the first range. -/
theorem run_add (step : ℕ → State → State) (start a b : ℕ) (state : State) :
    run step start (a+b) state =
      run step (start+a) b (run step start a state) := by
  induction a generalizing start state with
  | zero => simp [run]
  | succ a ih =>
      rw [Nat.succ_add, run, ih, run]
      congr 1
      omega

/-- Changing the body only outside the consumed range cannot affect the fold. -/
theorem run_congr {left right : ℕ → State → State} (start count : ℕ)
    (h : ∀ j, start ≤ j → j < start+count → ∀ state, left j state = right j state)
    (state : State) : run left start count state = run right start count state := by
  induction count generalizing start state with
  | zero => rfl
  | succ count ih =>
      rw [run, run, h start le_rfl (by omega)]
      apply ih
      intro j hjlo hjhi x
      exact h j (by omega) (by omega) x

end GRWTSK.Algebra.BigOperators.IndexedStateFold
