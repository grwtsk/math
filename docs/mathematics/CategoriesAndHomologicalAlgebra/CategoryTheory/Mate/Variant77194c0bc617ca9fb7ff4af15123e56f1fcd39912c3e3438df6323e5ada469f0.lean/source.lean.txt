-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.MateEquiv.Variantceb86b7c8ac3c118c952eac1fe76bb5a9dececedf73df4fa14b81b2ae580e9cf","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ceb86b7c8ac3c118c952eac1fe76bb5a9dececedf73df4fa14b81b2ae580e9cf","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.MateEquiv.Variantceb86b7c8ac3c118c952eac1fe76bb5a9dececedf73df4fa14b81b2ae580e9cf","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"ceb86b7c8ac3c118c952eac1fe76bb5a9dececedf73df4fa14b81b2ae580e9cf","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Bicategory/Adjunction/Mate.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Yuma Mizuno. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yuma Mizuno
-/
import Mathlib.CategoryTheory.Bicategory.Adjunction.Basic
import Mathlib.CategoryTheory.HomCongr

/-!
# Mates in bicategories

This file establishes the bijection between the 2-cells

```
         l₁                  r₁
      c --→ d             c ←-- d
    g ↓  ↗  ↓ h         g ↓  ↘  ↓ h
      e --→ f             e ←-- f
         l₂                  r₂
```

where `l₁ ⊣ r₁` and `l₂ ⊣ r₂`. The corresponding natural transformations are called mates.

For the bicategory `Cat`, the definitions in this file are provided in
`Mathlib/CategoryTheory/Adjunction/Mates.lean`, where you can find more detailed documentation
about mates.

## Remarks

To be precise, the definitions in `Mathlib/CategoryTheory/Adjunction/Mates.lean` are universe
polymorphic, so they are not simple specializations of the definitions in this file.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.MateEquiv.Variantceb86b7c8ac3c118c952eac1fe76bb5a9dececedf73df4fa14b81b2ae580e9cf

universe w v u

namespace CategoryTheory

namespace Bicategory

open Bicategory

variable {B : Type u} [Bicategory.{w, v} B]

section mateEquiv

variable {c d e f : B} {g : c ⟶ e} {h : d ⟶ f} {l₁ : c ⟶ d} {r₁ : d ⟶ c} {l₂ : e ⟶ f} {r₂ : f ⟶ e}
variable (adj₁ : l₁ ⊣ r₁) (adj₂ : l₂ ⊣ r₂)

/-- Suppose we have a square of 1-morphisms (where the top and bottom are adjunctions `l₁ ⊣ r₁`
and `l₂ ⊣ r₂` respectively).

      c ↔ d
    g ↓   ↓ h
      e ↔ f

Then we have a bijection between natural transformations `g ≫ l₂ ⟶ l₁ ≫ h` and
`r₁ ≫ g ⟶ h ≫ r₂`. This can be seen as a bijection of the 2-cells:

         l₁                  r₁
      c --→ d             c ←-- d
    g ↓  ↗  ↓ h         g ↓  ↘  ↓ h
      e --→ f             e ←-- f
         L₂                  R₂

