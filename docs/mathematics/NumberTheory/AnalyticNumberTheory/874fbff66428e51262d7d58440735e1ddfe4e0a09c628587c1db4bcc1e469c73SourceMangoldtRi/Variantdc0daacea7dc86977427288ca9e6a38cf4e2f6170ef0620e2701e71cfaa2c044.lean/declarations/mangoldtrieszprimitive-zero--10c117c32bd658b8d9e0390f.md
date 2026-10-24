# mangoldtRieszPrimitive_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:327959c8-c3d1-ab80-640c-3eda355fb0d3",
  "kind": "theorem",
  "lexical_name": "mangoldtRieszPrimitive_zero",
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
  "slug": "mangoldtrieszprimitive-zero--10c117c32bd658b8d9e0390f",
  "source": {
    "blob": "cd5022722d1af19e4450cbf79750261c951d780b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 51,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/874fbff66428e51262d7d58440735e1ddfe4e0a09c628587c1db4bcc1e469c73SourceMangoldtRi/Variantdc0daacea7dc86977427288ca9e6a38cf4e2f6170ef0620e2701e71cfaa2c044.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:10c117c32bd658b8d9e0390f3b628ed751d7a6ed255627e14736cd25df9380f6",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/874fbff66428e51262d7d58440735e1ddfe4e0a09c628587c1db4bcc1e469c73SourceMangoldtRi/Variantdc0daacea7dc86977427288ca9e6a38cf4e2f6170ef0620e2701e71cfaa2c044.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:327959c8-c3d1-ab80-640c-3eda355fb0d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mangoldtRieszPrimitive_zero : mangoldtRieszPrimitive 0 = 0 := by
  norm_num [mangoldtRieszPrimitive, primePowerInventory, continuumRieszPrimitive]

/-- The center uses only an independently supplied anchor and evaluated continuum. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/874fbff66428e51262d7d58440735e1ddfe4e0a09c628587c1db4bcc1e469c73SourceMangoldtRi/Variantdc0daacea7dc86977427288ca9e6a38cf4e2f6170ef0620e2701e71cfaa2c044.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/874fbff66428e51262d7d58440735e1ddfe4e0a09c628587c1db4bcc1e469c73SourceMangoldtRi/Variantdc0daacea7dc86977427288ca9e6a38cf4e2f6170ef0620e2701e71cfaa2c044.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd5022722d1af19e4450cbf79750261c951d780b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
