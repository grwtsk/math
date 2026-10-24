# isColimitCoforkPushoutEquivIsColimitForkOpPullback

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a64e36c7f1eaba4071654bb7bcbe026b1643b016af6f1a5388262ae66498b0a7",
  "kind": "def",
  "lexical_name": "isColimitCoforkPushoutEquivIsColimitForkOpPullback",
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
  "slug": "iscolimitcoforkpushoutequiviscolimitforkoppullback--6c054c6cd200c740ced5c887",
  "source": {
    "blob": "3ddbc4178bbe2811237aa69751ef4e4ffdad9bf1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 376,
    "line": 361,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant9f2ca4e7b216b0ca7ae50e715f94aba32fabfdb322710df994b477ce48b44832.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6c054c6cd200c740ced5c88707dcca631524b3d466c95d034bf244e6711bc25a",
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

Occurrence: `declaration:a64e36c7f1eaba4071654bb7bcbe026b1643b016af6f1a5388262ae66498b0a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 361–376.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isColimitCoforkPushoutEquivIsColimitForkOpPullback
    {X Y : C} {f : X ⟶ Y} [HasPullback f f] :
    IsColimit (Cofork.ofπ f pullback.condition) ≃ IsLimit (Fork.ofι f.op pushout.condition) where
  toFun h := Fork.isLimitOfIsos _ (Cofork.isColimitOfπEquivIsLimitOp f f
    pullback.condition (by simp only [← op_comp, pullback.condition]) rfl h) _ (.refl _)
      (pullbackIsoUnopPushout f f).op.symm (.refl _)
        (by simp [← op_comp]) (by simp [← op_comp]) (by simp)
  invFun h := Cofork.isColimitOfIsos _ (Fork.isLimitOfιEquivIsColimitUnop f.op f.op
    pushout.condition (by rw [← unop_comp, ← unop_comp, pushout.condition]) rfl h) _
      (pullbackIsoUnopPushout f f).symm (.refl _) (.refl _) (by simp) (by simp) (by simp)
  left_inv := by cat_disch
  right_inv := by cat_disch

set_option backward.defeqAttrib.useBackward true in
/-- `Cofork.ofπ f pullback.condition` is a colimit cocone in `Cᵒᵖ` if and only if
`Fork.ofι f.unop pushout.condition` in `C` is a limit cone. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant9f2ca4e7b216b0ca7ae50e715f94aba32fabfdb322710df994b477ce48b44832.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant9f2ca4e7b216b0ca7ae50e715f94aba32fabfdb322710df994b477ce48b44832.lean#L361).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ddbc4178bbe2811237aa69751ef4e4ffdad9bf1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
