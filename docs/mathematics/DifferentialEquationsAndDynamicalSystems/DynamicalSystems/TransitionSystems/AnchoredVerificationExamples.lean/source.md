# Complete source: GRWTSK.DynamicalSystems.TransitionSystems.AnchoredVerificationExamples

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c6324c4f142f26943ac9c782480700d58ddec699` · SHA-256 `cf3cb0fa499b229df51572fd034bc83d472880f040c322a20bb4c70fdac5f5c9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Logic.Locality.AnchoredCertificates
import GRWTSK.Logic.Certificates.AnchoredBatchVerification
import GRWTSK.Logic.Certificates.AnchoredDependencyRevision
import GRWTSK.DynamicalSystems.TransitionSystems.AnchoredReinitialization

/-!
# Actual grounded P/Q replay admission and restart

The honest hostile-source providers supply anchored proofs for both claims.
The batch admits those actual objects into a distinct replay ledger and starts
a safe current-source controller. Its original global archive stays empty.
Changing only unread b preserves both active claims. Changing read a reopens
both, even though Q remains true because b is true. Both archives remain literal.

This auxiliary Bool fixture performs no effects and supplies no operational
authorization, source authentication, rights, arithmetic estimate or RH result.

Human mathematical direction: grwtsk contributors.
Formal implementation: OpenAI Codex.
-/

namespace GRWTSK.ProofHorizon.CorkscrewChamberCap.GroundedReplayFixture

open AlternativeLocality.HostileFixture ReplayEvidence ReplayAdmissionModel
open ReplayCorrection ReplayRestart

def schema : DependencySchema Bool Bool where
  reads := fun _ => {false}
  dependencies := fun claim => if claim then {false} else ∅

def policy : ControllerPolicy (SourceSnapshot Bool Bool) Bool Unit Unit Unit where
  statement := target
  typed := fun _ _ => False
  authenticated := fun _ => False
  permits := fun _ _ _ => False
  rights := fun _ _ _ => False

def replayP : ReplayCertificate Bool Bool (fun snapshot => target snapshot false) :=
  ofGrounded providers Finset.univ ∅ ∅ recorded false grounded_P

def replayQ : ReplayCertificate Bool Bool (fun snapshot => target snapshot true) :=
  ReplayEvidence.HostileFixture.replayQ

theorem replay_P_reads : replayP.reads = {false} := footprint_exact

theorem replay_Q_reads : replayQ.reads = {false} :=
  ReplayEvidence.HostileFixture.replayQ_reads

def recordP : ReplayArchivedClaim policy.statement := ⟨false, replayP⟩

def recordQ : ReplayArchivedClaim policy.statement := ⟨true, replayQ⟩

def batchRecords : List (ReplayArchivedClaim policy.statement) := [recordP, recordQ]

def baseLedger : RevisionLedger policy where
  snapshot := recorded
  pending := Finset.univ
  verified := ∅
  issued := Finset.univ
  archive := []
  receipts := []
  corrections := []

theorem base_revision_safe : RevisionSafe schema policy baseLedger := by
  constructor <;> simp [baseLedger]

def initialLedger : ReplayLedger policy := ReplayLedger.ofRevision baseLedger

theorem initial_replay_safe : ReplaySafe schema policy initialLedger :=
  replay_safe_of_revision schema policy baseLedger base_revision_safe

def batchAdmission : ReplayAdmission schema policy initialLedger where
  claims := Finset.univ
  records := batchRecords
  pending_only := Finset.Subset.refl _
  supplied_claims := by intro record _; exact Finset.mem_univ _
  current_evidence := by
    intro record supplied
    have alternatives : record = recordP ∨ record = recordQ := by
      simpa [batchRecords] using supplied
    rcases alternatives with rfl | rfl
    · exact ⟨replay_P_reads, snapshot_agrees_refl _ recorded⟩
    · exact ⟨replay_Q_reads, snapshot_agrees_refl _ recorded⟩
  coverage := by
    intro claim _
    cases claim with
    | false => exact ⟨recordP, by simp [batchRecords], rfl⟩
    | true => exact ⟨recordQ, by simp [batchRecords], rfl⟩
  prerequisites := by
    intro claim _ prerequisite _
    exact Finset.mem_union_right _ (Finset.mem_univ _)

def admittedLedger : ReplayLedger policy := initialLedger.admit schema policy batchAdmission

theorem admitted_replay_safe : ReplaySafe schema policy admittedLedger :=
  replay_admission_preserves_safe schema policy initialLedger batchAdmission initial_replay_safe

theorem admitted_status : admittedLedger.base.pending = ∅ ∧
    admittedLedger.base.verified = Finset.univ ∧ admittedLedger.base.issued = Finset.univ := by
  simp [admittedLedger, ReplayLedger.admit, batchAdmission, initialLedger,
    ReplayLedger.ofRevision, baseLedger]

theorem admitted_current_target (claim : Bool) : policy.statement recorded claim :=
  replay_verified_current_target schema policy admittedLedger admitted_replay_safe claim
    (by rw [admitted_status.2.1]; exact Finset.mem_univ _)

