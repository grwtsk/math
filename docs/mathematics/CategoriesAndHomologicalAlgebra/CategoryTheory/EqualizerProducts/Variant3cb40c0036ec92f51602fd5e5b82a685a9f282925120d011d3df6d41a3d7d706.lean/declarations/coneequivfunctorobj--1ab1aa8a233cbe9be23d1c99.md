# coneEquivFunctorObj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:21af57c5a3c95953f5393b33bc3d9015b9125b8081cdbd2259c5b51c420d23d8",
  "kind": "def",
  "lexical_name": "coneEquivFunctorObj",
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
  "slug": "coneequivfunctorobj--1ab1aa8a233cbe9be23d1c99",
  "source": {
    "blob": "a7b716b05c89c611e15e98ea4e8c1c6f0b6dcefe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 275,
    "line": 226,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variant3cb40c0036ec92f51602fd5e5b82a685a9f282925120d011d3df6d41a3d7d706.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1ab1aa8a233cbe9be23d1c99833825a876d5cd8d998dc35e40e9b4d0a4f2ed79",
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

Occurrence: `declaration:21af57c5a3c95953f5393b33bc3d9015b9125b8081cdbd2259c5b51c420d23d8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 226–275.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def coneEquivFunctorObj (c : Cone ((diagram U).op ⋙ F)) :
    Cone (SheafConditionEqualizerProducts.diagram F U) where
  pt := c.pt
  π :=
    { app := fun Z =>
        WalkingParallelPair.casesOn Z (Pi.lift fun i : ι => c.π.app (op (single i)))
          (Pi.lift fun b : ι × ι => c.π.app (op (pair b.1 b.2)))
      naturality := fun Y Z f => by
        cases Y <;> cases Z <;> cases f
        · -- Porting note : `ext` can't see `limit.hom_ext` applies here:
          -- See https://github.com/leanprover-community/mathlib4/issues/5229
          refine limit.hom_ext fun i => ?_
          dsimp
          simp only [limit.lift_π, Category.id_comp, Fan.mk_π_app, CategoryTheory.Functor.map_id,
            Category.assoc]
          dsimp
          simp only [limit.lift_π, Category.id_comp, Fan.mk_π_app]
        · -- Porting note : `ext` can't see `limit.hom_ext` applies here:
          -- See https://github.com/leanprover-community/mathlib4/issues/5229
          refine limit.hom_ext fun ⟨i, j⟩ => ?_
          dsimp [SheafConditionEqualizerProducts.leftRes]
          simp only [limit.lift_π, limit.lift_π_assoc, Category.id_comp, Fan.mk_π_app,
            Category.assoc]
          have h := c.π.naturality (Quiver.Hom.op (Hom.left i j))
          dsimp at h
          simpa using h
        · -- Porting note : `ext` can't see `limit.hom_ext` applies here:
          -- See https://github.com/leanprover-community/mathlib4/issues/5229
          refine limit.hom_ext fun ⟨i, j⟩ => ?_
          dsimp [SheafConditionEqualizerProducts.rightRes]
          simp only [limit.lift_π, limit.lift_π_assoc, Category.id_comp, Fan.mk_π_app,
            Category.assoc]
          have h := c.π.naturality (Quiver.Hom.op (Hom.right i j))
          dsimp at h
          simpa using h
        · -- Porting note : `ext` can't see `limit.hom_ext` applies here:
          -- See https://github.com/leanprover-community/mathlib4/issues/5229
          refine limit.hom_ext fun i => ?_
          dsimp
          simp only [limit.lift_π, Category.id_comp, Fan.mk_π_app, CategoryTheory.Functor.map_id,
            Category.assoc]
          dsimp
          simp only [limit.lift_π, Category.id_comp, Fan.mk_π_app] }
set_option linter.uppercaseLean3 false in
#align Top.presheaf.sheaf_condition_pairwise_intersections.cone_equiv_functor_obj TopCat.Presheaf.SheafConditionPairwiseIntersections.coneEquivFunctorObj

section

/-- Implementation of `SheafConditionPairwiseIntersections.coneEquiv`. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variant3cb40c0036ec92f51602fd5e5b82a685a9f282925120d011d3df6d41a3d7d706.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variant3cb40c0036ec92f51602fd5e5b82a685a9f282925120d011d3df6d41a3d7d706.lean#L226).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a7b716b05c89c611e15e98ea4e8c1c6f0b6dcefe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
