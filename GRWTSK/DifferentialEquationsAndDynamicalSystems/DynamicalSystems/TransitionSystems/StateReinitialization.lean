/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Certificates.DependencyRevision

/-!
# CCC fresh-controller restart from a revision ledger

The factory copies current claim status and derives current mathematical soundness
from fresh archived certificates. Operational history remains a separate literal
ledger; the new controller starts with no current receipts. A subsequent active
step needs its own current-source guard. The factory is mathematical bookkeeping,
not runtime initialization, authority acquisition, or resource allocation.

The supplied natural budget is a fresh session allowance. No conservation of
resources across arbitrarily many restarts is asserted. A supplied lift origin is
retained exactly; the revision ledger contains no previous controller counters
from which an origin could be recovered. Returning newly verified controller
claims to a revision archive still requires their semantic locality certificates.

Research direction and conceptual selection: grwtsk contributors.
Lean implementation: OpenAI Codex.
-/

namespace GRWTSK.ProofHorizon.CorkscrewChamberCap

universe u v w x y z

/-- A new session has a stated finite allowance and one retained lift origin. -/
structure ControllerStartConfig where
  budget : ℕ
  liftOrigin : ℕ

section Restart

variable {Artifact : Type u} {Revision : Type v} {Claim : Type w}
  {Effect : Type x} {Grant : Type y} {Surface : Type z}
  [DecidableEq Revision] [Fintype Claim] [DecidableEq Claim]

local notation "Snapshot" => SourceSnapshot Artifact Revision
local notation "Policy" =>
  ControllerPolicy Snapshot Claim Effect Grant Surface
local notation "State" => ControllerState Snapshot Claim Effect Grant Surface
local notation "Proposal" => ControllerProposal Snapshot Claim Effect Grant Surface
local notation "Receipt" => EffectReceipt Snapshot Effect Grant Surface

/-- Every claim field is copied; historical receipts are deliberately kept out
of the current controller receipt field. No effect is performed by this factory. -/
def RevisionLedger.freshController {policy : Policy} (ledger : RevisionLedger policy)
    (config : ControllerStartConfig) : State where
  source := ledger.snapshot
  pending := ledger.pending
  verified := ledger.verified
  issued := ledger.issued
  receipts := []
  remaining := config.budget
  consumed := 0
  lift := config.liftOrigin
  checkpoint := config.liftOrigin

/-- Exact current evidence is obtained from the revision safety theorem rather
than a supplied next-controller safety premise. -/
theorem fresh_controller_safe (schema : DependencySchema Artifact Claim)
    (policy : Policy) (ledger : RevisionLedger policy) (config : ControllerStartConfig)
    (safe : RevisionSafe schema policy ledger) :
    Safe policy ledger.snapshot config.budget (ledger.freshController config) := by
  constructor
  · rfl
  · exact safe.pending_issued
  · exact safe.verified_issued
  · exact safe.issued_covered
  · intro claim verified
    exact (revision_verified_to_terminal schema policy ledger safe claim verified).proved
  · intro receipt member
    exact False.elim (List.not_mem_nil member)
  · simp [RevisionLedger.freshController]
  · rfl

omit [DecidableEq Revision] [Fintype Claim] [DecidableEq Claim] in
theorem fresh_controller_exact_fields (policy : Policy) (ledger : RevisionLedger policy)
    (config : ControllerStartConfig) :
    (ledger.freshController config).source = ledger.snapshot ∧
      (ledger.freshController config).pending = ledger.pending ∧
        (ledger.freshController config).verified = ledger.verified ∧
          (ledger.freshController config).issued = ledger.issued ∧
            (ledger.freshController config).receipts = [] ∧
              (ledger.freshController config).lift = config.liftOrigin ∧
                (ledger.freshController config).checkpoint = config.liftOrigin := by
  exact ⟨rfl, rfl, rfl, rfl, rfl, rfl, rfl⟩

/-- History remains accessible as data, but is separate from the active receipt
field. Source coherence is a proved identity, not a revision-name convention. -/
structure RevisionSession (policy : Policy) where
  history : RevisionLedger policy
  active : State
  source_coherent : active.source = history.snapshot