theorem admitted_archive_exact : admittedLedger.base.archive = [] ∧
    admittedLedger.replayArchive = batchRecords := ⟨rfl, rfl⟩

/-- True current targets and replay safety do not fill the original global archive. -/
theorem admitted_base_not_revision_safe : ¬ RevisionSafe schema policy admittedLedger.base := by
  intro safe
  rcases safe.verified_evidence true
      (by rw [admitted_status.2.1]; exact Finset.mem_univ _) with ⟨record, archived, _⟩
  rw [admitted_archive_exact.1] at archived
  exact List.not_mem_nil archived

theorem same_footprint_Q_global_blocked : ¬ ∃ certificate :
    RevisionCertificate Bool Bool (fun snapshot => policy.statement snapshot true),
      certificate.reads = schema.reads true := by
  rintro ⟨certificate, reads⟩
  apply ReplayEvidence.HostileFixture.replayQ_has_no_global_certificate
  exact ⟨certificate, reads.trans ReplayEvidence.HostileFixture.replayQ_reads.symm⟩

def config : ControllerStartConfig := ⟨3, 7⟩

def session : ReplaySession policy := startReplaySession admittedLedger config

theorem restarted_safe : ReplaySessionSafe schema policy config.budget session :=
  start_replay_session_safe schema policy admittedLedger config admitted_replay_safe

theorem restarted_history_exact : session.history = admittedLedger := rfl

theorem restarted_has_no_effects : session.active.receipts = [] := rfl

def unreadChange : SourceSnapshot Bool Bool := fun artifact => !artifact

def readChange : SourceSnapshot Bool Bool := hostileLeft

theorem unread_change_tokens : unreadChange false = recorded false ∧
    unreadChange true ≠ recorded true := by simp [unreadChange, recorded]

theorem unread_change_affected_empty : correctionAffected schema recorded unreadChange ∅ = ∅ := by
  have direct : directChanged schema recorded unreadChange = ∅ := by
    ext claim
    simp [directChanged, schema, unreadChange, recorded]
  simp [correctionAffected, direct, affectedClosure_empty]

theorem read_change_affected_all :
    correctionAffected schema recorded readChange ∅ = Finset.univ := by
  have direct : directChanged schema recorded readChange = Finset.univ := by
    ext claim
    simp [directChanged, schema, readChange, hostileLeft, recorded]
  apply Finset.Subset.antisymm (Finset.subset_univ _)
  intro claim _
  apply seeds_subset_affectedClosure schema.dependencies _
  rw [direct]
  simp

def unreadLedger : ReplayLedger policy := admittedLedger.correct schema policy unreadChange ∅

def changedLedger : ReplayLedger policy := admittedLedger.correct schema policy readChange ∅

theorem unread_corrected_safe : ReplaySafe schema policy unreadLedger :=
  replay_correction_preserves_safe schema policy admittedLedger unreadChange ∅ admitted_replay_safe

theorem changed_corrected_safe : ReplaySafe schema policy changedLedger :=
  replay_correction_preserves_safe schema policy admittedLedger readChange ∅ admitted_replay_safe

theorem unread_verified_all : unreadLedger.base.verified = Finset.univ := by
  change admittedLedger.base.verified \ correctionAffected schema recorded unreadChange ∅ = _
  rw [unread_change_affected_empty, Finset.sdiff_empty, admitted_status.2.1]

theorem unread_current_targets (claim : Bool) : policy.statement unreadChange claim :=
  replay_verified_current_target schema policy unreadLedger unread_corrected_safe claim
    (by rw [unread_verified_all]; exact Finset.mem_univ _)

theorem changed_status : changedLedger.base.pending = Finset.univ ∧
    changedLedger.base.verified = ∅ := by
  constructor
  · change admittedLedger.base.pending ∪
      (admittedLedger.base.verified ∩ correctionAffected schema recorded readChange ∅) = _
    rw [admitted_status.1, admitted_status.2.1, read_change_affected_all]
    simp
  · change admittedLedger.base.verified \ correctionAffected schema recorded readChange ∅ = _
    rw [admitted_status.2.1, read_change_affected_all]
    simp

/-- Conservative freshness rejection can reopen a claim whose new target still holds. -/
theorem Q_true_but_reopened : policy.statement readChange true ∧
    true ∈ changedLedger.base.pending ∧ true ∉ changedLedger.base.verified := by
  constructor
  · simp [policy, target, readChange, hostileLeft]
  · rw [changed_status.1, changed_status.2]
    simp

theorem correction_archives_literal :
    unreadLedger.base.archive = admittedLedger.base.archive ∧
      unreadLedger.replayArchive = admittedLedger.replayArchive ∧
      changedLedger.base.archive = admittedLedger.base.archive ∧
      changedLedger.replayArchive = admittedLedger.replayArchive := ⟨rfl, rfl, rfl, rfl⟩

end GRWTSK.ProofHorizon.CorkscrewChamberCap.GroundedReplayFixture
```
