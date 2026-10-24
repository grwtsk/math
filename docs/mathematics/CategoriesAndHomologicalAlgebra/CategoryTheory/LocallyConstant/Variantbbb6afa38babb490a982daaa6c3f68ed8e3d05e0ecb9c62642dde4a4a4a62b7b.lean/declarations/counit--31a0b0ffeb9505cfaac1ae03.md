# counit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:60a01412d04d6f5f0355f542c3796f0bac8aa1178f80d1af647dc31770493060",
  "kind": "def",
  "lexical_name": "counit",
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
  "slug": "counit--31a0b0ffeb9505cfaac1ae03",
  "source": {
    "blob": "375cc62a9390b28e6ea36723574676663ed021e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 301,
    "line": 259,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyConstant/Variantbbb6afa38babb490a982daaa6c3f68ed8e3d05e0ecb9c62642dde4a4a4a62b7b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:31a0b0ffeb9505cfaac1ae03a52a2f6f26f5075ec2ebf4b723912778c3503e8a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyConstant/Variantbbb6afa38babb490a982daaa6c3f68ed8e3d05e0ecb9c62642dde4a4a4a62b7b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:60a01412d04d6f5f0355f542c3796f0bac8aa1178f80d1af647dc31770493060`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 259–301.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def counit [HasExplicitFiniteCoproducts.{u} P] : haveI := CompHausLike.preregular hs
    (sheafSections _ _).obj ⟨CompHausLike.of P PUnit.{u + 1}⟩ ⋙ functor.{u, w} P hs ⟶
        𝟭 (Sheaf (coherentTopology (CompHausLike.{u} P)) (Type (max u w))) where
  app X := haveI := CompHausLike.preregular hs
    ⟨counitApp X.val⟩
  naturality X Y g := by
    have := CompHausLike.preregular hs
    apply Sheaf.hom_ext
    simp only [functor, id_eq, eq_mpr_eq_cast, Functor.comp_obj, Functor.flip_obj_obj,
      sheafToPresheaf_obj, Functor.id_obj, Functor.comp_map, Functor.flip_obj_map,
      sheafToPresheaf_map, Sheaf.instCategorySheaf_comp_val, Functor.id_map]
    ext S (f : LocallyConstant _ _)
    simp only [FunctorToTypes.comp, counitApp_app]
    apply presheaf_ext (f.map (g.val.app (op (CompHausLike.of P PUnit.{u + 1}))))
    intro a
    simp only [op_unop, functorToPresheaves_map_app, incl_of_counitAppApp]
    apply presheaf_ext (f.comap (sigmaIncl _ _).hom)
    intro b
    simp only [counitAppAppImage, ← FunctorToTypes.map_comp_apply, ← op_comp, CompHausLike.coe_of,
      map_apply, IsTerminal.comp_from, ← map_preimage_eq_image_map]
    change (_ ≫ Y.val.map _) _ = (_ ≫ Y.val.map _) _
    simp only [← g.val.naturality]
    rw [show sigmaIncl (f.comap (sigmaIncl (f.map _) a).hom) b ≫ sigmaIncl (f.map _) a =
        CompHausLike.ofHom P (X := fiber _ b) (sigmaInclIncl f _ a b) ≫ sigmaIncl f (Fiber.mk f _)
      by ext; rfl]
    simp only [op_comp, Functor.map_comp, types_comp_apply, incl_of_counitAppApp]
    simp only [counitAppAppImage, ← FunctorToTypes.map_comp_apply, ← op_comp, terminal.comp_from]
    rw [mk_image]
    change (X.val.map _ ≫ _) _ = (X.val.map _ ≫ _) _
    simp only [g.val.naturality]
    simp only [types_comp_apply]
    have := map_preimage_eq_image (f := g.val.app _ ∘ f) (a := a)
    simp only [Function.comp_apply] at this
    rw [this]
    apply congrArg
    symm
    convert (b.preimage).prop
    exact (mem_iff_eq_image (g.val.app _ ∘ f) _ _).symm

/--
The unit of the adjunciton is given by mapping each element to the corresponding constant map.
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

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyConstant/Variantbbb6afa38babb490a982daaa6c3f68ed8e3d05e0ecb9c62642dde4a4a4a62b7b.lean#L259).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `375cc62a9390b28e6ea36723574676663ed021e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