Note that if one of the transformations is an iso, it does not imply the other is an iso.
-/
@[simps]
def mateEquiv : (g ≫ l₂ ⟶ l₁ ≫ h) ≃ (r₁ ≫ g ⟶ h ≫ r₂) where
  toFun α   := 𝟙 _ ⊗≫ r₁ ◁ g ◁ adj₂.unit ⊗≫ r₁ ◁ α ▷ r₂ ⊗≫ adj₁.counit ▷ h ▷ r₂ ⊗≫ 𝟙 _
  invFun β  := 𝟙 _ ⊗≫ adj₁.unit ▷ g ▷ l₂ ⊗≫ l₁ ◁ β ▷ l₂ ⊗≫ l₁ ◁ h ◁ adj₂.counit ⊗≫ 𝟙 _
  left_inv α :=
    calc
      _ = 𝟙 _ ⊗≫ (adj₁.unit ▷ (g ≫ 𝟙 e) ≫ (l₁ ≫ r₁) ◁ g ◁ adj₂.unit) ▷ l₂ ⊗≫
            l₁ ◁ r₁ ◁ α ▷ r₂ ▷ l₂ ⊗≫
              l₁ ◁ (adj₁.counit ▷ h ▷ (r₂ ≫ l₂) ≫ (𝟙 d ≫ h) ◁ adj₂.counit) ⊗≫ 𝟙 _ := by
        bicategory
      _ = 𝟙 _ ⊗≫ g ◁ adj₂.unit ▷ l₂ ⊗≫
            (adj₁.unit ▷ (g ≫ l₂) ≫ (l₁ ≫ r₁) ◁ α) ▷ (r₂ ≫ l₂) ⊗≫
              l₁ ◁ (((r₁ ≫ l₁) ≫ h) ◁ adj₂.counit ≫ adj₁.counit ▷ h ▷ 𝟙 f) ⊗≫ 𝟙 _ := by
        rw [← whisker_exchange, ← whisker_exchange]
        bicategory
      _ = 𝟙 _ ⊗≫ g ◁ adj₂.unit ▷ l₂ ⊗≫ α ▷ r₂ ▷ l₂ ⊗≫
            leftZigzag adj₁.unit adj₁.counit ▷ h ▷ r₂ ▷ l₂ ⊗≫ l₁ ◁ h ◁ adj₂.counit ⊗≫ 𝟙 _ := by
        rw [← whisker_exchange, whisker_exchange _ adj₂.counit]
        bicategory
      _ = 𝟙 _ ⊗≫ g ◁ adj₂.unit ▷ l₂ ⊗≫ (α ▷ (r₂ ≫ l₂) ≫ (l₁ ≫ h) ◁ adj₂.counit) ⊗≫ 𝟙 _ := by
        rw [adj₁.left_triangle]
        bicategory
      _ = 𝟙 _ ⊗≫ g ◁ (leftZigzag adj₂.unit adj₂.counit) ⊗≫ α ⊗≫ 𝟙 _ := by
        rw [← whisker_exchange]
        bicategory
      _ = α := by
        rw [adj₂.left_triangle]
        bicategory
  right_inv β :=
    calc
      _ = 𝟙 _ ⊗≫ r₁ ◁ ((𝟙 c ≫ g) ◁ adj₂.unit ≫ adj₁.unit ▷ g ▷ (l₂ ≫ r₂)) ⊗≫
            r₁ ◁ l₁ ◁ β ▷ l₂ ▷ r₂ ⊗≫
              ((r₁ ≫ l₁) ◁ h ◁ adj₂.counit ≫ adj₁.counit ▷ (h ≫ 𝟙 f)) ▷ r₂ ⊗≫ 𝟙 _ := by
        bicategory
      _ = 𝟙 _ ⊗≫ r₁ ◁ (adj₁.unit ▷ g ▷ 𝟙 e ≫ ((l₁ ≫ r₁) ≫ g) ◁ adj₂.unit) ⊗≫
            ((r₁ ≫ l₁) ◁ β ≫ adj₁.counit ▷ (h ≫ r₂)) ▷ l₂ ▷ r₂ ⊗≫
              h ◁ adj₂.counit ▷ r₂ ⊗≫ 𝟙 _ := by
        rw [whisker_exchange, whisker_exchange]
        bicategory
      _ = 𝟙 _ ⊗≫ r₁ ◁ g ◁ adj₂.unit ⊗≫ rightZigzag adj₁.unit adj₁.counit ▷ g ▷ l₂ ▷ r₂ ⊗≫
            β ▷ l₂ ▷ r₂ ⊗≫ h ◁ adj₂.counit ▷ r₂ ⊗≫ 𝟙 _ := by
        rw [whisker_exchange, ← whisker_exchange _ adj₂.unit]
        bicategory
      _ = 𝟙 _ ⊗≫ ((r₁ ≫ g) ◁ adj₂.unit ≫ β ▷ (l₂ ≫ r₂)) ⊗≫ h ◁ adj₂.counit ▷ r₂ ⊗≫ 𝟙 _ := by
        rw [adj₁.right_triangle]
        bicategory
      _ = 𝟙 _ ⊗≫ β ⊗≫ h ◁ rightZigzag adj₂.unit adj₂.counit ⊗≫ 𝟙 _ := by
        rw [whisker_exchange]
        bicategory
      _ = β := by
        rw [adj₂.right_triangle]
        bicategory

end mateEquiv

section mateEquivVComp

variable {a b c d e f : B} {g₁ : a ⟶ c} {g₂ : c ⟶ e} {h₁ : b ⟶ d} {h₂ : d ⟶ f}
variable {l₁ : a ⟶ b} {r₁ : b ⟶ a} {l₂ : c ⟶ d} {r₂ : d ⟶ c} {l₃ : e ⟶ f} {r₃ : f ⟶ e}
variable (adj₁ : l₁ ⊣ r₁) (adj₂ : l₂ ⊣ r₂) (adj₃ : l₃ ⊣ r₃)

/-- Squares between left adjoints can be composed "vertically" by pasting. -/
def leftAdjointSquare.vcomp (α : g₁ ≫ l₂ ⟶ l₁ ≫ h₁) (β : g₂ ≫ l₃ ⟶ l₂ ≫ h₂) :
    (g₁ ≫ g₂) ≫ l₃ ⟶ l₁ ≫ (h₁ ≫ h₂) :=
  (α_ _ _ _).hom ≫ g₁ ◁ β ≫ (α_ _ _ _).inv ≫ α ▷ h₂ ≫ (α_ _ _ _).hom

/-- Squares between right adjoints can be composed "vertically" by pasting. -/
def rightAdjointSquare.vcomp (α : r₁ ≫ g₁ ⟶ h₁ ≫ r₂) (β : r₂ ≫ g₂ ⟶ h₂ ≫ r₃) :
    r₁ ≫ (g₁ ≫ g₂) ⟶ (h₁ ≫ h₂) ≫ r₃ :=
  (α_ _ _ _).inv ≫ α ▷ g₂ ≫ (α_ _ _ _).hom ≫ h₁ ◁ β ≫ (α_ _ _ _).inv

