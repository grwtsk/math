# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Transaction.Variant5dd32db30ef55c8906dae0f77732a0f17bff71e35ffc2ad32b71435d04fc5376

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `82207a72aebf3616e194d54d22a189043c9e628b` · SHA-256 `5dd32db30ef55c8906dae0f77732a0f17bff71e35ffc2ad32b71435d04fc5376`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
