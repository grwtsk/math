# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.TypeTags.Variant170ee6e488e0468c3028942759a468f7406fb0338eade956d19676e10cfd8e45

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `483877e4fee6eca7fdfb0ff72ff16c37802c29ef` · SHA-256 `170ee6e488e0468c3028942759a468f7406fb0338eade956d19676e10cfd8e45`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2016 Jeremy Avigad. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jeremy Avigad, Leonardo de Moura, Mario Carneiro, Johannes Hölzl
-/
import Mathlib.Algebra.Order.Monoid.Unbundled.ExistsOfLE
import Mathlib.Algebra.Group.TypeTags.Basic
import Mathlib.Order.BoundedOrder.Basic

/-! # Ordered monoid structures on `Multiplicative α` and `Additive α`. -/

variable {α : Type*}

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

instance Multiplicative.existsMulOfLe [Add α] [LE α] [ExistsAddOfLE α] :
    ExistsMulOfLE (Multiplicative α) :=
  ⟨@exists_add_of_le α _ _ _⟩

instance Additive.existsAddOfLe [Mul α] [LE α] [ExistsMulOfLE α] : ExistsAddOfLE (Additive α) :=
  ⟨@exists_mul_of_le α _ _ _⟩

namespace Additive

variable [Preorder α]

@[simp]
theorem ofMul_le {a b : α} : ofMul a ≤ ofMul b ↔ a ≤ b :=
  Iff.rfl

@[simp]
theorem ofMul_lt {a b : α} : ofMul a < ofMul b ↔ a < b :=
  Iff.rfl

@[simp]
theorem toMul_le {a b : Additive α} : a.toMul ≤ b.toMul ↔ a ≤ b :=
  Iff.rfl

@[simp]
theorem toMul_lt {a b : Additive α} : a.toMul < b.toMul ↔ a < b :=
  Iff.rfl

@[gcongr] alias ⟨_, toMul_mono⟩ := toMul_le
@[gcongr] alias ⟨_, ofMul_mono⟩ := ofMul_le
@[gcongr] alias ⟨_, toMul_strictMono⟩ := toMul_lt
@[gcongr] alias ⟨_, foMul_strictMono⟩ := ofMul_lt

end Additive

namespace Multiplicative

variable [Preorder α]

@[simp]
theorem ofAdd_le {a b : α} : ofAdd a ≤ ofAdd b ↔ a ≤ b :=
  Iff.rfl

@[simp]
theorem ofAdd_lt {a b : α} : ofAdd a < ofAdd b ↔ a < b :=
  Iff.rfl

@[simp]
theorem toAdd_le {a b : Multiplicative α} : a.toAdd ≤ b.toAdd ↔ a ≤ b :=
  Iff.rfl

@[simp]
theorem toAdd_lt {a b : Multiplicative α} : a.toAdd < b.toAdd ↔ a < b :=
  Iff.rfl

@[gcongr] alias ⟨_, toAdd_mono⟩ := toAdd_le
@[gcongr] alias ⟨_, ofAdd_mono⟩ := ofAdd_le
@[gcongr] alias ⟨_, toAdd_strictMono⟩ := toAdd_lt
@[gcongr] alias ⟨_, ofAdd_strictMono⟩ := ofAdd_lt

end Multiplicative
```