/-- The mates equivalence commutes with vertical composition. -/
theorem mateEquiv_vcomp (α : g₁ ≫ l₂ ⟶ l₁ ≫ h₁) (β : g₂ ≫ l₃ ⟶ l₂ ≫ h₂) :
    mateEquiv adj₁ adj₃ (leftAdjointSquare.vcomp α β) =
      rightAdjointSquare.vcomp (mateEquiv adj₁ adj₂ α) (mateEquiv adj₂ adj₃ β) := by
  dsimp only [leftAdjointSquare.vcomp, mateEquiv_apply, rightAdjointSquare.vcomp]
  symm
  calc
    _ = 𝟙 _ ⊗≫ r₁ ◁ g₁ ◁ adj₂.unit ▷ g₂ ⊗≫ r₁ ◁ α ▷ r₂ ▷ g₂ ⊗≫
          ((adj₁.counit ▷ (h₁ ≫ r₂ ≫ g₂ ≫ 𝟙 e)) ≫ 𝟙 b ◁ (h₁ ◁ r₂ ◁ g₂ ◁ adj₃.unit)) ⊗≫
            h₁ ◁ r₂ ◁ β ▷ r₃ ⊗≫ h₁ ◁ adj₂.counit ▷ h₂ ▷ r₃ ⊗≫ 𝟙 _ := by
      bicategory
    _ = 𝟙 _ ⊗≫ r₁ ◁ g₁ ◁ adj₂.unit ▷ g₂ ⊗≫
          (r₁ ◁ (α ▷ (r₂ ≫ g₂ ≫ 𝟙 e) ≫ (l₁ ≫ h₁) ◁ r₂ ◁ g₂ ◁ adj₃.unit)) ⊗≫
            ((adj₁.counit ▷ (h₁ ≫ r₂) ▷ (g₂ ≫ l₃) ≫ (𝟙 b ≫ h₁ ≫ r₂) ◁ β) ▷ r₃) ⊗≫
              h₁ ◁ adj₂.counit ▷ h₂ ▷ r₃ ⊗≫ 𝟙 _ := by
      rw [← whisker_exchange]
      bicategory
    _ = 𝟙 _ ⊗≫ r₁ ◁ g₁ ◁ (adj₂.unit ▷ (g₂ ≫ 𝟙 e) ≫ (l₂ ≫ r₂) ◁ g₂ ◁ adj₃.unit) ⊗≫
          (r₁ ◁ (α ▷ (r₂ ≫ g₂ ≫ l₃) ≫ (l₁ ≫ h₁) ◁ r₂ ◁ β) ▷ r₃) ⊗≫
            (adj₁.counit ▷ h₁ ▷ (r₂ ≫ l₂) ≫ (𝟙 b ≫ h₁) ◁ adj₂.counit) ▷ h₂ ▷ r₃ ⊗≫ 𝟙 _ := by
      rw [← whisker_exchange, ← whisker_exchange]
      bicategory
    _ = 𝟙 _ ⊗≫ r₁ ◁ g₁ ◁ g₂ ◁ adj₃.unit ⊗≫
          r₁ ◁ g₁ ◁ (adj₂.unit ▷ (g₂ ≫ l₃) ≫ (l₂ ≫ r₂) ◁ β) ▷ r₃ ⊗≫
            r₁ ◁ (α ▷ (r₂ ≫ l₂) ≫ (l₁ ≫ h₁) ◁ adj₂.counit) ▷ h₂ ▷ r₃ ⊗≫
              adj₁.counit ▷ h₁ ▷ h₂ ▷ r₃ ⊗≫ 𝟙 _ := by
      rw [← whisker_exchange, ← whisker_exchange, ← whisker_exchange]
      bicategory
    _ = 𝟙 _ ⊗≫ r₁ ◁ g₁ ◁ g₂ ◁ adj₃.unit ⊗≫ r₁ ◁ g₁ ◁ β ▷ r₃ ⊗≫
          ((r₁ ≫ g₁) ◁ leftZigzag adj₂.unit adj₂.counit ▷ (h₂ ≫ r₃)) ⊗≫
            r₁ ◁ α ▷ h₂ ▷ r₃ ⊗≫ adj₁.counit ▷ h₁ ▷ h₂ ▷ r₃ ⊗≫ 𝟙 _ := by
      rw [← whisker_exchange, ← whisker_exchange]
      bicategory
    _ = _ := by
      rw [adj₂.left_triangle]
      bicategory

end mateEquivVComp

section mateEquivHComp

variable {a : B} {b : B} {c : B} {d : B} {e : B} {f : B}
variable {g : a ⟶ d} {h : b ⟶ e} {k : c ⟶ f}
variable {l₁ : a ⟶ b} {r₁ : b ⟶ a} {l₂ : d ⟶ e} {r₂ : e ⟶ d}
variable {l₃ : b ⟶ c} {r₃ : c ⟶ b} {l₄ : e ⟶ f} {r₄ : f ⟶ e}
variable (adj₁ : l₁ ⊣ r₁) (adj₂ : l₂ ⊣ r₂) (adj₃ : l₃ ⊣ r₃) (adj₄ : l₄ ⊣ r₄)

/-- Squares between left adjoints can be composed "horizontally" by pasting. -/
def leftAdjointSquare.hcomp (α : g ≫ l₂ ⟶ l₁ ≫ h) (β : h ≫ l₄ ⟶ l₃ ≫ k) :
    g ≫ (l₂ ≫ l₄) ⟶ (l₁ ≫ l₃) ≫ k :=
  (α_ _ _ _).inv ≫ α ▷ l₄ ≫ (α_ _ _ _).hom ≫ l₁ ◁ β ≫ (α_ _ _ _).inv

