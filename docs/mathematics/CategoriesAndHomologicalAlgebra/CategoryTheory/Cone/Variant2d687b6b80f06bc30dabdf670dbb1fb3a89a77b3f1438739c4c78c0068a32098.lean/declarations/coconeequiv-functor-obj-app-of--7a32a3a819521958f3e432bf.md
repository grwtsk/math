# coconeEquiv_functor_obj_ι_app_of

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d1010e9c7739c600a26f15f1c6c228a05bc424f7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 215,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2d/2d687b6b80f06bc30dabdf670dbb1fb3a89a77b3f1438739c4c78c0068a32098.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6e6dfae8-c864-a55b-4605-cd872e9671dc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:245c9c25-6947-ba9f-7cc1-bd9111211c13",
  "kind": "lemma",
  "lexical_name": "coconeEquiv_functor_obj_ι_app_of",
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
  "slug": "coconeequiv-functor-obj-app-of--7a32a3a819521958f3e432bf",
  "source": {
    "blob": "d1010e9c7739c600a26f15f1c6c228a05bc424f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 220,
    "line": 215,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cone/Variant2d687b6b80f06bc30dabdf670dbb1fb3a89a77b3f1438739c4c78c0068a32098.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7a32a3a819521958f3e432bf3d3419d7c43c22637b671991e154b7263c853945",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Cone/Variant2d687b6b80f06bc30dabdf670dbb1fb3a89a77b3f1438739c4c78c0068a32098.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:245c9c25-6947-ba9f-7cc1-bd9111211c13`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 215–220.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma coconeEquiv_functor_obj_ι_app_of (Y : J) :
   (coconeEquiv.functor.obj t).ι.app (of Y) = (t.ι.app Y).right := rfl

/-- A cocone `t` of `K : J ⥤ Under X` is a colimit if and only if the corresponding cocone
`coconeLift t` of `liftFromUnder.obj K : WithInitial K ⥤ C` is a colimit. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Cone/Variant2d687b6b80f06bc30dabdf670dbb1fb3a89a77b3f1438739c4c78c0068a32098.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cone/Variant2d687b6b80f06bc30dabdf670dbb1fb3a89a77b3f1438739c4c78c0068a32098.lean#L215).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1010e9c7739c600a26f15f1c6c228a05bc424f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
