# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Pullback.Variantbfdc2a47e4b4fb16c3084af4c2c99d19ae01201ec54f0f1ff324ed4c05e3431b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a13bb90643659e10836b1b6d0a91e0c9d6985047` · SHA-256 `bfdc2a47e4b4fb16c3084af4c2c99d19ae01201ec54f0f1ff324ed4c05e3431b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Jack McKoen. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jack McKoen
-/
module

public import Mathlib.CategoryTheory.Limits.Shapes.Pullback.IsPullback.Defs
public import Mathlib.CategoryTheory.Monoidal.Category

/-!
# Pullbacks and pushouts in a monoidal category

For numerous simp lemmas of the form `f ≫ g = h`, we add accompanying simp lemmas of the form
`Q ◁ f ≫ Q ◁ g = Q ◁ h` and `f ▷ Q ≫ g ▷ Q = h ▷ Q`. This file and
`Mathlib.CategoryTheory.Monoidal.Limits.HasLimits` are needed to define a monoidal category
structure in `Mathlib.CategoryTheory.Monoidal.Arrow`.

## TODO
An attribute should be developed to automatically generate lemmas of this form.
-/

public section

universe v u

namespace CategoryTheory.MonoidalCategory

open Limits MonoidalCategory

variable {C : Type u} [Category.{v} C] [MonoidalCategory C]

namespace IsPushout

variable {Z X Y P W : C} {f : Z ⟶ X} {g : Z ⟶ Y}
    {inl : X ⟶ P} {inr : Y ⟶ P} (hP : IsPushout f g inl inr)
    {W : C} (h : X ⟶ W) (k : Y ⟶ W) (w : f ≫ h = g ≫ k)

@[reassoc (attr := simp)]
lemma whiskerLeft_inl_desc {Q : C} :
    Q ◁ inl ≫ Q ◁ hP.desc h k w = Q ◁ h := by
  rw [← MonoidalCategory.whiskerLeft_comp, IsPushout.inl_desc]

@[reassoc (attr := simp)]
lemma whiskerLeft_inr_desc {Q : C} :
    Q ◁ inr ≫ Q ◁ hP.desc h k w = Q ◁ k := by
  rw [← MonoidalCategory.whiskerLeft_comp, IsPushout.inr_desc]

@[reassoc (attr := simp)]
lemma inl_desc_whiskerRight {Q : C} :
    inl ▷ Q ≫ hP.desc h k w ▷ Q = h ▷ Q := by
  rw [← comp_whiskerRight, IsPushout.inl_desc]

@[reassoc (attr := simp)]
lemma inr_desc_whiskerRight {Q : C} :
    inr ▷ Q ≫ hP.desc h k w ▷ Q = k ▷ Q := by
  rw [← comp_whiskerRight, IsPushout.inr_desc]

@[reassoc]
lemma whiskerLeft_w (hP : IsPushout f g inl inr) {Q : C} :
    Q ◁ f ≫ Q ◁ inl = Q ◁ g ≫ Q ◁ inr := by
  simp [← MonoidalCategory.whiskerLeft_comp, hP.w]

@[reassoc]
lemma w_whiskerRight (hP : IsPushout f g inl inr) {Q : C} :
    f ▷ Q ≫ inl ▷ Q = g ▷ Q ≫ inr ▷ Q := by
  simp [← MonoidalCategory.comp_whiskerRight, hP.w]

@[reassoc (attr := simp)]
lemma whiskerLeft_inl_isoPushout_inv [HasPushout f g] {Q : C} :
    Q ◁ pushout.inl _ _ ≫ Q ◁ hP.isoPushout.inv = Q ◁ inl := by
  simp [← MonoidalCategory.whiskerLeft_comp]

@[reassoc (attr := simp)]
lemma whiskerLeft_inr_isoPushout_inv [HasPushout f g] {Q : C} :
    Q ◁ pushout.inr _ _ ≫ Q ◁ hP.isoPushout.inv = Q ◁ inr := by
  simp [← MonoidalCategory.whiskerLeft_comp]

@[reassoc (attr := simp)]
lemma whiskerLeft_inl_isoPushout_hom [HasPushout f g] {Q : C} :
    Q ◁ inl ≫ Q ◁ hP.isoPushout.hom = Q ◁ pushout.inl _ _ := by
  simp [← MonoidalCategory.whiskerLeft_comp]

@[reassoc (attr := simp)]
lemma whiskerLeft_inr_isoPushout_hom [HasPushout f g] {Q : C} :
    Q ◁ inr ≫ Q ◁ hP.isoPushout.hom = Q ◁ pushout.inr _ _ := by
  simp [← MonoidalCategory.whiskerLeft_comp]