/-- Squares between right adjoints can be composed "horizontally" by pasting. -/
def rightAdjointSquare.hcomp (α : r₁ ≫ g ⟶ h ≫ r₂) (β : r₃ ≫ h ⟶ k ≫ r₄) :
    (r₃ ≫ r₁) ≫ g ⟶ k ≫ (r₄ ≫ r₂) :=
  (α_ _ _ _).hom ≫ r₃ ◁ α ≫ (α_ _ _ _).inv ≫ β ▷ r₂ ≫ (α_ _ _ _).hom

/-- The mates equivalence commutes with horizontal composition of squares. -/
theorem mateEquiv_hcomp (α : g ≫ l₂ ⟶ l₁ ≫ h) (β : h ≫ l₄ ⟶ l₃ ≫ k) :
    (mateEquiv (adj₁.comp adj₃) (adj₂.comp adj₄)) (leftAdjointSquare.hcomp α β) =
      rightAdjointSquare.hcomp (mateEquiv adj₁ adj₂ α) (mateEquiv adj₃ adj₄ β) := by
  dsimp [mateEquiv, leftAdjointSquare.hcomp, rightAdjointSquare.hcomp]
  calc
    _ = 𝟙 _ ⊗≫ r₃ ◁ r₁ ◁ g ◁ adj₂.unit ⊗≫
          r₃ ◁ r₁ ◁ ((g ≫ l₂) ◁ adj₄.unit ≫ α ▷ (l₄ ≫ r₄)) ▷ r₂ ⊗≫
            r₃ ◁ ((r₁ ≫ l₁) ◁ β ≫ adj₁.counit ▷ (l₃ ≫ k)) ▷ r₄ ▷ r₂ ⊗≫
              adj₃.counit ▷ k ▷ r₄ ▷ r₂ ⊗≫ 𝟙 _ := by
      bicategory
    _ = 𝟙 _ ⊗≫ r₃ ◁ r₁ ◁ g ◁ adj₂.unit ⊗≫ r₃ ◁ r₁ ◁ α ▷ r₂ ⊗≫
          r₃ ◁ ((r₁ ≫ l₁) ◁ h ◁ adj₄.unit ≫ adj₁.counit ▷ (h ≫ l₄ ≫ r₄)) ▷ r₂ ⊗≫
            r₃ ◁ β ▷ r₄ ▷ r₂ ⊗≫ adj₃.counit ▷ k ▷ r₄ ▷ r₂ ⊗≫ 𝟙 _ := by
      rw [whisker_exchange, whisker_exchange]
      bicategory
    _ = _ := by
      rw [whisker_exchange]
      bicategory

end mateEquivHComp

section mateEquivSquareComp

variable {a b c d e f x y z : B}
variable {g₁ : a ⟶ d} {h₁ : b ⟶ e} {k₁ : c ⟶ f} {g₂ : d ⟶ x} {h₂ : e ⟶ y} {k₂ : f ⟶ z}
variable {l₁ : a ⟶ b} {r₁ : b ⟶ a} {l₂ : b ⟶ c} {r₂ : c ⟶ b} {l₃ : d ⟶ e} {r₃ : e ⟶ d}
variable {l₄ : e ⟶ f} {r₄ : f ⟶ e} {l₅ : x ⟶ y} {r₅ : y ⟶ x} {l₆ : y ⟶ z} {r₆ : z ⟶ y}
variable (adj₁ : l₁ ⊣ r₁) (adj₂ : l₂ ⊣ r₂) (adj₃ : l₃ ⊣ r₃)
variable (adj₄ : l₄ ⊣ r₄) (adj₅ : l₅ ⊣ r₅) (adj₆ : l₆ ⊣ r₆)

section leftAdjointSquare.comp

variable (α : g₁ ≫ l₃ ⟶ l₁ ≫ h₁) (β : h₁ ≫ l₄ ⟶ l₂ ≫ k₁)
variable (γ : g₂ ≫ l₅ ⟶ l₃ ≫ h₂) (δ : h₂ ≫ l₆ ⟶ l₄ ≫ k₂)

/-- Squares of squares between left adjoints can be composed by iterating vertical and horizontal
composition.
-/
def leftAdjointSquare.comp :
    ((g₁ ≫ g₂) ≫ (l₅ ≫ l₆)) ⟶ ((l₁ ≫ l₂) ≫ (k₁ ≫ k₂)) :=
  vcomp (hcomp α β) (hcomp γ δ)

theorem leftAdjointSquare.comp_vhcomp : comp α β γ δ = vcomp (hcomp α β) (hcomp γ δ) := rfl

/-- Horizontal and vertical composition of squares commutes. -/
theorem leftAdjointSquare.comp_hvcomp :
    comp α β γ δ = hcomp (vcomp α γ) (vcomp β δ) := by
  dsimp only [comp, vcomp, hcomp]
  calc
    _ = 𝟙 _ ⊗≫ g₁ ◁ γ ▷ l₆ ⊗≫ ((g₁ ≫ l₃) ◁ δ ≫ α ▷ (l₄ ≫ k₂)) ⊗≫ l₁ ◁ β ▷ k₂ ⊗≫ 𝟙 _ := by
      bicategory
    _ = _ := by
      rw [whisker_exchange]
      bicategory

end leftAdjointSquare.comp

