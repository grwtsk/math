# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Register.Variant70ae2ea9d52ed205410dd661acf5b6477f817c99e561f8a1468426e84bbf3b74

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `06327ad6f85909673e3a0cbd2a3fb0aa41b0425b` · SHA-256 `6e8fe4ca637e1dd03f847682342d08d02789f9e53393e4044c3c2097bfa230a6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CommitAdapter.Variant4987c88f7a3ed34524b0ff4cd858e36f9c57a07bbbf227b3c021f82003ae2dc7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4987c88f7a3ed34524b0ff4cd858e36f9c57a07bbbf227b3c021f82003ae2dc7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.CommitAdapter.Variant4987c88f7a3ed34524b0ff4cd858e36f9c57a07bbbf227b3c021f82003ae2dc7","mathematical_subject":"Foundations.Unclassified","original_sha256":"4987c88f7a3ed34524b0ff4cd858e36f9c57a07bbbf227b3c021f82003ae2dc7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:dd72b57dce63c25b6a039856/workspace/lib/Surface/Core/Transport/Register.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public import Surface.Core.Transport.Hash
public import Surface.Core.Transport.Revision

/-!
# Pure two-phase transport commit model

Verification and mutation remain separate. A prepared commit is rechecked
against the live source-snapshot hash and target revision before the admitted
payload is projected.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CommitAdapter.Variant4987c88f7a3ed34524b0ff4cd858e36f9c57a07bbbf227b3c021f82003ae2dc7

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
