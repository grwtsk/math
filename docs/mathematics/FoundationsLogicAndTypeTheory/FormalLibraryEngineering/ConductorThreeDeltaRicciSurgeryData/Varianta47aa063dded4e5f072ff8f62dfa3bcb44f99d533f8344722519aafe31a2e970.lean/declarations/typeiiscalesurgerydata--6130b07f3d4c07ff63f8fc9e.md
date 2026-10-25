# TypeIIScaleSurgeryData

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5e44f8342b523e5545327a0a84afc5becaf8047770e0863a6e51733ac6e16f23",
  "kind": "structure",
  "lexical_name": "TypeIIScaleSurgeryData",
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
  "slug": "typeiiscalesurgerydata--6130b07f3d4c07ff63f8fc9e",
  "source": {
    "blob": "8b4ca35e24d86473513aa5bf8296282db57cbc65",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 81,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeDeltaRicciSurgeryData/Varianta47aa063dded4e5f072ff8f62dfa3bcb44f99d533f8344722519aafe31a2e970.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6130b07f3d4c07ff63f8fc9e4c4df98c7c76f5489e4c5e13fe49879002763b6d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeDeltaRicciSurgeryData/Varianta47aa063dded4e5f072ff8f62dfa3bcb44f99d533f8344722519aafe31a2e970.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5e44f8342b523e5545327a0a84afc5becaf8047770e0863a6e51733ac6e16f23`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure TypeIIScaleSurgeryData (N : ℕ) where
  packetData : BundledTypeIIBilinearPacketFactorization N
  interaction : TypeIIInteractionData
    (Sum packetData.Left packetData.Right)
  packetDirection : Sum packetData.Left packetData.Right →
    Surface.Core.PrimeWalkSpatialEncoding.SpatialPoint
  packetDirection_unit : ∀ atom, ‖packetDirection atom‖ = 1
  packetShading : Sum packetData.Left packetData.Right → Set
    Surface.Core.PrimeWalkSpatialEncoding.SpatialPoint
  packetShading_measurable : ∀ atom, MeasurableSet (packetShading atom)
  /-- Faithful adapters from the abstract left/right packet spaces into the
  concrete spatial `L²(ℝ³)` used by the tube geometry. -/
  leftSpatialization : packetData.LeftPacketSpace →L[ℂ]
    Surface.Core.PrimeWalkLosslessSpatial.SpatialL2
  rightSpatialization : packetData.RightPacketSpace →L[ℂ]
    Surface.Core.PrimeWalkLosslessSpatial.SpatialL2
  leftSpatialization_isometry : Isometry leftSpatialization
  rightSpatialization_isometry : Isometry rightSpatialization
  /-- Each synthesized basis packet is localized in the shading assigned to
  the same arithmetic index.  Almost-everywhere support is the correct
  statement for `L²` equivalence classes. -/
  leftPacket_ae_zero_outside_shading : ∀ left,
    ∀ᵐ point : Surface.Core.PrimeWalkSpatialEncoding.SpatialPoint
        ∂(volume : Measure
          Surface.Core.PrimeWalkSpatialEncoding.SpatialPoint),
      point ∉ packetShading (.inl left) →
        leftSpatialization
          (packetData.factorization.leftSynthesis
            (EuclideanSpace.single left 1)) point = 0
  rightPacket_ae_zero_outside_shading : ∀ right,
    ∀ᵐ point : Surface.Core.PrimeWalkSpatialEncoding.SpatialPoint
        ∂(volume : Measure
          Surface.Core.PrimeWalkSpatialEncoding.SpatialPoint),
      point ∉ packetShading (.inr right) →
        rightSpatialization
          (packetData.factorization.rightSynthesis
            (EuclideanSpace.single right 1)) point = 0
  spatialCarrier : TypeIISpatialCarrier3
    (Sum packetData.Left packetData.Right)
  carrier_realizes_shading : spatialCarrier.RealizesShadings packetShading
  /-- Nonzero analytic incidence must be witnessed by a geometric
  hyperedge containing the corresponding left and right packet atoms. -/
  interaction_realizes_packet_incidence : ∀ x left right,
    packetData.factorization.packetMatrix x left right ≠ 0 →
      ∃ edge ∈ interaction.incidenceHypergraph.hyperedges,
        Sum.inl left ∈ edge ∧ Sum.inr right ∈ edge

/-! ## Exact local states and the initial arithmetic pairing -/

/-- Natural-valued event complexity.  Flow may occur within an event, but a
recursive child is admitted only after this quantized rank decreases. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeDeltaRicciSurgeryData/Varianta47aa063dded4e5f072ff8f62dfa3bcb44f99d533f8344722519aafe31a2e970.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeDeltaRicciSurgeryData/Varianta47aa063dded4e5f072ff8f62dfa3bcb44f99d533f8344722519aafe31a2e970.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b4ca35e24d86473513aa5bf8296282db57cbc65` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
