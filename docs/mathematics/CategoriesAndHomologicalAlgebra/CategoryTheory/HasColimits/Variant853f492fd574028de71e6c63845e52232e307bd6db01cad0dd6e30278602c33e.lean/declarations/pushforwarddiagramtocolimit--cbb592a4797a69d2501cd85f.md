# pushforwardDiagramToColimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:93db0768d71e79fd7033c7cfacd969046f298dc0d7f163a65d15e44dd9880506",
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
  "slug": "pushforwarddiagramtocolimit--cbb592a4797a69d2501cd85f",
  "source": {
    "blob": "62cbed0957071213c8d0163aae912ff459784e11",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 103,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant853f492fd574028de71e6c63845e52232e307bd6db01cad0dd6e30278602c33e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cbb592a4797a69d2501cd85f296a342250e970d7295b5f5ad292ad90d338357a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant853f492fd574028de71e6c63845e52232e307bd6db01cad0dd6e30278602c33e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:93db0768d71e79fd7033c7cfacd969046f298dc0d7f163a65d15e44dd9880506`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def pushforwardDiagramToColimit (F : J ⥤ PresheafedSpace.{_, _, v} C) :
    J ⥤ (Presheaf C (colimit (F ⋙ PresheafedSpace.forget C)))ᵒᵖ where
  obj j := op (colimit.ι (F ⋙ PresheafedSpace.forget C) j _* (F.obj j).presheaf)
  map {j j'} f :=
    ((pushforward C (colimit.ι (F ⋙ PresheafedSpace.forget C) j')).map (F.map f).c ≫
      (Pushforward.comp ((F ⋙ PresheafedSpace.forget C).map f)
        (colimit.ι (F ⋙ PresheafedSpace.forget C) j') (F.obj j).presheaf).inv ≫
      (pushforwardEq (colimit.w (F ⋙ PresheafedSpace.forget C) f) (F.obj j).presheaf).hom).op
  map_id j := by
    apply (opEquiv _ _).injective
    refine NatTrans.ext (funext fun U => ?_)
    induction U with
    | op U =>
      simp [opEquiv]
      rfl
  map_comp {j₁ j₂ j₃} f g := by
    apply (opEquiv _ _).injective
    refine NatTrans.ext (funext fun U => ?_)
    dsimp [opEquiv]
    have :
      op ((Opens.map (F.map g).base).obj
          ((Opens.map (colimit.ι (F ⋙ forget C) j₃)).obj U.unop)) =
        op ((Opens.map (colimit.ι (F ⋙ PresheafedSpace.forget C) j₂)).obj (unop U)) := by
      apply unop_injective
      rw [← Opens.map_comp_obj]
      congr
      exact colimit.w (F ⋙ PresheafedSpace.forget C) g
    simp only [map_comp_c_app, pushforward_obj_obj, pushforward_map_app, comp_base,
      pushforwardEq_hom_app, op_obj, Opens.map_comp_obj, id_comp, assoc, eqToHom_map_comp,
      NatTrans.naturality_assoc, pushforward_obj_map, eqToHom_unop]
    simp [NatTrans.congr (α := (F.map f).c) this]

variable [∀ X : TopCat.{v}, HasLimitsOfShape Jᵒᵖ (X.Presheaf C)]

/-- Auxiliary definition for `AlgebraicGeometry.PresheafedSpace.instHasColimits`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant853f492fd574028de71e6c63845e52232e307bd6db01cad0dd6e30278602c33e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant853f492fd574028de71e6c63845e52232e307bd6db01cad0dd6e30278602c33e.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `62cbed0957071213c8d0163aae912ff459784e11` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
