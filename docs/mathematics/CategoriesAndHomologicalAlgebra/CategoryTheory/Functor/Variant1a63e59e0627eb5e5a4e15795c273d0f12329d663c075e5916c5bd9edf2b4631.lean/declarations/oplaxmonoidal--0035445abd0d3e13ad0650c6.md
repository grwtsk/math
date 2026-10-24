# OplaxMonoidal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:40e8aae98f7073323e516931c7e61e224f8fc2709e3ddb8881aef7fea7e096bc",
  "kind": "class",
  "lexical_name": "OplaxMonoidal",
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
  "slug": "oplaxmonoidal--0035445abd0d3e13ad0650c6",
  "source": {
    "blob": "795cfcd62b99acf8328fe29e452bfb809f75b774",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 295,
    "line": 251,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant1a63e59e0627eb5e5a4e15795c273d0f12329d663c075e5916c5bd9edf2b4631.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0035445abd0d3e13ad0650c6ca39cec1f70dd83af6af2484c1ce49f0347d2633",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant1a63e59e0627eb5e5a4e15795c273d0f12329d663c075e5916c5bd9edf2b4631.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:40e8aae98f7073323e516931c7e61e224f8fc2709e3ddb8881aef7fea7e096bc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 251–295.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class OplaxMonoidal (F : C ⥤ D) where
  /-- the counit morphism of a lax monoidal functor -/
  η (F) : F.obj (𝟙_ C) ⟶ 𝟙_ D
  /-- the cotensorator of an oplax monoidal functor -/
  δ (F) : ∀ X Y : C, F.obj (X ⊗ Y) ⟶ F.obj X ⊗ F.obj Y
  δ_natural_left (F) :
    ∀ {X Y : C} (f : X ⟶ Y) (X' : C),
      δ X X' ≫ F.map f ▷ F.obj X' = F.map (f ▷ X') ≫ δ Y X' := by
    cat_disch
  δ_natural_right (F) :
    ∀ {X Y : C} (X' : C) (f : X ⟶ Y),
      δ X' X ≫ F.obj X' ◁ F.map f = F.map (X' ◁ f) ≫ δ X' Y := by
    cat_disch
  /-- associativity of the tensorator -/
  oplax_associativity (F) :
    ∀ X Y Z : C,
      δ (X ⊗ Y) Z ≫ δ X Y ▷ F.obj Z ≫ (α_ (F.obj X) (F.obj Y) (F.obj Z)).hom =
        F.map (α_ X Y Z).hom ≫ δ X (Y ⊗ Z) ≫ F.obj X ◁ δ Y Z := by
    cat_disch
  -- unitality
  oplax_left_unitality (F) :
    ∀ X : C, (λ_ (F.obj X)).inv = F.map (λ_ X).inv ≫ δ (𝟙_ C) X ≫ η ▷ F.obj X := by
      cat_disch
  oplax_right_unitality (F) :
    ∀ X : C, (ρ_ (F.obj X)).inv = F.map (ρ_ X).inv ≫ δ X (𝟙_ C) ≫ F.obj X ◁ η := by
      cat_disch

namespace OplaxMonoidal

attribute [reassoc (attr := simp)] δ_natural_left δ_natural_right

@[reassoc (attr := simp)]
alias associativity := oplax_associativity

@[simp, reassoc]
alias left_unitality := oplax_left_unitality

@[simp, reassoc]
alias right_unitality := oplax_right_unitality

section

variable (F : C ⥤ D) [F.OplaxMonoidal]

@[reassoc (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant1a63e59e0627eb5e5a4e15795c273d0f12329d663c075e5916c5bd9edf2b4631.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant1a63e59e0627eb5e5a4e15795c273d0f12329d663c075e5916c5bd9edf2b4631.lean#L251).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `795cfcd62b99acf8328fe29e452bfb809f75b774` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
