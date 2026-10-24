# colimitPresheafObjIsoComponentwiseLimit_inv_ι_app

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9342c488-5a5f-42ad-d108-20718f0211dd",
  "kind": "theorem",
  "lexical_name": "colimitPresheafObjIsoComponentwiseLimit_inv_ι_app",
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
  "slug": "colimitpresheafobjisocomponentwiselimit-inv-app--49a23dcd3f0a3864669b3b59",
  "source": {
    "blob": "7e40eac5a298bf259cb4bf4aea7d5d062367ca2d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 443,
    "line": 420,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variante147dfc9e6891d694289a8a114613307ddf8ba5c9697510b6b6d54e9b2903ab5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:49a23dcd3f0a3864669b3b593396de18d3393b260bda9cb6d64eabf00cd2aa35",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variante147dfc9e6891d694289a8a114613307ddf8ba5c9697510b6b6d54e9b2903ab5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9342c488-5a5f-42ad-d108-20718f0211dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 420–443.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem colimitPresheafObjIsoComponentwiseLimit_inv_ι_app (F : J ⥤ PresheafedSpace.{_, _, v} C)
    (U : Opens (Limits.colimit F).carrier) (j : J) :
    (colimitPresheafObjIsoComponentwiseLimit F U).inv ≫ (colimit.ι F j).c.app (op U) =
      limit.π _ (op j) := by
  delta colimitPresheafObjIsoComponentwiseLimit
  rw [Iso.trans_inv, Iso.trans_inv, Iso.app_inv, sheafIsoOfIso_inv, pushforwardToOfIso_app,
    congr_app (Iso.symm_inv _)]
  dsimp
  rw [map_id, comp_id, assoc, assoc, assoc, NatTrans.naturality]
  erw [← comp_c_app_assoc]
  rw [congr_app (colimit.isoColimitCocone_ι_hom _ _), assoc]
  erw [limitObjIsoLimitCompEvaluation_inv_π_app_assoc, limMap_π_assoc]
  -- Porting note : `convert` doesn't work due to meta variable, so change to a `suffices` block
  set f := _
  change _ ≫ f = _
  suffices f_eq : f = 𝟙 _ by rw [f_eq, comp_id]
  erw [← (F.obj j).presheaf.map_id]
  change (F.obj j).presheaf.map _ ≫ _ = _
  erw [← (F.obj j).presheaf.map_comp, ← (F.obj j).presheaf.map_comp]
  congr 1
set_option linter.uppercaseLean3 false in
#align algebraic_geometry.PresheafedSpace.colimit_presheaf_obj_iso_componentwise_limit_inv_ι_app AlgebraicGeometry.PresheafedSpace.colimitPresheafObjIsoComponentwiseLimit_inv_ι_app

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variante147dfc9e6891d694289a8a114613307ddf8ba5c9697510b6b6d54e9b2903ab5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variante147dfc9e6891d694289a8a114613307ddf8ba5c9697510b6b6d54e9b2903ab5.lean#L420).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7e40eac5a298bf259cb4bf4aea7d5d062367ca2d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
