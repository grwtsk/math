# Complete source: GRWTSK.Algebra.UniversalAlgebra.Defs.Variant3bf51268608b0a8960856e01a517a0d351cf496ce7497adf35d8ce68e95f9b6a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0e76df72ddf85eded6632af981be37826277815e` · SHA-256 `d2b97ee43a35d1d6a909a97a8883fae389134618223d028c7fd8bdfd2a6f9f63`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.IsOrderedAddMonoid.Variant87e64c2452b9d9ae0c4ba35c2b701179f6f1e02ee3ac477d56d51b37fd7a3c2b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"87e64c2452b9d9ae0c4ba35c2b701179f6f1e02ee3ac477d56d51b37fd7a3c2b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.IsOrderedAddMonoid.Variant87e64c2452b9d9ae0c4ba35c2b701179f6f1e02ee3ac477d56d51b37fd7a3c2b","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"87e64c2452b9d9ae0c4ba35c2b701179f6f1e02ee3ac477d56d51b37fd7a3c2b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Order/Monoid/Defs.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2016 Jeremy Avigad. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jeremy Avigad, Leonardo de Moura, Mario Carneiro, Johannes Hölzl, Yuyang Zhao
-/
import Mathlib.Algebra.Order.Monoid.Unbundled.Basic

/-!
# Ordered monoids

This file provides the definitions of ordered monoids.

-/



namespace GRWTSK.Algebra.UniversalAlgebra.IsOrderedAddMonoid.Variant87e64c2452b9d9ae0c4ba35c2b701179f6f1e02ee3ac477d56d51b37fd7a3c2b

open Function

variable {α : Type*}

-- TODO: assume weaker typeclasses

/-- An ordered (additive) monoid is a monoid with a partial order such that addition is monotone. -/
class IsOrderedAddMonoid (α : Type*) [AddCommMonoid α] [PartialOrder α] where
  protected add_le_add_left : ∀ a b : α, a ≤ b → ∀ c, c + a ≤ c + b
  protected add_le_add_right : ∀ a b : α, a ≤ b → ∀ c, a + c ≤ b + c := fun a b h c ↦ by
    rw [add_comm _ c, add_comm _ c]; exact add_le_add_left a b h c

/-- An ordered monoid is a monoid with a partial order such that multiplication is monotone. -/
@[to_additive]
class IsOrderedMonoid (α : Type*) [CommMonoid α] [PartialOrder α] where
  protected mul_le_mul_left : ∀ a b : α, a ≤ b → ∀ c, c * a ≤ c * b
  protected mul_le_mul_right : ∀ a b : α, a ≤ b → ∀ c, a * c ≤ b * c := fun a b h c ↦ by
    rw [mul_comm _ c, mul_comm _ c]; exact mul_le_mul_left a b h c

section IsOrderedMonoid
variable [CommMonoid α] [PartialOrder α] [IsOrderedMonoid α]

@[to_additive]
instance (priority := 900) IsOrderedMonoid.toMulLeftMono : MulLeftMono α where
  elim := fun a _ _ bc ↦ IsOrderedMonoid.mul_le_mul_left _ _ bc a

@[to_additive]
instance (priority := 900) IsOrderedMonoid.toMulRightMono : MulRightMono α where
  elim := fun a _ _ bc ↦ IsOrderedMonoid.mul_le_mul_right _ _ bc a

end IsOrderedMonoid

/-- An ordered cancellative additive monoid is an ordered additive
monoid in which addition is cancellative and monotone. -/
class IsOrderedCancelAddMonoid (α : Type*) [AddCommMonoid α] [PartialOrder α] extends
    IsOrderedAddMonoid α where
  protected le_of_add_le_add_left : ∀ a b c : α, a + b ≤ a + c → b ≤ c
  protected le_of_add_le_add_right : ∀ a b c : α, b + a ≤ c + a → b ≤ c := fun a b c h ↦ by
    rw [add_comm _ a, add_comm _ a] at h; exact le_of_add_le_add_left a b c h

/-- An ordered cancellative monoid is an ordered monoid in which
multiplication is cancellative and monotone. -/
@[to_additive IsOrderedCancelAddMonoid]
class IsOrderedCancelMonoid (α : Type*) [CommMonoid α] [PartialOrder α] extends
    IsOrderedMonoid α where
  protected le_of_mul_le_mul_left : ∀ a b c : α, a * b ≤ a * c → b ≤ c
  protected le_of_mul_le_mul_right : ∀ a b c : α, b * a ≤ c * a → b ≤ c := fun a b c h ↦ by
    rw [mul_comm _ a, mul_comm _ a] at h; exact le_of_mul_le_mul_left a b c h

section IsOrderedCancelMonoid
variable [CommMonoid α] [PartialOrder α] [IsOrderedCancelMonoid α]

-- See note [lower instance priority]
@[to_additive]
instance (priority := 200) IsOrderedCancelMonoid.toMulLeftReflectLE :
    MulLeftReflectLE α :=
  ⟨IsOrderedCancelMonoid.le_of_mul_le_mul_left⟩

@[to_additive]
instance (priority := 900) IsOrderedCancelMonoid.toMulLeftReflectLT :
    MulLeftReflectLT α where
  elim := contravariant_lt_of_contravariant_le α α _ ContravariantClass.elim

@[to_additive]
theorem IsOrderedCancelMonoid.toMulRightReflectLT :
    MulRightReflectLT α :=
  inferInstance

