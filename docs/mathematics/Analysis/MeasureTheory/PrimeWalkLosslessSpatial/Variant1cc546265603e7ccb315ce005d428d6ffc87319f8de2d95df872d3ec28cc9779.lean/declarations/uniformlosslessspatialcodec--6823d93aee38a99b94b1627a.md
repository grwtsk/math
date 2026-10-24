# UniformLosslessSpatialCodec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4739890ae022cc0fe4f15c1e11a87daa0d9f151d36972298b46bd577eb874ba8",
  "kind": "structure",
  "lexical_name": "UniformLosslessSpatialCodec",
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
  "slug": "uniformlosslessspatialcodec--6823d93aee38a99b94b1627a",
  "source": {
    "blob": "080fc19172352ae85a1a9a70519aa8f98ba8768f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 75,
    "path": "GRWTSK/Analysis/MeasureTheory/PrimeWalkLosslessSpatial/Variant1cc546265603e7ccb315ce005d428d6ffc87319f8de2d95df872d3ec28cc9779.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6823d93aee38a99b94b1627a5f56aa9e13dc77aef820266bed1d02932a4660f4",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/PrimeWalkLosslessSpatial/Variant1cc546265603e7ccb315ce005d428d6ffc87319f8de2d95df872d3ec28cc9779.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4739890ae022cc0fe4f15c1e11a87daa0d9f151d36972298b46bd577eb874ba8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure UniformLosslessSpatialCodec where
  encoder : ℕ → ℂ →L[ℂ] SpatialL2
  decoder : ℕ → SpatialL2 →L[ℂ] ℂ
  decoder_encoder : ∀ K z, decoder K (encoder K z) = z
  encoderBound : ℝ
  decoderBound : ℝ
  encoderBound_nonneg : 0 ≤ encoderBound
  decoderBound_nonneg : 0 ≤ decoderBound
  encoder_norm_le : ∀ K, ‖encoder K‖ ≤ encoderBound
  decoder_norm_le : ∀ K, ‖decoder K‖ ≤ decoderBound

/-- A normalized spatial mode produces an explicit rank-one lossless codec. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/PrimeWalkLosslessSpatial/Variant1cc546265603e7ccb315ce005d428d6ffc87319f8de2d95df872d3ec28cc9779.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/PrimeWalkLosslessSpatial/Variant1cc546265603e7ccb315ce005d428d6ffc87319f8de2d95df872d3ec28cc9779.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `080fc19172352ae85a1a9a70519aa8f98ba8768f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
