-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.OneDef.Variant725706191a40c49240e1d00e43e967ba7a64968f1c05f047782993b6266d10a4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"725706191a40c49240e1d00e43e967ba7a64968f1c05f047782993b6266d10a4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.OrderTheory.SourceCorpus.OneDef.Variant725706191a40c49240e1d00e43e967ba7a64968f1c05f047782993b6266d10a4","mathematical_subject":"Algebra.OrderTheory","original_sha256":"725706191a40c49240e1d00e43e967ba7a64968f1c05f047782993b6266d10a4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/Order/Group/End.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2017 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
module

public import Mathlib.Algebra.Group.Defs
public import Mathlib.Data.FunLike.IsApply
public import Mathlib.Order.Hom.Basic
public import Mathlib.Order.RelIso.Basic

/-!
# Relation isomorphisms form a group

This file contains `Monoid` instances for `RelHom` and `OrderHom`, where multiplication is
given by composition. Likewise there is a `Group` instance for `RelIso`. Because `OrderIso`
is an abbreviation for `RelIso`, there is no need for an additional instance.

## TODO

+ Rename the `mul_def`/`one_def` lemmas to `mul_eq_comp`/`one_eq_id`.
+ Use the `IsMulApplyEqComp` and `IsOneApplyEqSelf` classes for `RelHom` and `RelIso`.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.OneDef.Variant725706191a40c49240e1d00e43e967ba7a64968f1c05f047782993b6266d10a4

public section

assert_not_exists MulAction MonoidWithZero

variable {α : Type*} {r : α → α → Prop}

namespace RelHom

instance : Monoid (r →r r) where
  one := .id r
  mul := .comp
  mul_assoc _ _ _ := rfl
  one_mul _ := rfl
  mul_one _ := rfl

lemma one_def : (1 : r →r r) = .id r := rfl
lemma mul_def (f g : r →r r) : (f * g) = f.comp g := rfl

@[simp] lemma coe_one : ⇑(1 : r →r r) = id := rfl
@[simp] lemma coe_mul (f g : r →r r) : ⇑(f * g) = f ∘ g := rfl

lemma one_apply (a : α) : (1 : r →r r) a = a := rfl
lemma mul_apply (e₁ e₂ : r →r r) (x : α) : (e₁ * e₂) x = e₁ (e₂ x) := rfl

end RelHom

namespace RelEmbedding

instance : Monoid (r ↪r r) where
  one := .refl r
  mul f g := g.trans f
  mul_assoc _ _ _ := rfl
  one_mul _ := rfl
  mul_one _ := rfl

lemma one_def : (1 : r ↪r r) = .refl r := rfl
lemma mul_def (f g : r ↪r r) : (f * g) = g.trans f := rfl

@[simp] lemma coe_one : ⇑(1 : r ↪r r) = id := rfl
@[simp] lemma coe_mul (f g : r ↪r r) : ⇑(f * g) = f ∘ g := rfl

lemma one_apply (a : α) : (1 : r ↪r r) a = a := rfl
lemma mul_apply (e₁ e₂ : r ↪r r) (x : α) : (e₁ * e₂) x = e₁ (e₂ x) := rfl

end RelEmbedding

namespace RelIso

instance : Group (r ≃r r) where
  one := .refl r
  mul f₁ f₂ := f₂.trans f₁
  inv := .symm
  mul_assoc _ _ _ := rfl
  one_mul _ := ext fun _ => rfl
  mul_one _ := ext fun _ => rfl
  inv_mul_cancel f := ext f.symm_apply_apply

lemma one_def : (1 : r ≃r r) = .refl r := rfl
lemma mul_def (f g : r ≃r r) : (f * g) = g.trans f := rfl

@[simp] lemma coe_one : ((1 : r ≃r r) : α → α) = id := rfl
@[simp] lemma coe_mul (e₁ e₂ : r ≃r r) : ((e₁ * e₂) : α → α) = e₁ ∘ e₂ := rfl

lemma one_apply (x : α) : (1 : r ≃r r) x = x := rfl
lemma mul_apply (e₁ e₂ : r ≃r r) (x : α) : (e₁ * e₂) x = e₁ (e₂ x) := rfl

@[simp]
theorem inv_apply_self (e : r ≃r r) (x) : e⁻¹ (e x) = x :=
  e.symm_apply_apply x

@[simp]
theorem apply_inv_self (e : r ≃r r) (x) : e (e⁻¹ x) = x :=
  e.apply_symm_apply x

end RelIso

namespace OrderHom

variable [Preorder α]

instance : Mul (α →o α) where mul f g := f.comp g
instance : One (α →o α) where one := .id
instance : IsMulApplyEqComp (α →o α) α where mul_apply_eq_comp _ _ _ := rfl
instance : IsOneApplyEqSelf (α →o α) α where one_apply_eq_self _ := rfl

lemma mul_eq_comp (f g : α →o α) : (f * g : α →o α) = f.comp g := rfl
lemma one_eq_id : (1 : α →o α) = .id := rfl

instance : Monoid (α →o α) where
  mul_assoc f g h := by simp [DFunLike.ext_iff]
  one_mul f := by simp [DFunLike.ext_iff]
  mul_one f := by simp [DFunLike.ext_iff]

end OrderHom
