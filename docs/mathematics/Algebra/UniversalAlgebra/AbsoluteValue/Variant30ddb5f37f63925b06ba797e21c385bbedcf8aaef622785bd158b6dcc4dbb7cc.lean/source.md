# Complete source: GRWTSK.Algebra.UniversalAlgebra.AbsoluteValue.Variant30ddb5f37f63925b06ba797e21c385bbedcf8aaef622785bd158b6dcc4dbb7cc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `02821cd5c9b0b8441f02146543c38a86f9ee45ed` · SHA-256 `30ddb5f37f63925b06ba797e21c385bbedcf8aaef622785bd158b6dcc4dbb7cc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Anne Baanen. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Anne Baanen
-/
import Mathlib.Algebra.GroupWithZero.Action.Units
import Mathlib.Algebra.Module.Basic
import Mathlib.Algebra.Order.AbsoluteValue.Basic
import Mathlib.Algebra.Ring.Int.Units
import Mathlib.Data.Int.Cast.Lemmas

/-!
# Absolute values and the integers

This file contains some results on absolute values applied to integers.

## Main results

* `AbsoluteValue.map_units_int`: an absolute value sends all units of `ℤ` to `1`
* `Int.natAbsHom`: `Int.natAbs` bundled as a `MonoidWithZeroHom`
-/


variable {R S : Type*} [Ring R] [CommRing S] [LinearOrder S] [IsStrictOrderedRing S]

@[simp]
theorem AbsoluteValue.map_units_int (abv : AbsoluteValue ℤ S) (x : ℤˣ) : abv x = 1 := by
  rcases Int.units_eq_one_or x with (rfl | rfl) <;> simp

@[simp]
theorem AbsoluteValue.map_units_intCast [Nontrivial R] (abv : AbsoluteValue R S) (x : ℤˣ) :
    abv ((x : ℤ) : R) = 1 := by rcases Int.units_eq_one_or x with (rfl | rfl) <;> simp

@[simp]
theorem AbsoluteValue.map_units_int_smul (abv : AbsoluteValue R S) (x : ℤˣ) (y : R) :
    abv (x • y) = abv y := by rcases Int.units_eq_one_or x with (rfl | rfl) <;> simp

/-- `Int.natAbs` as a bundled monoid with zero hom. -/
@[simps]
def Int.natAbsHom : ℤ →*₀ ℕ where
  toFun := Int.natAbs
  map_mul' := Int.natAbs_mul
  map_one' := Int.natAbs_one
  map_zero' := Int.natAbs_zero
```
