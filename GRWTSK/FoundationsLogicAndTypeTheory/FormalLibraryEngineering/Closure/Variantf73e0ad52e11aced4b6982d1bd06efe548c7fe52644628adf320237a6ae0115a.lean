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
-- projective Hodge statement.  It proves only finite packet and status laws.

end NoeoueueHodgeGate
