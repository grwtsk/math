# LaxMonoidalFunctor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:64ca9d3f3dfd008f10378046a0158f07c774695122105561b15896bc39aa3e7f",
  "kind": "structure",
  "lexical_name": "LaxMonoidalFunctor",
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
  "slug": "laxmonoidalfunctor--b395cd1311fb02d41f4c156b",
  "source": {
    "blob": "411c31fecbf3bc3d24ea318eaa0497586c23868d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 75,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant8c5557279e209c41a6583a2509b94ef718629899157c09a693258b5fda1632fc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b395cd1311fb02d41f4c156b28129b3b228990a060162d5584ca9abf67946559",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant8c5557279e209c41a6583a2509b94ef718629899157c09a693258b5fda1632fc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:64ca9d3f3dfd008f10378046a0158f07c774695122105561b15896bc39aa3e7f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure LaxMonoidalFunctor extends C ⥤ D where
  /-- unit morphism -/
  ε : 𝟙_ D ⟶ obj (𝟙_ C)
  /-- tensorator -/
  μ : ∀ X Y : C, obj X ⊗ obj Y ⟶ obj (X ⊗ Y)
  μ_natural :
    ∀ {X Y X' Y' : C} (f : X ⟶ Y) (g : X' ⟶ Y'),
      (map f ⊗ map g) ≫ μ Y Y' = μ X X' ≫ map (f ⊗ g) := by
    aesop_cat
  /-- associativity of the tensorator -/
  associativity :
    ∀ X Y Z : C,
      (μ X Y ⊗ 𝟙 (obj Z)) ≫ μ (X ⊗ Y) Z ≫ map (α_ X Y Z).hom =
        (α_ (obj X) (obj Y) (obj Z)).hom ≫ (𝟙 (obj X) ⊗ μ Y Z) ≫ μ X (Y ⊗ Z) := by
    aesop_cat
  -- unitality
  left_unitality : ∀ X : C, (λ_ (obj X)).hom = (ε ⊗ 𝟙 (obj X)) ≫ μ (𝟙_ C) X ≫ map (λ_ X).hom :=
    by aesop_cat
  right_unitality : ∀ X : C, (ρ_ (obj X)).hom = (𝟙 (obj X) ⊗ ε) ≫ μ X (𝟙_ C) ≫ map (ρ_ X).hom :=
    by aesop_cat
#align category_theory.lax_monoidal_functor CategoryTheory.LaxMonoidalFunctor

-- Porting note: todo: remove this configuration and use the default configuration.
-- We keep this to be consistent with Lean 3.
-- See also `initialize_simps_projections MonoidalFunctor` below.
-- This may require waiting on https://github.com/leanprover-community/mathlib4/pull/2936
initialize_simps_projections LaxMonoidalFunctor (+toFunctor, -obj, -map)

--Porting note: was `[simp, reassoc.1]`
attribute [reassoc (attr := simp)] LaxMonoidalFunctor.μ_natural

attribute [simp] LaxMonoidalFunctor.left_unitality

attribute [simp] LaxMonoidalFunctor.right_unitality

--Porting note: was `[simp, reassoc.1]`
attribute [reassoc (attr := simp)] LaxMonoidalFunctor.associativity

-- When `rewrite_search` lands, add @[search] attributes to
-- LaxMonoidalFunctor.μ_natural LaxMonoidalFunctor.left_unitality
-- LaxMonoidalFunctor.right_unitality LaxMonoidalFunctor.associativity
section

variable {C D}

--Porting note: was `[simp, reassoc.1]`
@[reassoc (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant8c5557279e209c41a6583a2509b94ef718629899157c09a693258b5fda1632fc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant8c5557279e209c41a6583a2509b94ef718629899157c09a693258b5fda1632fc.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `411c31fecbf3bc3d24ea318eaa0497586c23868d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
