# ιFree_mapFree

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "49c7aad54d15e80aeb6aadb91bbe8236b91d45a9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 187,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d0/d0ddd17b56ec37c0db6a5e82154eec7883db2851aaa6742851acea5a337293d5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:294c86d0-4c71-b090-b83a-b8ecca729831",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2a472d83-b975-ea7d-c113-ab8aeabe756f",
  "kind": "lemma",
  "lexical_name": "ιFree_mapFree",
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
  "slug": "free-mapfree--c9ec187813d3c0a72b006dc9",
  "source": {
    "blob": "49c7aad54d15e80aeb6aadb91bbe8236b91d45a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 196,
    "line": 187,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variantd0ddd17b56ec37c0db6a5e82154eec7883db2851aaa6742851acea5a337293d5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c9ec187813d3c0a72b006dc9f4fbc0c7433fd2015bd197e2ce9a644561fe00d6",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variantd0ddd17b56ec37c0db6a5e82154eec7883db2851aaa6742851acea5a337293d5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2a472d83-b975-ea7d-c113-ab8aeabe756f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 187–196.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ιFree_mapFree (η : unit S ⟶ F.obj (unit R)) (i : I) :
    ιFree i ≫ mapFree F I η = η ≫ F.map (ιFree i) :=
  IsColimit.ι_map (isColimitFreeCofan I) (F.mapCocone (freeCofan I))
    (Discrete.natTrans fun _ ↦ η) (Discrete.mk i)

variable [PreservesColimitsOfShape (Discrete I) F]

/-- Let `F` be a functor from the category of sheaves of `R`-modules to sheaves of `S`-modules.
If `F` preserves coproducts and `unit S ≅ F.obj (unit R)`, then `F` preserves free sheaves of
modules. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variantd0ddd17b56ec37c0db6a5e82154eec7883db2851aaa6742851acea5a337293d5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variantd0ddd17b56ec37c0db6a5e82154eec7883db2851aaa6742851acea5a337293d5.lean#L187).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `49c7aad54d15e80aeb6aadb91bbe8236b91d45a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
