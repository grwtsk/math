# Complete source: GRWTSK.DynamicalSystems.TransitionSystems.VerificationReachability

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5976f4baa47f737c1ec69793c51054cb35c57601` · SHA-256 `f70f8f7466b1f738f9b481caf5fdafb7a027e6b6051f04bb5f5e0f073f050369`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.DynamicalSystems.TransitionSystems.RevisionReachability
import GRWTSK.Logic.Certificates.BatchVerification

/-!
# CCC mixed correction and certificate-admission workflows

This finite reachability relation permits only the actual selective correction
and checked evidence-admission updates. It cannot assert an arbitrary final
ledger safe by labeling it a workflow. The initial invariant and the actual
certificate inputs derive every later invariant. Claims may reopen and later
be re-verified, so pending/verified monotonicity is deliberately not asserted.
Issued claims, historical effect receipts, and append-only evidence/correction
history remain accounted for through every finite interleaving.

This relation is mathematical bookkeeping, not a runtime supervisor or an
operational permission. It supplies no termination, resource conservation,
authentication, dependency discovery, or arithmetic cancellation theorem.

Human mathematical direction: grwtsk contributors.
Formal implementation: OpenAI Codex.
-/

namespace GRWTSK.ProofHorizon.CorkscrewChamberCap

universe u v w x y z

section Workflow

variable {Artifact : Type u} {Revision : Type v} {Claim : Type w}
  {Effect : Type x} {Grant : Type y} {Surface : Type z}
  [DecidableEq Revision] [Fintype Claim] [DecidableEq Claim]

local notation "Policy" =>
  ControllerPolicy (SourceSnapshot Artifact Revision) Claim Effect Grant Surface

/-- Every constructor records an exact update with its actual input objects. -/
inductive RevisionWorkflow (schema : DependencySchema Artifact Claim) (policy : Policy)
    (initial : RevisionLedger policy) : RevisionLedger policy → Prop
  | refl : RevisionWorkflow schema policy initial initial
  | correct {previous : RevisionLedger policy}
      (earlier : RevisionWorkflow schema policy initial previous)
      (request : CorrectionRequest Artifact Revision Claim) :
      RevisionWorkflow schema policy initial
        (previous.correct schema policy request.current request.withdrawn)
  | admit {previous : RevisionLedger policy}
      (earlier : RevisionWorkflow schema policy initial previous)
      (admission : CertificateAdmission schema policy previous) :
      RevisionWorkflow schema policy initial (previous.admit schema policy admission)

/-- Safety is proved from the initial invariant, never assumed for a next state. -/
theorem workflow_safe (schema : DependencySchema Artifact Claim) (policy : Policy)
    {initial final : RevisionLedger policy}
    (workflow : RevisionWorkflow schema policy initial final)
    (safe : RevisionSafe schema policy initial) : RevisionSafe schema policy final := by
  induction workflow with
  | refl => exact safe
  | correct earlier request ih =>
    exact correction_preserves_safe schema policy _ request.current request.withdrawn ih
  | admit earlier admission ih => exact admission_preserves_safe schema policy _ admission ih

theorem workflow_issued_preserved (schema : DependencySchema Artifact Claim) (policy : Policy)
    {initial final : RevisionLedger policy}
    (workflow : RevisionWorkflow schema policy initial final) : final.issued = initial.issued := by
  induction workflow with
  | refl => rfl
  | correct earlier request ih =>
    exact (correction_issued_preserved schema policy _ request.current request.withdrawn).trans ih
  | admit earlier admission ih =>
    exact (admission_issued_preserved schema policy _ admission).trans ih

/-- Re-verification can append evidence; it cannot rewrite earlier proof objects. -/
theorem workflow_archive_prefix (schema : DependencySchema Artifact Claim) (policy : Policy)
    {initial final : RevisionLedger policy}
    (workflow : RevisionWorkflow schema policy initial final) :
    initial.archive <+: final.archive := by
  induction workflow with
  | refl => exact ⟨[], by simp⟩
  | correct earlier request ih =>
    simpa only [correction_archive_preserved] using ih
  | admit earlier admission ih =>
    exact ih.trans (admission_archive_prefix schema policy _ admission)

/-- Neither correction nor mathematical admission executes or authorizes an effect. -/
theorem workflow_receipts_preserved (schema : DependencySchema Artifact Claim) (policy : Policy)
    {initial final : RevisionLedger policy}
    (workflow : RevisionWorkflow schema policy initial final) :
    final.receipts = initial.receipts := by
  induction workflow with
  | refl => rfl
  | correct earlier request ih =>
    exact (correction_receipts_preserved schema policy _ request.current request.withdrawn).trans ih
  | admit earlier admission ih =>
    exact (admission_effect_history_preserved schema policy _ admission).1.trans ih

theorem workflow_correction_prefix (schema : DependencySchema Artifact Claim) (policy : Policy)
    {initial final : RevisionLedger policy}
    (workflow : RevisionWorkflow schema policy initial final) :
    initial.corrections <+: final.corrections := by
  induction workflow with
  | refl => exact ⟨[], by simp⟩
  | @correct previous earlier request ih =>
    exact ih.trans ⟨[{
      before := previous.snapshot
      after := request.current
      withdrawn := request.withdrawn
      affected := correctionAffected schema previous.snapshot request.current request.withdrawn }],
      rfl⟩
  | admit earlier admission ih =>
    simpa only [(admission_effect_history_preserved schema policy _ admission).2] using ih

/-- Every original issued obligation is still pending or verified at the end. -/
theorem workflow_obligation_retained (schema : DependencySchema Artifact Claim) (policy : Policy)
    {initial final : RevisionLedger policy}
    (workflow : RevisionWorkflow schema policy initial final)
    (safe : RevisionSafe schema policy initial) {claim : Claim}
    (issued : claim ∈ initial.issued) : claim ∈ final.pending ∨ claim ∈ final.verified := by
  apply Finset.mem_union.mp
  apply (workflow_safe schema policy workflow safe).issued_covered
  simpa only [workflow_issued_preserved schema policy workflow] using issued

/-- A verified final claim has an actual proof at the exact final source. -/
theorem workflow_verified_target (schema : DependencySchema Artifact Claim) (policy : Policy)
    {initial final : RevisionLedger policy}
    (workflow : RevisionWorkflow schema policy initial final)
    (safe : RevisionSafe schema policy initial) {claim : Claim}
    (verified : claim ∈ final.verified) : policy.statement final.snapshot claim := by
  exact (revision_verified_to_terminal schema policy final
    (workflow_safe schema policy workflow safe) claim verified).proved

end Workflow

end GRWTSK.ProofHorizon.CorkscrewChamberCap
```
