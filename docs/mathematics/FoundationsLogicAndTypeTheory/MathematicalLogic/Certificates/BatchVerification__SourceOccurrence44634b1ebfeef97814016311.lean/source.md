# Complete source: GRWTSK.Logic.Certificates.BatchVerification

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4cc8d56e6b2b7eb7cc5e12ee72d6221c32ee3707` · SHA-256 `d2b1a69e86f792c64e9b42cb6999976209831ee1f7a41addbaa6293fb9d1238f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Logic.Certificates.DependencyRevision

/-!
# CCC admission of reusable current evidence

A current controller proof alone does not provide a revision certificate's
semantic locality. This separate admission consumes actual archived certificate
objects, exact read-set matches, current acceptance, and resolved prerequisites.
It can re-verify only previously pending issued claims, and derives the corrected
ledger's safety without assuming next-state safety. Certificate and effect
history remain distinct: admission appends mathematical records but creates no
effect receipt or operational authority.

The batch may contain a dependency cycle only if every admitted claim already
has a genuine accepted mathematical certificate. Graph labels never supply
those proofs. The fixed dependency schema, source snapshot, and policy remain
unchanged. No discovery, source authentication, runtime mediator, or resource
conservation across sessions is established.

Human mathematical direction: grwtsk contributors.
Formal implementation: OpenAI Codex.
-/

namespace GRWTSK.ProofHorizon.CorkscrewChamberCap

universe u v w x y z

section Admission

variable {Artifact : Type u} {Revision : Type v} {Claim : Type w}
  {Effect : Type x} {Grant : Type y} {Surface : Type z}
  [DecidableEq Claim]

local notation "Policy" =>
  ControllerPolicy (SourceSnapshot Artifact Revision) Claim Effect Grant Surface

/-- A supplied certificate batch has independently checked current evidence.
The prerequisite condition is explicit and cannot be inferred from status names. -/
structure CertificateAdmission (schema : DependencySchema Artifact Claim) (policy : Policy)
    (ledger : RevisionLedger policy) where
  claims : Finset Claim
  records : List (ArchivedClaim policy.statement)
  pending_only : claims ⊆ ledger.pending
  current_evidence : ∀ claim ∈ claims,
    ∃ record ∈ records, record.claim = claim ∧
      record.certificate.reads = schema.reads claim ∧
        record.certificate.Accepted ledger.snapshot
  prerequisites : ∀ claim ∈ claims, ∀ prerequisite ∈ schema.dependencies claim,
    prerequisite ∈ ledger.verified ∪ claims

/-- Mathematical evidence admission changes statuses and appends proof objects. -/
def RevisionLedger.admit (schema : DependencySchema Artifact Claim) (policy : Policy)
    (ledger : RevisionLedger policy) (admission : CertificateAdmission schema policy ledger) :
    RevisionLedger policy where
  snapshot := ledger.snapshot
  pending := ledger.pending \ admission.claims
  verified := ledger.verified ∪ admission.claims
  issued := ledger.issued
  archive := ledger.archive ++ admission.records
  receipts := ledger.receipts
  corrections := ledger.corrections

/-- Every new verified claim has a proof of its exact current target. -/
theorem admitted_certificate_target (schema : DependencySchema Artifact Claim) (policy : Policy)
    (ledger : RevisionLedger policy) (admission : CertificateAdmission schema policy ledger)
    (claim : Claim) (member : claim ∈ admission.claims) :
    policy.statement ledger.snapshot claim := by
  rcases admission.current_evidence claim member with ⟨record, _, claimEq, _, accepted⟩
  have target := record.certificate.current_target accepted.1
  simpa only [claimEq] using target

section Safety

variable [DecidableEq Revision] [Fintype Claim]

