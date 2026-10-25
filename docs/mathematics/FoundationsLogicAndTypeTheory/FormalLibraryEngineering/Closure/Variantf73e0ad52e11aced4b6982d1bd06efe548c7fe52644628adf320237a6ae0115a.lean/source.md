# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Closure.Variantf73e0ad52e11aced4b6982d1bd06efe548c7fe52644628adf320237a6ae0115a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `62b51773a4a61db9c04212e79820545cf7926914` · SHA-256 `f73e0ad52e11aced4b6982d1bd06efe548c7fe52644628adf320237a6ae0115a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
