# Complete source: GRWTSK.DynamicalSystems.TransitionSystems.StateReinitializationExamples

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `772d679b3806c374a6ca85144baac60fdc7fd0f7` · SHA-256 `fc989ae774d2252b341b013d314a0dc19790ef25c69fbd310628a373d4a5ef25`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.DynamicalSystems.TransitionSystems.StateReinitialization
import GRWTSK.Logic.Certificates.DependencyRevisionExamples

/-!
# CCC restart fixtures

The revised ledger's current evidence starts a source-coherent controller at a
nonzero lift origin. Old receipts remain in history, while only a newly checked
current-source receipt is admitted into active history. The hostile fixture uses
the literal stale receipt; no real authorization service is instantiated.

Research direction and conceptual selection: grwtsk contributors.
Lean implementation: OpenAI Codex.
-/

namespace GRWTSK.ProofHorizon.CorkscrewChamberCap

namespace RestartFixtures

def config : ControllerStartConfig where
  budget := 3
  liftOrigin := 11

def session : RevisionSession RevisionFixtures.policy :=
  RevisionFixtures.correctedLedger.startSession config

theorem restarted_session_safe :
    SessionSafe RevisionFixtures.schema RevisionFixtures.policy config.budget session :=
  start_session_safe RevisionFixtures.schema RevisionFixtures.policy
    RevisionFixtures.correctedLedger config RevisionFixtures.corrected_ledger_safe

/-- The old operational history is retained separately from current receipts. -/
theorem restart_separates_history_and_active_receipts :
    session.history.receipts = [RevisionFixtures.historicalReceipt] ∧
      session.active.receipts = [] := ⟨rfl, rfl⟩

/-- Current claims and a nonzero supplied lift origin are retained exactly. -/
theorem restart_retains_current_status_and_lift :
    session.active.pending = {0, 1, 2, 3} ∧
      session.active.verified = {4} ∧
        session.active.lift = 11 ∧ session.active.checkpoint = 11 := by
  exact ⟨RevisionFixtures.corrected_pending_exact, RevisionFixtures.corrected_verified_exact,
    rfl, rfl⟩

def currentReceipt : EffectReceipt (SourceSnapshot Bool ℕ) Unit Unit Unit where
  source := RevisionFixtures.revisedSnapshot
  effect := ()
  grant := ()
  surface := ()

def currentProposal : ControllerProposal (SourceSnapshot Bool ℕ) (Fin 5) Unit Unit Unit where
  source := RevisionFixtures.revisedSnapshot
  discharged := ∅
  introduced := ∅
  effects := [currentReceipt]
  cost := 1

/-- Even after a restart, an effect has a separate current guard. -/
theorem current_proposal_guard : Guard RevisionFixtures.policy session.active currentProposal := by
  constructor
  · rfl
  · exact Finset.empty_subset _
  · simp [currentProposal]
  · intro receipt member
    have receiptEq : receipt = currentReceipt := by simpa [currentProposal] using member
    subst receipt
    rfl
  · intro _ _
    trivial
  · intro _ _
    exact ⟨True.intro, True.intro⟩
  · intro _ _
    trivial
  · decide
  · decide

theorem admitted_restart_step_safe :
    SessionSafe RevisionFixtures.schema RevisionFixtures.policy config.budget
      (session.advance currentProposal) :=
  admitted_session_advance_safe RevisionFixtures.schema RevisionFixtures.policy config.budget
    session currentProposal restarted_session_safe current_proposal_guard

/-- A current admitted receipt is appended; original operational history remains. -/
theorem admitted_step_preserves_history_and_appends_current_receipt :
    (session.advance currentProposal).history = session.history ∧
      (session.advance currentProposal).active.receipts = [currentReceipt] ∧
        ReceiptValid RevisionFixtures.policy RevisionFixtures.revisedSnapshot currentReceipt := by
  refine ⟨rfl, rfl, ?_⟩
  exact admitted_session_receipts_current RevisionFixtures.schema RevisionFixtures.policy
    config.budget session currentProposal restarted_session_safe current_proposal_guard
    currentReceipt (by simp [RevisionSession.advance, update, currentProposal, session,
      RevisionLedger.startSession, RevisionLedger.freshController])

def staleProposal : ControllerProposal (SourceSnapshot Bool ℕ) (Fin 5) Unit Unit Unit where
  source := RevisionFixtures.revisedSnapshot
  discharged := ∅
  introduced := ∅
  effects := [RevisionFixtures.historicalReceipt]
  cost := 1

/-- Historical receipt retention does not authorize its literal reuse at the
changed current source. The source guard rejects it despite permissive grants. -/
theorem stale_historical_receipt_rejected :
    ¬ Guard RevisionFixtures.policy session.active staleProposal := by
  apply stale_receipt_rejects_current_guard RevisionFixtures.policy session staleProposal
    RevisionFixtures.historicalReceipt false
  · decide
  · simp [staleProposal]

end RestartFixtures

end GRWTSK.ProofHorizon.CorkscrewChamberCap
```
