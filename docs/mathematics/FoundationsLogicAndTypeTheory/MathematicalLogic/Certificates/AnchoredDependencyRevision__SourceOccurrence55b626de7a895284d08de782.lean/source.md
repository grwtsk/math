# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Certificates.AnchoredDependencyRevision

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0ef05440356a188e80065e2ee4257c41d5787698` · SHA-256 `b1cd544bd99d2b63877952e7ac4c2f732e92d94896d206367e561c3d71a5635c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Certificates.AnchoredBatchVerification
import GRWTSK.DynamicalSystems.TransitionSystems.RevisionReachability

/-!
# correction of anchored replay evidence

The fixed-schema correction uses the original selective-withdrawal data update.
Its distinct replay-ledger safety is proved directly. Surviving anchored proof
objects remain recorded at their original snapshot: freshness is composed from
recorded to current to future, and their actual replay theorem supplies the
future target. No arbitrary-left/right locality theorem is invented.

Both mathematical archives and original effect receipts are preserved. Every
finite actual correction sequence appends the original exact event records and
retains issued-claim accounting. No effect authorization, authentication, rights,
resource bound, or infinite-trajectory claim follows from correction.

Human mathematical direction: grwtsk contributors.
Formal implementation: OpenAI Codex.
-/

namespace GRWTSK.ProofHorizon.CorkscrewChamberCap.ReplayAdmissionModel

universe u v w x y z

section CorrectionData

variable {Artifact : Type u} {Revision : Type v} {Claim : Type w}
  {Effect : Type x} {Grant : Type y} {Surface : Type z}
  [DecidableEq Revision] [Fintype Claim] [DecidableEq Claim]

local notation "Snapshot" => SourceSnapshot Artifact Revision
local notation "Policy" =>
  ControllerPolicy (SourceSnapshot Artifact Revision) Claim Effect Grant Surface
local notation "Request" => CorrectionRequest Artifact Revision Claim

/-- Reuse the original correction data while retaining the separately typed replay archive. -/
def ReplayLedger.correct (schema : DependencySchema Artifact Claim) (policy : Policy)
    (ledger : ReplayLedger policy) (current : Snapshot) (withdrawn : Finset Claim) :
    ReplayLedger policy where
  base := ledger.base.correct schema policy current withdrawn
  replayArchive := ledger.replayArchive

/-- Execute an actual finite list of correction requests in order. -/
def ReplayLedger.correctMany (schema : DependencySchema Artifact Claim) (policy : Policy)
    (ledger : ReplayLedger policy) (requests : List Request) : ReplayLedger policy :=
  requests.foldl (fun previous request ↦
    previous.correct schema policy request.current request.withdrawn) ledger

end CorrectionData

end GRWTSK.ProofHorizon.CorkscrewChamberCap.ReplayAdmissionModel

namespace GRWTSK.ProofHorizon.CorkscrewChamberCap.ReplayCorrection

open ReplayAdmissionModel

universe u v w x y z

section Correction

variable {Artifact : Type u} {Revision : Type v} {Claim : Type w}
  {Effect : Type x} {Grant : Type y} {Surface : Type z}
  [DecidableEq Revision] [Fintype Claim] [DecidableEq Claim]

local notation "Snapshot" => SourceSnapshot Artifact Revision
local notation "Policy" =>
  ControllerPolicy (SourceSnapshot Artifact Revision) Claim Effect Grant Surface
local notation "Request" => CorrectionRequest Artifact Revision Claim

