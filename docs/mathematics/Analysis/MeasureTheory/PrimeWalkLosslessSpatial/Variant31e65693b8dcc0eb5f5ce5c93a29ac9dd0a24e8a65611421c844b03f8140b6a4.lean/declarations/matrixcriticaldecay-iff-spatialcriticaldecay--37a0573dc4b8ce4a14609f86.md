# matrixCriticalDecay_iff_spatialCriticalDecay

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b803aebf-3a99-7ce6-1cb2-e13622ae4647",
  "kind": "theorem",
  "lexical_name": "matrixCriticalDecay_iff_spatialCriticalDecay",
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
  "slug": "matrixcriticaldecay-iff-spatialcriticaldecay--37a0573dc4b8ce4a14609f86",
  "source": {
    "blob": "a47e19ca32e5c29896e2a6e4aa91ba4424e10dae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 317,
    "line": 267,
    "path": "GRWTSK/Analysis/MeasureTheory/PrimeWalkLosslessSpatial/Variant31e65693b8dcc0eb5f5ce5c93a29ac9dd0a24e8a65611421c844b03f8140b6a4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:37a0573dc4b8ce4a14609f8618ea443ca623bef13841543ae3d988cb87bb0e66",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/PrimeWalkLosslessSpatial/Variant31e65693b8dcc0eb5f5ce5c93a29ac9dd0a24e8a65611421c844b03f8140b6a4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b803aebf-3a99-7ce6-1cb2-e13622ae4647`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 267–317.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem matrixCriticalDecay_iff_spatialCriticalDecay
    {counts : ResidueSixCounts}
    (route : CompleteConductorThreeSpatialRoute counts) :
    MatrixCriticalDecay counts ↔ SpatialCriticalDecay route := by
  constructor
  · rintro ⟨C, hC, hDecay⟩
    refine ⟨route.codec.encoderBound * C,
      mul_nonneg route.codec.encoderBound_nonneg hC, ?_⟩
    filter_upwards [hDecay] with K hK
    rw [(route.scale K).state_eq]
    calc
      ‖route.codec.encoder K (indexedMatrixAmplitude counts K)‖ ≤
          ‖route.codec.encoder K‖ * ‖indexedMatrixAmplitude counts K‖ :=
        ContinuousLinearMap.le_opNorm _ _
      _ ≤ route.codec.encoderBound * ‖indexedMatrixAmplitude counts K‖ := by
        gcongr
        exact route.codec.encoder_norm_le K
      _ = route.codec.encoderBound *
          ‖indexedDiscrepancyOperator counts K‖ := by
        rw [indexedMatrixAmplitude_norm]
      _ ≤ route.codec.encoderBound *
          (C * conductorThreeCriticalRate K) := by
        exact mul_le_mul_of_nonneg_left hK route.codec.encoderBound_nonneg
      _ = (route.codec.encoderBound * C) *
          conductorThreeCriticalRate K := by ring
  · rintro ⟨C, hC, hDecay⟩
    refine ⟨route.codec.decoderBound * C,
      mul_nonneg route.codec.decoderBound_nonneg hC, ?_⟩
    filter_upwards [hDecay] with K hK
    have hDecode :
        route.codec.decoder K (route.scale K).state =
          indexedMatrixAmplitude counts K :=
      route.sample_reconstructs_matrixAmplitude K
    calc
      ‖indexedDiscrepancyOperator counts K‖ =
          ‖indexedMatrixAmplitude counts K‖ :=
        (indexedMatrixAmplitude_norm counts K).symm
      _ = ‖route.codec.decoder K (route.scale K).state‖ := by rw [hDecode]
      _ ≤ ‖route.codec.decoder K‖ * ‖(route.scale K).state‖ :=
        ContinuousLinearMap.le_opNorm _ _
      _ ≤ route.codec.decoderBound * ‖(route.scale K).state‖ := by
        gcongr
        exact route.codec.decoder_norm_le K
      _ ≤ route.codec.decoderBound *
          (C * conductorThreeCriticalRate K) := by
        exact mul_le_mul_of_nonneg_left hK route.codec.decoderBound_nonneg
      _ = (route.codec.decoderBound * C) *
          conductorThreeCriticalRate K := by ring

/-- Actual-prime specialization of the lossless matrix/spatial equivalence. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/PrimeWalkLosslessSpatial/Variant31e65693b8dcc0eb5f5ce5c93a29ac9dd0a24e8a65611421c844b03f8140b6a4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/PrimeWalkLosslessSpatial/Variant31e65693b8dcc0eb5f5ce5c93a29ac9dd0a24e8a65611421c844b03f8140b6a4.lean#L267).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a47e19ca32e5c29896e2a6e4aa91ba4424e10dae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
