# colimitCoconeIsColimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cbbab80c2df95c1ab4fdca4591d72d5832910d53a63ece1990f05fffd4f797ad",
  "kind": "def",
  "lexical_name": "colimitCoconeIsColimit",
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
  "slug": "colimitcoconeiscolimit--52b01d0ca3240ad94db2d45b",
  "source": {
    "blob": "914371331cf3bb85c507374ad3bc475c0152e7d6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 348,
    "line": 319,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant5b7226881749de5566c72e116488abc85b6f52ed662963a19cb1f53f3ab81674.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:52b01d0ca3240ad94db2d45badf2623b019cb7fec3254633145897878d02efe2",
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

Occurrence: `declaration:cbbab80c2df95c1ab4fdca4591d72d5832910d53a63ece1990f05fffd4f797ad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 319–348.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def colimitCoconeIsColimit (F : J ⥤ PresheafedSpace.{_, _, v} C) :
    IsColimit (colimitCocone F) where
  desc s := desc F s
  fac s := desc_fac F s
  uniq s m w := by
    -- We need to use the identity on the continuous maps twice, so we prepare that first:
    have t :
      m.base =
        colimit.desc (F ⋙ PresheafedSpace.forget C) ((PresheafedSpace.forget C).mapCocone s) := by
      dsimp
      ext j
      rw [colimit.ι_desc, mapCocone_ι_app, ← w j]
      simp
    ext : 1
    · exact t
    · refine NatTrans.ext _ _ (funext fun U => limit_obj_ext fun j => ?_)
      dsimp only [colimitCocone_pt, colimit_carrier, leftOp_obj, pushforwardDiagramToColimit_obj,
        comp_obj, forget_obj, unop_op, op_obj, desc, colimit_presheaf, descCApp, mapCocone_pt,
        pushforwardObj_obj, const_obj_obj, id_eq, evaluation_obj_obj, Eq.ndrec, eq_mpr_eq_cast]
      rw [NatTrans.comp_app, whiskerRight_app]
      simp only [pushforwardObj_obj, op_obj, comp_obj, eqToHom_app, eqToHom_map, assoc,
        limitObjIsoLimitCompEvaluation_inv_π_app, limit.lift_π]
      rw [PresheafedSpace.congr_app (w (unop j)).symm U]
      dsimp
      have w := congr_arg op (Functor.congr_obj (congr_arg Opens.map t) (unop U))
      rw [NatTrans.congr (limit.π (pushforwardDiagramToColimit F).leftOp j) w]
      simp
set_option linter.uppercaseLean3 false in
#align algebraic_geometry.PresheafedSpace.colimit_cocone_is_colimit AlgebraicGeometry.PresheafedSpace.colimitCoconeIsColimit

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant5b7226881749de5566c72e116488abc85b6f52ed662963a19cb1f53f3ab81674.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant5b7226881749de5566c72e116488abc85b6f52ed662963a19cb1f53f3ab81674.lean#L319).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `914371331cf3bb85c507374ad3bc475c0152e7d6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
