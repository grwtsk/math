# BinaryFan.isLimitCompLeftIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9b58d896dabb510f5e71785fce4493f5523f5cba2d3b3a15f6c968ed926fec05",
  "kind": "def",
  "lexical_name": "BinaryFan.isLimitCompLeftIso",
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
  "slug": "binaryfan-islimitcompleftiso--165bb307acda3d17f0681dfc",
  "source": {
    "blob": "85a03d97b06acd4b187782cd2ef5193c4c5e88aa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 451,
    "line": 434,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant1cef7d72ea1971d516e429c0ee83aa697aa6555c80e07f9c08a19e524c645ac0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:165bb307acda3d17f0681dfccdb3cd24adf792c7a3897c97f7a8db94526545f5",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant1cef7d72ea1971d516e429c0ee83aa697aa6555c80e07f9c08a19e524c645ac0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9b58d896dabb510f5e71785fce4493f5523f5cba2d3b3a15f6c968ed926fec05`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 434–451.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def BinaryFan.isLimitCompLeftIso {X Y X' : C} (c : BinaryFan X Y) (f : X ⟶ X')
    [IsIso f] (h : IsLimit c) : IsLimit (BinaryFan.mk (c.fst ≫ f) c.snd) := by
  fapply BinaryFan.isLimitMk
  · exact fun s => h.lift (BinaryFan.mk (s.fst ≫ inv f) s.snd)
  · intro s -- Porting note: simp timed out here
    simp only [Category.comp_id,BinaryFan.π_app_left,IsIso.inv_hom_id,
      BinaryFan.mk_fst,IsLimit.fac_assoc,eq_self_iff_true,Category.assoc]
  · intro s -- Porting note: simp timed out here
    simp only [BinaryFan.π_app_right,BinaryFan.mk_snd,eq_self_iff_true,IsLimit.fac]
  · intro s m e₁ e₂
     -- Porting note: simpa timed out here also
    apply BinaryFan.IsLimit.hom_ext h
    · simpa only
      [BinaryFan.π_app_left,BinaryFan.mk_fst,Category.assoc,IsLimit.fac,IsIso.eq_comp_inv]
    · simpa only [BinaryFan.π_app_right,BinaryFan.mk_snd,IsLimit.fac]
#align category_theory.limits.binary_fan.is_limit_comp_left_iso CategoryTheory.Limits.BinaryFan.isLimitCompLeftIso

/-- If `Y' ≅ Y`, then `X x Y` also is the product of `X` and `Y'`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant1cef7d72ea1971d516e429c0ee83aa697aa6555c80e07f9c08a19e524c645ac0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant1cef7d72ea1971d516e429c0ee83aa697aa6555c80e07f9c08a19e524c645ac0.lean#L434).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `85a03d97b06acd4b187782cd2ef5193c4c5e88aa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
