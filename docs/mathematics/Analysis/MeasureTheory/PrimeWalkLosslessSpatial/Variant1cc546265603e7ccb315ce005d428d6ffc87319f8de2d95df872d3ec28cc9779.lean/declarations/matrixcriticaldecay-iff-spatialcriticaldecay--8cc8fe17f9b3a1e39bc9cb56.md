# matrixCriticalDecay_iff_spatialCriticalDecay

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "080fc19172352ae85a1a9a70519aa8f98ba8768f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 259,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1c/1cc546265603e7ccb315ce005d428d6ffc87319f8de2d95df872d3ec28cc9779.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:451f53a4-2805-c87a-15bc-742cd0377062",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1358f816-afc3-d956-e159-122cd7f22723",
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
  "slug": "matrixcriticaldecay-iff-spatialcriticaldecay--8cc8fe17f9b3a1e39bc9cb56",
  "source": {
    "blob": "080fc19172352ae85a1a9a70519aa8f98ba8768f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 309,
    "line": 259,
    "path": "GRWTSK/Analysis/MeasureTheory/PrimeWalkLosslessSpatial/Variant1cc546265603e7ccb315ce005d428d6ffc87319f8de2d95df872d3ec28cc9779.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8cc8fe17f9b3a1e39bc9cb56c6a09d39cae325596bd7f3eddae2d562b66f449a",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/PrimeWalkLosslessSpatial/Variant1cc546265603e7ccb315ce005d428d6ffc87319f8de2d95df872d3ec28cc9779.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1358f816-afc3-d956-e159-122cd7f22723`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 259–309.

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

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/PrimeWalkLosslessSpatial/Variant1cc546265603e7ccb315ce005d428d6ffc87319f8de2d95df872d3ec28cc9779.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/PrimeWalkLosslessSpatial/Variant1cc546265603e7ccb315ce005d428d6ffc87319f8de2d95df872d3ec28cc9779.lean#L259).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `080fc19172352ae85a1a9a70519aa8f98ba8768f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
