# pseudofunctor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:841a5130a5b861faf761f7271299789d8ce58dbc9e0e9989e35b6a440ae6c661",
  "kind": "def",
  "lexical_name": "pseudofunctor",
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
  "slug": "pseudofunctor--53131f5cee7679aa4a59a28d",
  "source": {
    "blob": "e4abb85b8f21c1bcceb1ec843c8aca4bb8a154ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 274,
    "line": 197,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcb0cae3084d848b36913a7b0f03a678f6c83a71d62279bf79b7d07cd96cf12b1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:53131f5cee7679aa4a59a28d60c19162a6a3f6e98b0514fa61b1c1a50b5e5cb5",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcb0cae3084d848b36913a7b0f03a678f6c83a71d62279bf79b7d07cd96cf12b1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:841a5130a5b861faf761f7271299789d8ce58dbc9e0e9989e35b6a440ae6c661`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 197–274.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def pseudofunctor : Pseudofunctor Cat Cat where
  toPrelaxFunctor := prelaxfunctor
  mapId C := mapId C
  mapComp := mapComp
  map₂_whisker_left := by
    intros
    apply NatTrans.ext
    funext X
    cases X
    · rw [NatTrans.comp_app, NatTrans.comp_app]
      simp only [prelaxfunctor_toPrelaxFunctorStruct_toPrefunctor_obj,
        prelaxfunctor_toPrelaxFunctorStruct_toPrefunctor_map, map_obj, Cat.comp_obj,
        prelaxfunctor_toPrelaxFunctorStruct_map₂, map₂_app, Cat.whiskerLeft_app, mapComp_hom_app,
        Iso.refl_hom, mapComp_inv_app, Iso.refl_inv, Category.comp_id, Category.id_comp]
    · rfl
  map₂_whisker_right := by
    intros
    apply NatTrans.ext
    funext X
    cases X
    · rw [NatTrans.comp_app, NatTrans.comp_app]
      simp only [prelaxfunctor_toPrelaxFunctorStruct_toPrefunctor_obj,
        prelaxfunctor_toPrelaxFunctorStruct_toPrefunctor_map, map_obj, Cat.comp_obj,
        prelaxfunctor_toPrelaxFunctorStruct_map₂, map₂_app, Cat.whiskerRight_app, mapComp_hom_app,
        Iso.refl_hom, map_map, mapComp_inv_app, Iso.refl_inv, Category.comp_id, Category.id_comp]
      rfl
    · rfl
  map₂_associator := by
    intros
    dsimp
    apply NatTrans.ext
    funext X
    cases X
    · rw [NatTrans.comp_app,NatTrans.comp_app,NatTrans.comp_app,NatTrans.comp_app]
      simp only [prelaxfunctor_toPrelaxFunctorStruct_toPrefunctor_obj,
        prelaxfunctor_toPrelaxFunctorStruct_toPrefunctor_map, map_obj, Cat.comp_obj,
        Bicategory.Strict.associator_eqToIso, eqToIso_refl, Iso.refl_hom,
        prelaxfunctor_toPrelaxFunctorStruct_map₂, map₂_app, mapComp_hom_app, Cat.whiskerRight_app,
        map_map, down_id, Functor.map_id, Cat.whiskerLeft_app, mapComp_inv_app, Iso.refl_inv,
        Category.comp_id, Category.id_comp]
      rw [NatTrans.id_app, NatTrans.id_app]
      simp only [Cat.comp_obj, Bicategory.whiskerRight, whiskerRight_app, map_obj, mapComp_hom_app,
        Iso.refl_hom, map_map, down_id, Functor.map_id, Bicategory.whiskerLeft, whiskerLeft_app,
        mapComp_inv_app, Iso.refl_inv, Category.comp_id]
    · rfl
  map₂_left_unitor := by
    intros
    apply NatTrans.ext
    funext X
    cases X
    · rw [NatTrans.comp_app, NatTrans.comp_app]
      simp only [prelaxfunctor_toPrelaxFunctorStruct_toPrefunctor_obj,
        prelaxfunctor_toPrelaxFunctorStruct_toPrefunctor_map, map_obj, Cat.comp_obj,
        Bicategory.Strict.leftUnitor_eqToIso, eqToIso_refl, Iso.refl_hom,
        prelaxfunctor_toPrelaxFunctorStruct_map₂, map₂_app, mapComp_hom_app, Cat.whiskerRight_app,
        mapId_hom_app, map_map, Category.id_comp]
      rw [NatTrans.id_app, NatTrans.id_app]
      simp only [Cat.comp_obj, map_obj, Category.comp_id]
      rw [← Functor.map_id]
      rfl
    · rfl
  map₂_right_unitor := by
    intros
    apply NatTrans.ext
    funext X
    cases X
    · rw [NatTrans.comp_app, NatTrans.comp_app]
      simp only [prelaxfunctor_toPrelaxFunctorStruct_toPrefunctor_obj,
        prelaxfunctor_toPrelaxFunctorStruct_toPrefunctor_map, map_obj, Cat.comp_obj,
        Bicategory.Strict.rightUnitor_eqToIso, eqToIso_refl, Iso.refl_hom,
        prelaxfunctor_toPrelaxFunctorStruct_map₂, map₂_app, mapComp_hom_app, Cat.whiskerLeft_app,
        mapId_hom_app, Category.id_comp]
      rw [NatTrans.id_app, NatTrans.id_app]
      simp only [Cat.comp_obj, map_obj, Category.comp_id]
      rw [← Functor.map_id]
      rfl
    · rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcb0cae3084d848b36913a7b0f03a678f6c83a71d62279bf79b7d07cd96cf12b1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcb0cae3084d848b36913a7b0f03a678f6c83a71d62279bf79b7d07cd96cf12b1.lean#L197).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e4abb85b8f21c1bcceb1ec843c8aca4bb8a154ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
