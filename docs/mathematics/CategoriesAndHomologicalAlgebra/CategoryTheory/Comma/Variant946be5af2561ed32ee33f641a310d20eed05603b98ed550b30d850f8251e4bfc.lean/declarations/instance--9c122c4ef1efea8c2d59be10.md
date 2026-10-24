# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a2d341bf185851f01cbbc899e38d5dcb01c4cdb33465dfcd4ad75d714ffb513c",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--9c122c4ef1efea8c2d59be10",
  "source": {
    "blob": "db9ed52d4d29a42135447569175abbeee29b38e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 66,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant946be5af2561ed32ee33f641a310d20eed05603b98ed550b30d850f8251e4bfc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9c122c4ef1efea8c2d59be107bbd18696a405f8650ae397ee34c9fea47db788c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant946be5af2561ed32ee33f641a310d20eed05603b98ed550b30d850f8251e4bfc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a2d341bf185851f01cbbc899e38d5dcb01c4cdb33465dfcd4ad75d714ffb513c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : AddCommGroup (u ⟶ v) where
  add_assoc _ _ _ := by ext <;> simp [add_assoc]
  zero_add _ := by cat_disch
  add_zero _ := by cat_disch
  add_comm _ _ := by ext <;> simp [add_comm]
  neg_add_cancel _ := by cat_disch
  sub_eq_add_neg _ _ := by ext <;> simp [sub_eq_add_neg]
  nsmul n α := CommaMorphism.mk (n • α.left) (n • α.right)
    (by simp [Functor.map_nsmul, Preadditive.comp_nsmul, Preadditive.nsmul_comp])
  zsmul n α := CommaMorphism.mk (n • α.left) (n • α.right)
    (by simp [Functor.map_zsmul, Preadditive.comp_zsmul, Preadditive.zsmul_comp])
  nsmul_zero := by simp_rw [HSMul.hSMul, SMul.smul]; cat_disch
  nsmul_succ _ _ := by simp_rw [HSMul.hSMul, SMul.smul]; ext <;> dsimp <;> simp [add_nsmul]
  zsmul_zero' := by simp_rw [HSMul.hSMul, SMul.smul]; cat_disch
  zsmul_succ' _ _ := by simp_rw [HSMul.hSMul, SMul.smul]; ext <;> dsimp <;> simp [add_zsmul]
  zsmul_neg' _ _ := by
    simp_rw [HSMul.hSMul, SMul.smul]
    ext <;> dsimp <;> simp [add_nsmul, add_zsmul]

/-- If we have additive functors `L : A ⥤ T` and `R : B ⥤ T` between preadditive categories,
then the category `Comma L R` is preadditive.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant946be5af2561ed32ee33f641a310d20eed05603b98ed550b30d850f8251e4bfc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant946be5af2561ed32ee33f641a310d20eed05603b98ed550b30d850f8251e4bfc.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db9ed52d4d29a42135447569175abbeee29b38e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
