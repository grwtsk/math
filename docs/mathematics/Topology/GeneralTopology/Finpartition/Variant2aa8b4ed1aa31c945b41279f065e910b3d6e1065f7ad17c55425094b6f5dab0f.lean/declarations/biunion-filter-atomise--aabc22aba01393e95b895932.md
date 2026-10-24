# biUnion_filter_atomise

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "75a9ead71e18f58cfbf6ffe811e2707e873b3ae4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 741,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2a/2aa8b4ed1aa31c945b41279f065e910b3d6e1065f7ad17c55425094b6f5dab0f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:33662088-d5f6-de4a-c68b-244285bcea21",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a4bb81af-8c81-c4aa-1168-1e6a307fc902",
  "kind": "theorem",
  "lexical_name": "biUnion_filter_atomise",
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
  "slug": "biunion-filter-atomise--aabc22aba01393e95b895932",
  "source": {
    "blob": "75a9ead71e18f58cfbf6ffe811e2707e873b3ae4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 750,
    "line": 741,
    "path": "GRWTSK/Topology/GeneralTopology/Finpartition/Variant2aa8b4ed1aa31c945b41279f065e910b3d6e1065f7ad17c55425094b6f5dab0f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aabc22aba01393e95b8959327a5b9b534ec1d9bb3e167fecf56bce7c10d218ce",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Finpartition/Variant2aa8b4ed1aa31c945b41279f065e910b3d6e1065f7ad17c55425094b6f5dab0f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a4bb81af-8c81-c4aa-1168-1e6a307fc902`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 741–750.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem biUnion_filter_atomise (ht : t ∈ F) (hts : t ⊆ s) :
    {u ∈ (atomise s F).parts | u ⊆ t ∧ u.Nonempty}.biUnion id = t := by
  ext a
  refine mem_biUnion.trans ⟨fun ⟨u, hu, ha⟩ ↦ (mem_filter.1 hu).2.1 ha, fun ha ↦ ?_⟩
  obtain ⟨u, hu, hau⟩ := (atomise s F).exists_mem (hts ha)
  refine ⟨u, mem_filter.2 ⟨hu, fun b hb ↦ ?_, _, hau⟩, hau⟩
  obtain ⟨Q, _hQ, rfl⟩ := (mem_atomise.1 hu).2
  rw [mem_filter] at hau hb
  rwa [← hb.2 _ ht, hau.2 _ ht]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Finpartition/Variant2aa8b4ed1aa31c945b41279f065e910b3d6e1065f7ad17c55425094b6f5dab0f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Finpartition/Variant2aa8b4ed1aa31c945b41279f065e910b3d6e1065f7ad17c55425094b6f5dab0f.lean#L741).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `75a9ead71e18f58cfbf6ffe811e2707e873b3ae4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
