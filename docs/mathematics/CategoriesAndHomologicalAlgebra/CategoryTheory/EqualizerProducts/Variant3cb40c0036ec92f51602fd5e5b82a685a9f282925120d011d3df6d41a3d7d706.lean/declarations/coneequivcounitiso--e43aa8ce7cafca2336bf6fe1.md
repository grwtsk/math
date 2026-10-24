# coneEquivCounitIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:52a28bbfd3f881ac63195e92c15d936c7cb3b94b73c9a6489a6814cd456c6237",
  "kind": "def",
  "lexical_name": "coneEquivCounitIso",
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
  "slug": "coneequivcounitiso--e43aa8ce7cafca2336bf6fe1",
  "source": {
    "blob": "a7b716b05c89c611e15e98ea4e8c1c6f0b6dcefe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 437,
    "line": 394,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variant3cb40c0036ec92f51602fd5e5b82a685a9f282925120d011d3df6d41a3d7d706.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e43aa8ce7cafca2336bf6fe1aeac83df7b2dd806bb28b12c28c6f59ee158df2f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variant3cb40c0036ec92f51602fd5e5b82a685a9f282925120d011d3df6d41a3d7d706.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:52a28bbfd3f881ac63195e92c15d936c7cb3b94b73c9a6489a6814cd456c6237`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 394–437.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def coneEquivCounitIso :
    coneEquivInverse F U ⋙ coneEquivFunctor F U ≅
      𝟭 (Limits.Cone (SheafConditionEqualizerProducts.diagram F U)) :=
  NatIso.ofComponents
    (fun c =>
      { hom :=
          { Hom := 𝟙 _
            w := by
              rintro ⟨_ | _⟩
              · -- Porting note : `ext` can't see `limit.hom_ext` applies here:
                -- See https://github.com/leanprover-community/mathlib4/issues/5229
                refine limit.hom_ext fun ⟨j⟩ => ?_
                dsimp [coneEquivInverse]
                simp only [Limits.Fan.mk_π_app, Category.id_comp, Limits.limit.lift_π]
              · -- Porting note : `ext` can't see `limit.hom_ext` applies here:
                -- See https://github.com/leanprover-community/mathlib4/issues/5229
                refine limit.hom_ext fun ⟨i, j⟩ => ?_
                dsimp [coneEquivInverse]
                simp only [Limits.Fan.mk_π_app, Category.id_comp, Limits.limit.lift_π] }
        inv :=
          { Hom := 𝟙 _
            w := by
              rintro ⟨_ | _⟩
              · -- Porting note : `ext` can't see `limit.hom_ext` applies here:
                -- See https://github.com/leanprover-community/mathlib4/issues/5229
                refine limit.hom_ext fun ⟨j⟩ => ?_
                dsimp [coneEquivInverse]
                simp only [Limits.Fan.mk_π_app, Category.id_comp, Limits.limit.lift_π]
              · -- Porting note : `ext` can't see `limit.hom_ext` applies here:
                -- See https://github.com/leanprover-community/mathlib4/issues/5229
                refine limit.hom_ext fun ⟨i, j⟩ => ?_
                dsimp [coneEquivInverse]
                simp only [Limits.Fan.mk_π_app, Category.id_comp, Limits.limit.lift_π] } })
    fun {c d} f => by
    ext
    dsimp
    simp only [Category.comp_id, Category.id_comp]
set_option linter.uppercaseLean3 false in
#align Top.presheaf.sheaf_condition_pairwise_intersections.cone_equiv_counit_iso TopCat.Presheaf.SheafConditionPairwiseIntersections.coneEquivCounitIso

/--
Cones over `diagram U ⋙ F` are the same as a cones over the usual sheaf condition equalizer diagram.
-/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variant3cb40c0036ec92f51602fd5e5b82a685a9f282925120d011d3df6d41a3d7d706.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variant3cb40c0036ec92f51602fd5e5b82a685a9f282925120d011d3df6d41a3d7d706.lean#L394).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a7b716b05c89c611e15e98ea4e8c1c6f0b6dcefe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
