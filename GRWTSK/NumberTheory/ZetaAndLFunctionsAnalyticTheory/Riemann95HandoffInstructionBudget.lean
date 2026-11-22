/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.Riemann95HandoffRetryTail

/-!
# Native instruction cost of certified stage progress

The exact controller spends at least one native instruction per completed
arithmetic stage. External retries spend no native instructions in its ledger.
-/

namespace GRWTSK.HS95.WindowHandoff

/-- The local form avoids truncated subtraction and applies also to terminal
padding and to a halt certificate. -/
theorem Tick.stage_cost_le {s t : State} (h : Tick s t) :
    t.stage + s.sourceSteps ≤ s.stage + t.sourceSteps := by
  cases h with
  | rest => exact Nat.le_refl _
  | act transition =>
    cases transition with
    | retry => exact Nat.le_refl _
    | completed _ b steps proof =>
      change b.stage + s.sourceSteps ≤ s.boundary.stage + (s.sourceSteps + steps)
      have hp := proof.positive
      rw [proof.nextStage]
      omega
    | counterexample _ _ steps _ =>
      change s.stage + s.sourceSteps ≤ s.stage + (s.sourceSteps + steps)
      omega

namespace Run

variable {observations : Observations}

theorem stage_cost_le (r : Run observations) {t u : ℕ} (htu : t ≤ u) :
    (r.state u).stage + (r.state t).sourceSteps ≤
      (r.state t).stage + (r.state u).sourceSteps := by
  obtain ⟨d, rfl⟩ := Nat.exists_eq_add_of_le htu
  clear htu
  induction d with
  | zero => exact Nat.le_refl _
  | succ d ih =>
    have localCost := (r.tick (t + d)).stage_cost_le
    change (r.state (t + d + 1)).stage + (r.state t).sourceSteps ≤
      (r.state t).stage + (r.state (t + d + 1)).sourceSteps
    omega

/-- The initial 3,634 native instructions are charged before any arithmetic
stage is committed. This bound holds for arbitrary retry schedules. -/
theorem bootstrap_add_stage_le_sourceSteps (r : Run observations) (t : ℕ) :
    3634 + (r.state t).stage ≤ (r.state t).sourceSteps := by
  have h := r.stage_cost_le (Nat.zero_le t)
  rw [r.start] at h
  change (r.state t).stage + 3634 ≤ 0 + (r.state t).sourceSteps at h
  omega

theorem first_window_of_sourceSteps_lt_3729 (r : Run observations) (t : ℕ)
    (budget : (r.state t).sourceSteps < 3729) : (r.state t).stage < 95 := by
  have cost := r.bootstrap_add_stage_le_sourceSteps t
  omega

/-- The native ledger charges no new instructions during a retry tail,
despite the controller's unbounded external tick index. -/
theorem retryForever_sourceSteps_control (o : Observations) (t : ℕ) :
    ((retryForever o).state t).stage = 0 ∧
      ((retryForever o).state t).sourceSteps = 3634 := by
  exact ⟨rfl, rfl⟩

end Run
end GRWTSK.HS95.WindowHandoff
