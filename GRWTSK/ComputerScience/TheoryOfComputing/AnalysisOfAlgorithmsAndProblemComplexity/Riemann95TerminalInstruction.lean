/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.ComputerScience.TheoryOfComputing.AnalysisOfAlgorithmsAndProblemComplexity.Riemann95PrimeMachine

/-!
# Exact terminal instruction boundary of a prime-addressed run

A budget of n counts successful instructions. Failure first occurs when
the budget requests one instruction beyond the native terminal configuration.
-/

namespace GRWTSK.ComputerScience.Riemann95PrimeMachine

theorem run_succ_last {window : ℕ} (n : ℕ) (c : Configuration window) :
    run (n + 1) c = (run n c).bind step := by
  induction n generalizing c with
  | zero => cases h : step c <;> simp [run, h]
  | succ n ih =>
    simp only [run]
    cases h : step c with
    | none => rfl
    | some d => exact ih d

theorem run_none_of_le {window n m : ℕ} {c : Configuration window}
    (hle : n ≤ m) (h : run n c = none) : run m c = none := by
  obtain ⟨k, rfl⟩ := Nat.exists_eq_add_of_le hle
  clear hle
  induction k with
  | zero => exact h
  | succ k ih => rw [Nat.add_succ, run_succ_last, ih]; rfl

/-- A successful budget followed by a failed one identifies the exact native
terminal configuration, including the full pointed tape. -/
theorem native_terminal_iff_next_budget_fails {window n : ℕ}
    {c d : Configuration window} (arrive : run n c = some d) :
    run (n + 1) c = none ↔
      ConjectureMachines.step ConjectureMachines.Riemann95.machine (project d) = none := by
  rw [run_succ_last, arrive, ← project_step]
  cases h : step d <;> simp [h]

/-- Once a native terminal state has been reached, a bounded run reports
failure exactly for budgets strictly beyond its successful instruction count. -/
theorem run_none_iff_past_native_terminal {window n : ℕ}
    {c d : Configuration window} (arrive : run n c = some d)
    (terminal : ConjectureMachines.step ConjectureMachines.Riemann95.machine
      (project d) = none) (m : ℕ) :
    run m c = none ↔ n < m := by
  constructor
  · intro h
    by_contra! hm
    rw [run_none_of_le hm h] at arrive
    cases arrive
  · intro hm
    exact run_none_of_le hm ((native_terminal_iff_next_budget_fails arrive).mpr terminal)

/-- A zero instruction budget returns even a configuration whose next
native instruction is absent. The fixture is a configured start. -/
theorem terminal_at_start_control (window : ℕ) :
    let c := { blank window with address := encodeAddress window 61, scanned := 1 }
    run 0 c = some c ∧ run 1 c = none := by
  intro c
  refine ⟨rfl, ?_⟩
  have haltCell : ConjectureMachines.Riemann95.machine.transition 61 1 = none := rfl
  simp [run, step, c, haltCell]

end GRWTSK.ComputerScience.Riemann95PrimeMachine
