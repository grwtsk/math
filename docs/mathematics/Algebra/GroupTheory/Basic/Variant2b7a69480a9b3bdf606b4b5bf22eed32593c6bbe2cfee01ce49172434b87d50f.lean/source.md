# Complete source: GRWTSK.Algebra.GroupTheory.Basic.Variant2b7a69480a9b3bdf606b4b5bf22eed32593c6bbe2cfee01ce49172434b87d50f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `319412d135a7c3026a561cc3702cfce51d570ee8` · SHA-256 `e144ed61dc22375814aa929558bf2f55827ebff4c738096c32fb55d4fa78049a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.FunctionInjectiveIsOrderedMonoid.Variant66ea8d5482f60c56b0ec497e3fcb0b0a9563acb420ba0649e841739785e415ba","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"66ea8d5482f60c56b0ec497e3fcb0b0a9563acb420ba0649e841739785e415ba","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.FunctionInjectiveIsOrderedMonoid.Variant66ea8d5482f60c56b0ec497e3fcb0b0a9563acb420ba0649e841739785e415ba","mathematical_subject":"Algebra.Groups","original_sha256":"66ea8d5482f60c56b0ec497e3fcb0b0a9563acb420ba0649e841739785e415ba","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Order/Monoid/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2016 Jeremy Avigad. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jeremy Avigad, Leonardo de Moura, Mario Carneiro, Johannes Hölzl
-/
import Mathlib.Algebra.Order.Monoid.Defs
import Mathlib.Algebra.Group.InjSurj
import Mathlib.Order.Hom.Basic

/-!
# Ordered monoids

This file develops some additional material on ordered monoids.
-/



namespace GRWTSK.Algebra.GroupTheory.FunctionInjectiveIsOrderedMonoid.Variant66ea8d5482f60c56b0ec497e3fcb0b0a9563acb420ba0649e841739785e415ba

open Function

universe u

variable {α : Type u} {β : Type*} [CommMonoid α] [PartialOrder α]

/-- Pullback an `IsOrderedMonoid` under an injective map. -/
@[to_additive "Pullback an `IsOrderedAddMonoid` under an injective map."]
lemma Function.Injective.isOrderedMonoid [IsOrderedMonoid α] [One β] [Mul β]
    [Pow β ℕ] (f : β → α) (hf : Function.Injective f) (one : f 1 = 1)
    (mul : ∀ x y, f (x * y) = f x * f y) (npow : ∀ (x) (n : ℕ), f (x ^ n) = f x ^ n) :
    let _ : CommMonoid β := hf.commMonoid f one mul npow
    let _ : PartialOrder β := PartialOrder.lift f hf
    IsOrderedMonoid β :=
  let _ : CommMonoid β := hf.commMonoid f one mul npow
  let _ : PartialOrder β := PartialOrder.lift f hf
  { mul_le_mul_left a b ab c := show f (c * a) ≤ f (c * b) by
      rw [mul, mul]; apply mul_le_mul_left'; exact ab }

/-- Pullback an `IsOrderedCancelMonoid` under an injective map. -/
@[to_additive Function.Injective.isOrderedCancelAddMonoid
    "Pullback an `IsOrderedCancelAddMonoid` under an injective map."]
lemma Function.Injective.isOrderedCancelMonoid [IsOrderedCancelMonoid α] [One β] [Mul β]
    [Pow β ℕ] (f : β → α) (hf : Injective f) (one : f 1 = 1) (mul : ∀ x y, f (x * y) = f x * f y)
    (npow : ∀ (x) (n : ℕ), f (x ^ n) = f x ^ n) :
    let _ : CommMonoid β := hf.commMonoid f one mul npow
    let _ : PartialOrder β := PartialOrder.lift f hf
    IsOrderedCancelMonoid β :=
  let _ : CommMonoid β := hf.commMonoid f one mul npow
  let _ : PartialOrder β := PartialOrder.lift f hf
  { __ := hf.isOrderedMonoid f one mul npow
    le_of_mul_le_mul_left a b c (bc : f (a * b) ≤ f (a * c)) :=
      (mul_le_mul_iff_left (f a)).1 (by rwa [← mul, ← mul]) }

@[deprecated (since := "2025-04-10")]
alias Function.Injective.orderedCommMonoid := Function.Injective.isOrderedMonoid
@[deprecated (since := "2025-04-10")]
alias Function.Injective.orderedAddCommMonoid := Function.Injective.isOrderedAddMonoid
@[deprecated (since := "2025-04-10")]
alias Function.Injective.orderedCancelCommMonoid := Function.Injective.isOrderedCancelMonoid
@[deprecated (since := "2025-04-10")]
alias Function.Injective.orderedCancelAddCommMonoid := Function.Injective.isOrderedCancelAddMonoid
@[deprecated (since := "2025-04-10")]
alias Function.Injective.linearOrderedCommMonoid := Function.Injective.isOrderedMonoid
@[deprecated (since := "2025-04-10")]
alias Function.Injective.linearOrderedAddCommMonoid := Function.Injective.isOrderedAddMonoid
@[deprecated (since := "2025-04-10")]
alias Function.Injective.linearOrderedCancelCommMonoid := Function.Injective.isOrderedCancelMonoid
@[deprecated (since := "2025-04-10")]
alias Function.Injective.linearOrderedCancelAddCommMonoid :=
  Function.Injective.isOrderedCancelAddMonoid
@[deprecated (since := "2025-04-10")]
alias Function.Injective.orderedCommGroup := Function.Injective.isOrderedMonoid
@[deprecated (since := "2025-04-10")]
alias Function.Injective.orderedAddCommGroup := Function.Injective.isOrderedAddMonoid
@[deprecated (since := "2025-04-10")]
alias Function.Injective.linearOrderedCommGroup := Function.Injective.isOrderedMonoid
@[deprecated (since := "2025-04-10")]
alias Function.Injective.linearOrderedAddCommGroup := Function.Injective.isOrderedAddMonoid

-- TODO find a better home for the next two constructions.
/-- The order embedding sending `b` to `a * b`, for some fixed `a`.
See also `OrderIso.mulLeft` when working in an ordered group. -/
@[to_additive (attr := simps!)
      "The order embedding sending `b` to `a + b`, for some fixed `a`.
       See also `OrderIso.addLeft` when working in an additive ordered group."]
def OrderEmbedding.mulLeft {α : Type*} [Mul α] [LinearOrder α]
    [MulLeftStrictMono α] (m : α) : α ↪o α :=
  OrderEmbedding.ofStrictMono (fun n => m * n) fun _ _ w => mul_lt_mul_left' w m

/-- The order embedding sending `b` to `b * a`, for some fixed `a`.
See also `OrderIso.mulRight` when working in an ordered group. -/
@[to_additive (attr := simps!)
      "The order embedding sending `b` to `b + a`, for some fixed `a`.
       See also `OrderIso.addRight` when working in an additive ordered group."]
def OrderEmbedding.mulRight {α : Type*} [Mul α] [LinearOrder α]
    [MulRightStrictMono α] (m : α) : α ↪o α :=
  OrderEmbedding.ofStrictMono (fun n => n * m) fun _ _ w => mul_lt_mul_right' w m
```
