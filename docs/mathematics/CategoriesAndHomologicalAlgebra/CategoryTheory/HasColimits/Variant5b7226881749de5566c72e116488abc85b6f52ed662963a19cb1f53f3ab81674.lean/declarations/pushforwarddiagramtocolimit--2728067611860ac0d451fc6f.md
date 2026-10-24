# pushforwardDiagramToColimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c0a8540f2750bbf953a124a279037318371970b5a20c953cda50d3fa5fd634b4",
  "kind": "def",
  "lexical_name": "pushforwardDiagramToColimit",
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
  "slug": "pushforwarddiagramtocolimit--2728067611860ac0d451fc6f",
  "source": {
    "blob": "914371331cf3bb85c507374ad3bc475c0152e7d6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 180,
    "line": 119,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant5b7226881749de5566c72e116488abc85b6f52ed662963a19cb1f53f3ab81674.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2728067611860ac0d451fc6fb4f0fbf27fafa35eff8c1c84a3eab15e0dbca35b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant5b7226881749de5566c72e116488abc85b6f52ed662963a19cb1f53f3ab81674.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c0a8540f2750bbf953a124a279037318371970b5a20c953cda50d3fa5fd634b4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–180.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def pushforwardDiagramToColimit (F : J ⥤ PresheafedSpace.{_, _, v} C) :
    J ⥤ (Presheaf C (colimit (F ⋙ PresheafedSpace.forget C)))ᵒᵖ where
  obj j := op (colimit.ι (F ⋙ PresheafedSpace.forget C) j _* (F.obj j).presheaf)
  map {j j'} f :=
    (pushforwardMap (colimit.ι (F ⋙ PresheafedSpace.forget C) j') (F.map f).c ≫
        (Pushforward.comp (F.obj j).presheaf ((F ⋙ PresheafedSpace.forget C).map f)
              (colimit.ι (F ⋙ PresheafedSpace.forget C) j')).inv ≫
          (pushforwardEq (colimit.w (F ⋙ PresheafedSpace.forget C) f) (F.obj j).presheaf).hom).op
  map_id j := by
    apply (opEquiv _ _).injective
    refine NatTrans.ext _ _ (funext fun U => ?_)
    induction U with
    | h U =>
      rcases U with ⟨U, hU⟩
      dsimp [comp_obj, forget_obj, Functor.comp_map, forget_map, op_comp, unop_op,
        pushforwardObj_obj, op_obj, Opens.map_obj, opEquiv, Equiv.coe_fn_mk, unop_comp,
        Quiver.Hom.unop_op, unop_id]
      -- Porting note : some `simp` lemmas are not picked up
      rw [NatTrans.comp_app, pushforwardMap_app, NatTrans.id_app]
      simp only [op_obj, unop_op, Opens.map_obj, map_id_c_app, Opens.map_id_obj',
        map_id, pushforwardEq_hom_app, eqToHom_op, id_eq, eqToHom_map, id_comp,
        TopCat.Presheaf.Pushforward.id_inv_app']
      rw [NatTrans.comp_app, Pushforward.comp_inv_app, id_comp]
      dsimp
      simp
  map_comp {j₁ j₂ j₃} f g := by
    apply (opEquiv _ _).injective
    refine NatTrans.ext _ _ (funext fun U => ?_)
    dsimp only [comp_obj, forget_obj, Functor.comp_map, forget_map, op_comp, unop_op,
      pushforwardObj_obj, op_obj, opEquiv, Equiv.coe_fn_mk, unop_comp, Quiver.Hom.unop_op]
    -- Porting note : some `simp` lemmas are not picked up
    rw [NatTrans.comp_app, pushforwardMap_app, NatTrans.comp_app, Pushforward.comp_inv_app,
      id_comp, pushforwardEq_hom_app, NatTrans.comp_app, NatTrans.comp_app, NatTrans.comp_app,
      pushforwardMap_app, Pushforward.comp_inv_app, id_comp, pushforwardEq_hom_app,
      NatTrans.comp_app, NatTrans.comp_app, pushforwardEq_hom_app, Pushforward.comp_inv_app,
      id_comp, pushforwardMap_app]
    simp only [pushforwardObj_obj, op_obj, unop_op, map_comp_c_app, pushforwardMap_app,
      Opens.map_comp_obj, Pushforward.comp_inv_app, pushforwardEq_hom_app, eqToHom_op, id_eq,
      eqToHom_map, id_comp, assoc, eqToHom_trans]
    dsimp
    congr 1
    -- The key fact is `(F.map f).c.congr`,
    -- which allows us in rewrite in the argument of `(F.map f).c.app`.
    rw [@NatTrans.congr (α := (F.map f).c)
      (op ((Opens.map (F.map g).base).obj ((Opens.map (colimit.ι (F ⋙ forget C) j₃)).obj U.unop)))
      (op ((Opens.map (colimit.ι (F ⋙ PresheafedSpace.forget C) j₂)).obj (unop U)))
      _]
    swap
    -- Now we show the open sets are equal.
    · apply unop_injective
      rw [← Opens.map_comp_obj]
      congr
      exact colimit.w (F ⋙ PresheafedSpace.forget C) g
    -- Finally, the original goal is now easy:
    simp
set_option linter.uppercaseLean3 false in
#align algebraic_geometry.PresheafedSpace.pushforward_diagram_to_colimit AlgebraicGeometry.PresheafedSpace.pushforwardDiagramToColimit

variable [∀ X : TopCat.{v}, HasLimitsOfShape Jᵒᵖ (X.Presheaf C)]

/-- Auxiliary definition for `AlgebraicGeometry.PresheafedSpace.instHasColimits`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant5b7226881749de5566c72e116488abc85b6f52ed662963a19cb1f53f3ab81674.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant5b7226881749de5566c72e116488abc85b6f52ed662963a19cb1f53f3ab81674.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `914371331cf3bb85c507374ad3bc475c0152e7d6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