/-- The original fixed-schema closure and actual recorded-to-future replay suffice. -/
theorem replay_correction_preserves_safe (schema : DependencySchema Artifact Claim)
    (policy : Policy) (ledger : ReplayLedger policy) (current : Snapshot)
    (withdrawn : Finset Claim) (safe : ReplaySafe schema policy ledger) :
    ReplaySafe schema policy (ledger.correct schema policy current withdrawn) := by
  constructor
  · intro claim member
    rcases Finset.mem_union.mp member with pending | reopened
    · exact safe.pending_issued pending
    · exact safe.verified_issued (Finset.mem_inter.mp reopened).1
  · intro claim member
    exact safe.verified_issued (Finset.mem_sdiff.mp member).1
  · intro claim issued
    rcases Finset.mem_union.mp (safe.issued_covered issued) with pending | verified
    · exact Finset.mem_union_left _ (Finset.mem_union_left _ pending)
    · by_cases affected : claim ∈ correctionAffected schema ledger.base.snapshot current withdrawn
      · exact Finset.mem_union_left _
          (Finset.mem_union_right _ (Finset.mem_inter.mpr ⟨verified, affected⟩))
      · exact Finset.mem_union_right _ (Finset.mem_sdiff.mpr ⟨verified, affected⟩)
  · apply Finset.disjoint_left.mpr
    intro claim pending verified
    have retained := Finset.mem_sdiff.mp verified
    rcases Finset.mem_union.mp pending with oldPending | reopened
    · exact Finset.disjoint_left.mp safe.statuses_disjoint oldPending retained.1
    · exact retained.2 (Finset.mem_inter.mp reopened).2
  · intro claim verified prerequisite dependency
    have retained := Finset.mem_sdiff.mp verified
    refine Finset.mem_sdiff.mpr ⟨safe.verified_dependencies claim retained.1
      prerequisite dependency, ?_⟩
    intro affected
    exact retained.2 (affectedClosure_closed schema.dependencies
      (directChanged schema ledger.base.snapshot current ∪ withdrawn)
      claim prerequisite dependency affected)
  · intro claim verified
    have retained := Finset.mem_sdiff.mp verified
    rcases safe.verified_evidence claim retained.1 with legacy | replay
    · rcases legacy with ⟨record, archived, claimEq, readsEq, accepted⟩
      refine Or.inl ⟨record, archived, claimEq, readsEq, ?_⟩
      have agreement : SnapshotAgreesOn record.certificate.reads ledger.base.snapshot current := by
        rw [readsEq]
        exact unchanged_reads_of_unaffected schema ledger.base.snapshot current withdrawn
          claim retained.2
      exact record.certificate.fresh_accepts (snapshot_agrees_trans accepted.1 agreement)
    · rcases replay with ⟨record, archived, claimEq, readsEq, accepted⟩
      refine Or.inr ⟨record, archived, claimEq, readsEq, ?_⟩
      have agreement : SnapshotAgreesOn record.certificate.reads ledger.base.snapshot current := by
        rw [readsEq]
        exact unchanged_reads_of_unaffected schema ledger.base.snapshot current withdrawn
          claim retained.2
      exact (record.certificate.accepted_iff_fresh current).mpr
        (snapshot_agrees_trans accepted.1 agreement)
  · exact safe.receipts_historical
  · intro record member
    rcases List.mem_append.mp member with old | added
    · exact safe.corrections_exact record old
    · have same : record = {
          before := ledger.base.snapshot
          after := current
          withdrawn := withdrawn
          affected := correctionAffected schema ledger.base.snapshot current withdrawn } := by
        simpa only [List.mem_singleton] using added
      subst record
      rfl

/-- The active claim survives exactly when the original fixed-schema closure misses it. -/
theorem replay_correction_verified_iff (schema : DependencySchema Artifact Claim)
    (policy : Policy) (ledger : ReplayLedger policy) (current : Snapshot)
    (withdrawn : Finset Claim) (claim : Claim) :
    claim ∈ (ledger.correct schema policy current withdrawn).base.verified ↔
      claim ∈ ledger.base.verified ∧
        claim ∉ correctionAffected schema ledger.base.snapshot current withdrawn :=
  correction_verified_iff schema policy ledger.base current withdrawn claim

/-- Reopened claims remain issued and their archived proofs are preserved. -/
theorem replay_affected_verified_reopened (schema : DependencySchema Artifact Claim)
    (policy : Policy) (ledger : ReplayLedger policy) (current : Snapshot)
    (withdrawn : Finset Claim) (claim : Claim) (verified : claim ∈ ledger.base.verified)
    (affected : claim ∈ correctionAffected schema ledger.base.snapshot current withdrawn) :
    claim ∈ (ledger.correct schema policy current withdrawn).base.pending ∧
      claim ∉ (ledger.correct schema policy current withdrawn).base.verified :=
  affected_verified_reopened schema policy ledger.base current withdrawn claim verified affected

