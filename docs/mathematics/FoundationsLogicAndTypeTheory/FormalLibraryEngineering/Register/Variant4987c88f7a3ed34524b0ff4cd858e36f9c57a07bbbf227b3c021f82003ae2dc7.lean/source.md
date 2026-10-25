# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Register.Variant4987c88f7a3ed34524b0ff4cd858e36f9c57a07bbbf227b3c021f82003ae2dc7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ca805da3595728082cf5d4884c30d71825456d0d` · SHA-256 `4987c88f7a3ed34524b0ff4cd858e36f9c57a07bbbf227b3c021f82003ae2dc7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public import Surface.Core.Transport.Hash
public import Surface.Core.Transport.Revision

/-!
# Pure two-phase transport commit model

Verification and mutation remain separate. A prepared commit is rechecked
against the live source-snapshot hash and target revision before the admitted
payload is projected.
-/

public section

namespace Surface.Core.Transport

universe u v w

@[surface_novel]
structure CommitAdapter (Host : Type u) (Payload : Type v) (Model : Type w) where
  currentRevision? : Model → Host → Option Revision
  project : Host → Revisioned Payload → Model → Model
  sourceSnapshotHash : Model → Hash256
  projectRevision : ∀ host payload model,
    currentRevision? (project host payload model) host = some payload.revision

@[surface_novel]
structure PreparedCommit (Host : Type u) (Payload : Type v) where
  target : Host
  sourceSnapshotHash : Hash256
  expectedTargetRevision? : Option Revision
  admittedPayload : Revisioned Payload
  proposalAdmitted : Bool

@[surface_novel]
inductive CommitRejection where
  | proposalRejected
  | sourceSnapshotRace
  | targetRevisionRace
deriving DecidableEq, Repr

@[surface_novel]
inductive CommitResult (Model : Type w) where
  | committed (model : Model)
  | rejected (reason : CommitRejection) (unchanged : Model)

@[expose] def CommitResult.model {Model : Type w} : CommitResult Model → Model
  | .committed model => model
  | .rejected _ unchanged => unchanged

@[expose] def commit
    {Host : Type u} {Payload : Type v} {Model : Type w}
    [DecidableEq Revision]
    (adapter : CommitAdapter Host Payload Model)
    (prepared : PreparedCommit Host Payload) (live : Model) : CommitResult Model :=
  if prepared.proposalAdmitted ≠ true then
    .rejected .proposalRejected live
  else if adapter.sourceSnapshotHash live ≠ prepared.sourceSnapshotHash then
    .rejected .sourceSnapshotRace live
  else if adapter.currentRevision? live prepared.target ≠
      prepared.expectedTargetRevision? then
    .rejected .targetRevisionRace live
  else
    .committed (adapter.project prepared.target prepared.admittedPayload live)

@[surface_novel, surface_published]
theorem rejectedProposal_leavesModelUnchanged
    {Host : Type u} {Payload : Type v} {Model : Type w}
    [DecidableEq Revision]
    (adapter : CommitAdapter Host Payload Model)
    (prepared : PreparedCommit Host Payload) (live : Model)
    (rejected : prepared.proposalAdmitted ≠ true) :
    (commit adapter prepared live).model = live := by
  simp [commit, rejected, CommitResult.model]

@[surface_novel, surface_published]
theorem sourceSnapshotRace_leavesModelUnchanged
    {Host : Type u} {Payload : Type v} {Model : Type w}
    [DecidableEq Revision]
    (adapter : CommitAdapter Host Payload Model)
    (prepared : PreparedCommit Host Payload) (live : Model)
    (admitted : prepared.proposalAdmitted = true)
    (raced : adapter.sourceSnapshotHash live ≠ prepared.sourceSnapshotHash) :
    (commit adapter prepared live).model = live := by
  simp [commit, admitted, raced, CommitResult.model]

@[surface_novel, surface_published]
theorem targetRevisionRace_leavesModelUnchanged
    {Host : Type u} {Payload : Type v} {Model : Type w}
    [DecidableEq Revision]
    (adapter : CommitAdapter Host Payload Model)
    (prepared : PreparedCommit Host Payload) (live : Model)
    (admitted : prepared.proposalAdmitted = true)
    (sameSnapshot : adapter.sourceSnapshotHash live = prepared.sourceSnapshotHash)
    (raced : adapter.currentRevision? live prepared.target ≠
      prepared.expectedTargetRevision?) :
    (commit adapter prepared live).model = live := by
  simp [commit, admitted, sameSnapshot, raced, CommitResult.model]

@[surface_novel, surface_published]
theorem successfulCommit_preserves_revision
    {Host : Type u} {Payload : Type v} {Model : Type w}
    [DecidableEq Revision]
    (adapter : CommitAdapter Host Payload Model)
    (prepared : PreparedCommit Host Payload) (live committed : Model)
    (success : commit adapter prepared live = .committed committed) :
    adapter.currentRevision? committed prepared.target =
      some prepared.admittedPayload.revision := by
  have projected :
      committed = adapter.project prepared.target prepared.admittedPayload live := by
    simp only [commit] at success
    split at success <;> try contradiction
    split at success <;> try contradiction
    split at success <;> try contradiction
    exact CommitResult.committed.inj success.symm
  rw [projected]
  exact adapter.projectRevision prepared.target prepared.admittedPayload live

@[surface_novel, surface_published]
theorem successfulCommit_projects_admitted_payload
    {Host : Type u} {Payload : Type v} {Model : Type w}
    [DecidableEq Revision]
    (adapter : CommitAdapter Host Payload Model)
    (prepared : PreparedCommit Host Payload) (live committed : Model)
    (success : commit adapter prepared live = .committed committed) :
    committed = adapter.project prepared.target prepared.admittedPayload live := by
  simp only [commit] at success
  split at success <;> try contradiction
  split at success <;> try contradiction
  split at success <;> try contradiction
  exact CommitResult.committed.inj success.symm

end Surface.Core.Transport
```
