# Complete source: GRWTSK.Algebra.Pointwise.Varianta1301e5c86e899bf7eb1ec017f5ebff5584da24ea59ec1570376ee398ac9f826

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c6c643cf3f1e449e977595af48fd20716af866b2` · SHA-256 `84e226e75bbafd48f0853aa9aebbd467fa7ad1d40b03b9be4b44117b72d47470`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.CoeMul.Variant1719a01774578f6d74ac4f3a1ecac8c566cad2b5c0eb1b1de748e805e58dcc27","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1719a01774578f6d74ac4f3a1ecac8c566cad2b5c0eb1b1de748e805e58dcc27","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.CoeMul.Variant1719a01774578f6d74ac4f3a1ecac8c566cad2b5c0eb1b1de748e805e58dcc27","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"1719a01774578f6d74ac4f3a1ecac8c566cad2b5c0eb1b1de748e805e58dcc27","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Data/Finsupp/Pointwise.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
module

public import Mathlib.Algebra.Ring.InjSurj
public import Mathlib.Data.Finsupp.SMulWithZero
public import Mathlib.Algebra.Module.Defs
public import Mathlib.Algebra.Ring.Pi

/-!
# The pointwise product on `Finsupp`.

For the convolution product on `Finsupp` when the domain has a binary operation,
see the type synonyms `AddMonoidAlgebra`
(which is in turn used to define `Polynomial` and `MvPolynomial`)
and `MonoidAlgebra`.
-/


namespace GRWTSK.Algebra.CoeMul.Variant1719a01774578f6d74ac4f3a1ecac8c566cad2b5c0eb1b1de748e805e58dcc27

public section


noncomputable section

open Finset

universe u₁ u₂ u₃ u₄ u₅

variable {α : Type u₁} {β : Type u₂} {γ : Type u₃}

namespace Finsupp

/-! ### Declarations about the pointwise product on `Finsupp`s -/


section

variable [MulZeroClass β]

/-- The product of `f g : α →₀ β` is the finitely supported function
  whose value at `a` is `f a * g a`. -/
instance : Mul (α →₀ β) :=
  ⟨zipWith (· * ·) (mul_zero 0)⟩

theorem coe_mul (g₁ g₂ : α →₀ β) : ⇑(g₁ * g₂) = g₁ * g₂ :=
  rfl

@[simp]
theorem mul_apply {g₁ g₂ : α →₀ β} {a : α} : (g₁ * g₂) a = g₁ a * g₂ a :=
  rfl

@[simp]
theorem single_mul (a : α) (b₁ b₂ : β) : single a (b₁ * b₂) = single a b₁ * single a b₂ :=
  (zipWith_single_single _ _ _ _ _).symm

lemma support_mul_subset_left {g₁ g₂ : α →₀ β} :
    (g₁ * g₂).support ⊆ g₁.support := fun x hx => by
  aesop

lemma support_mul_subset_right {g₁ g₂ : α →₀ β} :
    (g₁ * g₂).support ⊆ g₂.support := fun x hx => by
  aesop

theorem support_mul [DecidableEq α] {g₁ g₂ : α →₀ β} :
    (g₁ * g₂).support ⊆ g₁.support ∩ g₂.support :=
  subset_inter support_mul_subset_left support_mul_subset_right

instance : MulZeroClass (α →₀ β) :=
  DFunLike.coe_injective.mulZeroClass _ coe_zero coe_mul

end

instance [SemigroupWithZero β] : SemigroupWithZero (α →₀ β) :=
  DFunLike.coe_injective.semigroupWithZero _ coe_zero coe_mul

instance [NonUnitalNonAssocSemiring β] : NonUnitalNonAssocSemiring (α →₀ β) :=
  DFunLike.coe_injective.nonUnitalNonAssocSemiring _ coe_zero coe_add coe_mul fun _ _ ↦ rfl

instance [NonUnitalSemiring β] : NonUnitalSemiring (α →₀ β) :=
  DFunLike.coe_injective.nonUnitalSemiring _ coe_zero coe_add coe_mul fun _ _ ↦ rfl

instance [NonUnitalCommSemiring β] : NonUnitalCommSemiring (α →₀ β) :=
  DFunLike.coe_injective.nonUnitalCommSemiring _ coe_zero coe_add coe_mul fun _ _ ↦ rfl

instance [NonUnitalNonAssocRing β] : NonUnitalNonAssocRing (α →₀ β) :=
  DFunLike.coe_injective.nonUnitalNonAssocRing _ coe_zero coe_add coe_mul coe_neg coe_sub
    (fun _ _ ↦ rfl) fun _ _ ↦ rfl

instance [NonUnitalRing β] : NonUnitalRing (α →₀ β) :=
  DFunLike.coe_injective.nonUnitalRing _ coe_zero coe_add coe_mul coe_neg coe_sub (fun _ _ ↦ rfl)
    fun _ _ ↦ rfl

instance [NonUnitalCommRing β] : NonUnitalCommRing (α →₀ β) :=
  DFunLike.coe_injective.nonUnitalCommRing _ coe_zero coe_add coe_mul coe_neg coe_sub
    (fun _ _ ↦ rfl) fun _ _ ↦ rfl

lemma pointwise_smul_support_finite [Zero γ] [SMulZeroClass β γ] (f : α → β)
    (g : α →₀ γ) : (fun x ↦ f x • g x).support.Finite :=
  Set.Finite.subset g.hasFiniteSupport (by simp; grind [smul_zero])

-- TODO(Paul-Lez): add a `DFinsupp` version of this.
-- Note: this creates an instance diamond with `SMul (α → β) (α →₀ (α → β))`, so this is an
-- def rather than an instance.
/-- Pointwise scalar multiplication given by `(f • g) x = f x • g x`. -/
-- see Note [reducible non-instances]
abbrev pointwiseScalar [Zero γ] [SMulZeroClass β γ] : SMul (α → β) (α →₀ γ) where
  smul f g := Finsupp.ofSupportFinite (fun a ↦ f a • g a) (pointwise_smul_support_finite ..)

instance pointwiseScalarSemiring [Semiring β] : SMul (α → β) (α →₀ β) := pointwiseScalar

@[simp]
theorem coe_pointwise_smul [Semiring β] (f : α → β) (g : α →₀ β) : ⇑(f • g) = f • ⇑g :=
  rfl

/-- The pointwise multiplicative action of functions on finitely supported functions -/
instance pointwiseModule [Semiring β] : Module (α → β) (α →₀ β) :=
  Function.Injective.module _ coeFnAddHom DFunLike.coe_injective coe_pointwise_smul

instance [Semiring β] : IsScalarTower β (α → β) (α →₀ β) where
  smul_assoc r f m := by ext; simp [mul_assoc]

end Finsupp
```
