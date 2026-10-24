# BraidedCategory

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:74bc90159599a8b8aa6a2e58f57957d624d532b90092c964ac63af57a7642505",
  "kind": "class",
  "lexical_name": "BraidedCategory",
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
  "slug": "braidedcategory--a94bc66ee2d24d64ce737a36",
  "source": {
    "blob": "4a0631752dafe480058d7a354143f5c5d9de8f53",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 55,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant3bf2453ef5c26a90f938eb1b276d073e6ae3b8751bfd67d10db025337b802a69.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a94bc66ee2d24d64ce737a36554fa2a94a0dea4fda79397fb8c8a31ca4a74ebf",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant3bf2453ef5c26a90f938eb1b276d073e6ae3b8751bfd67d10db025337b802a69.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:74bc90159599a8b8aa6a2e58f57957d624d532b90092c964ac63af57a7642505`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class BraidedCategory (C : Type u) [Category.{v} C] [MonoidalCategory.{v} C] where
  /-- The braiding natural isomorphism. -/
  braiding : ∀ X Y : C, X ⊗ Y ≅ Y ⊗ X
  braiding_naturality_right :
    ∀ (X : C) {Y Z : C} (f : Y ⟶ Z),
      X ◁ f ≫ (braiding X Z).hom = (braiding X Y).hom ≫ f ▷ X := by
    aesop_cat
  braiding_naturality_left :
    ∀ {X Y : C} (f : X ⟶ Y) (Z : C),
      f ▷ Z ≫ (braiding Y Z).hom = (braiding X Z).hom ≫ Z ◁ f := by
    aesop_cat
  /-- The first hexagon identity. -/
  hexagon_forward :
    ∀ X Y Z : C,
      (α_ X Y Z).hom ≫ (braiding X (Y ⊗ Z)).hom ≫ (α_ Y Z X).hom =
        ((braiding X Y).hom ▷ Z) ≫ (α_ Y X Z).hom ≫ (Y ◁ (braiding X Z).hom) := by
    aesop_cat
  /-- The second hexagon identity. -/
  hexagon_reverse :
    ∀ X Y Z : C,
      (α_ X Y Z).inv ≫ (braiding (X ⊗ Y) Z).hom ≫ (α_ Z X Y).inv =
        (X ◁ (braiding Y Z).hom) ≫ (α_ X Z Y).inv ≫ ((braiding X Z).hom ▷ Y) := by
    aesop_cat

attribute [reassoc (attr := simp)]
  BraidedCategory.braiding_naturality_left
  BraidedCategory.braiding_naturality_right
attribute [reassoc] BraidedCategory.hexagon_forward BraidedCategory.hexagon_reverse

open BraidedCategory

@[inherit_doc]
notation "β_" => BraidedCategory.braiding

namespace BraidedCategory

variable {C : Type u} [Category.{v} C] [MonoidalCategory.{v} C] [BraidedCategory.{v} C]

@[simp, reassoc]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant3bf2453ef5c26a90f938eb1b276d073e6ae3b8751bfd67d10db025337b802a69.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant3bf2453ef5c26a90f938eb1b276d073e6ae3b8751bfd67d10db025337b802a69.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a0631752dafe480058d7a354143f5c5d9de8f53` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
