import Mathematics.Reactive.Cell

/-! # Immutable prepare/commit transactions -/

namespace Mathematics.Reactive

universe u

structure Snapshot where
  revision : Nat
  digest : Digest
  deriving DecidableEq, Repr

structure MutationProposal (Payload : Type u) where
  id : TransactionId
  base : Snapshot
  payload : Payload

structure PreparedMutation (Payload : Type u) where
  proposal : MutationProposal Payload
  preparedAgainst : Snapshot

inductive PrepareResult (Payload : Type u)
  | prepared (value : PreparedMutation Payload)
  | rejectedRevisionRace

def prepare
    (current : Snapshot)
    (proposal : MutationProposal Payload) :
    PrepareResult Payload :=
  if proposal.base = current then
    .prepared ⟨proposal, current⟩
  else
    .rejectedRevisionRace

theorem prepare_rejects_revision_race
    (current : Snapshot)
    (proposal : MutationProposal Payload)
    (hrace : proposal.base ≠ current) :
    prepare current proposal = .rejectedRevisionRace := by
  simp [prepare, hrace]

inductive CommitResult
  | committed (next : Snapshot)
  | rejectedSnapshotRace
  deriving DecidableEq, Repr

def commit
    (current : Snapshot)
    (prepared : PreparedMutation Payload)
    (nextDigest : Digest) :
    CommitResult :=
  if prepared.preparedAgainst = current then
    .committed ⟨current.revision + 1, nextDigest⟩
  else
    .rejectedSnapshotRace

theorem commit_rejects_snapshot_race
    (current : Snapshot)
    (prepared : PreparedMutation Payload)
    (nextDigest : Digest)
    (hrace : prepared.preparedAgainst ≠ current) :
    commit current prepared nextDigest = .rejectedSnapshotRace := by
  simp [commit, hrace]

end Mathematics.Reactive
