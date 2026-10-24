# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Arrow.Variant926c636720e686545d236b3b538e3fe2d714d29132732963c37820c37bc5d641

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5bc065af18613697e27979ab4b353f8c5946ebb0` · SHA-256 `27f7366de561d4a8dc8a3afcd0de7d66b4d473967752f88e341be2b972f8267f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.TensorHomCompTensorHom.Variant81b9b511f2bdfc740b1ca9f72349c00d0e853b519e6f025a4a618eaca9723b87","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"81b9b511f2bdfc740b1ca9f72349c00d0e853b519e6f025a4a618eaca9723b87","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.TensorHomCompTensorHom.Variant81b9b511f2bdfc740b1ca9f72349c00d0e853b519e6f025a4a618eaca9723b87","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"81b9b511f2bdfc740b1ca9f72349c00d0e853b519e6f025a4a618eaca9723b87","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/Monoidal/Arrow.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Jack McKoen. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jack McKoen
-/
module

public import Mathlib.CategoryTheory.Monoidal.Closed.Braided
public import Mathlib.CategoryTheory.Monoidal.Limits.HasLimits
public import Mathlib.CategoryTheory.Monoidal.PushoutProduct

/-!
# Monoidal structure on the arrow category of a cartesian closed category.

If `C` is a braided, cartesian closed category with pushouts and an initial object, then `Arrow C`
has a symmetric monoidal category structure given by the pushout-product (the Leibniz construction
given by the tensor product on `C`).

If `C` also has pullbacks, then `Arrow C` has a monoidal closed structure given by the pullback-hom
(the Leibniz construction given by the internal hom on `C`).

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.TensorHomCompTensorHom.Variant81b9b511f2bdfc740b1ca9f72349c00d0e853b519e6f025a4a618eaca9723b87

public section

universe v u

namespace CategoryTheory

open Limits MonoidalCategory CategoryTheory.Functor PushoutObjObj

variable {C : Type u} [Category.{v} C]

attribute [local simp] PushoutObjObj.ι ofHasPushout_pt ofHasPushout_inl ofHasPushout_inr

namespace MonoidalCategory.Arrow.PushoutProduct

noncomputable section

/-- The monoidal category instance induced by the pushout-product. -/
@[simps]
scoped instance [HasPushouts C] [HasInitial C] [CartesianMonoidalCategory C] [MonoidalClosed C]
    [BraidedCategory C] : MonoidalCategoryStruct (Arrow C) where
  tensorObj X Y := X □ Y
  whiskerLeft X _ _ f := (pushoutProduct.obj X).map f
  whiskerRight f X := (pushoutProduct.map f).app X
  tensorUnit := initial.to (𝟙_ C)
  associator _ _ _ := PushoutProduct.associator ..
  leftUnitor := PushoutProduct.leftUnitor
  rightUnitor := PushoutProduct.rightUnitor

variable [HasPushouts C] [HasInitial C] [CartesianMonoidalCategory C] [MonoidalClosed C]
  [BraidedCategory C]

