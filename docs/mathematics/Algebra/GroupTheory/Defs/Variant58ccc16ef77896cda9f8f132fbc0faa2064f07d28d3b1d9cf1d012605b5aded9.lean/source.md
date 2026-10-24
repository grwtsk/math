# Complete source: GRWTSK.Algebra.GroupTheory.Defs.Variant58ccc16ef77896cda9f8f132fbc0faa2064f07d28d3b1d9cf1d012605b5aded9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f751481bf5faa6e067930beb20556ceef332a900` · SHA-256 `1c7654f2b09d0aa3b62543f5b22963aa8e445308fc63555fbbf027326b47de35`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.OrderedCommMonoid.Variantbc694c7fcf4d373235f91bc1774951371edaa5007c9f1a0703dc8ee5c231b969","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bc694c7fcf4d373235f91bc1774951371edaa5007c9f1a0703dc8ee5c231b969","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.OrderedCommMonoid.Variantbc694c7fcf4d373235f91bc1774951371edaa5007c9f1a0703dc8ee5c231b969","mathematical_subject":"Algebra.Groups","original_sha256":"bc694c7fcf4d373235f91bc1774951371edaa5007c9f1a0703dc8ee5c231b969","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Algebra/Order/Monoid/Defs.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2016 Jeremy Avigad. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jeremy Avigad, Leonardo de Moura, Mario Carneiro, Johannes Hölzl
-/
import Mathlib.Algebra.Order.Monoid.Lemmas
import Mathlib.Order.BoundedOrder


namespace GRWTSK.Algebra.GroupTheory.OrderedCommMonoid.Variantbc694c7fcf4d373235f91bc1774951371edaa5007c9f1a0703dc8ee5c231b969

#align_import algebra.order.monoid.defs from "leanprover-community/mathlib"@"70d50ecfd4900dd6d328da39ab7ebd516abe4025"

/-!
# Ordered monoids

This file provides the definitions of ordered monoids.

-/


open Function

universe u

variable {α : Type u} {β : Type*}

/-- An ordered commutative monoid is a commutative monoid
with a partial order such that `a ≤ b → c * a ≤ c * b` (multiplication is monotone)
-/
class OrderedCommMonoid (α : Type*) extends CommMonoid α, PartialOrder α where
  /-- Multiplication is monotone in an `OrderedCommMonoid`. -/
  protected mul_le_mul_left : ∀ a b : α, a ≤ b → ∀ c : α, c * a ≤ c * b
#align ordered_comm_monoid OrderedCommMonoid

/-- An ordered (additive) commutative monoid is a commutative monoid
  with a partial order such that `a ≤ b → c + a ≤ c + b` (addition is monotone)
-/
class OrderedAddCommMonoid (α : Type*) extends AddCommMonoid α, PartialOrder α where
  /-- Addition is monotone in an `OrderedAddCommMonoid`. -/
  protected add_le_add_left : ∀ a b : α, a ≤ b → ∀ c : α, c + a ≤ c + b
#align ordered_add_comm_monoid OrderedAddCommMonoid

attribute [to_additive] OrderedCommMonoid

section OrderedInstances

@[to_additive]
instance OrderedCommMonoid.to_covariantClass_left (M : Type*) [OrderedCommMonoid M] :
    CovariantClass M M (· * ·) (· ≤ ·) where
  elim := fun a _ _ bc ↦ OrderedCommMonoid.mul_le_mul_left _ _ bc a
#align ordered_comm_monoid.to_covariant_class_left OrderedCommMonoid.to_covariantClass_left
#align ordered_add_comm_monoid.to_covariant_class_left OrderedAddCommMonoid.to_covariantClass_left

