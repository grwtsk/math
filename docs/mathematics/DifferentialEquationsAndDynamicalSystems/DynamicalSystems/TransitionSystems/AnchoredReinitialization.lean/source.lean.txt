/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Logic.Certificates.AnchoredBatchVerification
import GRWTSK.DynamicalSystems.TransitionSystems.StateReinitialization

/-!
# fixed-source restart from anchored replay evidence

The original controller factory is reused as literal data. Its safety follows
from the distinct ReplaySafe invariant and actual current targets, without
asserting RevisionSafe of the embedded base ledger. A session retains the
entire replay ledger, including both certificate archives and operational and
correction histories. Every active update requires the original current-source
Guard. Newly checked controller claims are not automatically archived.

The supplied finite allowance belongs to this session. No conservation across
restarts, source authentication, operational grant, rights, or global locality
is derived from replay evidence or controller proofs.

Human mathematical direction: grwtsk contributors.
Formal implementation: OpenAI Codex.
-/

namespace GRWTSK.ProofHorizon.CorkscrewChamberCap.ReplayRestart

open ReplayAdmissionModel

universe u v w x y z

section Restart

variable {Artifact : Type u} {Revision : Type v} {Claim : Type w}
  {Effect : Type x} {Grant : Type y} {Surface : Type z}
  [DecidableEq Revision] [Fintype Claim] [DecidableEq Claim]

local notation "Snapshot" => SourceSnapshot Artifact Revision
local notation "Policy" => ControllerPolicy Snapshot Claim Effect Grant Surface
local notation "State" => ControllerState Snapshot Claim Effect Grant Surface
local notation "Proposal" => ControllerProposal Snapshot Claim Effect Grant Surface
local notation "Receipt" => EffectReceipt Snapshot Effect Grant Surface

/-- The original factory needs current targets, which the distinct replay invariant proves. -/
theorem replay_fresh_controller_safe (schema : DependencySchema Artifact Claim)
    (policy : Policy) (ledger : ReplayLedger policy) (config : ControllerStartConfig)
    (safe : ReplaySafe schema policy ledger) :
    Safe policy ledger.base.snapshot config.budget (ledger.base.freshController config) := by
  constructor
  · rfl
  · exact safe.pending_issued
  · exact safe.verified_issued
  · exact safe.issued_covered
  · intro claim verified
    exact replay_verified_current_target schema policy ledger safe claim verified
  · intro receipt member
    exact False.elim (List.not_mem_nil member)
  · simp [RevisionLedger.freshController]
  · rfl

/-- Replay history remains literal data; only the active controller advances. -/
structure ReplaySession (policy : Policy) where
  history : ReplayLedger policy
  active : State
  source_coherent : active.source = history.base.snapshot

def startReplaySession {policy : Policy} (ledger : ReplayLedger policy)
    (config : ControllerStartConfig) : ReplaySession policy where
  history := ledger
  active := ledger.base.freshController config
  source_coherent := rfl

/-- Base revision safety is not an input or a conclusion of this invariant. -/
def ReplaySessionSafe (schema : DependencySchema Artifact Claim) (policy : Policy)
    (budget : ℕ) (session : ReplaySession policy) : Prop :=
  ReplaySafe schema policy session.history ∧
    Safe policy session.history.base.snapshot budget session.active

theorem start_replay_session_safe (schema : DependencySchema Artifact Claim) (policy : Policy)
    (ledger : ReplayLedger policy) (config : ControllerStartConfig)
    (safe : ReplaySafe schema policy ledger) :
    ReplaySessionSafe schema policy config.budget (startReplaySession ledger config) :=
  ⟨safe, replay_fresh_controller_safe schema policy ledger config safe⟩

omit [DecidableEq Revision] [Fintype Claim] [DecidableEq Claim] in
theorem start_replay_session_history_preserved (policy : Policy) (ledger : ReplayLedger policy)
    (config : ControllerStartConfig) :
    (startReplaySession ledger config).history = ledger := rfl

