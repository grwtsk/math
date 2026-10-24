# isLimitForkPushoutEquivIsColimitForkUnopPullback

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8176d92000b95922434df57ff8beef249f17701b5d1ab433db8ac5d6fedf3adf",
  "kind": "def",
  "lexical_name": "isLimitForkPushoutEquivIsColimitForkUnopPullback",
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
  "slug": "islimitforkpushoutequiviscolimitforkunoppullback--b93b17821e25c63a759cb684",
  "source": {
    "blob": "3ddbc4178bbe2811237aa69751ef4e4ffdad9bf1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 439,
    "line": 419,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant9f2ca4e7b216b0ca7ae50e715f94aba32fabfdb322710df994b477ce48b44832.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b93b17821e25c63a759cb684b2262257873ab87d6736b3e60497eda85812e9c4",
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

Occurrence: `declaration:8176d92000b95922434df57ff8beef249f17701b5d1ab433db8ac5d6fedf3adf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 419–439.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isLimitForkPushoutEquivIsColimitForkUnopPullback
    {X Y : Cᵒᵖ} {f : X ⟶ Y} [HasPushout f f] :
    IsLimit (Fork.ofι f pushout.condition) ≃ IsColimit (Cofork.ofπ f.unop pullback.condition) where
  toFun h := Cofork.isColimitOfIsos _ (Fork.isLimitOfιEquivIsColimitUnop f f pushout.condition
    (by simp only [← unop_comp, pushout.condition]) rfl h) _
      ((pushoutIsoOpPullback f f).unop.symm ≪≫ eqToIso rfl) (.refl _) (.refl _)
        (by simp) (by simp) (by simp)
  invFun h := by
    refine Fork.isLimitOfIsos _ (Cofork.isColimitOfπEquivIsLimitOp f.unop f.unop pullback.condition
      (by simp only [← op_comp, pullback.condition]) rfl h) _ (.refl _)
        ((pushoutIsoOpPullback f f).symm) (.refl _) ?_ ?_ (by simp)
    · rw [Iso.symm_hom, ← Quiver.Hom.op_unop (pushoutIsoOpPullback f f).inv, ← op_comp,
        pushoutIsoOpPullback_inv_fst, Quiver.Hom.op_unop, Iso.refl_hom, Category.id_comp]
    · rw [Iso.symm_hom, ← Quiver.Hom.op_unop (pushoutIsoOpPullback f f).inv, ← op_comp,
        pushoutIsoOpPullback_inv_snd, Quiver.Hom.op_unop, Iso.refl_hom, Category.id_comp]
  left_inv := by cat_disch
  right_inv := by cat_disch

end Fork

end CategoryTheory.Limits
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant9f2ca4e7b216b0ca7ae50e715f94aba32fabfdb322710df994b477ce48b44832.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant9f2ca4e7b216b0ca7ae50e715f94aba32fabfdb322710df994b477ce48b44832.lean#L419).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ddbc4178bbe2811237aa69751ef4e4ffdad9bf1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
