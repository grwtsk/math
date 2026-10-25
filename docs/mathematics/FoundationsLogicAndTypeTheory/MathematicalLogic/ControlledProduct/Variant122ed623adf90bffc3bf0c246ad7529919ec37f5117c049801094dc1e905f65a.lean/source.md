# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.ControlledProduct.Variant122ed623adf90bffc3bf0c246ad7529919ec37f5117c049801094dc1e905f65a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d1a950b87d802aea1b25590ecfd1cecae88b87fd` · SHA-256 `122ed623adf90bffc3bf0c246ad7529919ec37f5117c049801094dc1e905f65a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.ControlledSpherical.SphereCarriers

universe uEntity uControl uPoint uRef

namespace FCRS.ControlledSpherical

open FCRS.ControlledPlane

/-- The image of the existing paired controlled observation. -/
def ObservationImage
    {Entity : Type uEntity} {Control : Type uControl} {Point : Type uPoint}
    (O : ControlledObservation Entity Control Point) :=
  { y : Point × Control // ∃ x, combinedObservation O x = y }

/-- Canonical inclusion of a source entity into the observation image. -/
def observationImageInclusion
    {Entity : Type uEntity} {Control : Type uControl} {Point : Type uPoint}
    (O : ControlledObservation Entity Control Point) :
    Entity → ObservationImage O :=
  fun x => ⟨combinedObservation O x, ⟨x, rfl⟩⟩

/-- Restrict the existing total decoder to the observation image. -/
def imageDecoder
    {Entity : Type uEntity} {Control : Type uControl} {Point : Type uPoint}
    {O : ControlledObservation Entity Control Point}
    (D : LosslessDecoder O) : ObservationImage O → Entity :=
  fun y => D.decode y.1.1 y.1.2

theorem imageDecoder_leftInverse
    {Entity : Type uEntity} {Control : Type uControl} {Point : Type uPoint}
    {O : ControlledObservation Entity Control Point}
    (D : LosslessDecoder O) :
    ∀ x, imageDecoder D (observationImageInclusion O x) = x := by
  intro x
  exact D.leftInverse x

theorem imageDecoder_rightInverse
    {Entity : Type uEntity} {Control : Type uControl} {Point : Type uPoint}
    {O : ControlledObservation Entity Control Point}
    (D : LosslessDecoder O) :
    ∀ y, observationImageInclusion O (imageDecoder D y) = y := by
  intro y
  rcases y.property with ⟨x, hx⟩
  apply Subtype.ext
  change combinedObservation O (D.decode y.1.1 y.1.2) = y.1
  rw [← hx]
  exact congrArg (combinedObservation O) (D.leftInverse x)

/-- Pointwise kernel relation of the paired observation. -/
def ObservationKernel
    {Entity : Type uEntity} {Control : Type uControl} {Point : Type uPoint}
    (O : ControlledObservation Entity Control Point)
    (x y : Entity) : Prop :=
  combinedObservation O x = combinedObservation O y

/-- Equality, exposed under the requested relation name. -/
def DiagonalRelation
    {Entity : Type uEntity} (x y : Entity) : Prop :=
  x = y

theorem observationKernel_iff_diagonal_of_decoder
    {Entity : Type uEntity} {Control : Type uControl} {Point : Type uPoint}
    {O : ControlledObservation Entity Control Point}
    (D : LosslessDecoder O) :
    ∀ x y, ObservationKernel O x y ↔ DiagonalRelation x y := by
  intro x y
  constructor
  · intro hKernel
    exact controlled_observation_injective D hKernel
  · intro h
    cases h
    rfl

theorem observationKernel_eq_diagonal_iff_injective
    {Entity : Type uEntity} {Control : Type uControl} {Point : Type uPoint}
    {O : ControlledObservation Entity Control Point} :
    (∀ x y, ObservationKernel O x y ↔ x = y) ↔
      Function.Injective (combinedObservation O) := by
  constructor
  · intro h x y hxy
    exact (h x y).mp hxy
  · intro h x y
    constructor
    · intro hKernel
      exact h hKernel
    · intro hxy
      cases hxy
      rfl

/-- Readable alias; it is exactly the existing `Separating` predicate. -/
def ControlSeparatesProjectionFibers
    {Entity : Type uEntity} {Control : Type uControl} {Point : Type uPoint}
    (O : ControlledObservation Entity Control Point) : Prop :=
  Separating O

theorem controlSeparatesProjectionFibers_iff_pairedInjective
    {Entity : Type uEntity} {Control : Type uControl} {Point : Type uPoint}
    {O : ControlledObservation Entity Control Point} :
    ControlSeparatesProjectionFibers O ↔
      Function.Injective (combinedObservation O) := by
  constructor
  · intro h x y hxy
    exact h x y (congrArg Prod.fst hxy) (congrArg Prod.snd hxy)
  · intro h x y hProject hControl
    apply h
    exact Prod.ext hProject hControl

/--
Spherical wrapper independent of every geometric realization witness and every
injectivity property of the bare geometric component.
-/
theorem controlledProduct_kernel_diagonal
    {Entity : Type uEntity} {Control : Type uControl} {Point : Type uPoint}
    {O : ControlledObservation Entity Control Point}
    (D : LosslessDecoder O) :
    ∀ x y, ObservationKernel O x y ↔ x = y :=
  observationKernel_iff_diagonal_of_decoder D

/--
Paired injectivity remains independent of every supplied `S²`/`S³`
realization and injectivity of the bare geometric component.
-/
theorem controlledProduct_injective
    {Entity : Type uEntity} {Control : Type uControl} {Point : Type uPoint}
    {O : ControlledObservation Entity Control Point}
    (D : LosslessDecoder O) :
    Function.Injective (combinedObservation O) :=
  controlled_observation_injective D

/-- Observation-side accessors for the modular provenance signature. -/
structure ObservedProvenanceSignature
    {Entity : Type uEntity} {Control : Type uControl} {Point : Type uPoint}
    (Sig : ProvenanceSignature.{uEntity, uRef} Entity)
    (O : ControlledObservation Entity Control Point) where
  entityId : Point × Control → Sig.EntityId
  incidenceRef : Point × Control → Sig.IncidenceRef → Prop
  factorizationRef : Point × Control → Sig.FactorizationRef → Prop
  traversalOccurrenceRef :
    Point × Control → Sig.TraversalOccurrenceRef → Prop
  traversalWeight : Point × Control → Nat
  coordinateRef : Point × Control → Sig.CoordinateRef → Prop
  stageRef : Point × Control → Sig.StageRef → Prop
  artifactVersionRef : Point × Control → Sig.ArtifactVersionRef → Prop
  provenanceRef : Point × Control → Sig.ProvenanceRef → Prop
  validityRef : Point × Control → Sig.ValidityRef → Prop
  designatedOperation : BinaryOperation (Point × Control)

/--
Typed commuting laws for the listed signature components, including exactly
one designated binary operation.  These laws are explicit premises and are
not consequences of decoder losslessness.
-/
structure ControlledSignaturePreservation
    {Entity : Type uEntity} {Control : Type uControl} {Point : Type uPoint}
    (Sig : ProvenanceSignature.{uEntity, uRef} Entity)
    (O : ControlledObservation Entity Control Point)
    (Observed : ObservedProvenanceSignature Sig O) : Prop where
  identityPreserved :
    ∀ x, Observed.entityId (combinedObservation O x) = Sig.entityId x
  incidencePreserved :
    ∀ x ref,
      Observed.incidenceRef (combinedObservation O x) ref ↔
        Sig.incidenceRef x ref
  factorizationPreserved :
    ∀ x ref,
      Observed.factorizationRef (combinedObservation O x) ref ↔
        Sig.factorizationRef x ref
  traversalPreserved :
    ∀ x ref,
      Observed.traversalOccurrenceRef (combinedObservation O x) ref ↔
        Sig.traversalOccurrenceRef x ref
  traversalWeightPreserved :
    ∀ x,
      Observed.traversalWeight (combinedObservation O x) =
        Sig.traversalWeight x
  coordinatePreserved :
    ∀ x ref,
      Observed.coordinateRef (combinedObservation O x) ref ↔
        Sig.coordinateRef x ref
  refinementPreserved :
    ∀ x ref,
      Observed.stageRef (combinedObservation O x) ref ↔
        Sig.stageRef x ref
  artifactVersionPreserved :
    ∀ x ref,
      Observed.artifactVersionRef (combinedObservation O x) ref ↔
        Sig.artifactVersionRef x ref
  provenancePreserved :
    ∀ x ref,
      Observed.provenanceRef (combinedObservation O x) ref ↔
        Sig.provenanceRef x ref
  validityPreserved :
    ∀ x ref,
      Observed.validityRef (combinedObservation O x) ref ↔
        Sig.validityRef x ref
  designatedBinaryOperationPreserved :
    OperationHomomorphic
      Sig.designatedOperation Observed.designatedOperation O

/-- Signature isomorphism tied specifically to the observation-image map. -/
structure ControlledSignatureIso
    {Entity : Type uEntity} {Control : Type uControl} {Point : Type uPoint}
    (Sig : ProvenanceSignature.{uEntity, uRef} Entity)
    (O : ControlledObservation Entity Control Point)
    (Observed : ObservedProvenanceSignature Sig O)
    (D : LosslessDecoder O)
    extends SignatureIso Entity (ObservationImage O) where
  toFun_is_observation :
    ∀ x, toFun x = observationImageInclusion O x
  invFun_is_decoder :
    ∀ y, invFun y = imageDecoder D y
  preserves : ControlledSignaturePreservation Sig O Observed

/-- Canonical signature isomorphism from a decoder and preservation contract. -/
def controlledSignatureIso_of_decoder
    {Entity : Type uEntity} {Control : Type uControl} {Point : Type uPoint}
    (Sig : ProvenanceSignature.{uEntity, uRef} Entity)
    {O : ControlledObservation Entity Control Point}
    (Observed : ObservedProvenanceSignature Sig O)
    (D : LosslessDecoder O)
    (hPreserves : ControlledSignaturePreservation Sig O Observed) :
    ControlledSignatureIso Sig O Observed D := {
  toFun := observationImageInclusion O
  invFun := imageDecoder D
  leftInverse := imageDecoder_leftInverse D
  rightInverse := imageDecoder_rightInverse D
  toFun_is_observation := fun _ => rfl
  invFun_is_decoder := fun _ => rfl
  preserves := hPreserves
}

/--
Reconstruction of the one designated binary operation delegates to the
existing controlled-plane proof.
-/
theorem controlledSpherical_decode_operation
    {Entity : Type uEntity} {Control : Type uControl} {Point : Type uPoint}
    {O : ControlledObservation Entity Control Point}
    (source : BinaryOperation Entity)
    (observed : BinaryOperation (Point × Control))
    (D : LosslessDecoder O)
    (hHom : OperationHomomorphic source observed O)
    (x y : Entity) :
    decodeObserved D
      (observed.op (combinedObservation O x) (combinedObservation O y)) =
      source.op x y :=
  decode_operation source observed hHom D x y

end FCRS.ControlledSpherical
```