/-- The new invariant is derived from old safety and checked certificate inputs. -/
theorem admission_preserves_safe (schema : DependencySchema Artifact Claim) (policy : Policy)
    (ledger : RevisionLedger policy) (admission : CertificateAdmission schema policy ledger)
    (safe : RevisionSafe schema policy ledger) :
    RevisionSafe schema policy (ledger.admit schema policy admission) := by
  constructor
  · intro claim member
    exact safe.pending_issued (Finset.mem_sdiff.mp member).1
  · intro claim member
    rcases Finset.mem_union.mp member with old | added
    · exact safe.verified_issued old
    · exact safe.pending_issued (admission.pending_only added)
  · intro claim issued
    rcases Finset.mem_union.mp (safe.issued_covered issued) with pending | verified
    · by_cases admitted : claim ∈ admission.claims
      · exact Finset.mem_union_right _ (Finset.mem_union_right _ admitted)
      · exact Finset.mem_union_left _ (Finset.mem_sdiff.mpr ⟨pending, admitted⟩)
    · exact Finset.mem_union_right _ (Finset.mem_union_left _ verified)
  · apply Finset.disjoint_left.mpr
    intro claim pending verified
    have remaining := Finset.mem_sdiff.mp pending
    rcases Finset.mem_union.mp verified with old | added
    · exact Finset.disjoint_left.mp safe.statuses_disjoint remaining.1 old
    · exact remaining.2 added
  · intro claim verified prerequisite dependency
    rcases Finset.mem_union.mp verified with old | added
    · exact Finset.mem_union_left _ (safe.verified_dependencies claim old prerequisite dependency)
    · exact admission.prerequisites claim added prerequisite dependency
  · intro claim verified
    rcases Finset.mem_union.mp verified with old | added
    · rcases safe.verified_evidence claim old with
        ⟨record, archived, claimEq, readsEq, accepted⟩
      exact ⟨record, List.mem_append_left _ archived, claimEq, readsEq, accepted⟩
    · rcases admission.current_evidence claim added with
        ⟨record, supplied, claimEq, readsEq, accepted⟩
      exact ⟨record, List.mem_append_right _ supplied, claimEq, readsEq, accepted⟩
  · exact safe.receipts_historical
  · exact safe.corrections_exact

end Safety

theorem admission_source_preserved (schema : DependencySchema Artifact Claim) (policy : Policy)
    (ledger : RevisionLedger policy) (admission : CertificateAdmission schema policy ledger) :
    (ledger.admit schema policy admission).snapshot = ledger.snapshot := rfl

theorem admission_archive_append (schema : DependencySchema Artifact Claim) (policy : Policy)
    (ledger : RevisionLedger policy) (admission : CertificateAdmission schema policy ledger) :
    (ledger.admit schema policy admission).archive = ledger.archive ++ admission.records := rfl

theorem admission_archive_prefix (schema : DependencySchema Artifact Claim) (policy : Policy)
    (ledger : RevisionLedger policy) (admission : CertificateAdmission schema policy ledger) :
    ledger.archive <+: (ledger.admit schema policy admission).archive :=
  ⟨admission.records, rfl⟩

/-- No current or historical effect is created by a mathematical proof admission. -/
theorem admission_effect_history_preserved (schema : DependencySchema Artifact Claim)
    (policy : Policy) (ledger : RevisionLedger policy)
    (admission : CertificateAdmission schema policy ledger) :
    (ledger.admit schema policy admission).receipts = ledger.receipts ∧
      (ledger.admit schema policy admission).corrections = ledger.corrections := ⟨rfl, rfl⟩

theorem admission_issued_preserved (schema : DependencySchema Artifact Claim) (policy : Policy)
    (ledger : RevisionLedger policy) (admission : CertificateAdmission schema policy ledger) :
    (ledger.admit schema policy admission).issued = ledger.issued := rfl

/-- Previously pending claims remain pending or acquire accepted current evidence. -/
theorem admission_pending_accounted (schema : DependencySchema Artifact Claim) (policy : Policy)
    (ledger : RevisionLedger policy) (admission : CertificateAdmission schema policy ledger)
    (claim : Claim) (pending : claim ∈ ledger.pending) :
    claim ∈ (ledger.admit schema policy admission).pending ∨
      (claim ∈ (ledger.admit schema policy admission).verified ∧
        policy.statement ledger.snapshot claim) := by
  by_cases admitted : claim ∈ admission.claims
  · exact Or.inr ⟨Finset.mem_union_right _ admitted,
      admitted_certificate_target schema policy ledger admission claim admitted⟩
  · exact Or.inl (Finset.mem_sdiff.mpr ⟨pending, admitted⟩)

end Admission

end GRWTSK.ProofHorizon.CorkscrewChamberCap
```
