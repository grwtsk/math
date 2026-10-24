# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Lease.Variant0cbe3d4c563085b1e7ab39bfe7db36efe1ecd739c21411b4e9c8d8bc503af8d8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `55c3450c22d2b0161997f67c5246f2249cac6f43` · SHA-256 `aa455cbd355301d1385664bc717397196398ae5a66d0c8a779d9a59d40cedf28`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Lease.Variantbbf36f6e0a1b4537b7a5e98b82257016d584733a7da783dd65458a43e0480750","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bbf36f6e0a1b4537b7a5e98b82257016d584733a7da783dd65458a43e0480750","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.Lease.Variantbbf36f6e0a1b4537b7a5e98b82257016d584733a7da783dd65458a43e0480750","mathematical_subject":"Computation.DataStructures","original_sha256":"bbf36f6e0a1b4537b7a5e98b82257016d584733a7da783dd65458a43e0480750","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Capability/Lease.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Capability.Grant

/-!
# Revocable temporal leases

Only a certified grant can underwrite a lease.  Revocation is represented as
an append-only cutoff and delegation can only reduce scope and lifetime.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Lease.Variantbbf36f6e0a1b4537b7a5e98b82257016d584733a7da783dd65458a43e0480750

namespace Mathematics.Capability

structure Lease where
  leaseId : LeaseId
  grant : CertifiedGrant
  capability : OperationalCapability
  issuedAt : Nat
  expiresAt : Nat
  capability_within_grant :
    capability ≤ grant.capability
  nonempty_window :
    issuedAt < expiresAt

structure Revocation where
  leaseId : LeaseId
  effectiveAt : Nat
  reason : String
  deriving DecidableEq, Repr

namespace Lease

structure ValidAt
    (lease : Lease)
    (revocations : List Revocation)
    (time : Nat) : Prop where
  issued : lease.issuedAt ≤ time
  beforeExpiry : time < lease.expiresAt
  beforeEveryRevocation :
    ∀ revocation ∈ revocations,
      revocation.leaseId = lease.leaseId →
        time < revocation.effectiveAt

theorem not_valid_at_or_after_revocation
    (lease : Lease)
    (revocations : List Revocation)
    (time : Nat)
    (revocation : Revocation)
    (listed : revocation ∈ revocations)
    (sameLease : revocation.leaseId = lease.leaseId)
    (cutoff : revocation.effectiveAt ≤ time) :
    ¬ lease.ValidAt revocations time := by
  intro valid
  exact
    (Nat.not_lt_of_ge cutoff)
      (valid.beforeEveryRevocation revocation listed sameLease)

end Lease

structure DelegatedLease where
  parent : Lease
  child : Lease
  capability_nonamplifying :
    child.capability ≤ parent.capability
  begins_within_parent :
    parent.issuedAt ≤ child.issuedAt
  ends_within_parent :
    child.expiresAt ≤ parent.expiresAt

namespace DelegatedLease

theorem scope_nonamplifying
    (delegation : DelegatedLease) :
    delegation.child.capability.elements ⊆
      delegation.parent.capability.elements :=
  delegation.capability_nonamplifying.2.2.2.1

theorem effects_nonamplifying
    (delegation : DelegatedLease) :
    delegation.child.capability.effects ≤
      delegation.parent.capability.effects :=
  delegation.capability_nonamplifying.2.2.2.2

end DelegatedLease

end Mathematics.Capability
```
