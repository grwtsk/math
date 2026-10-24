# isEmbedding_toContinuousMultilinearMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ed7a784918444b6dfd9515da2fb8f8680dc2bf3d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 131,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5a/5a6d53ffa44384fcede658dbc91e3777e51cbbeaae472ec15af4978132c9c0d8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6d31f506-beff-2a96-2434-6bec8b6a2443",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:38a0d7e0-d74b-3507-672b-b76e9a5af3dc",
  "kind": "lemma",
  "lexical_name": "isEmbedding_toContinuousMultilinearMap",
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
  "slug": "isembedding-tocontinuousmultilinearmap--76b060ea4f80fef8135f49f2",
  "source": {
    "blob": "ed7a784918444b6dfd9515da2fb8f8680dc2bf3d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 131,
    "path": "GRWTSK/Topology/GeneralTopology/Topology/Variant5a6d53ffa44384fcede658dbc91e3777e51cbbeaae472ec15af4978132c9c0d8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:76b060ea4f80fef8135f49f2afc3226112a043c69d7b1e15b07947e4472f9af2",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Topology/Variant5a6d53ffa44384fcede658dbc91e3777e51cbbeaae472ec15af4978132c9c0d8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:38a0d7e0-d74b-3507-672b-b76e9a5af3dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isEmbedding_toContinuousMultilinearMap :
    IsEmbedding (toContinuousMultilinearMap : (E [⋀^ι]→L[𝕜] F → _)) :=
  letI := IsTopologicalAddGroup.toUniformSpace F
  haveI := isUniformAddGroup_of_addCommGroup (G := F)
  isUniformEmbedding_toContinuousMultilinearMap.isEmbedding

@[deprecated (since := "2024-10-26")]
alias embedding_toContinuousMultilinearMap := isEmbedding_toContinuousMultilinearMap

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Topology/Variant5a6d53ffa44384fcede658dbc91e3777e51cbbeaae472ec15af4978132c9c0d8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Topology/Variant5a6d53ffa44384fcede658dbc91e3777e51cbbeaae472ec15af4978132c9c0d8.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed7a784918444b6dfd9515da2fb8f8680dc2bf3d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
