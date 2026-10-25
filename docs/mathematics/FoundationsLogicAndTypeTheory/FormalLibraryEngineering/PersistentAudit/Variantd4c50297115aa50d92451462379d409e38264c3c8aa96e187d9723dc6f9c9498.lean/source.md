# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PersistentAudit.Variantd4c50297115aa50d92451462379d409e38264c3c8aa96e187d9723dc6f9c9498

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `298d4fafa4d95bd942b58e34c15b2b581ef4dcef` · SHA-256 `50eced8357f8c55310be7cf29666fe6e3466c00e4d754a8e623a512fecea9d68`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PersistentAuditPayload.Variant118f91418ed4d89f5f5c655d18e5842294842e88418a50204ef19a68e0ca0b20","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"118f91418ed4d89f5f5c655d18e5842294842e88418a50204ef19a68e0ca0b20","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.PersistentAuditPayload.Variant118f91418ed4d89f5f5c655d18e5842294842e88418a50204ef19a68e0ca0b20","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"118f91418ed4d89f5f5c655d18e5842294842e88418a50204ef19a68e0ca0b20","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/System/PersistentAudit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Authority.AuditEvidence
import Mathematics.Mutation.Confluence

/-!
# Persistent external audit

The persistent audit is an append-only, snapshot-bound event replay.  Event
payloads retain their proof-bearing evidence objects; event labels cannot claim
acceptance independently.  Results from a different immutable snapshot are
usable only through explicit accepted revalidation evidence.

The materialized view is a monotone set projection.  Its order independence is
obtained by instantiating the existing `CompatibleReduction`, whose commutation
proof is mandatory.  It is not an authority constructor.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PersistentAuditPayload.Variant118f91418ed4d89f5f5c655d18e5842294842e88418a50204ef19a68e0ca0b20

namespace Mathematics.System

open Mathematics.Authority
open Mathematics.Projection
open Mathematics.Mutation

/-- Every committed event payload retains its semantic authority class. -/
inductive PersistentAuditPayload
    (snapshot : ProjectionSnapshot)
  | proposalRecorded :
      AuditFindingProposal snapshot →
        PersistentAuditPayload snapshot
  | evidenceAccepted :
      AcceptedAuditEvidence snapshot →
        PersistentAuditPayload snapshot
  | findingAccepted :
      AcceptedAuditFinding snapshot →
        PersistentAuditPayload snapshot
  | conflictOpened :
      AuditConflictBranch snapshot →
        PersistentAuditPayload snapshot
  | workImplemented :
      (work : AuditWorkItem snapshot) →
      ImplementedAuditWork work →
        PersistentAuditPayload snapshot
  | workDischarged :
      (work : AuditWorkItem snapshot) →
      DischargedAuditWork work →
        PersistentAuditPayload snapshot

/-- One immutable, predecessor-addressed event under an active snapshot head. -/
structure PersistentAuditEvent
    (snapshot : ProjectionSnapshot) where
  eventObjectId : ObjectAddress
  predecessorEventId : Option ObjectAddress
  sequence : Nat
  snapshotId : ObjectAddress
  committedSnapshotHead : ObjectAddress
  eventDigest : Digest
  activeSnapshot : VerifiedActiveSnapshot snapshot
  payload : PersistentAuditPayload snapshot
  snapshot_bound : snapshotId = snapshot.snapshotId
  snapshot_head_bound :
    committedSnapshotHead = activeSnapshot.head
  event_digest_valid : eventDigest.Valid

/--
The committed history is exactly the predecessor-linked chain from its root.
Prepared events not appearing in this inductive replay carry no committed
history status.
-/
inductive CommittedAuditReplay
    (snapshot : ProjectionSnapshot) :
    PersistentAuditEvent snapshot → Prop
  | root
      (event : PersistentAuditEvent snapshot)
      (hasNoPredecessor : event.predecessorEventId = none)
      (initialSequence : event.sequence = 0) :
      CommittedAuditReplay snapshot event
  | append
      {previous current : PersistentAuditEvent snapshot}
      (prior : CommittedAuditReplay snapshot previous)
      (predecessor :
        current.predecessorEventId = some previous.eventObjectId)
      (nextSequence : current.sequence = previous.sequence + 1)
      (sameSnapshotHead :
        current.committedSnapshotHead =
          previous.committedSnapshotHead) :
      CommittedAuditReplay snapshot current