section rightAdjointSquare.comp

variable (α : r₁ ≫ g₁ ⟶ h₁ ≫ r₃) (β : r₂ ≫ h₁ ⟶ k₁ ≫ r₄)
variable (γ : r₃ ≫ g₂ ⟶ h₂ ≫ r₅) (δ : r₄ ≫ h₂ ⟶ k₂ ≫ r₆)

/-- Squares of squares between right adjoints can be composed by iterating vertical and horizontal
composition.
-/
def rightAdjointSquare.comp :
    ((r₂ ≫ r₁) ≫ (g₁ ≫ g₂) ⟶ (k₁ ≫ k₂) ≫ (r₆ ≫ r₅)) :=
  vcomp (hcomp α β) (hcomp γ δ)

theorem rightAdjointSquare.comp_vhcomp : comp α β γ δ = vcomp (hcomp α β) (hcomp γ δ) := rfl

/-- Horizontal and vertical composition of squares commutes. -/
theorem rightAdjointSquare.comp_hvcomp :
    comp α β γ δ = hcomp (vcomp α γ) (vcomp β δ) := by
  dsimp only [comp, vcomp, hcomp]
  calc
    _ = 𝟙 _ ⊗≫ r₂ ◁ α ▷ g₂ ⊗≫ (β ▷ (r₃ ≫ g₂) ≫ (k₁ ≫ r₄) ◁ γ) ⊗≫ k₁ ◁ δ ▷ r₅ ⊗≫ 𝟙 _ := by
      bicategory
    _ = _ := by
      rw [← whisker_exchange]
      bicategory

end rightAdjointSquare.comp

/-- The mates equivalence commutes with composition of squares of squares. These results form the
basis for an isomorphism of double categories to be proven later.
-/
theorem mateEquiv_square
    (α : g₁ ≫ l₃ ⟶ l₁ ≫ h₁) (β : h₁ ≫ l₄ ⟶ l₂ ≫ k₁)
    (γ : g₂ ≫ l₅ ⟶ l₃ ≫ h₂) (δ : h₂ ≫ l₆ ⟶ l₄ ≫ k₂) :
    (mateEquiv (adj₁.comp adj₂) (adj₅.comp adj₆))
        (leftAdjointSquare.comp α β γ δ) =
      rightAdjointSquare.comp
        (mateEquiv adj₁ adj₃ α) (mateEquiv adj₂ adj₄ β)
        (mateEquiv adj₃ adj₅ γ) (mateEquiv adj₄ adj₆ δ) := by
  have vcomp :=
    mateEquiv_vcomp (adj₁.comp adj₂) (adj₃.comp adj₄) (adj₅.comp adj₆)
      (leftAdjointSquare.hcomp α β) (leftAdjointSquare.hcomp γ δ)
  have hcomp1 := mateEquiv_hcomp adj₁ adj₃ adj₂ adj₄ α β
  have hcomp2 := mateEquiv_hcomp adj₃ adj₅ adj₄ adj₆ γ δ
  rw [hcomp1, hcomp2] at vcomp
  exact vcomp

end mateEquivSquareComp

section conjugateEquiv

variable {c d : B}
variable {l₁ l₂ : c ⟶ d} {r₁ r₂ : d ⟶ c}
variable (adj₁ : l₁ ⊣ r₁) (adj₂ : l₂ ⊣ r₂)

/-- Given two adjunctions `l₁ ⊣ r₁` and `l₂ ⊣ r₂` both between objects `c`, `d`, there is a
bijection between 2-morphisms `l₂ ⟶ l₁` and 2-morphisms `r₁ ⟶ r₂`. This is
defined as a special case of `mateEquiv`, where the two "vertical" 1-morphisms are identities.
Corresponding 2-morphisms are called `conjugateEquiv`.

Furthermore, this bijection preserves (and reflects) isomorphisms, i.e. a 2-morphism is an iso
iff its image under the bijection is an iso.
-/
def conjugateEquiv : (l₂ ⟶ l₁) ≃ (r₁ ⟶ r₂) :=
  calc
    (l₂ ⟶ l₁) ≃ _ := (Iso.homCongr (λ_ l₂) (ρ_ l₁)).symm
    _ ≃ _ := mateEquiv adj₁ adj₂
    _ ≃ (r₁ ⟶ r₂) := Iso.homCongr (ρ_ r₁) (λ_ r₂)

theorem conjugateEquiv_apply (α : l₂ ⟶ l₁) :
    conjugateEquiv adj₁ adj₂ α =
      (ρ_ r₁).inv ≫ mateEquiv adj₁ adj₂ ((λ_ l₂).hom ≫ α ≫ (ρ_ l₁).inv) ≫ (λ_ r₂).hom := by
  rfl

theorem conjugateEquiv_apply' (α : l₂ ⟶ l₁) :
    conjugateEquiv adj₁ adj₂ α =
      (ρ_ _).inv ≫ r₁ ◁ adj₂.unit ≫ r₁ ◁ α ▷ r₂ ≫ (α_ _ _ _).inv ≫
        adj₁.counit ▷ r₂ ≫ (λ_ _).hom := by
  rw [conjugateEquiv_apply, mateEquiv_apply]
  bicategory

