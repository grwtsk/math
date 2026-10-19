import FCRS.ControlledPlane

/-
Core-only signatures for the witness-bearing spherical hierarchy.

This namespace adds no topology and does not change controlled losslessness.
The sphere labels below are signature-level geometric roles only.
-/

universe uEntity uRef uStage uA uB

namespace FCRS.ControlledSpherical

/--
Versioned identity data for one supplied geometric witness across refinement
stages.  Version and validity compatibility are relations, not automatic
inheritance claims.
-/
structure StableGeometricIdentityData (Stage : Type uStage) where
  WitnessId : Type uRef
  ArtifactVersion : Type uRef
  ValidityInterval : Type uRef
  witnessAt : Stage → WitnessId
  versionAt : Stage → ArtifactVersion
  validityAt : Stage → ValidityInterval
  versionRefines : ArtifactVersion → ArtifactVersion → Prop
  validityRefines : ValidityInterval → ValidityInterval → Prop

/-- Stable identity is explicitly qualified by the declared refinement. -/
structure StableGeometricIdentityCompatible
    {Stage : Type uStage}
    (refines : Stage → Stage → Prop)
    (I : StableGeometricIdentityData Stage) : Prop where
  identityStable :
    ∀ {next prev}, refines next prev →
      I.witnessAt next = I.witnessAt prev
  versionCompatible :
    ∀ {next prev}, refines next prev →
      I.versionRefines (I.versionAt next) (I.versionAt prev)
  validityCompatible :
    ∀ {next prev}, refines next prev →
      I.validityRefines (I.validityAt next) (I.validityAt prev)

/--
A modular provenance-bearing source signature.  Except for entity identity and
the numerical traversal weight, fields are relations so entities need not have
exactly one incidence, factorization, coordinate, version, or provenance ref.
-/
structure ProvenanceSignature (Entity : Type uEntity) where
  EntityId : Type uRef
  IncidenceRef : Type uRef
  FactorizationRef : Type uRef
  TraversalOccurrenceRef : Type uRef
  CoordinateRef : Type uRef
  StageRef : Type uRef
  ArtifactVersionRef : Type uRef
  ProvenanceRef : Type uRef
  ValidityRef : Type uRef

  entityId : Entity → EntityId
  incidenceRef : Entity → IncidenceRef → Prop
  factorizationRef : Entity → FactorizationRef → Prop
  traversalOccurrenceRef : Entity → TraversalOccurrenceRef → Prop
  traversalWeight : Entity → Nat
  coordinateRef : Entity → CoordinateRef → Prop
  stageRef : Entity → StageRef → Prop
  artifactVersionRef : Entity → ArtifactVersionRef → Prop
  provenanceRef : Entity → ProvenanceRef → Prop
  validityRef : Entity → ValidityRef → Prop
  designatedOperation : FCRS.ControlledPlane.BinaryOperation Entity

/-- A typed two-sided isomorphism, independent of `CategoryLike`. -/
structure SignatureIso (A : Type uA) (B : Type uB) where
  toFun : A → B
  invFun : B → A
  leftInverse : ∀ a, invFun (toFun a) = a
  rightInverse : ∀ b, toFun (invFun b) = b

/-- Dimension label of a selected signature-level spherical realization. -/
inductive SelectedRealizationDimension where
  | two
  | three

end FCRS.ControlledSpherical
