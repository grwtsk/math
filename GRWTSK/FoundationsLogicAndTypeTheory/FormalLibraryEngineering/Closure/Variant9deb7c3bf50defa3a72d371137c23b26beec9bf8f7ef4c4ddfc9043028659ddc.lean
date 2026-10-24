import NoeoueueHodgeGate.Packet

namespace NoeoueueHodgeGate

structure ClosureCertificate where
  variant : Variant
  stage : Stage
  status : Status
  scope : Digest
  classPacket : Option Digest
  cyclePacket : Option Digest
  equalityPacket : Option Digest
  prefixPacket : Option Digest
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
  certificate.classPacket.isSome ∧
  certificate.cyclePacket.isSome ∧
  certificate.equalityPacket.isSome ∧
  witness.equality.expected = witness.equality.actual ∧
  prefixFaithful witness.prefix


def claimBoundary (certificate : ClosureCertificate) : Prop :=
  variantAllowsStatus certificate.variant certificate.status = true


def stageStatusCompatible : Stage → Status → Bool
  | .hc0Scope, .scopeCertified => true
  | .hc1ProjectiveCarrier, .projectiveCarrierCertified => true
  | .hc2PrefixToHodge, .projectiveCarrierCertified => true
  | .hc2PrefixToHodge, .rationalHodgeClassCertified => true
  | .hc3ChowExhaustion, .projectiveCarrierCertified => true
  | .hc3ChowExhaustion, .rationalHodgeClassCertified => true
  | .hc3ChowExhaustion, .cycleCandidateOnly => true
  | .hc4CycleClassNaturality, .projectiveCarrierCertified => true
  | .hc4CycleClassNaturality, .rationalHodgeClassCertified => true
  | .hc4CycleClassNaturality, .cycleCandidateOnly => true
  | .hc4CycleClassNaturality, .prefixComparisonFaithful => true
  | .hc5aFixedClass, .projectiveCarrierCertified => true
  | .hc5aFixedClass, .rationalHodgeClassCertified => true
  | .hc5aFixedClass, .cycleCandidateOnly => true
  | .hc5aFixedClass, .prefixComparisonFaithful => true
  | .hc5aFixedClass, .fixedClassCycleMatched => true
  | .hc5bFixedVariety, .fixedVarietySurjective => true
  | .hc5cUniversal, .universalRationalProjectiveHc => true
  | _, .refuted => true
  | _, .unknown => true
  | _, .unavailable => true
  | _, .invalid => true
  | _, _ => false


def fixedClassReferencesPresent (certificate : ClosureCertificate) : Bool :=
  certificate.classPacket.isSome &&
  certificate.cyclePacket.isSome &&
  certificate.equalityPacket.isSome


def classicalStatus : Status → Bool
  | .fixedVarietySurjective => true
  | .universalRationalProjectiveHc => true
  | _ => false

/--
The packaged formal lane admits only finite packet/status claims. It binds all
certificate references but deliberately excludes HC5b and HC5c while the
classical target is unavailable.
-/
def finiteAdmissible (certificate : ClosureCertificate) : Bool :=
  variantAllowsStatus certificate.variant certificate.status &&
  stageStatusCompatible certificate.stage certificate.status &&
  (!classicalStatus certificate.status) &&
  (!(certificate.status == .fixedClassCycleMatched) ||
    fixedClassReferencesPresent certificate)


theorem nonRationalUniversalRejected
    (certificate : ClosureCertificate)
    (hVariant : certificate.variant ≠ .rationalProjective) :
    certificate.status = .universalRationalProjectiveHc →
      ¬ claimBoundary certificate := by
  intro hStatus hBoundary
  simp [claimBoundary, variantAllowsStatus, hodgeConjectureStatus, hStatus] at hBoundary
  exact hVariant hBoundary


def classicalTargetAvailable : Bool := false


theorem universalGateUnavailable : classicalTargetAvailable = false := by
  decide

-- This module intentionally contains no declaration of the universal rational
-- projective Hodge statement. It proves only finite packet and status laws.

end NoeoueueHodgeGate