set_option backward.isDefEq.respectTransparency.types false in
set_option backward.defeqAttrib.useBackward true in
lemma tensorHom_comp_tensorHom {X₁ Y₁ Z₁ X₂ Y₂ Z₂ : Arrow C}
    (f₁ : X₁ ⟶ Y₁) (f₂ : X₂ ⟶ Y₂) (g₁ : Y₁ ⟶ Z₁) (g₂ : Y₂ ⟶ Z₂) :
    (f₁ ⊗ₘ f₂) ≫ (g₁ ⊗ₘ g₂) = (f₁ ≫ g₁) ⊗ₘ (f₂ ≫ g₂) := by
  refine Arrow.hom_ext _ _ ?_ (by simp [whisker_exchange_assoc])
  apply pushout.hom_ext <;> simp [whisker_exchange_assoc]

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
lemma associator_naturality {X₁ X₂ X₃ Y₁ Y₂ Y₃ : Arrow C}
    (f₁ : X₁ ⟶ Y₁) (f₂ : X₂ ⟶ Y₂) (f₃ : X₃ ⟶ Y₃) :
    ((f₁ ⊗ₘ f₂) ⊗ₘ f₃) ≫ (α_ Y₁ Y₂ Y₃).hom = (α_ X₁ X₂ X₃).hom ≫ (f₁ ⊗ₘ (f₂ ⊗ₘ f₃)) := by
  refine Arrow.hom_ext _ _ (pushout.hom_ext (by simp [whisker_exchange_assoc]) ?_) (by simp)
  apply ((tensorRight _).map_isPushout (IsPushout.of_hasPushout _ _)).hom_ext
  · suffices _ ◁ _ ◁ f₃.right ≫ (α_ _ _ _).inv ≫ f₁.right ▷ _ ▷ _ ≫ (α_ _ _ _).hom ≫
      _ ◁ f₂.left ▷ _ ≫ _ ◁ pushout.inr _ _ = _ ◁ f₂.left ▷ _ ≫ _ ◁ _ ◁ f₃.right ≫
      _ ◁ pushout.inr _ _ ≫ f₁.right ▷ pushout (Y₂.hom ▷ Y₃.left) (Y₂.left ◁ Y₃.hom) by
      simp [← whisker_exchange_assoc, reassoc_of% this]
    rw [← MonoidalCategory.whiskerLeft_comp_assoc, whisker_exchange, whisker_exchange_assoc,
      ← whisker_exchange, associator_inv_naturality_right_assoc, whisker_exchange_assoc,
      ← associator_inv_naturality_left_assoc, associator_naturality_right_assoc,
      Iso.inv_hom_id_assoc, MonoidalCategory.whiskerLeft_comp_assoc]
  · suffices ((α_ _ _ _).hom ≫ _ ◁ _ ◁ f₃.right ≫ (α_ _ _ _).inv ≫ f₁.left ▷ _ ▷ _ ≫
      (α_ _ _ _).hom ≫ _ ◁ f₂.right ▷ _ = f₁.left ▷ _ ▷ _ ≫ (α_ _ _ _).hom ≫
      _ ◁ f₂.right ▷ _ ≫ _ ◁ _ ◁ f₃.right) by
      simp [← whisker_exchange_assoc, reassoc_of% this]
    cat_disch

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
lemma leftUnitor_naturality {X Y : Arrow C} (f : X ⟶ Y) :
    𝟙_ _ ◁ f ≫ (λ_ Y).hom = (λ_ X).hom ≫ f := by
  refine Arrow.hom_ext _ _ (pushout.hom_ext (by simp) ?_) (by simp)
  apply (initialIsInitial.ofIso (mulZero initialIsInitial).symm).hom_ext

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
lemma rightUnitor_naturality {X Y : Arrow C} (f : X ⟶ Y) :
    f ▷ 𝟙_ _ ≫ (ρ_ Y).hom = (ρ_ X).hom ≫ f := by
  refine Arrow.hom_ext _ _ (pushout.hom_ext ?_ (by simp)) (by simp)
  apply (initialIsInitial.ofIso (zeroMul initialIsInitial).symm).hom_ext

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
lemma pentagon (W X Y Z : Arrow C) :
    (α_ W X Y).hom ▷ Z ≫ (α_ W (X ⊗ Y) Z).hom ≫ W ◁ (α_ X Y Z).hom =
      (α_ (W ⊗ X) Y Z).hom ≫ (α_ W X (Y ⊗ Z)).hom := by
  refine Arrow.hom_ext _ _ (pushout.hom_ext (by simp) ?_) (by simp)
  apply ((tensorRight _).map_isPushout (IsPushout.of_hasPushout _ _)).hom_ext (by simp)
  apply ((tensorRight _ ⋙ tensorRight _).map_isPushout (IsPushout.of_hasPushout _ _)).hom_ext <;>
  simp [associator_naturality_left_assoc]

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
lemma triangle (X Y : Arrow C) :
    (α_ X (𝟙_ _) Y).hom ≫ X ◁ (λ_ Y).hom = (ρ_ X).hom ▷ Y := by
  refine Arrow.hom_ext _ _ (pushout.hom_ext (by simp) ?_) (by simp)
  apply ((tensorRight _).map_isPushout (IsPushout.of_hasPushout _ _)).hom_ext
  · apply (initialIsInitial.ofIso ((initialIsoIsInitial ?_) ≪≫ (mulZero ?_).symm)).hom_ext <;>
    exact initialIsInitial.ofIso (zeroMul initialIsInitial).symm
  · simp [← comp_whiskerRight_assoc]

set_option backward.isDefEq.respectTransparency.types false in
/-- The monoidal category instance induced by the pushout-product. -/
scoped instance : MonoidalCategory (Arrow C) where
  tensorHom_comp_tensorHom := tensorHom_comp_tensorHom
  associator_naturality := associator_naturality
  leftUnitor_naturality := leftUnitor_naturality
  rightUnitor_naturality := rightUnitor_naturality
  pentagon := pentagon
  triangle := triangle

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
lemma hexagon_forward (X Y Z : Arrow C) :
    (α_ X Y Z).hom ≫ (braiding X (Y ⊗ Z)).hom ≫ (α_ Y Z X).hom =
      ((braiding X Y).hom ▷ Z) ≫ (α_ Y X Z).hom ≫ (Y ◁ (braiding X Z).hom) := by
  refine Arrow.hom_ext _ _ (pushout.hom_ext (by simp) ?_) (by simp)
  apply ((tensorRight _).map_isPushout (IsPushout.of_hasPushout _ _)).hom_ext <;> simp

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
lemma hexagon_reverse (X Y Z : Arrow C) :
    (α_ X Y Z).inv ≫ (braiding (X ⊗ Y) Z).hom ≫ (α_ Z X Y).inv =
      (X ◁ (braiding Y Z).hom) ≫ (α_ X Z Y).inv ≫ ((braiding X Z).hom ▷ Y) := by
  refine Arrow.hom_ext _ _ (pushout.hom_ext ?_ (by simp)) (by simp)
  apply ((tensorLeft _).map_isPushout (IsPushout.of_hasPushout _ _)).hom_ext <;> simp

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
/-- The braided category instance induced by the pushout-product. -/
@[simps -isSimp]
scoped instance braidedCategory : BraidedCategory (Arrow C) where
  braiding := braiding
  hexagon_forward := hexagon_forward
  hexagon_reverse := hexagon_reverse

set_option backward.defeqAttrib.useBackward true in
attribute [local simp] braidedCategory_braiding in
/-- The symmetric category instance induced by the pushout-product. -/
@[simps! -isSimp]
scoped instance symmetricCategory : SymmetricCategory (Arrow C) where

/-- The monoidal closed instance induced by the pushout-product and pullback-hom. -/
scoped instance [HasPullbacks C] : MonoidalClosed (Arrow C) where
  closed X := {
    rightAdj := pullbackHom.obj (Opposite.op X)
    adj := LeibnizAdjunction.adj _ _ (MonoidalClosed.internalHomAdjunction₂) X }

end

end MonoidalCategory.Arrow.PushoutProduct

end CategoryTheory
```
