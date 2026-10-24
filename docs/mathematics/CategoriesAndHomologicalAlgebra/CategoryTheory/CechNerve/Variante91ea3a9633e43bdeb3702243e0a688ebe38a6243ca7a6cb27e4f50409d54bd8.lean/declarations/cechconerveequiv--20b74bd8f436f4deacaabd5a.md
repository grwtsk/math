# cechConerveEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:694e637806a66879eebbb1a04e3ee8fd475eb74ce14bf734049302cf9fdad8a3",
  "kind": "def",
  "lexical_name": "cechConerveEquiv",
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
  "slug": "cechconerveequiv--20b74bd8f436f4deacaabd5a",
  "source": {
    "blob": "6fd26c1f8b41781e53669fb9a991d6eb0d90039c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 331,
    "line": 300,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Variante91ea3a9633e43bdeb3702243e0a688ebe38a6243ca7a6cb27e4f50409d54bd8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:20b74bd8f436f4deacaabd5ad0bc54b191e45e709514fdc6b056869ca8891ac8",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Variante91ea3a9633e43bdeb3702243e0a688ebe38a6243ca7a6cb27e4f50409d54bd8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:694e637806a66879eebbb1a04e3ee8fd475eb74ce14bf734049302cf9fdad8a3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 300–331.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def cechConerveEquiv (F : Arrow C) (X : CosimplicialObject.Augmented C) :
    (F.augmentedCechConerve ⟶ X) ≃ (F ⟶ Augmented.toArrow.obj X) where
  toFun := equivalenceLeftToRight _ _
  invFun := equivalenceRightToLeft _ _
  left_inv := by
    intro A
    ext x : 2
    · rfl
    · refine WidePushout.hom_ext _ _ _ (fun j => ?_) ?_
      · dsimp
        simp only [Category.assoc, ← NatTrans.naturality A.right, Arrow.augmentedCechConerve_right,
          SimplexCategory.len_mk, Arrow.cechConerve_map, colimit.ι_desc,
          WidePushoutShape.mkCocone_ι_app, colimit.ι_desc_assoc]
        rfl
      · dsimp
        rw [colimit.ι_desc]
        exact congr_app A.w x
  right_inv := by
    intro A
    ext
    · rfl
    · dsimp
      rw [WidePushout.ι_desc]
      nth_rw 2 [← Category.comp_id A.right]
      congr 1
      convert! X.right.map_id _
      ext ⟨a, ha⟩
      simp

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
/-- The augmented Čech conerve construction is left adjoint to the `toArrow` functor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Variante91ea3a9633e43bdeb3702243e0a688ebe38a6243ca7a6cb27e4f50409d54bd8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Variante91ea3a9633e43bdeb3702243e0a688ebe38a6243ca7a6cb27e4f50409d54bd8.lean#L300).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6fd26c1f8b41781e53669fb9a991d6eb0d90039c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
