# extendAlongYoneda_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:59cb5827-c0f1-e9f9-cdac-6eb80bdefe28",
  "kind": "theorem",
  "lexical_name": "extendAlongYoneda_map",
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
  "slug": "extendalongyoneda-map--f8046ca5ea5c3614b3d09552",
  "source": {
    "blob": "1067050962b3ed8a1c422a4d1641abcce571a338",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 195,
    "line": 172,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant3627c09933d584da7bbf062d102ba1c607c9727411df05c0f287dca3701fd269.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f8046ca5ea5c3614b3d09552cc6c11ee2bf6465d4680f703fd1c73f0a2686ef2",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant3627c09933d584da7bbf062d102ba1c607c9727411df05c0f287dca3701fd269.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:59cb5827-c0f1-e9f9-cdac-6eb80bdefe28`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 172–195.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem extendAlongYoneda_map {X Y : Cᵒᵖ ⥤ Type u₁} (f : X ⟶ Y) :
    (extendAlongYoneda A).map f =
      colimit.pre ((CategoryOfElements.π Y).leftOp ⋙ A) (CategoryOfElements.map f).op := by
  ext J
  erw [colimit.ι_pre ((CategoryOfElements.π Y).leftOp ⋙ A) (CategoryOfElements.map f).op]
  dsimp only [extendAlongYoneda, restrictYonedaHomEquiv, IsColimit.homIso', IsColimit.homIso,
    uliftTrivial]
  -- porting note: in mathlib3 the rest of the proof was `simp, refl`; this is squeezed
  -- and appropriately reordered, presumably because of a non-confluence issue.
  simp only [Adjunction.leftAdjointOfEquiv_map, Iso.symm_mk, Iso.toEquiv_comp, Equiv.coe_trans,
    Equiv.coe_fn_mk, Iso.toEquiv_fun, Equiv.symm_trans_apply, Equiv.coe_fn_symm_mk,
    Iso.toEquiv_symm_fun, id.def, colimit.isColimit_desc, colimit.ι_desc, FunctorToTypes.comp,
    Cocone.extend_ι, Cocone.extensions_app, Functor.map_id, Category.comp_id, colimit.cocone_ι]
  simp only [Functor.comp_obj, Functor.leftOp_obj, CategoryOfElements.π_obj, colimit.cocone_x,
    Functor.comp_map, Functor.leftOp_map, CategoryOfElements.π_map, Opposite.unop_op,
    Adjunction.leftAdjointOfEquiv_obj, Function.comp_apply, Functor.map_id, comp_id,
    colimit.cocone_ι, Functor.op_obj]
  rfl
#align category_theory.colimit_adj.extend_along_yoneda_map CategoryTheory.ColimitAdj.extendAlongYoneda_map

/-- Show `extendAlongYoneda` is left adjoint to `restrictedYoneda`.

The construction of [MM92], Chapter I, Section 5, Theorem 2.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant3627c09933d584da7bbf062d102ba1c607c9727411df05c0f287dca3701fd269.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant3627c09933d584da7bbf062d102ba1c607c9727411df05c0f287dca3701fd269.lean#L172).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1067050962b3ed8a1c422a4d1641abcce571a338` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
