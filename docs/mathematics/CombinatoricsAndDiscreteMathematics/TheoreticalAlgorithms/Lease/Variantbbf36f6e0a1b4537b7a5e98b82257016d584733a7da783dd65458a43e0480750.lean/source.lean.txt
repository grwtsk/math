import Mathematics.Capability.Grant

/-!
# Revocable temporal leases

Only a certified grant can underwrite a lease.  Revocation is represented as
an append-only cutoff and delegation can only reduce scope and lifetime.
-/

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
