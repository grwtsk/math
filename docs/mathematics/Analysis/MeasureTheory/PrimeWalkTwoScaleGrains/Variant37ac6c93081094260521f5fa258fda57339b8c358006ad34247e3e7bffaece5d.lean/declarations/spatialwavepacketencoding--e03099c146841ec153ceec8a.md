# SpatialWavePacketEncoding

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e0d2d39d9ace8a9f084b731a819bb93dc02d918b39a6cc1ba01cefc56a1d2e7f",
  "kind": "structure",
  "lexical_name": "SpatialWavePacketEncoding",
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
  "slug": "spatialwavepacketencoding--e03099c146841ec153ceec8a",
  "source": {
    "blob": "d4333173e4d8df399f1452162cb6df346a8b71a1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 303,
    "line": 291,
    "path": "GRWTSK/Analysis/MeasureTheory/PrimeWalkTwoScaleGrains/Variant37ac6c93081094260521f5fa258fda57339b8c358006ad34247e3e7bffaece5d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e03099c146841ec153ceec8a3f6ad362c00d8847f19f1c934b5a8ed0de282d82",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/PrimeWalkTwoScaleGrains/Variant37ac6c93081094260521f5fa258fda57339b8c358006ad34247e3e7bffaece5d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e0d2d39d9ace8a9f084b731a819bb93dc02d918b39a6cc1ba01cefc56a1d2e7f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 291–303.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure SpatialWavePacketEncoding
    (certificate : RobustTwoScaleGrains
      Point FineTube CoarseTube Grain volume) where
  squareFunction : Point → ℝ
  level : ℝ
  level_pos : 0 < level
  superlevel_eq_fineShading :
    spatialSuperlevelSet squareFunction level =
      finsetShadingUnion certificate.fineTubes certificate.fineShading

/-- A separate, explicit link is required even to identify a temporal
square-function level set with the preimage of the spatial construction.
No measure comparison is implied by this point-set equality. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/PrimeWalkTwoScaleGrains/Variant37ac6c93081094260521f5fa258fda57339b8c358006ad34247e3e7bffaece5d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/PrimeWalkTwoScaleGrains/Variant37ac6c93081094260521f5fa258fda57339b8c358006ad34247e3e7bffaece5d.lean#L291).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d4333173e4d8df399f1452162cb6df346a8b71a1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
