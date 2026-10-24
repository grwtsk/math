# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.HomCongr.Variant3968dfc2aea612ece777d9c4c496f43e053df30bffc611bfc7c78f24abe70cc7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `39debf5c21c5c773afd88282dd16b482bc5eb6ac` · SHA-256 `51d5303662a2e5a59827b3cbf120bbc848fdb416de53ded614c5542568c3a0f1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.HomCongr.Variant7e0bcb1c5677314f8ebcef30e11ff85261282017ae9ebc396a8ac36c8a1d104d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7e0bcb1c5677314f8ebcef30e11ff85261282017ae9ebc396a8ac36c8a1d104d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.HomCongr.Variant7e0bcb1c5677314f8ebcef30e11ff85261282017ae9ebc396a8ac36c8a1d104d","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"7e0bcb1c5677314f8ebcef30e11ff85261282017ae9ebc396a8ac36c8a1d104d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/HomCongr.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
import Mathlib.CategoryTheory.Iso

/-!
# Conjugate morphisms by isomorphisms

We define
`CategoryTheory.Iso.homCongr : (X ≅ X₁) → (Y ≅ Y₁) → (X ⟶ Y) ≃ (X₁ ⟶ Y₁)`,
cf. `Equiv.arrowCongr`,
and `CategoryTheory.Iso.isoCongr : (f : X₁ ≅ X₂) → (g : Y₁ ≅ Y₂) → (X₁ ≅ Y₁) ≃ (X₂ ≅ Y₂)`.

As corollaries, an isomorphism `α : X ≅ Y` defines
- a monoid isomorphism
  `CategoryTheory.Iso.conj : End X ≃* End Y` by `α.conj f = α.inv ≫ f ≫ α.hom`;
- a group isomorphism `CategoryTheory.Iso.conjAut : Aut X ≃* Aut Y` by
  `α.conjAut f = α.symm ≪≫ f ≪≫ α`
which can be found in  `CategoryTheory.Conj`.
-/



namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.HomCongr.Variant7e0bcb1c5677314f8ebcef30e11ff85261282017ae9ebc396a8ac36c8a1d104d

universe v u

namespace CategoryTheory

namespace Iso

variable {C : Type u} [Category.{v} C]

/-- If `X` is isomorphic to `X₁` and `Y` is isomorphic to `Y₁`, then
there is a natural bijection between `X ⟶ Y` and `X₁ ⟶ Y₁`. See also `Equiv.arrowCongr`. -/
@[simps]
def homCongr {X Y X₁ Y₁ : C} (α : X ≅ X₁) (β : Y ≅ Y₁) : (X ⟶ Y) ≃ (X₁ ⟶ Y₁) where
  toFun f := α.inv ≫ f ≫ β.hom
  invFun f := α.hom ≫ f ≫ β.inv
  left_inv f :=
    show α.hom ≫ (α.inv ≫ f ≫ β.hom) ≫ β.inv = f by
      rw [Category.assoc, Category.assoc, β.hom_inv_id, α.hom_inv_id_assoc, Category.comp_id]
  right_inv f :=
    show α.inv ≫ (α.hom ≫ f ≫ β.inv) ≫ β.hom = f by
      rw [Category.assoc, Category.assoc, β.inv_hom_id, α.inv_hom_id_assoc, Category.comp_id]

theorem homCongr_comp {X Y Z X₁ Y₁ Z₁ : C} (α : X ≅ X₁) (β : Y ≅ Y₁) (γ : Z ≅ Z₁) (f : X ⟶ Y)
    (g : Y ⟶ Z) : α.homCongr γ (f ≫ g) = α.homCongr β f ≫ β.homCongr γ g := by simp

theorem homCongr_refl {X Y : C} (f : X ⟶ Y) : (Iso.refl X).homCongr (Iso.refl Y) f = f := by simp

theorem homCongr_trans {X₁ Y₁ X₂ Y₂ X₃ Y₃ : C} (α₁ : X₁ ≅ X₂) (β₁ : Y₁ ≅ Y₂) (α₂ : X₂ ≅ X₃)
    (β₂ : Y₂ ≅ Y₃) (f : X₁ ⟶ Y₁) :
    (α₁ ≪≫ α₂).homCongr (β₁ ≪≫ β₂) f = (α₁.homCongr β₁).trans (α₂.homCongr β₂) f := by simp

@[simp]
theorem homCongr_symm {X₁ Y₁ X₂ Y₂ : C} (α : X₁ ≅ X₂) (β : Y₁ ≅ Y₂) :
    (α.homCongr β).symm = α.symm.homCongr β.symm :=
  rfl

/-- If `X` is isomorphic to `X₁` and `Y` is isomorphic to `Y₁`, then
there is a bijection between `X ≅ Y` and `X₁ ≅ Y₁`. -/
@[simps]
def isoCongr {X₁ Y₁ X₂ Y₂ : C} (f : X₁ ≅ X₂) (g : Y₁ ≅ Y₂) : (X₁ ≅ Y₁) ≃ (X₂ ≅ Y₂) where
  toFun h := f.symm.trans <| h.trans <| g
  invFun h := f.trans <| h.trans <| g.symm
  left_inv := by aesop_cat
  right_inv := by aesop_cat

/-- If `X₁` is isomorphic to `X₂`, then there is a bijection between `X₁ ≅ Y` and `X₂ ≅ Y`. -/
def isoCongrLeft {X₁ X₂ Y : C} (f : X₁ ≅ X₂) : (X₁ ≅ Y) ≃ (X₂ ≅ Y) :=
  isoCongr f (Iso.refl _)

/-- If `Y₁` is isomorphic to `Y₂`, then there is a bijection between `X ≅ Y₁` and `X ≅ Y₂`. -/
def isoCongrRight {X Y₁ Y₂ : C} (g : Y₁ ≅ Y₂) : (X ≅ Y₁) ≃ (X ≅ Y₂) :=
  isoCongr (Iso.refl _) g

end Iso

namespace Functor

universe v₁ u₁

variable {C : Type u} [Category.{v} C] {D : Type u₁} [Category.{v₁} D] (F : C ⥤ D)

theorem map_homCongr {X Y X₁ Y₁ : C} (α : X ≅ X₁) (β : Y ≅ Y₁) (f : X ⟶ Y) :
    F.map (Iso.homCongr α β f) = Iso.homCongr (F.mapIso α) (F.mapIso β) (F.map f) := by simp

theorem map_isoCongr {X Y X₁ Y₁ : C} (α : X ≅ X₁) (β : Y ≅ Y₁) (f : X ≅ Y) :
    F.mapIso (Iso.isoCongr α β f) = Iso.isoCongr (F.mapIso α) (F.mapIso β) (F.mapIso f) := by
  ext
  simp

end Functor

end CategoryTheory
```
