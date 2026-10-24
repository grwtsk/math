# isUniformEmbedding_inl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7e09497a8e78478f82864f222a55b369e93cdbc4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 188,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b2/b20215f3c2a20704f2fd0fd32d5a2f0f1dee64cbb100ef1335d88eb7e2c1f2d2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:64001faa-3452-ee05-7bd1-86dd5645b032",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:803da51b-cf03-8fc7-4ee1-b9e8227eea1b",
  "kind": "theorem",
  "lexical_name": "isUniformEmbedding_inl",
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
  "slug": "isuniformembedding-inl--d520059c98617e54ef795c98",
  "source": {
    "blob": "7e09497a8e78478f82864f222a55b369e93cdbc4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 193,
    "line": 188,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformEmbedding/Variantb20215f3c2a20704f2fd0fd32d5a2f0f1dee64cbb100ef1335d88eb7e2c1f2d2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d520059c98617e54ef795c9810e526ad67078edf73ce9b49793b3dde27ea0a0f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/UniformEmbedding/Variantb20215f3c2a20704f2fd0fd32d5a2f0f1dee64cbb100ef1335d88eb7e2c1f2d2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:803da51b-cf03-8fc7-4ee1-b9e8227eea1b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 188–193.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isUniformEmbedding_inl : IsUniformEmbedding (Sum.inl : α → α ⊕ β) :=
  isUniformEmbedding_iff'.2 ⟨Sum.inl_injective, uniformContinuous_inl, fun s hs =>
    ⟨Prod.map Sum.inl Sum.inl '' s ∪ range (Prod.map Sum.inr Sum.inr),
      union_mem_sup (image_mem_map hs) range_mem_map,
      fun x h => by simpa [Prod.map_apply'] using h⟩⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/UniformEmbedding/Variantb20215f3c2a20704f2fd0fd32d5a2f0f1dee64cbb100ef1335d88eb7e2c1f2d2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformEmbedding/Variantb20215f3c2a20704f2fd0fd32d5a2f0f1dee64cbb100ef1335d88eb7e2c1f2d2.lean#L188).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7e09497a8e78478f82864f222a55b369e93cdbc4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
