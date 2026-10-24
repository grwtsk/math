# Complete source: GRWTSK.Algebra.UniversalAlgebra.Defs.Varianta48564fe5194071775fe399302160d10f2a27b1ada8d2d098bb559cee9653968

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5255705d9a7c5cc8031007d53cc4a77226e0b34a` · SHA-256 `5539c5ac6c6133561655731388b5e0c74324f71b373ff9474492907900607651`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.IsOrderedAddMonoid.Variantea831d010021669b97efd1730387420f2320378e8e775c7d3bcb51d2fa29dad1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ea831d010021669b97efd1730387420f2320378e8e775c7d3bcb51d2fa29dad1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.IsOrderedAddMonoid.Variantea831d010021669b97efd1730387420f2320378e8e775c7d3bcb51d2fa29dad1","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"ea831d010021669b97efd1730387420f2320378e8e775c7d3bcb51d2fa29dad1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/Order/Monoid/Defs.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2016 Jeremy Avigad. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jeremy Avigad, Leonardo de Moura, Mario Carneiro, Johannes Hölzl, Yuyang Zhao
-/
module

public import Mathlib.Algebra.Order.Monoid.Unbundled.Basic

/-!
# Ordered monoids

This file provides the definitions of ordered monoids.

-/


namespace GRWTSK.Algebra.UniversalAlgebra.IsOrderedAddMonoid.Variantea831d010021669b97efd1730387420f2320378e8e775c7d3bcb51d2fa29dad1

public section


open Function

variable {α : Type*}

-- TODO: assume weaker typeclasses

/-- An ordered (additive) monoid is a monoid with a preorder such that addition is monotone. -/
class IsOrderedAddMonoid (α : Type*) [AddCommMonoid α] [Preorder α] where
  protected add_le_add_left (a b : α) : a ≤ b → ∀ c, a + c ≤ b + c
  protected add_le_add_right (a b : α) : a ≤ b → ∀ c, c + a ≤ c + b := fun h c ↦ by
    rw [add_comm c, add_comm c]; exact add_le_add_left a b h c

/-- An ordered monoid is a monoid with a preorder such that multiplication is monotone. -/
@[to_additive]
class IsOrderedMonoid (α : Type*) [CommMonoid α] [Preorder α] where
  protected mul_le_mul_left (a b : α) : a ≤ b → ∀ c, a * c ≤ b * c
  protected mul_le_mul_right (a b : α) : a ≤ b → ∀ c, c * a ≤ c * b := fun h c ↦ by
    rw [mul_comm c, mul_comm c]; exact mul_le_mul_left a b h c

attribute [to_dual self] IsOrderedMonoid.mk IsOrderedAddMonoid.mk

section IsOrderedMonoid
variable [CommMonoid α] [Preorder α]

@[to_additive]
lemma IsOrderedMonoid.of_mulLeftMono [MulLeftMono α] : IsOrderedMonoid α where
  mul_le_mul_left _ _ h c := mul_le_mul_left h c
  mul_le_mul_right _ _ h c := mul_le_mul_right h c

@[to_additive]
lemma IsOrderedMonoid.of_mulRightMono [MulRightMono α] : IsOrderedMonoid α where
  mul_le_mul_left _ _ h c := mul_le_mul_left h c

variable [IsOrderedMonoid α]

@[to_additive]
instance (priority := 900) IsOrderedMonoid.toMulLeftMono : MulLeftMono α where
  elim := fun a _ _ bc ↦ IsOrderedMonoid.mul_le_mul_right _ _ bc a

@[to_additive]
instance (priority := 900) IsOrderedMonoid.toMulRightMono : MulRightMono α where
  elim := fun a _ _ bc ↦ IsOrderedMonoid.mul_le_mul_left _ _ bc a

end IsOrderedMonoid

/-- An ordered cancellative additive monoid is an ordered additive
monoid in which addition is cancellative and monotone. -/
class IsOrderedCancelAddMonoid (α : Type*) [AddCommMonoid α] [Preorder α] extends
    IsOrderedAddMonoid α where
  protected le_of_add_le_add_left : ∀ a b c : α, a + b ≤ a + c → b ≤ c
  protected le_of_add_le_add_right : ∀ a b c : α, b + a ≤ c + a → b ≤ c := fun a b c h ↦ by
    rw [add_comm _ a, add_comm _ a] at h; exact le_of_add_le_add_left a b c h

/-- An ordered cancellative monoid is an ordered monoid in which
multiplication is cancellative and monotone. -/
@[to_additive IsOrderedCancelAddMonoid]
class IsOrderedCancelMonoid (α : Type*) [CommMonoid α] [Preorder α] extends
    IsOrderedMonoid α where
  protected le_of_mul_le_mul_left : ∀ a b c : α, a * b ≤ a * c → b ≤ c
  protected le_of_mul_le_mul_right : ∀ a b c : α, b * a ≤ c * a → b ≤ c := fun a b c h ↦ by
    rw [mul_comm _ a, mul_comm _ a] at h; exact le_of_mul_le_mul_left a b c h

instance [AddCommMonoid α] [PartialOrder α] [IsOrderedCancelAddMonoid α] :
    Lean.Grind.OrderedAdd α where
  add_le_left_iff {a b} c := ⟨
    fun h ↦ IsOrderedAddMonoid.add_le_add_left a b h c,
    IsOrderedCancelAddMonoid.le_of_add_le_add_right c a b⟩

section IsOrderedCancelMonoid
variable [CommMonoid α] [PartialOrder α] [IsOrderedCancelMonoid α]

-- See note [lower instance priority]
@[to_additive]
instance (priority := 200) IsOrderedCancelMonoid.toMulLeftReflectLE
  {α : Type*} [CommMonoid α] [Preorder α] [IsOrderedCancelMonoid α] : MulLeftReflectLE α where
  le_of_mul_le_mul_left' := IsOrderedCancelMonoid.le_of_mul_le_mul_left _ _ _

@[to_additive]
instance (priority := 900) IsOrderedCancelMonoid.toMulLeftReflectLT : MulLeftReflectLT α where
  elim := contravariant_lt_of_contravariant_le α α _ fun _ ↦ MulLeftReflectLE.le_of_mul_le_mul_left'

@[to_additive]
theorem IsOrderedCancelMonoid.toMulRightReflectLT : MulRightReflectLT α :=
  inferInstance

-- See note [lower instance priority]
@[to_additive]
instance (priority := 100) IsOrderedCancelMonoid.toIsCancelMul : IsCancelMul α where
  mul_left_cancel _ _ _ h :=
    (le_of_mul_le_mul_left' h.le).antisymm <| le_of_mul_le_mul_left' h.ge
  mul_right_cancel _ _ _ h :=
    (le_of_mul_le_mul_right' h.le).antisymm <| le_of_mul_le_mul_right' h.ge

@[to_additive]
theorem IsOrderedCancelMonoid.of_mul_lt_mul_left {α : Type*} [CommMonoid α] [LinearOrder α]
    (hmul : ∀ a b c : α, b < c → a * b < a * c) : IsOrderedCancelMonoid α where
  mul_le_mul_left a b h c := by
    obtain rfl | h := eq_or_lt_of_le h
    · simp
    · simpa [mul_comm] using (hmul _ _ _ h).le
  le_of_mul_le_mul_left a b c h := by
    contrapose! h
    exact hmul _ _ _ h

end IsOrderedCancelMonoid

variable [CommMonoid α] [LinearOrder α] [IsOrderedMonoid α] {a : α}

@[to_additive (attr := simp)]
theorem one_le_mul_self_iff : 1 ≤ a * a ↔ 1 ≤ a :=
  ⟨fun h ↦ by contrapose! h; exact mul_lt_one' h h, fun h ↦ one_le_mul h h⟩

@[to_additive (attr := simp)]
theorem one_lt_mul_self_iff : 1 < a * a ↔ 1 < a :=
  ⟨fun h ↦ by contrapose! h; exact mul_le_one' h h, fun h ↦ one_lt_mul'' h h⟩

@[to_additive (attr := simp)]
theorem mul_self_le_one_iff : a * a ≤ 1 ↔ a ≤ 1 := by contrapose!; exact one_lt_mul_self_iff

@[to_additive (attr := simp)]
theorem mul_self_lt_one_iff : a * a < 1 ↔ a < 1 := by contrapose!; exact one_le_mul_self_iff
```
