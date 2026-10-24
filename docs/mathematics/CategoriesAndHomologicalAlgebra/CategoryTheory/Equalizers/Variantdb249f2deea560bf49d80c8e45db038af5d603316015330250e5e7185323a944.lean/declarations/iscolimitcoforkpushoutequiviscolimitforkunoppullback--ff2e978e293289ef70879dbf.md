# isColimitCoforkPushoutEquivIsColimitForkUnopPullback

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bbb0676fdad2ae1b0fb1711ff810537f02ae988dcaeeebd0b2a5d79f3a8c88c3",
  "kind": "def",
  "lexical_name": "isColimitCoforkPushoutEquivIsColimitForkUnopPullback",
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
  "slug": "iscolimitcoforkpushoutequiviscolimitforkunoppullback--ff2e978e293289ef70879dbf",
  "source": {
    "blob": "e41aa53127f910c7374843af4ef9bab8b54a0e92",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 389,
    "line": 369,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantdb249f2deea560bf49d80c8e45db038af5d603316015330250e5e7185323a944.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ff2e978e293289ef70879dbf56c31f28d100517cad98cbb1df9412415d8c1f72",
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

Occurrence: `declaration:bbb0676fdad2ae1b0fb1711ff810537f02ae988dcaeeebd0b2a5d79f3a8c88c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 369–389.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isColimitCoforkPushoutEquivIsColimitForkUnopPullback
    {X Y : Cᵒᵖ} {f : X ⟶ Y} [HasPullback f f] :
    IsColimit (Cofork.ofπ f pullback.condition) ≃ IsLimit (Fork.ofι f.unop pushout.condition) where
  toFun h := Fork.isLimitOfIsos _ (Cofork.isColimitOfπEquivIsLimitUnop f f pullback.condition
    (by simp only [← unop_comp, pullback.condition]) rfl h) _ (.refl _)
      (pullbackIsoOpPushout f f).unop.symm (.refl _)
        (by simp [← unop_comp]) (by simp [← unop_comp]) (by simp)
  invFun h :=
    Cofork.isColimitOfIsos _ (Fork.isLimitOfιEquivIsColimitOp f.unop f.unop pushout.condition
      (by rw [← op_comp, ← op_comp, pushout.condition]) rfl h) _
        (pullbackIsoOpPushout f f).symm (.refl _) (.refl _) (by simp) (by simp) (by simp)
  left_inv := by cat_disch
  right_inv := by cat_disch

end Cofork

namespace Fork

set_option backward.defeqAttrib.useBackward true in
/-- `Fork.ofι f pushout.condition` is a limit cone if and only if
`Cofork.ofπ f.op pullback.condition` in the opposite category is a colimit cocone. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantdb249f2deea560bf49d80c8e45db038af5d603316015330250e5e7185323a944.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantdb249f2deea560bf49d80c8e45db038af5d603316015330250e5e7185323a944.lean#L369).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e41aa53127f910c7374843af4ef9bab8b54a0e92` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
