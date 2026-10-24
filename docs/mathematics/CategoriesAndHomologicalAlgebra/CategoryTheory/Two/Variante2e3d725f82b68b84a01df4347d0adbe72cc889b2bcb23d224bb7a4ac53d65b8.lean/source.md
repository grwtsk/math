# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Two.Variante2e3d725f82b68b84a01df4347d0adbe72cc889b2bcb23d224bb7a4ac53d65b8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cd427840a3264634a54189f48ac9431f90af7c50` · SHA-256 `b085eb15ffe7c9ff5f4c666b8aaa236d206e00104b9e0dd4b835084eeca45c3d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Two.Variant01883406220c646d95a52a6206d51c4d6e4238aebc0ffba906e537d55a5df24f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"01883406220c646d95a52a6206d51c4d6e4238aebc0ffba906e537d55a5df24f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Two.Variant01883406220c646d95a52a6206d51c4d6e4238aebc0ffba906e537d55a5df24f","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"01883406220c646d95a52a6206d51c4d6e4238aebc0ffba906e537d55a5df24f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/ComposableArrows/Two.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
module

public import Mathlib.CategoryTheory.ComposableArrows.Basic

/-!
# API for compositions of two arrows

Given morphisms `f : i ⟶ j`, `g : j ⟶ k`, and `fg : i ⟶ k` in a category `C`
such that `f ≫ g = fg`, we define maps `twoδ₂Toδ₁ : mk₁ f ⟶ mk₁ fg` and
`twoδ₁Toδ₀ : mk₁ fg ⟶ mk₁ g` in the category `ComposableArrows C 1`.
The names are justified by the fact that `ComposableArrow.mk₂ f g`
can be thought of as a `2`-simplex in the simplicial set `nerve C`,
and its faces (numbered from `0` to `2`) are respectively `mk₁ g`,
`mk₁ fg` and `mk₁ f`.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Two.Variant01883406220c646d95a52a6206d51c4d6e4238aebc0ffba906e537d55a5df24f

@[expose] public section

namespace CategoryTheory

namespace ComposableArrows

section

variable {C : Type*} [Category* C]
  {i j k : C} (f : i ⟶ j) (g : j ⟶ k) (fg : i ⟶ k)

set_option backward.defeqAttrib.useBackward true in
/-- The morphism `mk₁ f ⟶ mk₁ fg` when `f ≫ g = fg` for some morphism `g`. -/
abbrev twoδ₂Toδ₁ (h : f ≫ g = fg := by cat_disch) :
    mk₁ f ⟶ mk₁ fg :=
  homMk₁ (𝟙 _) g

set_option backward.defeqAttrib.useBackward true in
/-- The morphism `mk₁ fg ⟶ mk₁ g` when `f ≫ g = fg` for some morphism `f`. -/
abbrev twoδ₁Toδ₀ (h : f ≫ g = fg := by cat_disch) :
    mk₁ fg ⟶ mk₁ g :=
  homMk₁ f (𝟙 _)

variable (h : f ≫ g = fg)

@[simp]
lemma twoδ₂Toδ₁_app_zero :
    (twoδ₂Toδ₁ f g fg h).app 0 = 𝟙 _ := rfl

@[simp]
lemma twoδ₂Toδ₁_app_one :
    (twoδ₂Toδ₁ f g fg h).app 1 = g := rfl

@[simp]
lemma twoδ₁Toδ₀_app_zero :
    (twoδ₁Toδ₀ f g fg h).app 0 = f := rfl

@[simp]
lemma twoδ₁Toδ₀_app_one :
    (twoδ₁Toδ₀ f g fg h).app 1 = 𝟙 _ := rfl

set_option backward.defeqAttrib.useBackward true in
instance [IsIso g] : IsIso (twoδ₂Toδ₁ f g fg h) := by
  rw [isIso_iff₁]
  constructor <;> dsimp <;> infer_instance

set_option backward.defeqAttrib.useBackward true in
instance [IsIso f] : IsIso (twoδ₁Toδ₀ f g fg h) := by
  rw [isIso_iff₁]
  constructor <;> dsimp <;> infer_instance

end

section

variable {ι : Type*} [Preorder ι] (i₀ i₁ i₂ : ι) (hi₀₁ : i₀ ≤ i₁) (hi₁₂ : i₁ ≤ i₂)

/-- Variant of `twoδ₁Toδ₀` for preorders. -/
abbrev twoδ₁Toδ₀' :
    mk₁ (homOfLE (hi₀₁.trans hi₁₂)) ⟶ mk₁ (homOfLE hi₁₂) :=
  twoδ₁Toδ₀ (homOfLE hi₀₁) _ _ rfl

/-- Variant of `twoδ₂Toδ₁` for preorders. -/
abbrev twoδ₂Toδ₁' :
     mk₁ (homOfLE hi₀₁) ⟶ mk₁ (homOfLE (hi₀₁.trans hi₁₂)) :=
  twoδ₂Toδ₁ _ (homOfLE hi₁₂) _ rfl

end

end ComposableArrows

end CategoryTheory
```