/-- Starting a session does not erase or relabel the revision ledger. -/
def RevisionLedger.startSession {policy : Policy} (ledger : RevisionLedger policy)
    (config : ControllerStartConfig) : RevisionSession policy where
  history := ledger
  active := ledger.freshController config
  source_coherent := rfl

/-- Both the retained revision history and current controller are checked. -/
def SessionSafe (schema : DependencySchema Artifact Claim) (policy : Policy)
    (budget : ℕ) (session : RevisionSession policy) : Prop :=
  RevisionSafe schema policy session.history ∧
    Safe policy session.history.snapshot budget session.active

theorem start_session_safe (schema : DependencySchema Artifact Claim) (policy : Policy)
    (ledger : RevisionLedger policy) (config : ControllerStartConfig)
    (safe : RevisionSafe schema policy ledger) :
    SessionSafe schema policy config.budget (ledger.startSession config) :=
  ⟨safe, fresh_controller_safe schema policy ledger config safe⟩

omit [DecidableEq Revision] [Fintype Claim] [DecidableEq Claim] in
theorem start_session_history_preserved (policy : Policy) (ledger : RevisionLedger policy)
    (config : ControllerStartConfig) :
    (ledger.startSession config).history = ledger := rfl

/-- This is the proposed deterministic update. Admission is supplied separately
by `Guard`; merely constructing this data does not authorize an effect. -/
def RevisionSession.advance {policy : Policy} (session : RevisionSession policy)
    (proposal : Proposal) : RevisionSession policy where
  history := session.history
  active := update session.active proposal
  source_coherent := session.source_coherent

theorem admitted_session_advance_safe (schema : DependencySchema Artifact Claim)
    (policy : Policy) (budget : ℕ) (session : RevisionSession policy) (proposal : Proposal)
    (safe : SessionSafe schema policy budget session)
    (guard : Guard policy session.active proposal) :
    SessionSafe schema policy budget (session.advance proposal) :=
  ⟨safe.1, guard_preserves_safe policy session.history.snapshot budget safe.2 guard⟩

omit [DecidableEq Revision] [Fintype Claim] in
theorem session_advance_history_preserved (policy : Policy) (session : RevisionSession policy)
    (proposal : Proposal) : (session.advance proposal).history = session.history := rfl

omit [DecidableEq Revision] [Fintype Claim] in
theorem session_advance_current_receipts (policy : Policy) (session : RevisionSession policy)
    (proposal : Proposal) :
    (session.advance proposal).active.receipts = session.active.receipts ++ proposal.effects := rfl

/-- Every current receipt after admission is valid at the session's current
immutable source, including each newly appended effect. -/
theorem admitted_session_receipts_current (schema : DependencySchema Artifact Claim)
    (policy : Policy) (budget : ℕ) (session : RevisionSession policy) (proposal : Proposal)
    (safe : SessionSafe schema policy budget session)
    (guard : Guard policy session.active proposal) :
    ∀ receipt ∈ (session.advance proposal).active.receipts,
      ReceiptValid policy session.history.snapshot receipt :=
  (admitted_session_advance_safe schema policy budget session proposal safe guard).2.receipts_valid

omit [DecidableEq Revision] [Fintype Claim] [DecidableEq Claim] in
/-- Literal reuse of a stale receipt cannot satisfy the current guard's source
condition. Archived grant data still needs independent current permission checks. -/
theorem stale_receipt_rejects_current_guard (policy : Policy) (session : RevisionSession policy)
    (proposal : Proposal) (receipt : Receipt) (artifact : Artifact)
    (changed : receipt.source artifact ≠ session.active.source artifact)
    (included : receipt ∈ proposal.effects) :
    ¬ Guard policy session.active proposal := by
  intro guard
  exact changed (congrFun ((guard.effects_source receipt included).trans guard.source_eq) artifact)

end Restart

end GRWTSK.ProofHorizon.CorkscrewChamberCap