/- This instance can be proven with `by infer_instance`.  However, `WithBot ℕ` does not
pick up a `CovariantClass M M (function.swap (*)) (≤)` instance without it (see PR mathlib#7940). -/
@[to_additive]
instance OrderedCommMonoid.to_covariantClass_right (M : Type*) [OrderedCommMonoid M] :
    CovariantClass M M (swap (· * ·)) (· ≤ ·) :=
  covariant_swap_mul_le_of_covariant_mul_le M
#align ordered_comm_monoid.to_covariant_class_right OrderedCommMonoid.to_covariantClass_right
#align ordered_add_comm_monoid.to_covariant_class_right OrderedAddCommMonoid.to_covariantClass_right

/- This is not an instance, to avoid creating a loop in the type-class system: in a
`LeftCancelSemigroup` with a `PartialOrder`, assuming `CovariantClass M M (*) (≤)` implies
`CovariantClass M M (*) (<)`, see `LeftCancelSemigroup.covariant_mul_lt_of_covariant_mul_le`. -/
@[to_additive]
theorem Mul.to_covariantClass_left (M : Type*) [Mul M] [PartialOrder M]
    [CovariantClass M M (· * ·) (· < ·)] :
    CovariantClass M M (· * ·) (· ≤ ·) :=
  ⟨covariant_le_of_covariant_lt _ _ _ CovariantClass.elim⟩
#align has_mul.to_covariant_class_left Mul.to_covariantClass_left
#align has_add.to_covariant_class_left Add.to_covariantClass_left

/- This is not an instance, to avoid creating a loop in the type-class system: in a
`RightCancelSemigroup` with a `PartialOrder`, assuming `CovariantClass M M (swap (*)) (<)`
implies `CovariantClass M M (swap (*)) (≤)`, see
`RightCancelSemigroup.covariant_swap_mul_lt_of_covariant_swap_mul_le`. -/
@[to_additive]
theorem Mul.to_covariantClass_right (M : Type*) [Mul M] [PartialOrder M]
    [CovariantClass M M (swap (· * ·)) (· < ·)] :
    CovariantClass M M (swap (· * ·)) (· ≤ ·) :=
  ⟨covariant_le_of_covariant_lt _ _ _ CovariantClass.elim⟩
#align has_mul.to_covariant_class_right Mul.to_covariantClass_right
#align has_add.to_covariant_class_right Add.to_covariantClass_right

end OrderedInstances

set_option linter.deprecated false in
@[deprecated] theorem bit0_pos [OrderedAddCommMonoid α] {a : α} (h : 0 < a) : 0 < bit0 a :=
  add_pos' h h
#align bit0_pos bit0_pos

/-- A linearly ordered additive commutative monoid. -/
class LinearOrderedAddCommMonoid (α : Type*) extends LinearOrder α, OrderedAddCommMonoid α
#align linear_ordered_add_comm_monoid LinearOrderedAddCommMonoid

/-- A linearly ordered commutative monoid. -/
@[to_additive]
class LinearOrderedCommMonoid (α : Type*) extends LinearOrder α, OrderedCommMonoid α
#align linear_ordered_comm_monoid LinearOrderedCommMonoid

attribute [to_additive existing] LinearOrderedCommMonoid.toOrderedCommMonoid

/-- A linearly ordered commutative monoid with an additively absorbing `⊤` element.
  Instances should include number systems with an infinite element adjoined. -/
class LinearOrderedAddCommMonoidWithTop (α : Type*) extends LinearOrderedAddCommMonoid α,
    Top α where
  /-- In a `LinearOrderedAddCommMonoidWithTop`, the `⊤` element is larger than any other element.-/
  protected le_top : ∀ x : α, x ≤ ⊤
  /-- In a `LinearOrderedAddCommMonoidWithTop`, the `⊤` element is invariant under addition. -/
  protected top_add' : ∀ x : α, ⊤ + x = ⊤
#align linear_ordered_add_comm_monoid_with_top LinearOrderedAddCommMonoidWithTop

-- see Note [lower instance priority]
instance (priority := 100) LinearOrderedAddCommMonoidWithTop.toOrderTop (α : Type u)
    [h : LinearOrderedAddCommMonoidWithTop α] : OrderTop α :=
  { h with }
#align linear_ordered_add_comm_monoid_with_top.to_order_top LinearOrderedAddCommMonoidWithTop.toOrderTop

section LinearOrderedAddCommMonoidWithTop

variable [LinearOrderedAddCommMonoidWithTop α] {a b : α}

@[simp]
theorem top_add (a : α) : ⊤ + a = ⊤ :=
  LinearOrderedAddCommMonoidWithTop.top_add' a
#align top_add top_add

@[simp]
theorem add_top (a : α) : a + ⊤ = ⊤ :=
  Trans.trans (add_comm _ _) (top_add _)
#align add_top add_top

end LinearOrderedAddCommMonoidWithTop
```
