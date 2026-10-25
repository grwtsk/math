import NoeoueueHodgeGate.Packet

namespace NoeoueueHodgeGate

structure ClosureCertificate where
  variant : Variant
  stage : Stage
  status : Status
  scope : Digest
  formalWitness : Digest

structure FixedClassWitness where
  classPacket : RationalHodgeClass
  cyclePacket : AlgebraicCycle
  equality : CycleClassEquality
  prefix : PrefixComparison


def prefixFaithful (prefix : PrefixComparison) : Prop :=
  prefix.h1Typed = true ∧
  prefix.h2NoCollapse = true ∧
  prefix.h3Natural = true ∧
  prefix.h4Faithful = true


def fixedClassCertified
    (certificate : ClosureCertificate)
    (witness : FixedClassWitness) : Prop :=
  certificate.variant = .rationalProjective ∧
  certificate.stage = .hc5aFixedClass ∧
  certificate.status = .fixedClassCycleMatched ∧
  witness.equality.expected = witness.equality.actual ∧
  prefixFaithful witness.prefix


def claimBoundary (certificate : ClosureCertificate) : Prop :=
  variantAllowsStatus certificate.variant certificate.status = true


def classicalTargetAvailable : Bool := false


theorem universalGateUnavailable : classicalTargetAvailable = false := by
  decide

-- This module intentionally contains no declaration of the universal rational
-- projective Hodge statement.  It proves only finite packet and status laws.

end NoeoueueHodgeGate

namespace NoeoueueHodgeGate

/-- The exact finite claim submitted by the host. The proof-source digest is
    intentionally external to this structure so the generated source can be
    content-addressed without a circular self-reference. -/
structure FormalClosureClaim where
  variant : Variant
  stage : Stage
  status : Status
  scope : Digest
  classRef : Option Digest
  cycleRef : Option Digest
  equalityRef : Option Digest
  prefixRef : Option Digest

/-- Finite packet admissibility only. Fixed-variety and universal claims are
    deliberately unavailable in the packaged formal profile. -/
def finiteAdmissible (claim : FormalClosureClaim) : Bool :=
  variantAllowsStatus claim.variant claim.status &&
  match claim.status with
  | .scopeCertified =>
      claim.stage == .hc0Scope
  | .projectiveCarrierCertified =>
      claim.stage == .hc1ProjectiveCarrier
  | .rationalHodgeClassCertified =>
      claim.stage == .hc2PrefixToHodge && claim.classRef.isSome
  | .cycleCandidateOnly =>
      claim.stage == .hc3ChowExhaustion &&
      claim.classRef.isSome && claim.cycleRef.isSome
  | .prefixComparisonFaithful =>
      claim.stage == .hc4CycleClassNaturality &&
      claim.classRef.isSome && claim.prefixRef.isSome
  | .fixedClassCycleMatched =>
      claim.stage == .hc5aFixedClass &&
      claim.classRef.isSome && claim.cycleRef.isSome &&
      claim.equalityRef.isSome && claim.prefixRef.isSome
  | .refuted => false
  | .unknown => false
  | .unavailable => false
  | .invalid => false

example (scope : Digest) :
    finiteAdmissible {
      variant := .rationalProjective
      stage := .hc0Scope
      status := .scopeCertified
      scope := scope
      classRef := none
      cycleRef := none
      equalityRef := none
      prefixRef := none
    } = true := by
  decide

end NoeoueueHodgeGate
