import Mathematics.ProofStrategy.CertifiedRoute

/-!
# Registry-relative route closure

Exact, bounded, and continuing-enumeration claims are different constructors.
An exact finite claim carries an explicit finite eligible universe, proves that
the universe is both sound and complete, and proves that its included subset
is exact relative to eligibility.  Digests identify the frozen inputs; they do
not establish any of these facts.
-/

namespace Mathematics.ProofStrategy

open Mathematics.Projection

universe u v

inductive RouteCandidateDisposition
    (Included Inapplicable PolicyDecision Equivalence ScopeProof : Type u)
  | included (proof : Included)
  | inapplicable (proof : Inapplicable)
  | policyRejected (proof : PolicyDecision)
  | equivalent (proof : Equivalence)
  | outOfScope (proof : ScopeProof)

structure ExactFiniteRouteClosure
    (Candidate : Type u)
    [DecidableEq Candidate]
    (Eligible Included : Candidate → Prop)
    (Disposition : Candidate → Type v)
    (snapshot : ProjectionSnapshot) where
  activeSnapshot : VerifiedActiveSnapshot snapshot
  eligibleUniverse : Finset Candidate
  eligible_sound :
    ∀ {candidate}, candidate ∈ eligibleUniverse → Eligible candidate
  eligible_complete :
    ∀ {candidate}, Eligible candidate → candidate ∈ eligibleUniverse
  includedCandidates : Finset Candidate
  included_sound :
    ∀ {candidate}, candidate ∈ includedCandidates →
      Eligible candidate ∧ Included candidate
  included_complete :
    ∀ {candidate}, Eligible candidate → Included candidate →
      candidate ∈ includedCandidates
  disposition :
    ∀ candidate, candidate ∈ eligibleUniverse → Disposition candidate
  registryDigest : String
  scopeDigest : String
  environmentDigest : String

namespace ExactFiniteRouteClosure

theorem eligible_iff_mem
    {Candidate : Type u}
    [DecidableEq Candidate]
    {Eligible Included : Candidate → Prop}
    {Disposition : Candidate → Type v}
    {snapshot : ProjectionSnapshot}
    (closure :
      ExactFiniteRouteClosure Candidate Eligible Included Disposition snapshot)
    {candidate : Candidate} :
    Eligible candidate ↔ candidate ∈ closure.eligibleUniverse :=
  ⟨closure.eligible_complete, closure.eligible_sound⟩

theorem included_iff_mem
    {Candidate : Type u}
    [DecidableEq Candidate]
    {Eligible Included : Candidate → Prop}
    {Disposition : Candidate → Type v}
    {snapshot : ProjectionSnapshot}
    (closure :
      ExactFiniteRouteClosure Candidate Eligible Included Disposition snapshot)
    {candidate : Candidate} :
    Eligible candidate ∧ Included candidate ↔
      candidate ∈ closure.includedCandidates :=
  ⟨fun facts => closure.included_complete facts.1 facts.2,
    closure.included_sound⟩

/-- Mutation exclusion: an omitted candidate cannot secretly remain eligible. -/
theorem omitted_is_ineligible
    {Candidate : Type u}
    [DecidableEq Candidate]
    {Eligible Included : Candidate → Prop}
    {Disposition : Candidate → Type v}
    {snapshot : ProjectionSnapshot}
    (closure :
      ExactFiniteRouteClosure Candidate Eligible Included Disposition snapshot)
    {candidate : Candidate}
    (omitted : candidate ∉ closure.eligibleUniverse) :
    ¬ Eligible candidate := by
  intro eligible
  exact omitted (closure.eligible_complete eligible)

end ExactFiniteRouteClosure

structure BoundedRouteClosure
    (snapshot : ProjectionSnapshot) where
  activeSnapshot : VerifiedActiveSnapshot snapshot
  registryDigest : String
  scopeDigest : String
  environmentDigest : String
  boundDigest : String

structure EnumerativeRouteClosure
    (snapshot : ProjectionSnapshot) where
  activeSnapshot : VerifiedActiveSnapshot snapshot
  registryDigest : String
  scopeDigest : String
  environmentDigest : String
  stage : Nat

inductive RouteClosureClaim
    (Candidate : Type u)
    [DecidableEq Candidate]
    (Eligible Included : Candidate → Prop)
    (Disposition : Candidate → Type v)
    (snapshot : ProjectionSnapshot)
  | exactFinite
      (closure :
        ExactFiniteRouteClosure
          Candidate Eligible Included Disposition snapshot)
  | bounded (closure : BoundedRouteClosure snapshot)
  | enumerative (closure : EnumerativeRouteClosure snapshot)

end Mathematics.ProofStrategy
