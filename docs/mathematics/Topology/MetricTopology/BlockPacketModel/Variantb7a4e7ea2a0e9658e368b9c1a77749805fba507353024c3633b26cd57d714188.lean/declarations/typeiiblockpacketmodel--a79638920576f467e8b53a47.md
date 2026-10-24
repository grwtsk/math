# TypeIIBlockPacketModel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4dedc52e3335d41e229804c5f6be4cb777281bbb3d9e717798c8d0f6ac39f034",
  "kind": "structure",
  "lexical_name": "TypeIIBlockPacketModel",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "typeiiblockpacketmodel--a79638920576f467e8b53a47",
  "source": {
    "blob": "b20fb062bb7fdee26b3b2b3633fb30fe238edfc0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 41,
    "path": "GRWTSK/Topology/MetricTopology/BlockPacketModel/Variantb7a4e7ea2a0e9658e368b9c1a77749805fba507353024c3633b26cd57d714188.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a79638920576f467e8b53a474661fea2f788ad515bfd6b550bab169134c352fa",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/BlockPacketModel/Variantb7a4e7ea2a0e9658e368b9c1a77749805fba507353024c3633b26cd57d714188.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4dedc52e3335d41e229804c5f6be4cb777281bbb3d9e717798c8d0f6ac39f034`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure TypeIIBlockPacketModel (N : ℕ) (B : TypeIIDyadicBlock N) where
  LeftSpace : Type
  RightSpace : Type
  leftNormed : NormedAddCommGroup LeftSpace
  rightNormed : NormedAddCommGroup RightSpace
  leftInner : InnerProductSpace ℂ LeftSpace
  rightInner : InnerProductSpace ℂ RightSpace
  leftComplete : CompleteSpace LeftSpace
  rightComplete : CompleteSpace RightSpace

  leftSynthesis : EuclideanSpace ℂ B.Left →L[ℂ] LeftSpace
  rightSynthesis : EuclideanSpace ℂ B.Right →L[ℂ] RightSpace

  prefixIncidence : PrefixCompatibleIncidence RightSpace LeftSpace
  geometricResidual : GeometricResidualSpecification B.Left B.Right
    (fun left ↦ left.1.1) (fun right ↦ right.1.1)

  /-- The same fixed localized kernel is represented by the packet frame at
  every prefix; no model is reconstructed after observing `x`. -/
  packetMatrix_eq_geometricKernel : ∀ x left right,
    ⟪leftSynthesis (EuclideanSpace.single left 1),
      prefixIncidence.incidence x
        (rightSynthesis (EuclideanSpace.single right 1))⟫_ℂ =
      geometricResidual.geometricKernel x left right

  leftSpatialization : LeftSpace →L[ℂ] SpatialL2
  rightSpatialization : RightSpace →L[ℂ] SpatialL2
  leftSpatialization_isometry : Isometry leftSpatialization
  rightSpatialization_isometry : Isometry rightSpatialization

  packetShading : Sum B.Left B.Right → Set
    Surface.Core.PrimeWalkSpatialEncoding.SpatialPoint
  packetShading_measurable : ∀ atom, MeasurableSet (packetShading atom)
  leftPacket_ae_zero_outside_shading : ∀ left,
    ∀ᵐ point : Surface.Core.PrimeWalkSpatialEncoding.SpatialPoint
        ∂(volume : Measure Surface.Core.PrimeWalkSpatialEncoding.SpatialPoint),
      point ∉ packetShading (.inl left) →
        leftSpatialization
          (leftSynthesis (EuclideanSpace.single left 1)) point = 0
  rightPacket_ae_zero_outside_shading : ∀ right,
    ∀ᵐ point : Surface.Core.PrimeWalkSpatialEncoding.SpatialPoint
        ∂(volume : Measure Surface.Core.PrimeWalkSpatialEncoding.SpatialPoint),
      point ∉ packetShading (.inr right) →
        rightSpatialization
          (rightSynthesis (EuclideanSpace.single right 1)) point = 0

  tubeGeometry : EuclideanShadedTubeFamily (Sum B.Left B.Right)
  tubes_eq_univ : tubeGeometry.tubes = Finset.univ
  tube_shading_eq : ∀ atom, tubeGeometry.shading atom = packetShading atom

  spatialCarrier : TypeIISpatialCarrier3 (Sum B.Left B.Right)
  carrierControlsShading :
    spatialCarrier.ControlledShadingRealization packetShading

  rankBudget : ℕ
  localStructure : TypeIILocalStructure B.Left B.Right rankBudget

attribute [instance] TypeIIBlockPacketModel.leftNormed
attribute [instance] TypeIIBlockPacketModel.rightNormed
attribute [instance] TypeIIBlockPacketModel.leftInner
attribute [instance] TypeIIBlockPacketModel.rightInner
attribute [instance] TypeIIBlockPacketModel.leftComplete
attribute [instance] TypeIIBlockPacketModel.rightComplete

/-- Coordinate matrix of the packet incidence in the canonical block bases. -/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/BlockPacketModel/Variantb7a4e7ea2a0e9658e368b9c1a77749805fba507353024c3633b26cd57d714188.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/BlockPacketModel/Variantb7a4e7ea2a0e9658e368b9c1a77749805fba507353024c3633b26cd57d714188.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b20fb062bb7fdee26b3b2b3633fb30fe238edfc0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
