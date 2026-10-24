# adjunction_left_triangle

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9e9e8c13111eaa70d17b10c8fbeb59979c1a2d0d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 312,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0b/0b602983d25df816430010e6fd0bb93fcce1591749d5ca212849afa8f3a18c85.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9d955c7c-7920-da85-24f0-4d4022ee35b9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e7c49f8e-ff0d-ab1b-08bd-2356e05333ff",
  "kind": "lemma",
  "lexical_name": "adjunction_left_triangle",
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
  "slug": "adjunction-left-triangle--c3ad5f4919cbe47d4a521fb4",
  "source": {
    "blob": "9e9e8c13111eaa70d17b10c8fbeb59979c1a2d0d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 337,
    "line": 312,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyConstant/Variant0b602983d25df816430010e6fd0bb93fcce1591749d5ca212849afa8f3a18c85.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c3ad5f4919cbe47d4a521fb4fe4153b08b8ed137278409356dcf842a0971ecd9",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyConstant/Variant0b602983d25df816430010e6fd0bb93fcce1591749d5ca212849afa8f3a18c85.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e7c49f8e-ff0d-ab1b-08bd-2356e05333ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 312–337.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma adjunction_left_triangle [HasExplicitFiniteCoproducts.{u} P]
    (X : Type (max u w)) : functorToPresheaves.{u, w}.map ((unit P hs).app X) ≫
      ((counit P hs).app ((functor P hs).obj X)).hom = 𝟙 (functorToPresheaves.obj X) := by
  ext ⟨S⟩ (f : LocallyConstant _ X)
  simp only [Functor.id_obj, functor_obj_obj_obj, functorToPresheaves_obj_obj, Functor.comp_obj,
    Functor.flip_obj_obj, ObjectProperty.ι_obj, unit_app, NatTrans.comp_app,
    functorToPresheaves_map_app, ConcreteCategory.hom_ofHom, TypeCat.Fun.toFun_apply,
    CategoryTheory.comp_apply, TypeCat.Fun.coe_mk, NatTrans.id_app, id_apply]
  simp only [counit]
  have := CompHausLike.preregular hs
  apply presheaf_ext
    (X := ((functor P hs).obj X).obj) (Y := ((functor.{u, w} P hs).obj X).obj)
      (f.map ((unit P hs).app X))
  intro a
  erw [incl_of_counitAppApp]
  simp only [functor_obj_obj_obj, Functor.id_obj, Functor.comp_obj, Functor.flip_obj_obj,
    ObjectProperty.ι_obj, counitAppAppImage, functor_obj_obj_map,
    Quiver.Hom.unop_op, ConcreteCategory.hom_ofHom]
  ext x
  rw [← map_eq_image _ a x]
  rfl

/--
`CompHausLike.LocallyConstant.functor` is left adjoint to the forgetful functor.
-/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyConstant/Variant0b602983d25df816430010e6fd0bb93fcce1591749d5ca212849afa8f3a18c85.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyConstant/Variant0b602983d25df816430010e6fd0bb93fcce1591749d5ca212849afa8f3a18c85.lean#L312).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e9e8c13111eaa70d17b10c8fbeb59979c1a2d0d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