namespace CommittedAuditReplay

/-- The replay head is always bound to the same immutable snapshot. -/
theorem head_snapshot_exact
    {snapshot : ProjectionSnapshot}
    {head : PersistentAuditEvent snapshot}
    (_replay : CommittedAuditReplay snapshot head) :
    head.snapshotId = snapshot.snapshotId :=
  head.snapshot_bound

/-- Every nonroot append names its exact predecessor object. -/
theorem appended_predecessor_exact
    {snapshot : ProjectionSnapshot}
    {previous current : PersistentAuditEvent snapshot}
    (_prior : CommittedAuditReplay snapshot previous)
    (predecessor :
      current.predecessorEventId = some previous.eventObjectId)
    (nextSequence : current.sequence = previous.sequence + 1)
    (sameSnapshotHead :
      current.committedSnapshotHead =
        previous.committedSnapshotHead) :
    ∃ _replay : CommittedAuditReplay snapshot current,
      current.predecessorEventId = some previous.eventObjectId :=
  ⟨.append _prior predecessor nextSequence sameSnapshotHead, predecessor⟩

end CommittedAuditReplay

/-- A result generated at one exact active snapshot head. -/
structure SnapshotAuditResult
    (snapshot : ProjectionSnapshot) where
  resultId : StableId
  resultDigest : Digest
  snapshotId : ObjectAddress
  generatedAtHead : ObjectAddress
  activeSnapshot : VerifiedActiveSnapshot snapshot
  result_digest_valid : resultDigest.Valid
  snapshot_bound : snapshotId = snapshot.snapshotId
  head_bound : generatedAtHead = activeSnapshot.head

/-- Accepted revalidation binds a stale result to a new active snapshot. -/
structure AuditResultRevalidation
    {source target : ProjectionSnapshot}
    (result : SnapshotAuditResult source) where
  targetSnapshot : VerifiedActiveSnapshot target
  evidence : AcceptedAuditEvidence target
  evidence_targets_result :
    evidence.payload.subjectId = result.resultId
  evidence_matches_result :
    evidence.payload.claimDigest = result.resultDigest

/--
A result is usable at a target snapshot only when the snapshot is identical or
accepted revalidation evidence is supplied at the target.
-/
inductive UsableAuditResult
    {source : ProjectionSnapshot}
    (target : ProjectionSnapshot)
    (result : SnapshotAuditResult source) : Prop
  | current
      (targetSnapshot : VerifiedActiveSnapshot target)
      (sameSnapshot : source = target)
      (sameHead :
        result.generatedAtHead = targetSnapshot.head) :
      UsableAuditResult target result
  | revalidated
      (certificate :
        @AuditResultRevalidation source target result) :
      UsableAuditResult target result

/-- A result from a different snapshot can be usable only through revalidation. -/
theorem stale_result_requires_revalidation
    {source target : ProjectionSnapshot}
    {result : SnapshotAuditResult source}
    (stale : source ≠ target)
    (usable : UsableAuditResult target result) :
    Nonempty (@AuditResultRevalidation source target result) := by
  cases usable with
  | current _ sameSnapshot _ =>
      exact False.elim (stale sameSnapshot)
  | revalidated certificate =>
      exact ⟨certificate⟩

/-- Monotone materialized view; proof objects remain in the event log. -/
structure PersistentAuditView where
  proposalIds : Finset StableId
  evidenceIds : Finset EvidenceId
  acceptedFindingIds : Finset StableId
  conflictIds : Finset StableId
  implementedWorkIds : Finset StableId
  dischargedWorkIds : Finset StableId

namespace PersistentAuditView

/-- Empty projection before replay. -/
def empty : PersistentAuditView where
  proposalIds := ∅
  evidenceIds := ∅
  acceptedFindingIds := ∅
  conflictIds := ∅
  implementedWorkIds := ∅
  dischargedWorkIds := ∅

