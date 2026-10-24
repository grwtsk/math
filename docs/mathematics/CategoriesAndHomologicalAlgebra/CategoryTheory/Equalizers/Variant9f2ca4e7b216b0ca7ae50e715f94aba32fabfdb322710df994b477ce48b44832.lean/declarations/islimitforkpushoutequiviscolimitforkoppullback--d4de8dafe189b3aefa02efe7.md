# isLimitForkPushoutEquivIsColimitForkOpPullback

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5332b15ca381d566d860c6248b6dc1fb3e1953429b6e3e596ea8c265365b000a",
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
  "slug": "islimitforkpushoutequiviscolimitforkoppullback--d4de8dafe189b3aefa02efe7",
  "source": {
    "blob": "3ddbc4178bbe2811237aa69751ef4e4ffdad9bf1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 418,
    "line": 398,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant9f2ca4e7b216b0ca7ae50e715f94aba32fabfdb322710df994b477ce48b44832.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d4de8dafe189b3aefa02efe7f42087741597f4d893c3c4678d45ce1e043f1a53",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant9f2ca4e7b216b0ca7ae50e715f94aba32fabfdb322710df994b477ce48b44832.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5332b15ca381d566d860c6248b6dc1fb3e1953429b6e3e596ea8c265365b000a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 398–418.

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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant9f2ca4e7b216b0ca7ae50e715f94aba32fabfdb322710df994b477ce48b44832.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant9f2ca4e7b216b0ca7ae50e715f94aba32fabfdb322710df994b477ce48b44832.lean#L398).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ddbc4178bbe2811237aa69751ef4e4ffdad9bf1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