omit [DecidableEq Revision] [Fintype Claim] [DecidableEq Claim] in
theorem start_replay_session_active_exact (policy : Policy) (ledger : ReplayLedger policy)
    (config : ControllerStartConfig) :
    (startReplaySession ledger config).active = ledger.base.freshController config := rfl

/-- This proposed update is data; safe admission separately consumes the current guard. -/
def ReplaySession.advance {policy : Policy} (session : ReplaySession policy)
    (proposal : Proposal) : ReplaySession policy where
  history := session.history
  active := update session.active proposal
  source_coherent := session.source_coherent

theorem admitted_replay_session_advance_safe (schema : DependencySchema Artifact Claim)
    (policy : Policy) (budget : ℕ) (session : ReplaySession policy) (proposal : Proposal)
    (safe : ReplaySessionSafe schema policy budget session)
    (guard : Guard policy session.active proposal) :
    ReplaySessionSafe schema policy budget (session.advance proposal) :=
  ⟨safe.1, guard_preserves_safe policy session.history.base.snapshot budget safe.2 guard⟩

omit [DecidableEq Revision] [Fintype Claim] in
theorem replay_session_advance_history_preserved (policy : Policy) (session : ReplaySession policy)
    (proposal : Proposal) : (session.advance proposal).history = session.history := rfl

omit [DecidableEq Revision] [Fintype Claim] in
/-- Both proof archives, historical effects, corrections and archived statuses stay literal.
Active controller proofs therefore do not silently acquire reusable certificate objects. -/
theorem replay_session_advance_histories (policy : Policy) (session : ReplaySession policy)
    (proposal : Proposal) :
    (session.advance proposal).history.base.archive = session.history.base.archive ∧
      (session.advance proposal).history.replayArchive = session.history.replayArchive ∧
      (session.advance proposal).history.base.receipts = session.history.base.receipts ∧
      (session.advance proposal).history.base.corrections = session.history.base.corrections ∧
      (session.advance proposal).history.base.verified = session.history.base.verified :=
  ⟨rfl, rfl, rfl, rfl, rfl⟩

omit [DecidableEq Revision] [Fintype Claim] in
theorem replay_session_advance_source_fixed (policy : Policy) (session : ReplaySession policy)
    (proposal : Proposal) :
    (session.advance proposal).active.source = session.history.base.snapshot :=
  session.source_coherent

omit [DecidableEq Revision] [Fintype Claim] in
theorem replay_session_advance_current_receipts (policy : Policy) (session : ReplaySession policy)
    (proposal : Proposal) :
    (session.advance proposal).active.receipts = session.active.receipts ++ proposal.effects := rfl

/-- Every admitted active receipt retains all original current-source permission checks. -/
theorem admitted_replay_session_receipts_current (schema : DependencySchema Artifact Claim)
    (policy : Policy) (budget : ℕ) (session : ReplaySession policy) (proposal : Proposal)
    (safe : ReplaySessionSafe schema policy budget session)
    (guard : Guard policy session.active proposal) :
    ∀ receipt ∈ (session.advance proposal).active.receipts,
      ReceiptValid policy session.history.base.snapshot receipt := by
  have checked :=
    admitted_replay_session_advance_safe schema policy budget session proposal safe guard
  exact checked.2.receipts_valid

omit [DecidableEq Revision] [Fintype Claim] [DecidableEq Claim] in
/-- A stale historical receipt still cannot enter an active current-source guard. -/
theorem replay_stale_receipt_rejects_guard (policy : Policy) (session : ReplaySession policy)
    (proposal : Proposal) (receipt : Receipt) (artifact : Artifact)
    (changed : receipt.source artifact ≠ session.active.source artifact)
    (included : receipt ∈ proposal.effects) :
    ¬ Guard policy session.active proposal := by
  intro guard
  exact changed (congrFun ((guard.effects_source receipt included).trans guard.source_eq) artifact)

end Restart

end GRWTSK.ProofHorizon.CorkscrewChamberCap.ReplayRestart