theorem conjugateEquiv_symm_apply (α : r₁ ⟶ r₂) :
    (conjugateEquiv adj₁ adj₂).symm α =
      (λ_ l₂).inv ≫ (mateEquiv adj₁ adj₂).symm ((ρ_ r₁).hom ≫ α ≫ (λ_ r₂).inv) ≫ (ρ_ l₁).hom := by
  rfl

theorem conjugateEquiv_symm_apply' (α : r₁ ⟶ r₂) :
    (conjugateEquiv adj₁ adj₂).symm α =
      (λ_ _).inv ≫ adj₁.unit ▷ l₂ ≫ (α_ _ _ _).hom ≫ l₁ ◁ α ▷ l₂ ≫
        l₁ ◁ adj₂.counit ≫ (ρ_ _).hom := by
  rw [conjugateEquiv_symm_apply, mateEquiv_symm_apply]
  bicategory

@[simp]
theorem conjugateEquiv_id : conjugateEquiv adj₁ adj₁ (𝟙 _) = 𝟙 _ := by
  rw [conjugateEquiv_apply, mateEquiv_apply]
  calc
    _ = 𝟙 _ ⊗≫ rightZigzag adj₁.unit adj₁.counit ⊗≫ 𝟙 _ := by
      bicategory
    _ = 𝟙 r₁ := by
      rw [adj₁.right_triangle]
      bicategory

@[simp]
theorem conjugateEquiv_symm_id : (conjugateEquiv adj₁ adj₁).symm (𝟙 _) = 𝟙 _ := by
  rw [Equiv.symm_apply_eq, conjugateEquiv_id]

theorem conjugateEquiv_adjunction_id {l r : c ⟶ c} (adj : l ⊣ r) (α : 𝟙 c ⟶ l) :
    (conjugateEquiv adj (Adjunction.id c) α) = (ρ_ _).inv ≫ r ◁ α ≫ adj.counit := by
  dsimp [conjugateEquiv, mateEquiv, Adjunction.id]
  bicategory

theorem conjugateEquiv_adjunction_id_symm {l r : c ⟶ c} (adj : l ⊣ r) (α : r ⟶ 𝟙 c) :
    (conjugateEquiv adj (Adjunction.id c)).symm α = adj.unit ≫ l ◁ α ≫ (ρ_ _).hom := by
  dsimp [conjugateEquiv, mateEquiv, Adjunction.id]
  bicategory

end conjugateEquiv

section ConjugateComposition
variable {c d : B}
variable {l₁ l₂ l₃ : c ⟶ d} {r₁ r₂ r₃ : d ⟶ c}
variable (adj₁ : l₁ ⊣ r₁) (adj₂ : l₂ ⊣ r₂) (adj₃ : l₃ ⊣ r₃)

@[simp]
theorem conjugateEquiv_comp (α : l₂ ⟶ l₁) (β : l₃ ⟶ l₂) :
    conjugateEquiv adj₁ adj₂ α ≫ conjugateEquiv adj₂ adj₃ β =
      conjugateEquiv adj₁ adj₃ (β ≫ α) := by
  simp only [conjugateEquiv_apply]
  calc
    _ = 𝟙 r₁ ⊗≫
          rightAdjointSquare.vcomp
            (mateEquiv adj₁ adj₂ ((λ_ _).hom ≫ α ≫ (ρ_ _).inv))
            (mateEquiv adj₂ adj₃ ((λ_ _).hom ≫ β ≫ (ρ_ _).inv)) ⊗≫ 𝟙 r₃ := by
      dsimp only [rightAdjointSquare.vcomp]
      bicategory
    _ = _ := by
      rw [← mateEquiv_vcomp]
      dsimp only [leftAdjointSquare.vcomp, mateEquiv_apply]
      bicategory

@[simp]
theorem conjugateEquiv_symm_comp (α : r₁ ⟶ r₂) (β : r₂ ⟶ r₃) :
    (conjugateEquiv adj₂ adj₃).symm β ≫ (conjugateEquiv adj₁ adj₂).symm α =
      (conjugateEquiv adj₁ adj₃).symm (α ≫ β) := by
  rw [Equiv.eq_symm_apply, ← conjugateEquiv_comp _ adj₂]
  simp only [Equiv.apply_symm_apply]

theorem conjugateEquiv_comm {α : l₂ ⟶ l₁} {β : l₁ ⟶ l₂} (βα : β ≫ α = 𝟙 _) :
    conjugateEquiv adj₁ adj₂ α ≫ conjugateEquiv adj₂ adj₁ β = 𝟙 _ := by
  rw [conjugateEquiv_comp, βα, conjugateEquiv_id]

theorem conjugateEquiv_symm_comm {α : r₁ ⟶ r₂} {β : r₂ ⟶ r₁} (αβ : α ≫ β = 𝟙 _) :
    (conjugateEquiv adj₂ adj₁).symm β ≫ (conjugateEquiv adj₁ adj₂).symm α = 𝟙 _ := by
  rw [conjugateEquiv_symm_comp, αβ, conjugateEquiv_symm_id]

end ConjugateComposition

section ConjugateIsomorphism

variable {c d : B}
variable {l₁ l₂ : c ⟶ d} {r₁ r₂ : d ⟶ c}
variable (adj₁ : l₁ ⊣ r₁) (adj₂ : l₂ ⊣ r₂)

