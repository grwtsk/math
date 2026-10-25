import Mathematics.Projection.SnapshotAuthority
import Mathematics.ProofStrategy.MinimalCutset
import Mathematics.ProofStrategy.RouteClosure
import Mathematics.ProofStrategy.RouteFrontier
import Mathematics.ProofStrategy.WitnessDischarge

/-!
# Certified remainder packet

This packet may direct finite work, but it contains no theorem-status or global
closure constructor.  Completion is represented only by a proof-bearing
`Derivation`.  The explicit finite eligible universe is exact, and every
eligible obligation lacking a derivation remains in `unresolvedObligations`.
-/

namespace Mathematics.System

open Mathematics.Projection
open Mathematics.ProofStrategy

universe u v

structure CertifiedRemainder
    (Obligation : Type u)
    (Certificate : Type v)
    [DecidableEq Obligation]
    (snapshot : ProjectionSnapshot)
    (Statement : Obligation → Prop)
    (Seeds : AcceptedSeedRegistry Obligation Statement)
    (Usable :
      CertifiedRoute Obligation Certificate Statement snapshot → Prop)
    (Eligible : Obligation → Prop) where
  activeSnapshot : VerifiedActiveSnapshot snapshot
  target : Obligation
  target_eligible : Eligible target
  routeFrontier :
    CertifiedRouteFrontier
      Obligation Certificate snapshot Statement Seeds Usable target
  same_authority_head :
    routeFrontier.activeSnapshot.head = activeSnapshot.head
  eligibleUniverse : Finset Obligation
  eligible_sound :
    ∀ {obligation}, obligation ∈ eligibleUniverse → Eligible obligation
  eligible_complete :
    ∀ {obligation}, Eligible obligation → obligation ∈ eligibleUniverse
  unresolvedObligations : Finset Obligation
  unresolved_exact :
    ∀ obligation, obligation ∈ unresolvedObligations ↔
      Eligible obligation ∧
      ¬ Discharged Statement Seeds Usable obligation
  frontier_unresolved_retained :
    ∀ obligation, obligation ∈ routeFrontier.unresolved →
      obligation ∈ unresolvedObligations
  cutsets : List (MinimalCutset routeFrontier.family)
  registryRelative : Bool
  registry_relative : registryRelative = true
  globalMinimalityAuthorized : Bool
  global_minimality_absent :
    globalMinimalityAuthorized = false

namespace CertifiedRemainder

/-- The shape is a view derived from the certified frontier, not stored authority. -/
def targetShape
    {Obligation : Type u}
    {Certificate : Type v}
    [DecidableEq Obligation]
    {snapshot : ProjectionSnapshot}
    {Statement : Obligation → Prop}
    {Seeds : AcceptedSeedRegistry Obligation Statement}
    {Usable :
      CertifiedRoute Obligation Certificate Statement snapshot → Prop}
    {Eligible : Obligation → Prop}
    (remainder :
      CertifiedRemainder
        Obligation Certificate snapshot Statement Seeds Usable Eligible) :
    RemainderShape Obligation :=
  classifyFrontier remainder.routeFrontier.family

/-- Operational completeness exposes its witness but does not alter authority. -/
def completedWitness?
    {Obligation : Type u}
    {Certificate : Type v}
    [DecidableEq Obligation]
    {snapshot : ProjectionSnapshot}
    {Statement : Obligation → Prop}
    {Seeds : AcceptedSeedRegistry Obligation Statement}
    {Usable :
      CertifiedRoute Obligation Certificate Statement snapshot → Prop}
    {Eligible : Obligation → Prop}
    (remainder :
      CertifiedRemainder
        Obligation Certificate snapshot Statement Seeds Usable Eligible) :
    Option (Derivation Statement Seeds Usable remainder.target) :=
  remainder.routeFrontier.completion

/-- A completed route yields a proposition, never a status mutation. -/
def completedProof?
    {Obligation : Type u}
    {Certificate : Type v}
    [DecidableEq Obligation]
    {snapshot : ProjectionSnapshot}
    {Statement : Obligation → Prop}
    {Seeds : AcceptedSeedRegistry Obligation Statement}
    {Usable :
      CertifiedRoute Obligation Certificate Statement snapshot → Prop}
    {Eligible : Obligation → Prop}
    (remainder :
      CertifiedRemainder
        Obligation Certificate snapshot Statement Seeds Usable Eligible) :
    Option (PLift (Statement remainder.target)) :=
  match remainder.completedWitness? with
  | none => none
  | some derivation => some ⟨derivation.proves⟩

/-- Every retained unresolved obligation is genuinely unresolved. -/
theorem unresolved_not_discharged
    {Obligation : Type u}
    {Certificate : Type v}
    [DecidableEq Obligation]
    {snapshot : ProjectionSnapshot}
    {Statement : Obligation → Prop}
    {Seeds : AcceptedSeedRegistry Obligation Statement}
    {Usable :
      CertifiedRoute Obligation Certificate Statement snapshot → Prop}
    {Eligible : Obligation → Prop}
    (remainder :
      CertifiedRemainder
        Obligation Certificate snapshot Statement Seeds Usable Eligible)
    {obligation : Obligation}
    (member : obligation ∈ remainder.unresolvedObligations) :
    ¬ Discharged Statement Seeds Usable obligation :=
  (remainder.unresolved_exact obligation).mp member |>.2

/-- The target is retained exactly when no proof-bearing derivation exists. -/
theorem target_mem_unresolved_iff_not_discharged
    {Obligation : Type u}
    {Certificate : Type v}
    [DecidableEq Obligation]
    {snapshot : ProjectionSnapshot}
    {Statement : Obligation → Prop}
    {Seeds : AcceptedSeedRegistry Obligation Statement}
    {Usable :
      CertifiedRoute Obligation Certificate Statement snapshot → Prop}
    {Eligible : Obligation → Prop}
    (remainder :
      CertifiedRemainder
        Obligation Certificate snapshot Statement Seeds Usable Eligible) :
    remainder.target ∈ remainder.unresolvedObligations ↔
      ¬ Discharged Statement Seeds Usable remainder.target := by
  constructor
  · intro member
    exact (remainder.unresolved_exact remainder.target).mp member |>.2
  · intro unresolved
    exact (remainder.unresolved_exact remainder.target).mpr
      ⟨remainder.target_eligible, unresolved⟩

/-- No target disappears: it has a retained derivation or remains unresolved. -/
theorem target_accounted
    {Obligation : Type u}
    {Certificate : Type v}
    [DecidableEq Obligation]
    {snapshot : ProjectionSnapshot}
    {Statement : Obligation → Prop}
    {Seeds : AcceptedSeedRegistry Obligation Statement}
    {Usable :
      CertifiedRoute Obligation Certificate Statement snapshot → Prop}
    {Eligible : Obligation → Prop}
    (remainder :
      CertifiedRemainder
        Obligation Certificate snapshot Statement Seeds Usable Eligible) :
    remainder.completedWitness?.isSome ∨
      remainder.target ∈ remainder.unresolvedObligations := by
  classical
  by_cases discharged :
      Discharged Statement Seeds Usable remainder.target
  · exact Or.inl
      (remainder.routeFrontier.completion_exact.mpr discharged)
  · exact Or.inr
      (remainder.target_mem_unresolved_iff_not_discharged.mpr discharged)

end CertifiedRemainder

end Mathematics.System