@[reassoc (attr := simp)]
lemma inl_isoPushout_inv_whiskerRight [HasPushout f g] {Q : C} :
    pushout.inl _ _ ▷ Q ≫ hP.isoPushout.inv ▷ Q = inl ▷ Q := by
  simp [← comp_whiskerRight]

@[reassoc (attr := simp)]
lemma inr_isoPushout_inv_whiskerRight [HasPushout f g] {Q : C} :
    pushout.inr _ _ ▷ Q ≫ hP.isoPushout.inv ▷ Q = inr ▷ Q := by
  simp [← comp_whiskerRight]

@[reassoc (attr := simp)]
lemma inl_isoPushout_hom_whiskerRight [HasPushout f g] {Q : C} :
    inl ▷ Q ≫ hP.isoPushout.hom ▷ Q = pushout.inl _ _ ▷ Q := by
  simp [← comp_whiskerRight]

@[reassoc (attr := simp)]
lemma inr_isoPushout_hom_whiskerRight [HasPushout f g] {Q : C} :
    inr ▷ Q ≫ hP.isoPushout.hom ▷ Q = pushout.inr _ _ ▷ Q := by
  simp [← comp_whiskerRight]

end IsPushout

section Pushout

variable [HasPushouts C]
  {W X Y Z : C} {f : X ⟶ Y} {g : X ⟶ Z}
  (h : Y ⟶ W) {Q : C}

@[reassoc]
lemma Limits.pushout.whiskerLeft_condition :
    Q ◁ f ≫ Q ◁ pushout.inl f g = Q ◁ g ≫ Q ◁ pushout.inr f g := by
  simp [← MonoidalCategory.whiskerLeft_comp, pushout.condition]

@[reassoc]
lemma Limits.pushout.condition_whiskerRight :
    f ▷ Q ≫ pushout.inl f g ▷ Q = g ▷ Q ≫ pushout.inr f g ▷ Q := by
  simp [← comp_whiskerRight, pushout.condition]

variable {A B X Y Z W : C} {f : A ⟶ B} {g : X ⟶ Y}

@[reassoc]
lemma Limits.pushout.associator_naturality_left_condition {h : Z ⊗ W ⟶ X} :
    f ▷ Z ▷ W ≫ (α_ B Z W).hom ≫ B ◁ h ≫ pushout.inl (f ▷ X) (A ◁ g) =
      (α_ A Z W).hom ≫ A ◁ (h ≫ g) ≫ pushout.inr (f ▷ X) (A ◁ g) := by
  rw [associator_naturality_left_assoc, ← whisker_exchange_assoc, pushout.condition,
    ← MonoidalCategory.whiskerLeft_comp_assoc]

@[reassoc]
lemma Limits.pushout.associator_inv_naturality_right_condition {h : Z ⊗ W ⟶ A} :
    Z ◁ W ◁ g ≫ (α_ Z W Y).inv ≫ h ▷ Y ≫ pushout.inr (f ▷ X) (A ◁ g) =
      (α_ Z W X).inv ≫ (h ≫ f) ▷ X ≫ pushout.inl (f ▷ X) (A ◁ g) := by
  rw [associator_inv_naturality_right_assoc, whisker_exchange_assoc, ← pushout.condition,
    ← comp_whiskerRight_assoc]

@[reassoc (attr := simp)]
lemma Limits.whiskerLeft_inl_comp_pushoutSymmetry_hom (f : X ⟶ Y) (g : X ⟶ Z) :
    Q ◁ pushout.inl f g ≫ Q ◁ (pushoutSymmetry f g).hom = Q ◁ pushout.inr g f := by
  simp [← MonoidalCategory.whiskerLeft_comp]

@[reassoc (attr := simp)]
lemma Limits.whiskerLeft_inr_comp_pushoutSymmetry_hom (f : X ⟶ Y) (g : X ⟶ Z) :
    Q ◁ pushout.inr f g ≫ Q ◁ (pushoutSymmetry f g).hom = Q ◁ pushout.inl g f := by
  simp [← MonoidalCategory.whiskerLeft_comp]

@[reassoc (attr := simp)]
lemma Limits.inl_comp_pushoutSymmetry_hom_whiskerRight (f : X ⟶ Y) (g : X ⟶ Z) :
    pushout.inl f g ▷ Q ≫ (pushoutSymmetry f g).hom ▷ Q = pushout.inr g f ▷ Q := by
  simp [← comp_whiskerRight]

@[reassoc (attr := simp)]
lemma Limits.inr_comp_pushoutSymmetry_hom_whiskerRight (f : X ⟶ Y) (g : X ⟶ Z) :
    pushout.inr f g ▷ Q ≫ (pushoutSymmetry f g).hom ▷ Q = pushout.inl g f ▷ Q := by
  simp [← comp_whiskerRight]

end Pushout

end CategoryTheory.MonoidalCategory
```
