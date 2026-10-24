# Complete source: GRWTSK.DynamicalSystems.TransitionSystems.AnchoredVerificationReachability

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b08f7bf9e8ed2ebc027a075b7c390c1611cf86db` · SHA-256 `08aa05dbdfd696105bf52f64ab54ad183ca541b8152e15a63623b7c2266aa239`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Logic.Certificates.AnchoredBatchVerification
import GRWTSK.Logic.Certificates.AnchoredDependencyRevision

/-!
# finite anchored replay workflows

The only constructors are actual fixed-schema correction and checked anchored
certificate admission. Safety is derived from the initial replay invariant and
these exact updates; no constructor labels an arbitrary final ledger safe.

Every finite interleaving retains issued obligations and historical receipts,
keeps the original global archive literal, and preserves both replay evidence
and correction histories as prefixes. Final verified targets are proved at the
exact final snapshot. No global locality, base RevisionSafe, effect authority,
resource conservation, authentication, or infinite-trajectory result is inferred.

Human mathematical direction: grwtsk contributors.
Formal implementation: OpenAI Codex.
-/

namespace GRWTSK.ProofHorizon.CorkscrewChamberCap.ReplayWorkflowModel

open ReplayAdmissionModel ReplayCorrection

universe u v w x y z

section Workflow

variable {Artifact : Type u} {Revision : Type v} {Claim : Type w}
  {Effect : Type x} {Grant : Type y} {Surface : Type z}
  [DecidableEq Revision] [Fintype Claim] [DecidableEq Claim]

local notation "Policy" =>
  ControllerPolicy (SourceSnapshot Artifact Revision) Claim Effect Grant Surface

/-- Each finite derivation carries actual correction data or checked admission objects. -/
inductive ReplayWorkflow (schema : DependencySchema Artifact Claim) (policy : Policy)
    (initial : ReplayLedger policy) : ReplayLedger policy → Prop
  | refl : ReplayWorkflow schema policy initial initial
  | correct {previous : ReplayLedger policy}
      (earlier : ReplayWorkflow schema policy initial previous)
      (request : CorrectionRequest Artifact Revision Claim) :
      ReplayWorkflow schema policy initial
        (previous.correct schema policy request.current request.withdrawn)
  | admit {previous : ReplayLedger policy}
      (earlier : ReplayWorkflow schema policy initial previous)
      (admission : ReplayAdmission schema policy previous) :
      ReplayWorkflow schema policy initial (previous.admit schema policy admission)

/-- Every next invariant follows from the actual update and its checked inputs. -/
theorem replay_workflow_safe (schema : DependencySchema Artifact Claim) (policy : Policy)
    {initial final : ReplayLedger policy}
    (workflow : ReplayWorkflow schema policy initial final)
    (safe : ReplaySafe schema policy initial) : ReplaySafe schema policy final := by
  induction workflow with
  | refl => exact safe
  | correct earlier request ih =>
    exact replay_correction_preserves_safe schema policy _ request.current request.withdrawn ih
  | admit earlier admission ih =>
    exact replay_admission_preserves_safe schema policy _ admission ih

theorem replay_workflow_issued_preserved (schema : DependencySchema Artifact Claim)
    (policy : Policy) {initial final : ReplayLedger policy}
    (workflow : ReplayWorkflow schema policy initial final) :
    final.base.issued = initial.base.issued := by
  induction workflow with
  | refl => rfl
  | correct earlier request ih =>
    exact ((replay_correction_histories schema policy _ request.current
      request.withdrawn).2.2.2).trans ih
  | admit earlier admission ih =>
    exact (replay_admission_source_issued_preserved schema policy _ admission).2.trans ih

/-- Anchored admission does not convert records to the original global archive. -/
theorem replay_workflow_global_archive_preserved (schema : DependencySchema Artifact Claim)
    (policy : Policy) {initial final : ReplayLedger policy}
    (workflow : ReplayWorkflow schema policy initial final) :
    final.base.archive = initial.base.archive := by
  induction workflow with
  | refl => rfl
  | correct earlier request ih =>
    exact (replay_correction_histories schema policy _ request.current request.withdrawn).1.trans ih
  | admit earlier admission ih =>
    exact (replay_admission_histories schema policy _ admission).1.trans ih

/-- Anchored proof objects are appended without rewriting earlier recorded payloads. -/
theorem replay_workflow_archive_prefix (schema : DependencySchema Artifact Claim) (policy : Policy)
    {initial final : ReplayLedger policy}
    (workflow : ReplayWorkflow schema policy initial final) :
    initial.replayArchive <+: final.replayArchive := by
  induction workflow with
  | refl => exact ⟨[], by simp⟩
  | correct earlier request ih =>
    simpa only [(replay_correction_histories schema policy _ request.current request.withdrawn).2.1]
      using ih
  | admit earlier admission ih =>
    exact ih.trans (replay_admission_archive_prefix schema policy _ admission)

/-- Mathematical correction and admission leave all operational receipts literal. -/
theorem replay_workflow_receipts_preserved (schema : DependencySchema Artifact Claim)
    (policy : Policy) {initial final : ReplayLedger policy}
    (workflow : ReplayWorkflow schema policy initial final) :
    final.base.receipts = initial.base.receipts := by
  induction workflow with
  | refl => rfl
  | correct earlier request ih =>
    exact ((replay_correction_histories schema policy _ request.current
      request.withdrawn).2.2.1).trans ih
  | admit earlier admission ih =>
    exact (replay_admission_histories schema policy _ admission).2.2.1.trans ih

/-- Every exact correction event remains in order through later admissions. -/
theorem replay_workflow_correction_prefix (schema : DependencySchema Artifact Claim)
    (policy : Policy) {initial final : ReplayLedger policy}
    (workflow : ReplayWorkflow schema policy initial final) :
    initial.base.corrections <+: final.base.corrections := by
  induction workflow with
  | refl => exact ⟨[], by simp⟩
  | @correct previous earlier request ih =>
    exact ih.trans ⟨[{
      before := previous.base.snapshot
      after := request.current
      withdrawn := request.withdrawn
      affected := correctionAffected schema previous.base.snapshot request.current
        request.withdrawn }], rfl⟩
  | admit earlier admission ih =>
    simpa only [(replay_admission_histories schema policy _ admission).2.2.2] using ih

/-- Any originally issued claim is still pending or verified at the actual final ledger. -/
theorem replay_workflow_obligation_retained (schema : DependencySchema Artifact Claim)
    (policy : Policy) {initial final : ReplayLedger policy}
    (workflow : ReplayWorkflow schema policy initial final)
    (safe : ReplaySafe schema policy initial) {claim : Claim}
    (issued : claim ∈ initial.base.issued) :
    claim ∈ final.base.pending ∨ claim ∈ final.base.verified := by
  apply Finset.mem_union.mp
  apply (replay_workflow_safe schema policy workflow safe).issued_covered
  simpa only [replay_workflow_issued_preserved schema policy workflow] using issued

/-- Reopening and readmission retain each prior pending or verified obligation. -/
theorem replay_workflow_prior_status_accounted (schema : DependencySchema Artifact Claim)
    (policy : Policy) {initial final : ReplayLedger policy}
    (workflow : ReplayWorkflow schema policy initial final)
    (safe : ReplaySafe schema policy initial) {claim : Claim}
    (present : claim ∈ initial.base.pending ∨ claim ∈ initial.base.verified) :
    claim ∈ final.base.pending ∨ claim ∈ final.base.verified := by
  apply replay_workflow_obligation_retained schema policy workflow safe
  rcases present with pending | verified
  · exact safe.pending_issued pending
  · exact safe.verified_issued verified

/-- The final target is exact and obtained from actual accepted mathematical evidence. -/
theorem replay_workflow_verified_target (schema : DependencySchema Artifact Claim) (policy : Policy)
    {initial final : ReplayLedger policy}
    (workflow : ReplayWorkflow schema policy initial final)
    (safe : ReplaySafe schema policy initial) {claim : Claim}
    (verified : claim ∈ final.base.verified) : policy.statement final.base.snapshot claim :=
  replay_verified_current_target schema policy final
    (replay_workflow_safe schema policy workflow safe) claim verified

/-- Current mathematical caps still require separate operational permission and rights. -/
theorem replay_workflow_verified_to_terminal (schema : DependencySchema Artifact Claim)
    (policy : Policy) {initial final : ReplayLedger policy}
    (workflow : ReplayWorkflow schema policy initial final)
    (safe : ReplaySafe schema policy initial) {claim : Claim}
    (verified : claim ∈ final.base.verified) :
    TerminalCap final.base.snapshot (policy.statement final.base.snapshot claim) :=
  ⟨replay_workflow_verified_target schema policy workflow safe verified⟩

end Workflow

end GRWTSK.ProofHorizon.CorkscrewChamberCap.ReplayWorkflowModel
```
