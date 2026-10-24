# whiskerRight_quotientCompQhIso_hom_ι

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c612edec-c876-c9ef-c271-ebfbdb0d6df5",
  "kind": "lemma",
  "lexical_name": "whiskerRight_quotientCompQhIso_hom_ι",
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
  "slug": "whiskerright-quotientcompqhiso-hom--821d0403afb99d99bb99add8",
  "source": {
    "blob": "0eb2739382f8a290f27a6d8df03a0c29ccb30f87",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 275,
    "line": 263,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Plus/Variantb2914bc88f44f07771c4f0b54d98fb86d907d559feecf7a035d1fd0c397c67b1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:821d0403afb99d99bb99add8e56efcb72b48f8a66cb64a15d9f326840c757dd5",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Plus/Variantb2914bc88f44f07771c4f0b54d98fb86d907d559feecf7a035d1fd0c397c67b1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c612edec-c876-c9ef-c271-ebfbdb0d6df5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 263–275.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma whiskerRight_quotientCompQhIso_hom_ι :
    whiskerRight (quotientCompQhIso C).hom ι =
    (associator _ _ _).hom ≫ whiskerLeft _ (QhCompιIsoιCompQh C).hom ≫
    (associator _ _ _).inv ≫
    whiskerRight (HomotopyCategory.Plus.quotientCompιIso C).hom _ ≫ (associator _ _ _).hom ≫
    whiskerLeft _ (DerivedCategory.quotientCompQhIso C).hom ≫ (QCompιIso C).inv := by
  ext K
  dsimp
  simp [QCompιIso_inv_app, comp_id, id_comp,
    QhCompιIsoιCompQh_hom_app, HomotopyCategory.Plus.quotientCompιIso_hom_app,
    DerivedCategory.Qh.map_id ((HomotopyCategory.quotient _ (.up ℤ)).obj K.obj),
    dsimp% Category.id_comp ((DerivedCategory.quotientCompQhIso C).hom.app K.obj)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Plus/Variantb2914bc88f44f07771c4f0b54d98fb86d907d559feecf7a035d1fd0c397c67b1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Plus/Variantb2914bc88f44f07771c4f0b54d98fb86d907d559feecf7a035d1fd0c397c67b1.lean#L263).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0eb2739382f8a290f27a6d8df03a0c29ccb30f87` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