/-- If `α` is an isomorphism between left adjoints, then its conjugate transformation is an
isomorphism. The converse is given in `conjugateEquiv_of_iso`.
-/
instance conjugateEquiv_iso (α : l₂ ⟶ l₁) [IsIso α] :
    IsIso (conjugateEquiv adj₁ adj₂ α) :=
  ⟨⟨conjugateEquiv adj₂ adj₁ (inv α),
      ⟨conjugateEquiv_comm _ _ (by simp), conjugateEquiv_comm _ _ (by simp)⟩⟩⟩

/-- If `α` is an isomorphism between right adjoints, then its conjugate transformation is an
isomorphism. The converse is given in `conjugateEquiv_symm_of_iso`.
-/
instance conjugateEquiv_symm_iso (α : r₁ ⟶ r₂) [IsIso α] :
    IsIso ((conjugateEquiv adj₁ adj₂).symm α) :=
  ⟨⟨(conjugateEquiv adj₂ adj₁).symm (inv α),
      ⟨conjugateEquiv_symm_comm _ _ (by simp), conjugateEquiv_symm_comm _ _ (by simp)⟩⟩⟩

/-- If `α` is a natural transformation between left adjoints whose conjugate natural transformation
is an isomorphism, then `α` is an isomorphism. The converse is given in `Conjugate_iso`.
-/
theorem conjugateEquiv_of_iso (α : l₂ ⟶ l₁) [IsIso (conjugateEquiv adj₁ adj₂ α)] :
    IsIso α := by
  suffices IsIso ((conjugateEquiv adj₁ adj₂).symm (conjugateEquiv adj₁ adj₂ α))
    by simpa only [Equiv.symm_apply_apply] using this
  infer_instance

/--
If `α` is a natural transformation between right adjoints whose conjugate natural transformation is
an isomorphism, then `α` is an isomorphism. The converse is given in `conjugateEquiv_symm_iso`.
-/
theorem conjugateEquiv_symm_of_iso (α : r₁ ⟶ r₂)
    [IsIso ((conjugateEquiv adj₁ adj₂).symm α)] : IsIso α := by
  suffices IsIso ((conjugateEquiv adj₁ adj₂) ((conjugateEquiv adj₁ adj₂).symm α))
    by simpa only [Equiv.apply_symm_apply] using this
  infer_instance

/-- Thus conjugation defines an equivalence between natural isomorphisms. -/
@[simps]
def conjugateIsoEquiv : (l₂ ≅ l₁) ≃ (r₁ ≅ r₂) where
  toFun α :=
    { hom := conjugateEquiv adj₁ adj₂ α.hom
      inv := conjugateEquiv adj₂ adj₁ α.inv
      hom_inv_id := by
        rw [conjugateEquiv_comp, Iso.inv_hom_id, conjugateEquiv_id]
      inv_hom_id := by
        rw [conjugateEquiv_comp, Iso.hom_inv_id, conjugateEquiv_id] }
  invFun β :=
    { hom := (conjugateEquiv adj₁ adj₂).symm β.hom
      inv := (conjugateEquiv adj₂ adj₁).symm β.inv
      hom_inv_id := by
        rw [conjugateEquiv_symm_comp, Iso.inv_hom_id, conjugateEquiv_symm_id]
      inv_hom_id := by
        rw [conjugateEquiv_symm_comp, Iso.hom_inv_id, conjugateEquiv_symm_id] }
  left_inv := by
    intro α
    simp only [Equiv.symm_apply_apply]
  right_inv := by
    intro α
    simp only [Equiv.apply_symm_apply]

end ConjugateIsomorphism

section IteratedMateEquiv
variable {a b c d : B}
variable {f₁ : a ⟶ c} {u₁ : c ⟶ a} {f₂ : b ⟶ d} {u₂ : d ⟶ b}
variable {l₁ : a ⟶ b} {r₁ : b ⟶ a} {l₂ : c ⟶ d} {r₂ : d ⟶ c}
variable (adj₁ : l₁ ⊣ r₁) (adj₂ : l₂ ⊣ r₂) (adj₃ : f₁ ⊣ u₁) (adj₄ : f₂ ⊣ u₂)

/-- When all four morphisms in a square are left adjoints, the mates operation can be iterated:
         l₁                  r₁                  r₁
      c --→ d             c ←-- d             c ←-- d
   f₁ ↓  ↗  ↓  f₂      f₁ ↓  ↘  ↓ f₂       u₁ ↑  ↙  ↑ u₂
      a --→ b             a ←-- b             a ←-- b
         l₂                  r₂                  r₂
In this case the iterated mate equals the conjugate of the original 2-morphism and is thus an
isomorphism if and only if the original 2-morphism is. This explains why some Beck-Chevalley
2-morphisms are isomorphisms.
-/
theorem iterated_mateEquiv_conjugateEquiv (α : f₁ ≫ l₂ ⟶ l₁ ≫ f₂) :
    mateEquiv adj₄ adj₃ (mateEquiv adj₁ adj₂ α) =
      conjugateEquiv (adj₁.comp adj₄) (adj₃.comp adj₂) α := by
  dsimp [conjugateEquiv, mateEquiv, Adjunction.comp]
  bicategory

