# adjunction_left_triangle

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:60ebb4b9-3a22-3a74-6679-95226df560e0",
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
  "slug": "adjunction-left-triangle--b1075a336c0f2d9a0dc882e6",
  "source": {
    "blob": "375cc62a9390b28e6ea36723574676663ed021e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 333,
    "line": 311,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyConstant/Variantbbb6afa38babb490a982daaa6c3f68ed8e3d05e0ecb9c62642dde4a4a4a62b7b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b1075a336c0f2d9a0dc882e695926cf7e4978d23952801a4f2c6d490202a23fc",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyConstant/Variantbbb6afa38babb490a982daaa6c3f68ed8e3d05e0ecb9c62642dde4a4a4a62b7b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:60ebb4b9-3a22-3a74-6679-95226df560e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 311–333.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma adjunction_left_triangle [HasExplicitFiniteCoproducts.{u} P]
    (X : Type max u w) : functorToPresheaves.{u, w}.map ((unit P hs).app X) ≫
      ((counit P hs).app ((functor P hs).obj X)).val = 𝟙 (functorToPresheaves.obj X) := by
  ext ⟨S⟩ (f : LocallyConstant _ X)
  simp only [Functor.id_obj, Functor.comp_obj, FunctorToTypes.comp, NatTrans.id_app,
    functorToPresheaves_obj_obj, types_id_apply]
  simp only [counit, counitApp_app]
  have := CompHausLike.preregular hs
  apply presheaf_ext
    (X := ((functor P hs).obj X).val) (Y := ((functor.{u, w} P hs).obj X).val)
      (f.map ((unit P hs).app X))
  intro a
  erw [incl_of_counitAppApp]
  simp only [functor_obj_val, functorToPresheaves_obj_obj, coe_of, Functor.id_obj,
    counitAppAppImage, LocallyConstant.map_apply, functorToPresheaves_obj_map, Quiver.Hom.unop_op]
  ext x
  erw [← map_eq_image _ a x]
  rfl

/--
`CompHausLike.LocallyConstant.functor` is left adjoint to the forgetful functor.
-/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyConstant/Variantbbb6afa38babb490a982daaa6c3f68ed8e3d05e0ecb9c62642dde4a4a4a62b7b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyConstant/Variantbbb6afa38babb490a982daaa6c3f68ed8e3d05e0ecb9c62642dde4a4a4a62b7b.lean#L311).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `375cc62a9390b28e6ea36723574676663ed021e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
