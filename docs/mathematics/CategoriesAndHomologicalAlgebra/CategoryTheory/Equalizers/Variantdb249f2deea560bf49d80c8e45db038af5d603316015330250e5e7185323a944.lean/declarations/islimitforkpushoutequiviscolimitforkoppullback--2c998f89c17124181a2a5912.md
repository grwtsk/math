# isLimitForkPushoutEquivIsColimitForkOpPullback

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cb4b0127ca642f42aff01fcac07d362c8aa6be39942452abc727a428a887f043",
  "kind": "def",
  "lexical_name": "isLimitForkPushoutEquivIsColimitForkOpPullback",
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
  "slug": "islimitforkpushoutequiviscolimitforkoppullback--2c998f89c17124181a2a5912",
  "source": {
    "blob": "e41aa53127f910c7374843af4ef9bab8b54a0e92",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 410,
    "line": 390,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantdb249f2deea560bf49d80c8e45db038af5d603316015330250e5e7185323a944.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2c998f89c17124181a2a5912311a3247607574a9c99872fce7af48b707410c68",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantdb249f2deea560bf49d80c8e45db038af5d603316015330250e5e7185323a944.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cb4b0127ca642f42aff01fcac07d362c8aa6be39942452abc727a428a887f043`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 390–410.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isLimitForkPushoutEquivIsColimitForkOpPullback
    {X Y : C} {f : X ⟶ Y} [HasPushout f f] :
    IsLimit (Fork.ofι f pushout.condition) ≃ IsColimit (Cofork.ofπ f.op pullback.condition) where
  toFun h := Cofork.isColimitOfIsos _ (Fork.isLimitOfιEquivIsColimitOp f f
    pushout.condition (by simp only [← op_comp, pushout.condition]) rfl h) _
      ((pushoutIsoUnopPullback f f).op.symm ≪≫ eqToIso rfl) (.refl _) (.refl _)
        (by simp) (by simp) (by simp)
  invFun h := by
    refine Fork.isLimitOfIsos _ (Cofork.isColimitOfπEquivIsLimitUnop f.op f.op
      pullback.condition (by simp only [← unop_comp, pullback.condition]) rfl h) _ (.refl _)
        ((pushoutIsoUnopPullback f f).symm) (.refl _) ?_ ?_ (by simp)
    · rw [Iso.symm_hom, ← Quiver.Hom.unop_op (pushoutIsoUnopPullback f f).inv, ← unop_comp,
        pushoutIsoUnopPullback_inv_fst, Quiver.Hom.unop_op, Iso.refl_hom, Category.id_comp]
    · rw [Iso.symm_hom, ← Quiver.Hom.unop_op (pushoutIsoUnopPullback f f).inv, ← unop_comp,
        pushoutIsoUnopPullback_inv_snd, Quiver.Hom.unop_op, Iso.refl_hom, Category.id_comp]
  left_inv := by cat_disch
  right_inv := by cat_disch

set_option backward.defeqAttrib.useBackward true in
/-- `Fork.ofι f pushout.condition` is a limit cone in `Cᵒᵖ` if and only if
`Cofork.ofπ f.op pullback.condition` in `C` is a colimit cocone. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantdb249f2deea560bf49d80c8e45db038af5d603316015330250e5e7185323a944.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantdb249f2deea560bf49d80c8e45db038af5d603316015330250e5e7185323a944.lean#L390).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e41aa53127f910c7374843af4ef9bab8b54a0e92` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
