# descCApp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:69d7ba46866b11e679e511be8b909889949b6e3dd02cf86c6abbef2e4b3ef8fb",
  "kind": "def",
  "lexical_name": "descCApp",
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
  "slug": "desccapp--bb9182ea2da56a32c84be2ba",
  "source": {
    "blob": "7e40eac5a298bf259cb4bf4aea7d5d062367ca2d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 272,
    "line": 242,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variante147dfc9e6891d694289a8a114613307ddf8ba5c9697510b6b6d54e9b2903ab5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bb9182ea2da56a32c84be2bae5f94f4598d5bb4fd705c625be4812fc9bd48ba3",
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

Occurrence: `declaration:69d7ba46866b11e679e511be8b909889949b6e3dd02cf86c6abbef2e4b3ef8fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 242–272.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def descCApp (F : J ⥤ PresheafedSpace.{_, _, v} C) (s : Cocone F) (U : (Opens s.pt.carrier)ᵒᵖ) :
    s.pt.presheaf.obj U ⟶
      (colimit.desc (F ⋙ PresheafedSpace.forget C) ((PresheafedSpace.forget C).mapCocone s) _*
            limit (pushforwardDiagramToColimit F).leftOp).obj
        U := by
  refine'
    limit.lift _
        { pt := s.pt.presheaf.obj U
          π :=
            { app := fun j => _
              naturality := fun j j' f => _ } } ≫
      (limitObjIsoLimitCompEvaluation _ _).inv
  -- We still need to construct the `app` and `naturality'` fields omitted above.
  · refine' (s.ι.app (unop j)).c.app U ≫ (F.obj (unop j)).presheaf.map (eqToHom _)
    dsimp
    rw [← Opens.map_comp_obj]
    simp
  · dsimp
    rw [PresheafedSpace.congr_app (s.w f.unop).symm U]
    have w :=
      Functor.congr_obj
        (congr_arg Opens.map (colimit.ι_desc ((PresheafedSpace.forget C).mapCocone s) (unop j)))
        (unop U)
    simp only [Opens.map_comp_obj_unop] at w
    replace w := congr_arg op w
    have w' := NatTrans.congr (F.map f.unop).c w
    rw [w']
    simp
set_option linter.uppercaseLean3 false in
#align algebraic_geometry.PresheafedSpace.colimit_cocone_is_colimit.desc_c_app AlgebraicGeometry.PresheafedSpace.ColimitCoconeIsColimit.descCApp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variante147dfc9e6891d694289a8a114613307ddf8ba5c9697510b6b6d54e9b2903ab5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variante147dfc9e6891d694289a8a114613307ddf8ba5c9697510b6b6d54e9b2903ab5.lean#L242).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7e40eac5a298bf259cb4bf4aea7d5d062367ca2d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
