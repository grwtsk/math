# shrinkYoneda_map_app_coconeπOpCompShrinkYonedaObj_ι_app

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e00921909338d1c6864bec7b14cbf351b8752c3b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 771,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a7/a789787982d99a15b04efbc43d4db46f7ee3dce38ad4ab17031eaa31fb3837c7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fbbc7388-edaa-50ab-906c-cff26945f51e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2bc73ba7-1327-1f6e-3bdc-e8506a4b498b",
  "kind": "lemma",
  "lexical_name": "shrinkYoneda_map_app_coconeπOpCompShrinkYonedaObj_ι_app",
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
  "slug": "shrinkyoneda-map-app-cocone-opcompshrinkyonedaobj-app--5f0b89232147fdd2cb01e154",
  "source": {
    "blob": "e00921909338d1c6864bec7b14cbf351b8752c3b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 782,
    "line": 771,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Varianta789787982d99a15b04efbc43d4db46f7ee3dce38ad4ab17031eaa31fb3837c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5f0b89232147fdd2cb01e154dba9c7f666aba10685fb187cc1fbf13d932e5e6d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Varianta789787982d99a15b04efbc43d4db46f7ee3dce38ad4ab17031eaa31fb3837c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2bc73ba7-1327-1f6e-3bdc-e8506a4b498b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 771–782.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma shrinkYoneda_map_app_coconeπOpCompShrinkYonedaObj_ι_app
    {X₁ X₂ : C} (f : X₁ ⟶ X₂) (u : F.Elements) :
    dsimp% (shrinkYoneda.{w}.map f).app (op u.obj) ≫
      (coconeπOpCompShrinkYonedaObj F X₂).ι.app (op u) =
    (coconeπOpCompShrinkYonedaObj F X₁).ι.app (op u) ≫ F.map f := by
  ext g
  obtain ⟨g, rfl⟩ := shrinkYonedaObjObjEquiv.symm.surjective g
  simp [shrinkYoneda_map_app_shrinkYonedaObjObjEquiv_symm.{w}]

set_option backward.defeqAttrib.useBackward true in
/-- If `C` is a locally `w`-small category, this is a (colimit) cocone
expressing `F : C ⥤ Type w` as a colimit of corepresentable functors. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Varianta789787982d99a15b04efbc43d4db46f7ee3dce38ad4ab17031eaa31fb3837c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Varianta789787982d99a15b04efbc43d4db46f7ee3dce38ad4ab17031eaa31fb3837c7.lean#L771).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e00921909338d1c6864bec7b14cbf351b8752c3b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
