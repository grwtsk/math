# Complete source: GRWTSK.Algebra.UniversalAlgebra.Basic.Variant03e434c02262c3bf68ca7db7370e34946002fd06055fad5653564b25df9da1c0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1ebbf19e46414d5c7d21e7d240765217b19e858f` · SHA-256 `03e434c02262c3bf68ca7db7370e34946002fd06055fad5653564b25df9da1c0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2019 Johan Commelin. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johan Commelin, Floris van Doorn
-/
import Mathlib.Algebra.GroupWithZero.Basic
import Mathlib.Algebra.Group.Pointwise.Set.Basic

/-!
# Pointwise operations of sets in a group with zero

This file proves properties of pointwise operations of sets in a group with zero.

## Tags

set multiplication, set addition, pointwise addition, pointwise multiplication,
pointwise subtraction
-/

assert_not_exists MulAction OrderedAddCommMonoid Ring

open Function
open scoped Pointwise

variable {α : Type*}

namespace Set

section MulZeroClass
variable [MulZeroClass α] {s : Set α}

/-! Note that `Set` is not a `MulZeroClass` because `0 * ∅ ≠ 0`. -/

lemma mul_zero_subset (s : Set α) : s * 0 ⊆ 0 := by simp [subset_def, mem_mul]
lemma zero_mul_subset (s : Set α) : 0 * s ⊆ 0 := by simp [subset_def, mem_mul]

lemma Nonempty.mul_zero (hs : s.Nonempty) : s * 0 = 0 :=
  s.mul_zero_subset.antisymm <| by simpa [mem_mul] using hs

lemma Nonempty.zero_mul (hs : s.Nonempty) : 0 * s = 0 :=
  s.zero_mul_subset.antisymm <| by simpa [mem_mul] using hs

end MulZeroClass

section GroupWithZero
variable [GroupWithZero α] {s : Set α}

lemma div_zero_subset (s : Set α) : s / 0 ⊆ 0 := by simp [subset_def, mem_div]
lemma zero_div_subset (s : Set α) : 0 / s ⊆ 0 := by simp [subset_def, mem_div]

lemma Nonempty.div_zero (hs : s.Nonempty) : s / 0 = 0 :=
  s.div_zero_subset.antisymm <| by simpa [mem_div] using hs

lemma Nonempty.zero_div (hs : s.Nonempty) : 0 / s = 0 :=
  s.zero_div_subset.antisymm <| by simpa [mem_div] using hs

@[simp] protected lemma inv_zero : (0 : Set α)⁻¹ = 0 := by ext; simp

end GroupWithZero
end Set
```
