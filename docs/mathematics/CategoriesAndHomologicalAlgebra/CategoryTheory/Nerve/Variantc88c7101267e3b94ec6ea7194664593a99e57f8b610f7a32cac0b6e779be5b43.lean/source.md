# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Nerve.Variantc88c7101267e3b94ec6ea7194664593a99e57f8b610f7a32cac0b6e779be5b43

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2c223b9eebe87c961e5231ceb9a22b26db0585e9` · SHA-256 `26fea15c45e4473d527109da336f66ad13f564ba357c9fdf6e6bfd3b31585716`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Nerve.Varianta7dd40ae50b4dee0dcfd224ba87b82d7886419ef4f7a8682a417d381a3964597","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a7dd40ae50b4dee0dcfd224ba87b82d7886419ef4f7a8682a417d381a3964597","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Nerve.Varianta7dd40ae50b4dee0dcfd224ba87b82d7886419ef4f7a8682a417d381a3964597","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"a7dd40ae50b4dee0dcfd224ba87b82d7886419ef4f7a8682a417d381a3964597","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/AlgebraicTopology/SimplicialSet/Nerve.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.AlgebraicTopology.SimplicialSet.Basic
import Mathlib.CategoryTheory.ComposableArrows

/-!

# The nerve of a category

This file provides the definition of the nerve of a category `C`,
which is a simplicial set `nerve C` (see [goerss-jardine-2009], Example I.1.4).
By definition, the type of `n`-simplices of `nerve C` is `ComposableArrows C n`,
which is the category `Fin (n + 1) ⥤ C`.

## References
* [Paul G. Goerss, John F. Jardine, *Simplicial Homotopy Theory*][goerss-jardine-2009]

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Nerve.Varianta7dd40ae50b4dee0dcfd224ba87b82d7886419ef4f7a8682a417d381a3964597

open CategoryTheory.Category Simplicial

universe v u

namespace CategoryTheory

/-- The nerve of a category -/
@[simps]
def nerve (C : Type u) [Category.{v} C] : SSet.{max u v} where
  obj Δ := ComposableArrows C (Δ.unop.len)
  map f x := x.whiskerLeft (SimplexCategory.toCat.map f.unop)
  -- `aesop` can prove these but is slow, help it out:
  map_id _ := rfl
  map_comp _ _ := rfl

instance {C : Type*} [Category C] {Δ : SimplexCategoryᵒᵖ} : Category ((nerve C).obj Δ) :=
  (inferInstance : Category (ComposableArrows C (Δ.unop.len)))

/-- Given a functor `C ⥤ D`, we obtain a morphism `nerve C ⟶ nerve D` of simplicial sets. -/
@[simps]
def nerveMap {C D : Type u} [Category.{v} C] [Category.{v} D] (F : C ⥤ D) : nerve C ⟶ nerve D :=
  { app := fun _ => (F.mapComposableArrows _).obj }

/-- The nerve of a category, as a functor `Cat ⥤ SSet` -/
@[simps]
def nerveFunctor : Cat.{v, u} ⥤ SSet where
  obj C := nerve C
  map F := nerveMap F

/-- The 0-simplices of the nerve of a category are equivalent to the objects of the category. -/
def nerveEquiv (C : Type u) [Category.{v} C] : nerve C _⦋0⦌ ≃ C where
  toFun f := f.obj ⟨0, by omega⟩
  invFun f := (Functor.const _).obj f
  left_inv f := ComposableArrows.ext₀ rfl
  right_inv f := rfl

namespace nerve

variable {C : Type*} [Category C] {n : ℕ}

lemma δ₀_eq {x : nerve C _⦋n + 1⦌} : (nerve C).δ (0 : Fin (n + 2)) x = x.δ₀ := rfl

lemma σ₀_mk₀_eq (x : C) : (nerve C).σ (0 : Fin 1) (.mk₀ x) = .mk₁ (𝟙 x) :=
  ComposableArrows.ext₁ rfl rfl (by simp; rfl)

section

variable {X₀ X₁ X₂ : C} (f : X₀ ⟶ X₁) (g : X₁ ⟶ X₂)

theorem δ₂_mk₂_eq : (nerve C).δ 2 (ComposableArrows.mk₂ f g) = ComposableArrows.mk₁ f :=
  ComposableArrows.ext₁ rfl rfl (by simp; rfl)

theorem δ₀_mk₂_eq : (nerve C).δ 0 (ComposableArrows.mk₂ f g) = ComposableArrows.mk₁ g :=
  ComposableArrows.ext₁ rfl rfl (by simp; rfl)

theorem δ₁_mk₂_eq : (nerve C).δ 1 (ComposableArrows.mk₂ f g) = ComposableArrows.mk₁ (f ≫ g) :=
  ComposableArrows.ext₁ rfl rfl (by simp; rfl)

end

end nerve

end CategoryTheory
```
