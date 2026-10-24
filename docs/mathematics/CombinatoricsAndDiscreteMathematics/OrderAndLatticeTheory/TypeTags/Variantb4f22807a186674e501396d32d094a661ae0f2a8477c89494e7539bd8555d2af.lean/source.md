# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.TypeTags.Variantb4f22807a186674e501396d32d094a661ae0f2a8477c89494e7539bd8555d2af

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2ed01639d764b48d0279297f446999b29d4b7bae` · SHA-256 `5fc44773b4a499ceb732b7433bb90ddddb097304dfeccc4733a4fe435bb2ffb7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.OfMulLe.Variante029596e80a8bc1f6cabc4a48bc4ec2908f61fc113ae945c0f5ad87adbb58fbe","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e029596e80a8bc1f6cabc4a48bc4ec2908f61fc113ae945c0f5ad87adbb58fbe","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.OrderTheory.SourceCorpus.OfMulLe.Variante029596e80a8bc1f6cabc4a48bc4ec2908f61fc113ae945c0f5ad87adbb58fbe","mathematical_subject":"Algebra.OrderTheory","original_sha256":"e029596e80a8bc1f6cabc4a48bc4ec2908f61fc113ae945c0f5ad87adbb58fbe","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Algebra/Order/Monoid/TypeTags.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2016 Jeremy Avigad. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jeremy Avigad, Leonardo de Moura, Mario Carneiro, Johannes Hölzl
-/
import Mathlib.Algebra.Group.TypeTags
import Mathlib.Algebra.Order.Monoid.Cancel.Defs
import Mathlib.Algebra.Order.Monoid.Canonical.Defs


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.OfMulLe.Variante029596e80a8bc1f6cabc4a48bc4ec2908f61fc113ae945c0f5ad87adbb58fbe

#align_import algebra.order.monoid.type_tags from "leanprover-community/mathlib"@"2258b40dacd2942571c8ce136215350c702dc78f"

/-! # Ordered monoid structures on `Multiplicative α` and `Additive α`. -/

set_option autoImplicit true

instance : ∀ [LE α], LE (Multiplicative α) :=
  fun {inst} => inst

instance : ∀ [LE α], LE (Additive α) :=
  fun {inst} => inst

instance : ∀ [LT α], LT (Multiplicative α) :=
  fun {inst} => inst

instance : ∀ [LT α], LT (Additive α) :=
  fun {inst} => inst

instance Multiplicative.preorder : ∀ [Preorder α], Preorder (Multiplicative α) :=
  fun {inst} => inst

instance Additive.preorder : ∀ [Preorder α], Preorder (Additive α) :=
  fun {inst} => inst

instance Multiplicative.partialOrder : ∀ [PartialOrder α], PartialOrder (Multiplicative α) :=
  fun {inst} => inst

instance Additive.partialOrder : ∀ [PartialOrder α], PartialOrder (Additive α) :=
  fun {inst} => inst

instance Multiplicative.linearOrder : ∀ [LinearOrder α], LinearOrder (Multiplicative α) :=
  fun {inst} => inst

instance Additive.linearOrder : ∀ [LinearOrder α], LinearOrder (Additive α) :=
  fun {inst} => inst

instance Multiplicative.orderBot [LE α] : ∀ [OrderBot α], OrderBot (Multiplicative α) :=
  fun {inst} => inst

instance Additive.orderBot [LE α] : ∀ [OrderBot α], OrderBot (Additive α) :=
  fun {inst} => inst

instance Multiplicative.orderTop [LE α] : ∀ [OrderTop α], OrderTop (Multiplicative α) :=
  fun {inst} => inst

instance Additive.orderTop [LE α] : ∀ [OrderTop α], OrderTop (Additive α) :=
  fun {inst} => inst

instance Multiplicative.boundedOrder [LE α] : ∀ [BoundedOrder α], BoundedOrder (Multiplicative α) :=
  fun {inst} => inst

instance Additive.boundedOrder [LE α] : ∀ [BoundedOrder α], BoundedOrder (Additive α) :=
  fun {inst} => inst

instance Multiplicative.orderedCommMonoid [OrderedAddCommMonoid α] :
    OrderedCommMonoid (Multiplicative α) :=
  { Multiplicative.partialOrder, Multiplicative.commMonoid with
    mul_le_mul_left := @OrderedAddCommMonoid.add_le_add_left α _ }

instance Additive.orderedAddCommMonoid [OrderedCommMonoid α] :
    OrderedAddCommMonoid (Additive α) :=
  { Additive.partialOrder, Additive.addCommMonoid with
    add_le_add_left := @OrderedCommMonoid.mul_le_mul_left α _ }

