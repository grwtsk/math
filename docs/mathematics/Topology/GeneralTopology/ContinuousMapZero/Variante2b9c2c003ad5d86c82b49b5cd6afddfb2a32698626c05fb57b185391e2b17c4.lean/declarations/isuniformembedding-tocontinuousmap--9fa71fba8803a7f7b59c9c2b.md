# isUniformEmbedding_toContinuousMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:adbe6780-4a50-95c3-91a7-d12c9fa0fa4b",
  "kind": "lemma",
  "lexical_name": "isUniformEmbedding_toContinuousMap",
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
  "slug": "isuniformembedding-tocontinuousmap--9fa71fba8803a7f7b59c9c2b",
  "source": {
    "blob": "98808829c9cf37d45559bc0acaf2079c9a43c30f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 299,
    "line": 295,
    "path": "GRWTSK/Topology/GeneralTopology/ContinuousMapZero/Variante2b9c2c003ad5d86c82b49b5cd6afddfb2a32698626c05fb57b185391e2b17c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9fa71fba8803a7f7b59c9c2bc82413c44bdf8dc5504e224b25ca9d96da7b18b0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ContinuousMapZero/Variante2b9c2c003ad5d86c82b49b5cd6afddfb2a32698626c05fb57b185391e2b17c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:adbe6780-4a50-95c3-91a7-d12c9fa0fa4b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 295–299.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isUniformEmbedding_toContinuousMap :
    IsUniformEmbedding ((↑) : C(X, R)₀ → C(X, R)) where
  comap_uniformity := rfl
  injective _ _ h := ext fun x ↦ congr($(h) x)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ContinuousMapZero/Variante2b9c2c003ad5d86c82b49b5cd6afddfb2a32698626c05fb57b185391e2b17c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ContinuousMapZero/Variante2b9c2c003ad5d86c82b49b5cd6afddfb2a32698626c05fb57b185391e2b17c4.lean#L295).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `98808829c9cf37d45559bc0acaf2079c9a43c30f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
