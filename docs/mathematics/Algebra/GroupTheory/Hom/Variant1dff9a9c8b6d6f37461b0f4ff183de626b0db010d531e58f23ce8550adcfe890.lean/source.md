# Complete source: GRWTSK.Algebra.GroupTheory.Hom.Variant1dff9a9c8b6d6f37461b0f4ff183de626b0db010d531e58f23ce8550adcfe890

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d70a7c823df7189b10ed744a2e4bad1444baf0de` · SHA-256 `945a86949eff9e8f168bd644f287c26d89ed32851a4c2652eb67f92c97c145d8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.ExtNatPrime.Variant37cfef957a2adaeccd8c270bb01cb5abae4e8d03579b0beba0203b2279e7dbfe","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"37cfef957a2adaeccd8c270bb01cb5abae4e8d03579b0beba0203b2279e7dbfe","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.ExtNatPrime.Variant37cfef957a2adaeccd8c270bb01cb5abae4e8d03579b0beba0203b2279e7dbfe","mathematical_subject":"Algebra.Groups","original_sha256":"37cfef957a2adaeccd8c270bb01cb5abae4e8d03579b0beba0203b2279e7dbfe","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Group/Nat/Hom.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
import Mathlib.Algebra.Group.Equiv.Defs
import Mathlib.Algebra.Group.Hom.Basic
import Mathlib.Algebra.Group.Nat.Defs
import Mathlib.Algebra.Group.TypeTags.Hom

/-!
# Extensionality of monoid homs from `ℕ`
-/


namespace GRWTSK.Algebra.GroupTheory.ExtNatPrime.Variant37cfef957a2adaeccd8c270bb01cb5abae4e8d03579b0beba0203b2279e7dbfe

assert_not_exists OrderedCommMonoid MonoidWithZero

open Additive Multiplicative

variable {M : Type*}

section AddMonoidHomClass

variable {A B F : Type*} [FunLike F ℕ A]

lemma ext_nat' [AddZeroClass A] [AddMonoidHomClass F ℕ A] (f g : F) (h : f 1 = g 1) : f = g :=
  DFunLike.ext f g <| by
    intro n
    induction n with
    | zero => simp_rw [map_zero f, map_zero g]
    | succ n ihn =>
      simp [h, ihn]

@[ext]
lemma AddMonoidHom.ext_nat [AddZeroClass A] {f g : ℕ →+ A} : f 1 = g 1 → f = g :=
  ext_nat' f g

end AddMonoidHomClass

section AddMonoid
variable [AddMonoid M]

variable (M) in
/-- Additive homomorphisms from `ℕ` are defined by the image of `1`. -/
def multiplesHom : M ≃ (ℕ →+ M) where
  toFun x :=
  { toFun := fun n ↦ n • x
    map_zero' := zero_nsmul x
    map_add' := fun _ _ ↦ add_nsmul _ _ _ }
  invFun f := f 1
  left_inv := one_nsmul
  right_inv f := AddMonoidHom.ext_nat <| one_nsmul (f 1)

@[simp] lemma multiplesHom_apply (x : M) (n : ℕ) : multiplesHom M x n = n • x := rfl

@[simp] lemma multiplesHom_symm_apply (f : ℕ →+ M) : (multiplesHom M).symm f = f 1 := rfl

lemma AddMonoidHom.apply_nat (f : ℕ →+ M) (n : ℕ) : f n = n • f 1 := by
  rw [← multiplesHom_symm_apply, ← multiplesHom_apply, Equiv.apply_symm_apply]

end AddMonoid

section Monoid
variable [Monoid M]

variable (M) in
/-- Monoid homomorphisms from `Multiplicative ℕ` are defined by the image
of `Multiplicative.ofAdd 1`. -/
def powersHom : M ≃ (Multiplicative ℕ →* M) :=
  Additive.ofMul.trans <| (multiplesHom _).trans <| AddMonoidHom.toMultiplicative''

@[simp] lemma powersHom_apply (x : M) (n : Multiplicative ℕ) :
    powersHom M x n = x ^ n.toAdd := rfl

@[simp] lemma powersHom_symm_apply (f : Multiplicative ℕ →* M) :
    (powersHom M).symm f = f (Multiplicative.ofAdd 1) := rfl

lemma MonoidHom.apply_mnat (f : Multiplicative ℕ →* M) (n : Multiplicative ℕ) :
    f n = f (Multiplicative.ofAdd 1) ^ n.toAdd := by
  rw [← powersHom_symm_apply, ← powersHom_apply, Equiv.apply_symm_apply]

@[ext]
lemma MonoidHom.ext_mnat ⦃f g : Multiplicative ℕ →* M⦄
    (h : f (Multiplicative.ofAdd 1) = g (Multiplicative.ofAdd 1)) : f = g :=
  MonoidHom.ext fun n ↦ by rw [f.apply_mnat, g.apply_mnat, h]

end Monoid

section AddCommMonoid
variable [AddCommMonoid M]

variable (M) in
/-- If `M` is commutative, `multiplesHom` is an additive equivalence. -/
def multiplesAddHom : M ≃+ (ℕ →+ M) where
  __ := multiplesHom M
  map_add' a b := AddMonoidHom.ext fun n ↦ by simp [nsmul_add]

@[simp] lemma multiplesAddHom_apply (x : M) (n : ℕ) : multiplesAddHom M x n = n • x := rfl

@[simp] lemma multiplesAddHom_symm_apply (f : ℕ →+ M) : (multiplesAddHom M).symm f = f 1 := rfl

end AddCommMonoid

section CommMonoid
variable [CommMonoid M]

variable (M) in
/-- If `M` is commutative, `powersHom` is a multiplicative equivalence. -/
def powersMulHom : M ≃* (Multiplicative ℕ →* M) where
  __ := powersHom M
  map_mul' a b := MonoidHom.ext fun n ↦ by simp [mul_pow]

@[simp]
lemma powersMulHom_apply (x : M) (n : Multiplicative ℕ) : powersMulHom M x n = x ^ n.toAdd := rfl

@[simp]
lemma powersMulHom_symm_apply (f : Multiplicative ℕ →* M) : (powersMulHom M).symm f = f (ofAdd 1) :=
  rfl

end CommMonoid
```