instance Multiplicative.orderedCancelAddCommMonoid [OrderedCancelAddCommMonoid α] :
    OrderedCancelCommMonoid (Multiplicative α) :=
  { Multiplicative.orderedCommMonoid with
    le_of_mul_le_mul_left := @OrderedCancelAddCommMonoid.le_of_add_le_add_left α _ }

instance Additive.orderedCancelAddCommMonoid [OrderedCancelCommMonoid α] :
    OrderedCancelAddCommMonoid (Additive α) :=
  { Additive.orderedAddCommMonoid with
    le_of_add_le_add_left := @OrderedCancelCommMonoid.le_of_mul_le_mul_left α _ }

instance Multiplicative.linearOrderedCommMonoid [LinearOrderedAddCommMonoid α] :
    LinearOrderedCommMonoid (Multiplicative α) :=
  { Multiplicative.linearOrder, Multiplicative.orderedCommMonoid with }

instance Additive.linearOrderedAddCommMonoid [LinearOrderedCommMonoid α] :
    LinearOrderedAddCommMonoid (Additive α) :=
  { Additive.linearOrder, Additive.orderedAddCommMonoid with }

instance Multiplicative.existsMulOfLe [Add α] [LE α] [ExistsAddOfLE α] :
    ExistsMulOfLE (Multiplicative α) :=
  ⟨@exists_add_of_le α _ _ _⟩

instance Additive.existsAddOfLe [Mul α] [LE α] [ExistsMulOfLE α] : ExistsAddOfLE (Additive α) :=
  ⟨@exists_mul_of_le α _ _ _⟩

instance Multiplicative.canonicallyOrderedMonoid [CanonicallyOrderedAddMonoid α] :
    CanonicallyOrderedMonoid (Multiplicative α) :=
  { Multiplicative.orderedCommMonoid, Multiplicative.orderBot,
    Multiplicative.existsMulOfLe with le_self_mul := @le_self_add α _ }

instance Additive.canonicallyOrderedAddMonoid [CanonicallyOrderedMonoid α] :
    CanonicallyOrderedAddMonoid (Additive α) :=
  { Additive.orderedAddCommMonoid, Additive.orderBot, Additive.existsAddOfLe with
    le_self_add := @le_self_mul α _ }

instance Multiplicative.canonicallyLinearOrderedMonoid [CanonicallyLinearOrderedAddMonoid α] :
    CanonicallyLinearOrderedMonoid (Multiplicative α) :=
  { Multiplicative.canonicallyOrderedMonoid, Multiplicative.linearOrder with }

instance [CanonicallyLinearOrderedMonoid α] : CanonicallyLinearOrderedAddMonoid (Additive α) :=
  { Additive.canonicallyOrderedAddMonoid, Additive.linearOrder with }

namespace Additive

variable [Preorder α]

@[simp]
theorem ofMul_le {a b : α} : ofMul a ≤ ofMul b ↔ a ≤ b :=
  Iff.rfl
#align additive.of_mul_le Additive.ofMul_le

@[simp]
theorem ofMul_lt {a b : α} : ofMul a < ofMul b ↔ a < b :=
  Iff.rfl
#align additive.of_mul_lt Additive.ofMul_lt

@[simp]
theorem toMul_le {a b : Additive α} : toMul a ≤ toMul b ↔ a ≤ b :=
  Iff.rfl
#align additive.to_mul_le Additive.toMul_le

@[simp]
theorem toMul_lt {a b : Additive α} : toMul a < toMul b ↔ a < b :=
  Iff.rfl
#align additive.to_mul_lt Additive.toMul_lt

end Additive

namespace Multiplicative

variable [Preorder α]

@[simp]
theorem ofAdd_le {a b : α} : ofAdd a ≤ ofAdd b ↔ a ≤ b :=
  Iff.rfl
#align multiplicative.of_add_le Multiplicative.ofAdd_le

@[simp]
theorem ofAdd_lt {a b : α} : ofAdd a < ofAdd b ↔ a < b :=
  Iff.rfl
#align multiplicative.of_add_lt Multiplicative.ofAdd_lt

@[simp]
theorem toAdd_le {a b : Multiplicative α} : toAdd a ≤ toAdd b ↔ a ≤ b :=
  Iff.rfl
#align multiplicative.to_add_le Multiplicative.toAdd_le

@[simp]
theorem toAdd_lt {a b : Multiplicative α} : toAdd a < toAdd b ↔ a < b :=
  Iff.rfl
#align multiplicative.to_add_lt Multiplicative.toAdd_lt

end Multiplicative
```
