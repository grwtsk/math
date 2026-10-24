# OneTruncation₂.ofNerve₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a73f51ee78669e39ac5b244fc230a6c350e1e8d6705b586e7e2ea86a4e85878a",
  "kind": "def",
  "lexical_name": "OneTruncation₂.ofNerve₂",
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
  "slug": "onetruncation-ofnerve--ee068b7900d7eae9cdc7435b",
  "source": {
    "blob": "5735b26e11096397d31d1caffd34f764a611a43d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 186,
    "line": 166,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Variant6b79c4985dd1a5fda1afe5599dbc2732c3eb7a26032f1d39012a3c17069c941f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ee068b7900d7eae9cdc7435b5457ee1395930180bee441fb84458aca21eb7def",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Variant6b79c4985dd1a5fda1afe5599dbc2732c3eb7a26032f1d39012a3c17069c941f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a73f51ee78669e39ac5b244fc230a6c350e1e8d6705b586e7e2ea86a4e85878a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 166–186.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def OneTruncation₂.ofNerve₂ (C : Type u) [Category.{u} C] :
    ReflQuiv.of (OneTruncation₂ (nerveFunctor₂.obj (Cat.of C))) ≅ ReflQuiv.of C := by
  apply ReflQuiv.isoOfEquiv.{u,u} OneTruncation₂.nerveEquiv OneTruncation₂.nerveHomEquiv ?_
  intro X
  unfold nerveEquiv nerveHomEquiv
  simp only [Cat.of_α, op_obj, ComposableArrows.obj', Fin.zero_eta, Fin.isValue, Equiv.coe_fn_mk,
    nerveEquiv_apply, Nat.reduceAdd, id_edge, SimplexCategory.len_mk, id_eq, eqToHom_refl, comp_id,
    id_comp, ReflQuiver.id_eq_id]
  unfold nerve truncation SimplicialObject.truncation SimplexCategory.Truncated.inclusion
  -- the following was obtained by `simp?`
  simp only [ObjectProperty.ι_obj, SimplexCategory.len_mk, Nat.reduceAdd, Fin.isValue,
    SimplexCategory.toCat_map, whiskeringLeft_obj_obj, Functor.comp_map, op_obj, op_map,
    Quiver.Hom.unop_op, ObjectProperty.ι_map, ComposableArrows.whiskerLeft_map, Fin.zero_eta,
    Monotone.functor_obj, Fin.mk_one, homOfLE_leOfHom]
  show X.map (𝟙 _) = _
  rw [X.map_id]
  rfl

/-- The refl quiver underlying a nerve is naturally isomorphic to the refl quiver underlying the
category. -/
@[simps! hom_app_obj hom_app_map inv_app_obj_obj inv_app_obj_map inv_app_map]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Variant6b79c4985dd1a5fda1afe5599dbc2732c3eb7a26032f1d39012a3c17069c941f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Variant6b79c4985dd1a5fda1afe5599dbc2732c3eb7a26032f1d39012a3c17069c941f.lean#L166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5735b26e11096397d31d1caffd34f764a611a43d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
