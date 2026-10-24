# extensionEmbeddingOfIsReal_coe

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e7f46f5472e4d8c50ad979bf4ccf28989077aead",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 240,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/88/88ca3f58515e1be391465a46facafbb073ce0e22e0c1f9170c8d62834a075847.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0250b351-6fe0-cc01-9f68-0365a117fec5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8c256051-31fb-53ec-3374-e611098cf9f6",
  "kind": "theorem",
  "lexical_name": "extensionEmbeddingOfIsReal_coe",
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
  "slug": "extensionembeddingofisreal-coe--fe7462982782e0cefe4285bb",
  "source": {
    "blob": "e7f46f5472e4d8c50ad979bf4ccf28989077aead",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 244,
    "line": 240,
    "path": "GRWTSK/Topology/MetricTopology/InfinitePlace/Variant88ca3f58515e1be391465a46facafbb073ce0e22e0c1f9170c8d62834a075847.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fe7462982782e0cefe4285bbf75b718594000874b4ee171d6ffa2051f6490bcd",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/InfinitePlace/Variant88ca3f58515e1be391465a46facafbb073ce0e22e0c1f9170c8d62834a075847.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8c256051-31fb-53ec-3374-e611098cf9f6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 240–244.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem extensionEmbeddingOfIsReal_coe {v : InfinitePlace K} (hv : IsReal v) (x : WithAbs v.1) :
    extensionEmbeddingOfIsReal hv x = embedding_of_isReal hv (WithAbs.equiv v.1 x) :=
  extensionHom_coe _ (v.isometry_embedding_of_isReal hv).continuous _

/-- The embedding `v.Completion →+* ℂ` is an isometry. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/InfinitePlace/Variant88ca3f58515e1be391465a46facafbb073ce0e22e0c1f9170c8d62834a075847.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/InfinitePlace/Variant88ca3f58515e1be391465a46facafbb073ce0e22e0c1f9170c8d62834a075847.lean#L240).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e7f46f5472e4d8c50ad979bf4ccf28989077aead` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
