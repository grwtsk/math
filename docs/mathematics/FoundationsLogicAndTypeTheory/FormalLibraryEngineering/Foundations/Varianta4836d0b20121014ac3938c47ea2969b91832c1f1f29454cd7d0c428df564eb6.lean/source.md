# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Foundations.Varianta4836d0b20121014ac3938c47ea2969b91832c1f1f29454cd7d0c428df564eb6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `46bd270ba5c3b0c427c85a8ae874b04504ffc083` · SHA-256 `9746b4ae18350566e950e38276d58cd7efcf0f6d3cdca464b95d284845b92c9c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.StableGeometricIdentityData.Variantaaa0f3668d5d622f7ec673b8c5d8052973695bf5472425935f05b462601a2144","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"aaa0f3668d5d622f7ec673b8c5d8052973695bf5472425935f05b462601a2144","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.StableGeometricIdentityData.Variantaaa0f3668d5d622f7ec673b8c5d8052973695bf5472425935f05b462601a2144","mathematical_subject":"Foundations.Unclassified","original_sha256":"aaa0f3668d5d622f7ec673b8c5d8052973695bf5472425935f05b462601a2144","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/formal/lean/fcrs/FCRS/ControlledSpherical/Foundations.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FCRS.ControlledPlane

/-
Core-only signatures for the witness-bearing spherical hierarchy.

This namespace adds no topology and does not change controlled losslessness.
The sphere labels below are signature-level geometric roles only.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.StableGeometricIdentityData.Variantaaa0f3668d5d622f7ec673b8c5d8052973695bf5472425935f05b462601a2144

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
```
