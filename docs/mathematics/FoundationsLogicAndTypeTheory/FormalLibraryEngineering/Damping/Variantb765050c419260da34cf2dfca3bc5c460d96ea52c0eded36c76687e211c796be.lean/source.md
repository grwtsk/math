# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Damping.Variantb765050c419260da34cf2dfca3bc5c460d96ea52c0eded36c76687e211c796be

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0c7fdc8e53492e5b5fae939db6f40165539e264d` · SHA-256 `b765050c419260da34cf2dfca3bc5c460d96ea52c0eded36c76687e211c796be`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Stability.PeriodicOrbit

/-! # Semantics-preserving damping -/

namespace Mathematics.Stability

/-!
`blend_eq_left_iff` is the abstract nonzero-weight law corresponding to
`(1-α)x + αy = x ↔ y = x`.  It makes the reverse fixed-point implication
explicit instead of silently dividing by an unrecorded scalar.
-/
structure DampingLaw (X : Type) where
  blend : X → X → X
  blendSelf : ∀ x, blend x x = x
  blendEqLeftIff : ∀ x y, blend x y = x ↔ y = x

def dampedMap
    {X : Type}
    (law : DampingLaw X)
    (construction : X → X)
    (x : X) : X :=
  law.blend x (construction x)

theorem damping_preserves_fixed_points
    {X : Type}
    (law : DampingLaw X)
    (construction : X → X)
    (point : X) :
    IsFixedPoint (dampedMap law construction) point ↔
      IsFixedPoint construction point := by
  constructor
  · intro dampedFixed
    change law.blend point (construction point) = point at dampedFixed
    exact (law.blendEqLeftIff point (construction point)).mp
      dampedFixed
  · intro fixed
    change law.blend point (construction point) = point
    exact (law.blendEqLeftIff point (construction point)).mpr fixed

structure DampingAdmissionCertificate
    {X Observation : Type}
    (law : DampingLaw X)
    (construction : X → X) where
  protectedObservation : X → Observation
  preservesProtectedObservation :
    ∀ x,
      protectedObservation (dampedMap law construction x) =
      protectedObservation (construction x)
  contractivityStatement : Prop
  contractivityStatus : ProofDisposition
  rollbackAvailable : Bool
  ownerAdmissionRef : Option StableId

structure AdmittedDamping
    {X Observation : Type}
    {law : DampingLaw X}
    {construction : X → X}
    (certificate :
      DampingAdmissionCertificate
        (Observation := Observation) law construction) where
  contractivityProved :
    certificate.contractivityStatus = .proved
  contractivityEvidence :
    certificate.contractivityStatement
  rollbackCertified :
    certificate.rollbackAvailable = true
  ownerAdmission : StableId
  ownerAdmissionExact :
    certificate.ownerAdmissionRef = some ownerAdmission

theorem admitted_damping_has_separate_contractivity_evidence
    {X Observation : Type}
    {law : DampingLaw X}
    {construction : X → X}
    {certificate :
      DampingAdmissionCertificate
        (Observation := Observation) law construction}
    (admitted : AdmittedDamping certificate) :
    certificate.contractivityStatement :=
  admitted.contractivityEvidence

theorem admitted_damping_requires_owner_reference
    {X Observation : Type}
    {law : DampingLaw X}
    {construction : X → X}
    {certificate :
      DampingAdmissionCertificate
        (Observation := Observation) law construction}
    (admitted : AdmittedDamping certificate) :
    ∃ owner, certificate.ownerAdmissionRef = some owner :=
  ⟨admitted.ownerAdmission, admitted.ownerAdmissionExact⟩

end Mathematics.Stability
```
