# TypeIIBilinearSurgeryState

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ed2103b687509417008ea6968ec344ff942e84b95a05cde6cdb0d0673a4a6ed3",
  "kind": "structure",
  "lexical_name": "TypeIIBilinearSurgeryState",
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
  "slug": "typeiibilinearsurgerystate--47aa3839731db7b5c439e225",
  "source": {
    "blob": "5d40b5f56f814f9f0b8f0a6f40c8f0a1ef6745b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 149,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeDeltaRicciSurgeryData/Variantecedad8ff5d9650140b7c3963197cbebbfac2756e18c1dc43f13aa97dd50e221.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:47aa3839731db7b5c439e225067eb3d6e0569b1b26952650ea73e8df57627604",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeDeltaRicciSurgeryData/Variantecedad8ff5d9650140b7c3963197cbebbfac2756e18c1dc43f13aa97dd50e221.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ed2103b687509417008ea6968ec344ff942e84b95a05cde6cdb0d0673a4a6ed3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure TypeIIBilinearSurgeryState {N : ℕ}
    (scale : TypeIIScaleSurgeryData N) where
  leftCoefficient : EuclideanSpace ℂ scale.packetData.Left
  rightCoefficient : EuclideanSpace ℂ scale.packetData.Right
  leftSynthesis : EuclideanSpace ℂ scale.packetData.Left →L[ℂ]
    scale.packetData.LeftPacketSpace
  rightSynthesis : EuclideanSpace ℂ scale.packetData.Right →L[ℂ]
    scale.packetData.RightPacketSpace
  leftVector : scale.packetData.LeftPacketSpace
  rightVector : scale.packetData.RightPacketSpace
  leftVector_from_coefficients : leftVector =
    ∑ left : scale.packetData.Left, leftCoefficient left •
      leftSynthesis (EuclideanSpace.single left 1)
  rightVector_from_coefficients : rightVector =
    ∑ right : scale.packetData.Right, rightCoefficient right •
      rightSynthesis (EuclideanSpace.single right 1)
  incidence : ℕ → scale.packetData.RightPacketSpace →L[ℂ]
    scale.packetData.LeftPacketSpace
  residualMatrix : ℕ → Matrix scale.packetData.Left scale.packetData.Right ℂ
  cutoffMatrix : ℕ → Matrix scale.packetData.Left scale.packetData.Right ℂ
  exactFactorization : ∀ x left right,
    cutoffMatrix x left right =
      inner ℂ (leftSynthesis (EuclideanSpace.single left 1))
        (incidence x
          (rightSynthesis (EuclideanSpace.single right 1))) +
      residualMatrix x left right
  leftPacket_ae_zero_outside_shading : ∀ left,
    ∀ᵐ point : Surface.Core.PrimeWalkSpatialEncoding.SpatialPoint
        ∂(volume : Measure
          Surface.Core.PrimeWalkSpatialEncoding.SpatialPoint),
      point ∉ scale.packetShading (.inl left) →
        scale.leftSpatialization
          (leftSynthesis (EuclideanSpace.single left 1)) point = 0
  rightPacket_ae_zero_outside_shading : ∀ right,
    ∀ᵐ point : Surface.Core.PrimeWalkSpatialEncoding.SpatialPoint
        ∂(volume : Measure
          Surface.Core.PrimeWalkSpatialEncoding.SpatialPoint),
      point ∉ scale.packetShading (.inr right) →
        scale.rightSpatialization
          (rightSynthesis (EuclideanSpace.single right 1)) point = 0
  interaction_realizes_incidence : ∀ x left right,
    inner ℂ (leftSynthesis (EuclideanSpace.single left 1))
        (incidence x (rightSynthesis (EuclideanSpace.single right 1))) ≠ 0 →
      ∃ edge ∈ scale.interaction.incidenceHypergraph.hyperedges,
        Sum.inl left ∈ edge ∧ Sum.inr right ∈ edge
  complexity : QuantizedTypeIIComplexity

/-- The intrinsic signed correlation represented by one state. -/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeDeltaRicciSurgeryData/Variantecedad8ff5d9650140b7c3963197cbebbfac2756e18c1dc43f13aa97dd50e221.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeDeltaRicciSurgeryData/Variantecedad8ff5d9650140b7c3963197cbebbfac2756e18c1dc43f13aa97dd50e221.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d40b5f56f814f9f0b8f0a6f40c8f0a1ef6745b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
