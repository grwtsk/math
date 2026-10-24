# Complete source: GRWTSK.DynamicalSystems.TransitionSystems.BudgetResetCounterexamples

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `983ddc5175d02fd27b302bc7985b853ed946e63e` · SHA-256 `436b1a528e905abe397a3c8e3e7e69cf0ab1925372347c98b136c98adecc7d31`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.DynamicalSystems.TransitionSystems.StateReinitializationExamples

/-!
# finite session budgets do not bound separately supplied restarts

Each round uses the actual revision-ledger restart factory with a supplied
allowance of one and the previous active lift as its supplied origin. It then
admits exactly one positive-cost proposal with no effects or discharged claims.
The literal history is retained. Total round cost can be arbitrarily large,
although every individual active controller has an allowance of one.

These rounds include fresh allowance inputs and are not an immutable-controller
guarded trajectory. No resource acquisition, operational grant, external effect,
or mathematical progress claim is supplied.

Research direction: grwtsk contributors. Implementation: OpenAI Codex.
-/

namespace GRWTSK.ProofHorizon.CorkscrewChamberCap.RestartBudgetBoundary

abbrev Session := RevisionSession RevisionFixtures.policy

abbrev State :=
  ControllerState (SourceSnapshot Bool ℕ) (Fin 5) Unit Unit Unit

def roundProposal : ControllerProposal (SourceSnapshot Bool ℕ) (Fin 5) Unit Unit Unit where
  source := RevisionFixtures.revisedSnapshot
  discharged := ∅
  introduced := ∅
  effects := []
  cost := 1

def nextConfig (previous : Session) : ControllerStartConfig where
  budget := 1
  liftOrigin := previous.active.lift

def sessionRun : ℕ → Session :=
  Nat.rec (RevisionFixtures.correctedLedger.startSession ⟨1, 0⟩)
    (fun _n s => (s.history.startSession (nextConfig s)).advance roundProposal)

@[simp] theorem sessionRun_zero : sessionRun 0 = RevisionFixtures.correctedLedger.startSession ⟨1, 0⟩ := rfl
@[simp] theorem sessionRun_succ (n : ℕ) :
    sessionRun (n + 1) = ((sessionRun n).history.startSession (nextConfig (sessionRun n))).advance roundProposal := rfl

def restartedSession (n : ℕ) : Session :=
  (sessionRun n).history.startSession (nextConfig (sessionRun n))

theorem next_round_exact (n : ℕ) :
    sessionRun (n + 1) = (restartedSession n).advance roundProposal := rfl

theorem session_history_exact (n : ℕ) :
    (sessionRun n).history = RevisionFixtures.correctedLedger := by
  induction n with
  | zero => rfl
  | succ n ih => exact ih

theorem restarted_session_history_exact (n : ℕ) :
    (restartedSession n).history = (sessionRun n).history := rfl

theorem restarted_session_budget_exact (n : ℕ) :
    (restartedSession n).active.remaining = 1 ∧
      (restartedSession n).active.consumed = 0 := ⟨rfl, rfl⟩

theorem restarted_session_safe (n : ℕ) :
    SessionSafe RevisionFixtures.schema RevisionFixtures.policy 1 (restartedSession n) := by
  apply start_session_safe
  rw [session_history_exact]
  exact RevisionFixtures.corrected_ledger_safe

theorem round_proposal_guard (n : ℕ) :
    Guard RevisionFixtures.policy (restartedSession n).active roundProposal := by
  constructor
  · change RevisionFixtures.revisedSnapshot = (sessionRun n).history.snapshot
    rw [session_history_exact]
    rfl
  · exact Finset.empty_subset _
  · simp [roundProposal]
  · simp [roundProposal]
  · simp [roundProposal]
  · simp [roundProposal]
  · simp [roundProposal]
  · decide
  · exact le_rfl

theorem session_run_safe (n : ℕ) :
    SessionSafe RevisionFixtures.schema RevisionFixtures.policy 1 (sessionRun n) := by
  cases n with
  | zero =>
      exact start_session_safe RevisionFixtures.schema RevisionFixtures.policy
        RevisionFixtures.correctedLedger ⟨1, 0⟩ RevisionFixtures.corrected_ledger_safe
  | succ n =>
      exact admitted_session_advance_safe RevisionFixtures.schema RevisionFixtures.policy 1
        (restartedSession n) roundProposal (restarted_session_safe n) (round_proposal_guard n)

/-- Each round is an actual admitted positive-cost controller update after its reset. -/
theorem each_restarted_round_guarded (n : ℕ) :
    GuardedStep RevisionFixtures.policy (restartedSession n).active
      (sessionRun (n + 1)).active :=
  ⟨roundProposal, round_proposal_guard n, rfl⟩

theorem completed_round_budget_exact (n : ℕ) :
    (sessionRun (n + 1)).active.remaining = 0 ∧
      (sessionRun (n + 1)).active.consumed = 1 := ⟨rfl, rfl⟩

theorem session_run_lift_exact (n : ℕ) : (sessionRun n).active.lift = n := by
  induction n with
  | zero => rfl
  | succ n ih =>
      change (sessionRun n).active.lift + 1 = n + 1
      rw [ih]

/-- This is the cost of the literal admitted proposals, counted across supplied resets. -/
def totalRoundCost : ℕ → ℕ :=
  Nat.rec 0 (fun _n r => r + roundProposal.cost)

@[simp] theorem totalRoundCost_zero : totalRoundCost 0 = 0 := rfl
@[simp] theorem totalRoundCost_succ (n : ℕ) :
    totalRoundCost (n + 1) = totalRoundCost n + roundProposal.cost := rfl

theorem total_round_cost_exact (n : ℕ) : totalRoundCost n = n := by
  induction n with
  | zero => rfl
  | succ n ih =>
      change totalRoundCost n + 1 = n + 1
      rw [ih]

/-- No fixed total bound follows from one-unit session allowances alone. -/
theorem arbitrarily_many_safe_positive_cost_rounds (N : ℕ) :
    (∀ n < N,
      SessionSafe RevisionFixtures.schema RevisionFixtures.policy 1 (sessionRun (n + 1)) ∧
        GuardedStep RevisionFixtures.policy (restartedSession n).active
          (sessionRun (n + 1)).active ∧ 0 < roundProposal.cost) ∧
      totalRoundCost N = N := by
  refine ⟨fun n _ ↦ ⟨session_run_safe (n + 1), each_restarted_round_guarded n, by decide⟩,
    total_round_cost_exact N⟩

/-- A completed controller cannot itself admit the next round: it has no allowance left. -/
theorem completed_rounds_are_not_guarded_steps (n : ℕ) :
    ¬ GuardedStep RevisionFixtures.policy (sessionRun (n + 1)).active
      (sessionRun (n + 2)).active := by
  rintro ⟨proposal, guard, _⟩
  exact exhausted_budget_blocks RevisionFixtures.policy (sessionRun (n + 1)).active
    proposal (completed_round_budget_exact n).1 guard

theorem immutable_session_termination_still_holds (trajectory : ℕ → State) :
    ¬ (∀ n, GuardedStep RevisionFixtures.policy (trajectory n) (trajectory (n + 1))) :=
  no_infinite_guarded_trajectory RevisionFixtures.policy trajectory

end GRWTSK.ProofHorizon.CorkscrewChamberCap.RestartBudgetBoundary
```
