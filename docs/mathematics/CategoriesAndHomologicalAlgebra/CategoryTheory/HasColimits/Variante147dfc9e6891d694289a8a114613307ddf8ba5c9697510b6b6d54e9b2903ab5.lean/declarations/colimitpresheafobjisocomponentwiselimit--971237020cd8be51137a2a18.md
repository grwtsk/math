# colimitPresheafObjIsoComponentwiseLimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:37e0923cb8270cc042c525121b78acf4a02079f394d664b6160391133be58529",
  "kind": "def",
  "lexical_name": "colimitPresheafObjIsoComponentwiseLimit",
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
  "slug": "colimitpresheafobjisocomponentwiselimit--971237020cd8be51137a2a18",
  "source": {
    "blob": "7e40eac5a298bf259cb4bf4aea7d5d062367ca2d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 419,
    "line": 391,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variante147dfc9e6891d694289a8a114613307ddf8ba5c9697510b6b6d54e9b2903ab5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:971237020cd8be51137a2a186b862c1d3c7282f39ff0c3d366cb707fc28accd1",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variante147dfc9e6891d694289a8a114613307ddf8ba5c9697510b6b6d54e9b2903ab5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:37e0923cb8270cc042c525121b78acf4a02079f394d664b6160391133be58529`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 391–419.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def colimitPresheafObjIsoComponentwiseLimit (F : J ⥤ PresheafedSpace.{_, _, v} C) [HasColimit F]
    (U : Opens (Limits.colimit F).carrier) :
    (Limits.colimit F).presheaf.obj (op U) ≅ limit (componentwiseDiagram F U) := by
  refine'
    ((sheafIsoOfIso (colimit.isoColimitCocone ⟨_, colimitCoconeIsColimit F⟩).symm).app
          (op U)).trans
      _
  refine' (limitObjIsoLimitCompEvaluation _ _).trans (Limits.lim.mapIso _)
  fapply NatIso.ofComponents
  · intro X
    refine' (F.obj (unop X)).presheaf.mapIso (eqToIso _)
    simp only [Functor.op_obj, unop_op, op_inj_iff, Opens.map_coe, SetLike.ext'_iff,
      Set.preimage_preimage]
    refine congr_arg (Set.preimage . U.1) (funext fun x => ?_)
    erw [←comp_app]
    congr
    exact ι_preservesColimitsIso_inv (forget C) F (unop X)
  · intro X Y f
    change ((F.map f.unop).c.app _ ≫ _ ≫ _) ≫ (F.obj (unop Y)).presheaf.map _ = _ ≫ _
    rw [TopCat.Presheaf.Pushforward.comp_inv_app]
    erw [Category.id_comp]
    rw [Category.assoc]
    erw [← (F.obj (unop Y)).presheaf.map_comp, (F.map f.unop).c.naturality_assoc,
      ←(F.obj (unop Y)).presheaf.map_comp]
    rfl
set_option linter.uppercaseLean3 false in
#align algebraic_geometry.PresheafedSpace.colimit_presheaf_obj_iso_componentwise_limit AlgebraicGeometry.PresheafedSpace.colimitPresheafObjIsoComponentwiseLimit

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variante147dfc9e6891d694289a8a114613307ddf8ba5c9697510b6b6d54e9b2903ab5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variante147dfc9e6891d694289a8a114613307ddf8ba5c9697510b6b6d54e9b2903ab5.lean#L391).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7e40eac5a298bf259cb4bf4aea7d5d062367ca2d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
