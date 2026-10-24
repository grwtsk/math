# map_functor_eq'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "eb3c5f7df494eff18e1f8dcc020a181fecc01e1f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 415,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/45/4552c6f568e64eda3dc4eb8965f376c876072d9acdd2950638847dcdcaaba264.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9cd35b06-4470-4bb8-70cd-81c705e49ecf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b8033ab8-681f-b795-41b6-4586b631b38b",
  "kind": "theorem",
  "lexical_name": "map_functor_eq'",
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
  "slug": "map-functor-eq--31b11761aa992ed0b182ef87",
  "source": {
    "blob": "eb3c5f7df494eff18e1f8dcc020a181fecc01e1f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 419,
    "line": 415,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opens/Variant4552c6f568e64eda3dc4eb8965f376c876072d9acdd2950638847dcdcaaba264.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:31b11761aa992ed0b182ef87d6a54e3c64de8650f7d38c80db130175fb66018a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Opens/Variant4552c6f568e64eda3dc4eb8965f376c876072d9acdd2950638847dcdcaaba264.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b8033ab8-681f-b795-41b6-4586b631b38b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 415–419.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_functor_eq' {X U : TopCat} (f : U ⟶ X) (hf : IsOpenEmbedding f) (V) :
    ((Opens.map f).obj <| hf.isOpenMap.functor.obj V) = V :=
  Opens.ext <| Set.preimage_image_eq _ hf.injective

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Opens/Variant4552c6f568e64eda3dc4eb8965f376c876072d9acdd2950638847dcdcaaba264.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opens/Variant4552c6f568e64eda3dc4eb8965f376c876072d9acdd2950638847dcdcaaba264.lean#L415).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb3c5f7df494eff18e1f8dcc020a181fecc01e1f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
