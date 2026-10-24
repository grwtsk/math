# Complete source: GRWTSK.Algebra.UniversalAlgebra.Floor.Variantb6c444e2888f99cfaa82cf8a0bc3eef24858925adda8e97b8937723739980d3c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a3fa4bf2ded538eebd3735d01648dc77f51ef5ec` · SHA-256 `b6c444e2888f99cfaa82cf8a0bc3eef24858925adda8e97b8937723739980d3c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Floris van Doorn. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Floris van Doorn
-/
import Mathlib.Algebra.Order.Floor.Defs
import Mathlib.Algebra.Order.Nonneg.Basic

/-!
# Nonnegative elements are archimedean

This file defines instances and prove some properties about the nonnegative elements
`{x : α // 0 ≤ x}` of an arbitrary type `α`.

This is used to derive algebraic structures on `ℝ≥0` and `ℚ≥0` automatically.

## Main declarations

* `{x : α // 0 ≤ x}` is a `FloorSemiring` if `α` is.
-/

assert_not_exists Finset LinearOrderedField

namespace Nonneg

variable {α : Type*}

instance floorSemiring [Semiring α] [PartialOrder α] [IsOrderedRing α] [FloorSemiring α] :
    FloorSemiring { r : α // 0 ≤ r } where
  floor a := ⌊(a : α)⌋₊
  ceil a := ⌈(a : α)⌉₊
  floor_of_neg ha := FloorSemiring.floor_of_neg ha
  gc_floor ha := FloorSemiring.gc_floor (Subtype.coe_le_coe.2 ha)
  gc_ceil a n := FloorSemiring.gc_ceil (a : α) n

@[norm_cast]
theorem nat_floor_coe [Semiring α] [PartialOrder α] [IsOrderedRing α] [FloorSemiring α]
    (a : { r : α // 0 ≤ r }) :
    ⌊(a : α)⌋₊ = ⌊a⌋₊ :=
  rfl

@[norm_cast]
theorem nat_ceil_coe [Semiring α] [PartialOrder α] [IsOrderedRing α] [FloorSemiring α]
    (a : { r : α // 0 ≤ r }) :
    ⌈(a : α)⌉₊ = ⌈a⌉₊ :=
  rfl

end Nonneg
```
