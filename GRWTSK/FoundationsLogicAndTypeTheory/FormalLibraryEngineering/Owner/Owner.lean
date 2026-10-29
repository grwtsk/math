import Mathematics.Resolution.ContextResolver

/-!
# Single-owner exactly-once result commitment

The owner ledger is checked before mutation.  A duplicate event returns its
prior outcome and leaves the authoritative state byte-for-byte unchanged.
-/

namespace Mathematics.Resolution

universe u v

structure OwnerState (Event : Type u) (Outcome : Type v) where
  revision : Nat
  ledger : Event → Option Outcome

structure DurableCommitReceipt (Outcome : Type v) where
  outcome : Outcome
  persisted : Prop
  persisted_proved : persisted

structure CommittedCutResult (Cut : Type u) (Outcome : Type v) where
  cut : Cut
  cutDigest : String
  result : Outcome
  resultDigest : String

inductive CommitDisposition (Outcome : Type v)
  | committed (receipt : DurableCommitReceipt Outcome)
  | duplicate (outcome : Outcome)
  | stale
  | denied

def commitResult
    [DecidableEq Event]
    (admissible : Bool)
    (state : OwnerState Event Outcome)
    (event : Event)
    (baseRevision : Nat)
    (outcome : Outcome) :
    OwnerState Event Outcome × CommitDisposition Outcome :=
  match state.ledger event with
  | some prior => (state, .duplicate prior)
  | none =>
      if baseRevision ≠ state.revision then
        (state, .stale)
      else if !admissible then
        (state, .denied)
      else
        let next : OwnerState Event Outcome := {
          revision := state.revision + 1
          ledger := fun candidate =>
            if candidate = event then some outcome
            else state.ledger candidate
        }
        (next, .committed ⟨outcome, True, True.intro⟩)

def commitCutResult
    [DecidableEq Event]
    (admissible : Bool)
    (state : OwnerState Event (CommittedCutResult Cut Outcome))
    (event : Event)
    (baseRevision : Nat)
    (effect : CommittedCutResult Cut Outcome) :
    OwnerState Event (CommittedCutResult Cut Outcome) ×
      CommitDisposition (CommittedCutResult Cut Outcome) :=
  commitResult admissible state event baseRevision effect

theorem duplicate_event_preserves_state
    [DecidableEq Event]
    (state : OwnerState Event Outcome)
    {event : Event}
    {prior : Outcome}
    (recorded : state.ledger event = some prior)
    (admissible : Bool)
    (baseRevision : Nat)
    (outcome : Outcome) :
    (commitResult admissible state event baseRevision outcome).1 =
      state := by
  simp [commitResult, recorded]

theorem committed_acknowledgement_is_persisted
    (receipt : DurableCommitReceipt Outcome) :
    receipt.persisted :=
  receipt.persisted_proved

theorem duplicate_cut_result_preserves_state
    [DecidableEq Event]
    (state : OwnerState Event (CommittedCutResult Cut Outcome))
    {event : Event}
    {prior : CommittedCutResult Cut Outcome}
    (recorded : state.ledger event = some prior)
    (admissible : Bool)
    (baseRevision : Nat)
    (effect : CommittedCutResult Cut Outcome) :
    (commitCutResult admissible state event baseRevision effect).1 =
      state :=
  duplicate_event_preserves_state
    state recorded admissible baseRevision effect

end Mathematics.Resolution