/-- Actual surviving evidence proves its exact corrected-source target. -/
theorem replay_corrected_current_target (schema : DependencySchema Artifact Claim)
    (policy : Policy) (ledger : ReplayLedger policy) (current : Snapshot)
    (withdrawn : Finset Claim) (safe : ReplaySafe schema policy ledger) (claim : Claim)
    (verified : claim ∈ (ledger.correct schema policy current withdrawn).base.verified) :
    policy.statement current claim :=
  replay_verified_current_target schema policy _
    (replay_correction_preserves_safe schema policy ledger current withdrawn safe) claim verified

/-- Both original archives, issued claims and historical receipts remain literal data. -/
theorem replay_correction_histories (schema : DependencySchema Artifact Claim) (policy : Policy)
    (ledger : ReplayLedger policy) (current : Snapshot) (withdrawn : Finset Claim) :
    (ledger.correct schema policy current withdrawn).base.archive = ledger.base.archive ∧
      (ledger.correct schema policy current withdrawn).replayArchive = ledger.replayArchive ∧
      (ledger.correct schema policy current withdrawn).base.receipts = ledger.base.receipts ∧
      (ledger.correct schema policy current withdrawn).base.issued = ledger.base.issued :=
  ⟨rfl, rfl, rfl, rfl⟩

theorem replay_correction_records_append (schema : DependencySchema Artifact Claim)
    (policy : Policy) (ledger : ReplayLedger policy) (current : Snapshot)
    (withdrawn : Finset Claim) :
    (ledger.correct schema policy current withdrawn).base.corrections =
      ledger.base.corrections ++ [{
        before := ledger.base.snapshot
        after := current
        withdrawn := withdrawn
        affected := correctionAffected schema ledger.base.snapshot current withdrawn }] := rfl

/-- An unchanged snapshot without withdrawal keeps the original statuses. -/
theorem replay_correction_same_snapshot_status (schema : DependencySchema Artifact Claim)
    (policy : Policy) (ledger : ReplayLedger policy) :
    (ledger.correct schema policy ledger.base.snapshot ∅).base.pending = ledger.base.pending ∧
      (ledger.correct schema policy ledger.base.snapshot ∅).base.verified = ledger.base.verified :=
  correction_same_snapshot_status schema policy ledger.base

@[simp]
theorem replay_correctMany_nil (schema : DependencySchema Artifact Claim) (policy : Policy)
    (ledger : ReplayLedger policy) : ledger.correctMany schema policy [] = ledger := rfl

@[simp]
theorem replay_correctMany_cons (schema : DependencySchema Artifact Claim) (policy : Policy)
    (ledger : ReplayLedger policy) (request : Request) (requests : List Request) :
    ledger.correctMany schema policy (request :: requests) =
      (ledger.correct schema policy request.current request.withdrawn).correctMany
        schema policy requests := rfl

/-- Projection to the original data update makes no original `RevisionSafe` claim. -/
theorem replay_correctMany_base (schema : DependencySchema Artifact Claim) (policy : Policy)
    (ledger : ReplayLedger policy) (requests : List Request) :
    (ledger.correctMany schema policy requests).base =
      ledger.base.correctMany schema policy requests := by
  induction requests generalizing ledger with
  | nil => rfl
  | cons request requests ih =>
    exact ih (ledger.correct schema policy request.current request.withdrawn)

/-- Every actual finite correction sequence preserves distinct replay safety. -/
theorem replay_correctMany_safe (schema : DependencySchema Artifact Claim) (policy : Policy)
    (ledger : ReplayLedger policy) (requests : List Request)
    (safe : ReplaySafe schema policy ledger) :
    ReplaySafe schema policy (ledger.correctMany schema policy requests) := by
  induction requests generalizing ledger with
  | nil => exact safe
  | cons request requests ih =>
    exact ih _ (replay_correction_preserves_safe schema policy ledger request.current
      request.withdrawn safe)

theorem replay_correctMany_replay_archive_preserved (schema : DependencySchema Artifact Claim)
    (policy : Policy) (ledger : ReplayLedger policy) (requests : List Request) :
    (ledger.correctMany schema policy requests).replayArchive = ledger.replayArchive := by
  induction requests generalizing ledger with
  | nil => rfl
  | cons request requests ih =>
    exact ih (ledger.correct schema policy request.current request.withdrawn)

