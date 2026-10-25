# TypeIIBilinearSurgeryState

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e890f9531280e21efa695ec25cd2eb50df4fdaf1fa759a7d52a2732790c2c145",
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
  "slug": "typeiibilinearsurgerystate--71769adcb37bbf60b772995a",
  "source": {
    "blob": "760c4dd3808b1969696f47c87875be6fe9e0125a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 193,
    "line": 145,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeDeltaRicciSurgeryData/Variant037f4af48e388cafb91105086c07f03dbd081b66c6385a31167ee68b776376c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:71769adcb37bbf60b772995a31c1dd7e74c03c4e6f5adbc30ca24c7168fbe18e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeDeltaRicciSurgeryData/Variant037f4af48e388cafb91105086c07f03dbd081b66c6385a31167ee68b776376c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e890f9531280e21efa695ec25cd2eb50df4fdaf1fa759a7d52a2732790c2c145`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–193.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeDeltaRicciSurgeryData/Variant037f4af48e388cafb91105086c07f03dbd081b66c6385a31167ee68b776376c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeDeltaRicciSurgeryData/Variant037f4af48e388cafb91105086c07f03dbd081b66c6385a31167ee68b776376c7.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `760c4dd3808b1969696f47c87875be6fe9e0125a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