theorem iterated_mateEquiv_conjugateEquiv_symm (α : u₂ ≫ r₁ ⟶ r₂ ≫ u₁) :
    (mateEquiv adj₁ adj₂).symm ((mateEquiv adj₄ adj₃).symm α) =
      (conjugateEquiv (adj₁.comp adj₄) (adj₃.comp adj₂)).symm α := by
  rw [Equiv.eq_symm_apply, ← iterated_mateEquiv_conjugateEquiv]
  simp only [Equiv.apply_symm_apply]

end IteratedMateEquiv

section mateEquiv_conjugateEquiv_vcomp

variable {a b c d : B}
variable {g : a ⟶ c} {h : b ⟶ d}
variable {l₁ : a ⟶ b} {r₁ : b ⟶ a} {l₂ : c ⟶ d} {r₂ : d ⟶ c} {l₃ : c ⟶ d} {r₃ : d ⟶ c}
variable (adj₁ : l₁ ⊣ r₁) (adj₂ : l₂ ⊣ r₂) (adj₃ : l₃ ⊣ r₃)

/-- Composition of a squares between left adjoints with a conjugate square. -/
def leftAdjointSquareConjugate.vcomp (α : g ≫ l₂ ⟶ l₁ ≫ h) (β : l₃ ⟶ l₂) :
    g ≫ l₃ ⟶ l₁ ≫ h :=
   g ◁ β ≫ α

/-- Composition of a squares between right adjoints with a conjugate square. -/
def rightAdjointSquareConjugate.vcomp (α : r₁ ≫ g ⟶ h ≫ r₂) (β : r₂ ⟶ r₃) :
    r₁ ≫ g ⟶ h ≫ r₃ :=
  α ≫ h ◁ β

/-- The mates equivalence commutes with this composition, essentially by `mateEquiv_vcomp`. -/
theorem mateEquiv_conjugateEquiv_vcomp
    (α : g ≫ l₂ ⟶ l₁ ≫ h) (β : l₃ ⟶ l₂) :
    (mateEquiv adj₁ adj₃) (leftAdjointSquareConjugate.vcomp α β) =
      rightAdjointSquareConjugate.vcomp (mateEquiv adj₁ adj₂ α) (conjugateEquiv adj₂ adj₃ β) := by
  symm
  calc
    _ = 𝟙 _ ⊗≫
          rightAdjointSquare.vcomp
            (mateEquiv adj₁ adj₂ α)
            (mateEquiv adj₂ adj₃ ((λ_ l₃).hom ≫ β ≫ (ρ_ l₂).inv)) ⊗≫ 𝟙 _  := by
      dsimp only [conjugateEquiv_apply, rightAdjointSquareConjugate.vcomp,
        rightAdjointSquare.vcomp]
      bicategory
    _ = _ := by
      rw [← mateEquiv_vcomp]
      dsimp only [leftAdjointSquare.vcomp, mateEquiv_apply, leftAdjointSquareConjugate.vcomp]
      bicategory

end mateEquiv_conjugateEquiv_vcomp

section conjugateEquiv_mateEquiv_vcomp

variable {a b c d : B}
variable {g : a ⟶ c} {h : b ⟶ d}
variable {l₁ : a ⟶ b} {r₁ : b ⟶ a} {l₂ : a ⟶ b} {r₂ : b ⟶ a} {l₃ : c ⟶ d} {r₃ : d ⟶ c}
variable (adj₁ : l₁ ⊣ r₁) (adj₂ : l₂ ⊣ r₂) (adj₃ : l₃ ⊣ r₃)

/-- Composition of a conjugate square with a squares between left adjoints. -/
def leftAdjointConjugateSquare.vcomp (α : l₂ ⟶ l₁) (β : g ≫ l₃ ⟶ l₂ ≫ h) :
    g ≫ l₃ ⟶ l₁ ≫ h :=
  β ≫ α ▷ h

/-- Composition of a conjugate square with a squares between right adjoints. -/
def rightAdjointConjugateSquare.vcomp (α : r₁ ⟶ r₂) (β : r₂ ≫ g ⟶ h ≫ r₃) :
    r₁ ≫ g ⟶ h ≫ r₃ :=
  α ▷ g ≫ β

/-- The mates equivalence commutes with this composition, essentially by `mateEquiv_vcomp`. -/
theorem conjugateEquiv_mateEquiv_vcomp
    (α : l₂ ⟶ l₁) (β : g ≫ l₃ ⟶ l₂ ≫ h) :
    (mateEquiv adj₁ adj₃) (leftAdjointConjugateSquare.vcomp α β) =
      rightAdjointConjugateSquare.vcomp (conjugateEquiv adj₁ adj₂ α) (mateEquiv adj₂ adj₃ β) := by
  symm
  calc
    _ = 𝟙 _ ⊗≫
          rightAdjointSquare.vcomp
            (mateEquiv adj₁ adj₂ ((λ_ l₂).hom ≫ α ≫ (ρ_ l₁).inv))
            (mateEquiv adj₂ adj₃ β) ⊗≫ 𝟙 _ := by
      dsimp only [conjugateEquiv_apply, rightAdjointConjugateSquare.vcomp, rightAdjointSquare.vcomp]
      bicategory
    _ = _ := by
      rw [← mateEquiv_vcomp]
      dsimp only [leftAdjointSquare.vcomp, mateEquiv_apply, leftAdjointConjugateSquare.vcomp]
      bicategory

end conjugateEquiv_mateEquiv_vcomp

end Bicategory

end CategoryTheory