/-- Data-history preservation reuses the original finite-update theorems without
assuming global-locality safety of the replay-extended base ledger. -/
theorem replay_correctMany_histories (schema : DependencySchema Artifact Claim) (policy : Policy)
    (ledger : ReplayLedger policy) (requests : List Request) :
    (ledger.correctMany schema policy requests).base.archive = ledger.base.archive ∧
      (ledger.correctMany schema policy requests).replayArchive = ledger.replayArchive ∧
      (ledger.correctMany schema policy requests).base.receipts = ledger.base.receipts ∧
      (ledger.correctMany schema policy requests).base.issued = ledger.base.issued := by
  rw [replay_correctMany_base]
  exact ⟨correctMany_archive_preserved schema policy ledger.base requests,
    replay_correctMany_replay_archive_preserved schema policy ledger requests,
    correctMany_receipts_preserved schema policy ledger.base requests,
    correctMany_issued_preserved schema policy ledger.base requests⟩

/-- Each request appends one exact event to the original immutable history. -/
theorem replay_correctMany_correction_suffix (schema : DependencySchema Artifact Claim)
    (policy : Policy) (ledger : ReplayLedger policy) (requests : List Request) :
    ∃ suffix, (ledger.correctMany schema policy requests).base.corrections =
      ledger.base.corrections ++ suffix ∧ suffix.length = requests.length := by
  rw [replay_correctMany_base]
  exact correctMany_correction_suffix schema policy ledger.base requests

theorem replay_correctMany_correction_prefix (schema : DependencySchema Artifact Claim)
    (policy : Policy) (ledger : ReplayLedger policy) (requests : List Request) :
    ledger.base.corrections <+: (ledger.correctMany schema policy requests).base.corrections := by
  rw [replay_correctMany_base]
  exact correctMany_correction_prefix schema policy ledger.base requests

theorem replay_correctMany_correction_length (schema : DependencySchema Artifact Claim)
    (policy : Policy) (ledger : ReplayLedger policy) (requests : List Request) :
    (ledger.correctMany schema policy requests).base.corrections.length =
      ledger.base.corrections.length + requests.length := by
  rw [replay_correctMany_base]
  exact correctMany_correction_length schema policy ledger.base requests

/-- The finite correction sequence keeps every issued obligation accounted for. -/
theorem replay_correctMany_status (schema : DependencySchema Artifact Claim) (policy : Policy)
    (ledger : ReplayLedger policy) (requests : List Request)
    (safe : ReplaySafe schema policy ledger) :
    (ledger.correctMany schema policy requests).base.verified ⊆ ledger.base.verified ∧
      ledger.base.pending ⊆ (ledger.correctMany schema policy requests).base.pending ∧
      ledger.base.issued ⊆ (ledger.correctMany schema policy requests).base.pending ∪
        (ledger.correctMany schema policy requests).base.verified := by
  refine ⟨?_, ?_, ?_⟩
  · rw [replay_correctMany_base]
    exact correctMany_verified_subset schema policy ledger.base requests
  · rw [replay_correctMany_base]
    exact correctMany_pending_superset schema policy ledger.base requests
  · have covered := (replay_correctMany_safe schema policy ledger requests safe).issued_covered
    rw [replay_correctMany_base, correctMany_issued_preserved] at covered
    rw [replay_correctMany_base]
    exact covered

/-- Final mathematical targets are source-indexed and derived from actual retained evidence. -/
theorem replay_correctMany_current_target (schema : DependencySchema Artifact Claim)
    (policy : Policy) (ledger : ReplayLedger policy) (requests : List Request)
    (safe : ReplaySafe schema policy ledger) (claim : Claim)
    (verified : claim ∈ (ledger.correctMany schema policy requests).base.verified) :
    policy.statement (ledger.correctMany schema policy requests).base.snapshot claim :=
  replay_verified_current_target schema policy _
    (replay_correctMany_safe schema policy ledger requests safe) claim verified

/-- A nonempty request list ends at its literal last requested snapshot. -/
theorem replay_correctMany_last_snapshot (schema : DependencySchema Artifact Claim)
    (policy : Policy) (ledger : ReplayLedger policy) (requests : List Request) (request : Request)
    (lastRequest : requests.getLast? = some request) :
    (ledger.correctMany schema policy requests).base.snapshot = request.current := by
  rw [replay_correctMany_base]
  exact correctMany_last_snapshot schema policy ledger.base requests request lastRequest

end Correction

end GRWTSK.ProofHorizon.CorkscrewChamberCap.ReplayCorrection
```
