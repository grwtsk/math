# SpatialEncodedTrajectory

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:57a3942f591eb9eec842036cd4012a5d0a0d1a8fe21ab3b7a7eec9fc507529e5",
  "kind": "structure",
  "lexical_name": "SpatialEncodedTrajectory",
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
  "slug": "spatialencodedtrajectory--7608e7381b306341491fd380",
  "source": {
    "blob": "a409a94ee634c13be2b3df3949eeccc141c26b7e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 245,
    "line": 185,
    "path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/PrimeWalkSpatialEncoding/Variantf85615c4bb498e3a959531e63e142a6b2ec3b4d87d07b20ffc7584e5c4751df7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7608e7381b306341491fd38074ed3de6adf4e034bff4b61531a7c0cabe6a02fd",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/PrimeWalkSpatialEncoding/Variantf85615c4bb498e3a959531e63e142a6b2ec3b4d87d07b20ffc7584e5c4751df7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:57a3942f591eb9eec842036cd4012a5d0a0d1a8fe21ab3b7a7eec9fc507529e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 185–245.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure SpatialEncodedTrajectory
    (S : ErrorTrajectory)
    (FineTube CoarseTube Grain : Type*)
    [DecidableEq FineTube] [DecidableEq CoarseTube] [DecidableEq Grain] where
  grains : RobustTwoScaleGrains
    SpatialPoint FineTube CoarseTube Grain (volume : Measure SpatialPoint)
  packetBudget : ℕ
  packet_card_le : grains.fineTubes.card ≤ packetBudget

  tubeBase : FineTube → SpatialPoint
  tubeDirection : FineTube → SpatialPoint
  tubeDirection_unit : ∀ tube ∈ grains.fineTubes, ‖tubeDirection tube‖ = 1
  spatialTube : FineTube → UnitTube3
  spatialTube_base : ∀ tube ∈ grains.fineTubes,
    (spatialTube tube).base = tubeBase tube
  spatialTube_direction : ∀ tube ∈ grains.fineTubes,
    (spatialTube tube).direction = tubeDirection tube
  spatialTube_thickness : ∀ tube ∈ grains.fineTubes,
    (spatialTube tube).thickness = grains.parameters.delta
  fineCarrier_is_spatialTube : ∀ tube ∈ grains.fineTubes,
    grains.geometry.fineCarrier tube = (spatialTube tube).carrier

  wavePacket : FineTube → SpatialSignal
  packet_integrable : ∀ tube ∈ grains.fineTubes, Integrable (wavePacket tube)
  packet_memLp : ∀ tube ∈ grains.fineTubes,
    MemLp (wavePacket tube) 2 (volume : Measure SpatialPoint)
  packetLeakage : FineTube → ℝ
  packetLeakage_nonneg : ∀ tube ∈ grains.fineTubes, 0 ≤ packetLeakage tube
  physical_localization : ∀ tube ∈ grains.fineTubes,
    lpNorm ((grains.geometry.fineCarrier tube)ᶜ.indicator (wavePacket tube))
        2 (volume : Measure SpatialPoint) ≤ packetLeakage tube

  frequencyCap : FineTube → Set SpatialPoint
  frequencyCap_measurable : ∀ tube ∈ grains.fineTubes,
    MeasurableSet (frequencyCap tube)
  frequency_localized : ∀ tube ∈ grains.fineTubes,
    Function.support (spatialFourierTransform (wavePacket tube)) ⊆
      frequencyCap tube

  spatialLift : SpatialSignal
  residual : SpatialSignal
  spatial_reconstruction :
    spatialLift = packetSum grains.fineTubes wavePacket + residual
  residual_memLp : MemLp residual 2 (volume : Measure SpatialPoint)
  reconstructionTolerance : ℝ
  reconstructionTolerance_nonneg : 0 ≤ reconstructionTolerance
  residual_lpNorm_le :
    lpNorm residual 2 (volume : Measure SpatialPoint) ≤ reconstructionTolerance

  readout : L2SpatialReadout
  readout_lift : readout.map spatialLift = S

  amplitudeThreshold : ℝ
  amplitudeThreshold_pos : 0 < amplitudeThreshold
  superlevel_eq_shadingUnion :
    spatialSuperlevelSet
        (packetSquareFunction grains.fineTubes wavePacket) amplitudeThreshold =
      finsetShadingUnion grains.fineTubes grains.fineShading

/-- Existential packaging hides the noncanonical tube, coarse-tube, and grain
index types while retaining their decidable finite interfaces. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/PrimeWalkSpatialEncoding/Variantf85615c4bb498e3a959531e63e142a6b2ec3b4d87d07b20ffc7584e5c4751df7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/PrimeWalkSpatialEncoding/Variantf85615c4bb498e3a959531e63e142a6b2ec3b4d87d07b20ffc7584e5c4751df7.lean#L185).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a409a94ee634c13be2b3df3949eeccc141c26b7e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