-- See note [lower instance priority]
@[to_additive IsOrderedCancelAddMonoid.toIsCancelAdd]
instance (priority := 100) IsOrderedCancelMonoid.toIsCancelMul : IsCancelMul α where
  mul_left_cancel _ _ _ h :=
    (le_of_mul_le_mul_left' h.le).antisymm <| le_of_mul_le_mul_left' h.ge
  mul_right_cancel _ _ _ h :=
    (le_of_mul_le_mul_right' h.le).antisymm <| le_of_mul_le_mul_right' h.ge

end IsOrderedCancelMonoid

/-- An ordered (additive) commutative monoid is a commutative monoid with a partial order such that
addition is monotone. -/
@[deprecated "Use `[AddCommMonoid α] [PartialOrder α] [IsOrderedAddMonoid α]` instead."
  (since := "2025-04-10")]
structure OrderedAddCommMonoid (α : Type*) extends AddCommMonoid α, PartialOrder α where
  protected add_le_add_left : ∀ a b : α, a ≤ b → ∀ c, c + a ≤ c + b

set_option linter.existingAttributeWarning false in
/-- An ordered commutative monoid is a commutative monoid with a partial order such that
multiplication is monotone. -/
@[to_additive,
  deprecated "Use `[CommMonoid α] [PartialOrder α] [IsOrderedMonoid α]` instead."
  (since := "2025-04-10")]
structure OrderedCommMonoid (α : Type*) extends CommMonoid α, PartialOrder α where
  protected mul_le_mul_left : ∀ a b : α, a ≤ b → ∀ c, c * a ≤ c * b

set_option linter.deprecated false in
/-- An ordered cancellative additive commutative monoid is a partially ordered commutative additive
monoid in which addition is cancellative and monotone. -/
@[deprecated "Use `[AddCommMonoid α] [PartialOrder α] [IsOrderedCancelAddMonoid α]` instead."
  (since := "2025-04-10")]
structure OrderedCancelAddCommMonoid (α : Type*) extends OrderedAddCommMonoid α where
  protected le_of_add_le_add_left : ∀ a b c : α, a + b ≤ a + c → b ≤ c

set_option linter.existingAttributeWarning false in
set_option linter.deprecated false in
/-- An ordered cancellative commutative monoid is a partially ordered commutative monoid in which
multiplication is cancellative and monotone. -/
@[to_additive OrderedCancelAddCommMonoid,
  deprecated "Use `[CommMonoid α] [PartialOrder α] [IsOrderedCancelMonoid α]` instead."
  (since := "2025-04-10")]
structure OrderedCancelCommMonoid (α : Type*) extends OrderedCommMonoid α where
  protected le_of_mul_le_mul_left : ∀ a b c : α, a * b ≤ a * c → b ≤ c

set_option linter.deprecated false in
/-- A linearly ordered additive commutative monoid. -/
@[deprecated "Use `[AddCommMonoid α] [LinearOrder α] [IsOrderedAddMonoid α]` instead."
  (since := "2025-04-10")]
structure LinearOrderedAddCommMonoid (α : Type*) extends OrderedAddCommMonoid α, LinearOrder α

set_option linter.existingAttributeWarning false in
set_option linter.deprecated false in
/-- A linearly ordered commutative monoid. -/
@[to_additive,
  deprecated "Use `[CommMonoid α] [LinearOrder α] [IsOrderedMonoid α]` instead."
  (since := "2025-04-10")]
structure LinearOrderedCommMonoid (α : Type*) extends OrderedCommMonoid α, LinearOrder α

set_option linter.deprecated false in
/-- A linearly ordered cancellative additive commutative monoid is an additive commutative monoid
with a decidable linear order in which addition is cancellative and monotone. -/
@[deprecated "Use `[AddCommMonoid α] [LinearOrder α] [IsOrderedCancelAddMonoid α]` instead."
  (since := "2025-04-10")]
structure LinearOrderedCancelAddCommMonoid (α : Type*) extends OrderedCancelAddCommMonoid α,
    LinearOrderedAddCommMonoid α

set_option linter.existingAttributeWarning false in
set_option linter.deprecated false in
/-- A linearly ordered cancellative commutative monoid is a commutative monoid with a linear order
in which multiplication is cancellative and monotone. -/
@[to_additive LinearOrderedCancelAddCommMonoid,
  deprecated "Use `[CommMonoid α] [LinearOrder α] [IsOrderedCancelMonoid α]` instead."
  (since := "2025-04-10")]
structure LinearOrderedCancelCommMonoid (α : Type*) extends OrderedCancelCommMonoid α,
    LinearOrderedCommMonoid α

attribute [nolint docBlame]
  LinearOrderedAddCommMonoid.toLinearOrder
  LinearOrderedCancelCommMonoid.toLinearOrderedCommMonoid
  LinearOrderedCancelAddCommMonoid.toLinearOrderedAddCommMonoid
  LinearOrderedCommMonoid.toLinearOrder

variable [CommMonoid α] [LinearOrder α] [IsOrderedMonoid α] {a : α}

@[to_additive (attr := simp)]
theorem one_le_mul_self_iff : 1 ≤ a * a ↔ 1 ≤ a :=
  ⟨(fun h ↦ by push_neg at h ⊢; exact mul_lt_one' h h).mtr, fun h ↦ one_le_mul h h⟩

@[to_additive (attr := simp)]
theorem one_lt_mul_self_iff : 1 < a * a ↔ 1 < a :=
  ⟨(fun h ↦ by push_neg at h ⊢; exact mul_le_one' h h).mtr, fun h ↦ one_lt_mul'' h h⟩

@[to_additive (attr := simp)]
theorem mul_self_le_one_iff : a * a ≤ 1 ↔ a ≤ 1 := by simp [← not_iff_not]

@[to_additive (attr := simp)]
theorem mul_self_lt_one_iff : a * a < 1 ↔ a < 1 := by simp [← not_iff_not]
```