/-- Set union is the fixed, nonauthoritative projection reducer. -/
def join
    (left right : PersistentAuditView) :
    PersistentAuditView where
  proposalIds := left.proposalIds ∪ right.proposalIds
  evidenceIds := left.evidenceIds ∪ right.evidenceIds
  acceptedFindingIds :=
    left.acceptedFindingIds ∪ right.acceptedFindingIds
  conflictIds := left.conflictIds ∪ right.conflictIds
  implementedWorkIds :=
    left.implementedWorkIds ∪ right.implementedWorkIds
  dischargedWorkIds :=
    left.dischargedWorkIds ∪ right.dischargedWorkIds

@[ext]
theorem ext
    {left right : PersistentAuditView}
    (proposalIds : left.proposalIds = right.proposalIds)
    (evidenceIds : left.evidenceIds = right.evidenceIds)
    (acceptedFindingIds :
      left.acceptedFindingIds = right.acceptedFindingIds)
    (conflictIds : left.conflictIds = right.conflictIds)
    (implementedWorkIds :
      left.implementedWorkIds = right.implementedWorkIds)
    (dischargedWorkIds :
      left.dischargedWorkIds = right.dischargedWorkIds) :
    left = right := by
  cases left
  cases right
  simp_all

theorem join_assoc
    (first second third : PersistentAuditView) :
    join (join first second) third =
      join first (join second third) := by
  ext <;> simp [join, Finset.union_assoc]

theorem join_comm
    (left right : PersistentAuditView) :
    join left right = join right left := by
  ext <;> simp [join, Finset.union_comm]

end PersistentAuditView

/-- Exact monotone projection contributed by one proof-bearing event. -/
def persistentAuditDelta
    {snapshot : ProjectionSnapshot}
    (event : PersistentAuditEvent snapshot) :
    PersistentAuditView :=
  match event.payload with
  | .proposalRecorded proposal =>
      { PersistentAuditView.empty with
        proposalIds := {proposal.claim.findingId} }
  | .evidenceAccepted evidence =>
      { PersistentAuditView.empty with
        evidenceIds := {evidence.payload.evidenceId} }
  | .findingAccepted finding =>
      { PersistentAuditView.empty with
        acceptedFindingIds := {finding.claim.findingId} }
  | .conflictOpened conflict =>
      { PersistentAuditView.empty with
        conflictIds := {conflict.conflictId} }
  | .workImplemented work _ =>
      { PersistentAuditView.empty with
        implementedWorkIds := {work.workId} }
  | .workDischarged work _ =>
      { PersistentAuditView.empty with
        dischargedWorkIds := {work.workId} }

/-- Apply one event to the materialized view without changing event authority. -/
def applyPersistentAuditEvent
    {snapshot : ProjectionSnapshot}
    (event : PersistentAuditEvent snapshot)
    (state : PersistentAuditView) :
    PersistentAuditView :=
  PersistentAuditView.join state (persistentAuditDelta event)

/--
The existing confluence primitive is instantiated only after an exact
commutation proof is supplied for this fixed union reducer.
-/
def persistentAuditCompatibleReduction
    (snapshot : ProjectionSnapshot) :
    CompatibleReduction
      PersistentAuditView
      (PersistentAuditEvent snapshot) where
  apply := applyPersistentAuditEvent
  commute := by
    intro left right state
    simp only [applyPersistentAuditEvent]
    rw [PersistentAuditView.join_assoc]
    rw [PersistentAuditView.join_comm
      (persistentAuditDelta right)
      (persistentAuditDelta left)]
    rw [← PersistentAuditView.join_assoc]

/-- Compatible audit reductions are order independent by their carried proof. -/
theorem compatible_audit_events_order_independent
    {snapshot : ProjectionSnapshot}
    (left right : PersistentAuditEvent snapshot)
    (state : PersistentAuditView) :
    applyPersistentAuditEvent left
        (applyPersistentAuditEvent right state) =
      applyPersistentAuditEvent right
        (applyPersistentAuditEvent left state) :=
  compatible_reduction_confluent
    (persistentAuditCompatibleReduction snapshot)
    left right state

end Mathematics.System
```
