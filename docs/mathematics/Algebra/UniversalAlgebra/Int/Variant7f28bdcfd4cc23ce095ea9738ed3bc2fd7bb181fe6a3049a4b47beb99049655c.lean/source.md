# Complete source: GRWTSK.Algebra.UniversalAlgebra.Int.Variant7f28bdcfd4cc23ce095ea9738ed3bc2fd7bb181fe6a3049a4b47beb99049655c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `57accaa4d817ed9ca4cdf1709a54c60c5e52e5c6` · SHA-256 `7f28bdcfd4cc23ce095ea9738ed3bc2fd7bb181fe6a3049a4b47beb99049655c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2016 Jeremy Avigad. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jeremy Avigad
-/
import Mathlib.Algebra.Order.Group.Int
import Mathlib.Algebra.Order.Group.Unbundled.Int
import Mathlib.Algebra.Order.Ring.Defs
import Mathlib.Algebra.Ring.Int.Parity
import Mathlib.Data.Set.Basic

/-!
# The integers form a linear ordered ring

This file contains:
* instances on `ℤ`. The stronger one is `Int.instLinearOrderedCommRing`.
* basic lemmas about integers that involve order properties.

## Recursors

* `Int.rec`: Sign disjunction. Something is true/defined on `ℤ` if it's true/defined for nonnegative
  and for negative values. (Defined in core Lean 3)
* `Int.inductionOn`: Simple growing induction on positive numbers, plus simple decreasing induction
  on negative numbers. Note that this recursor is currently only `Prop`-valued.
* `Int.inductionOn'`: Simple growing induction for numbers greater than `b`, plus simple decreasing
  induction on numbers less than `b`.
-/

-- We should need only a minimal development of sets in order to get here.
assert_not_exists Set.Subsingleton

open Function Nat

namespace Int

instance instZeroLEOneClass : ZeroLEOneClass ℤ := ⟨Int.zero_lt_one.le⟩
instance instIsStrictOrderedRing : IsStrictOrderedRing ℤ := .of_mul_pos @Int.mul_pos

/-! ### Miscellaneous lemmas -/

lemma isCompl_even_odd : IsCompl { n : ℤ | Even n } { n | Odd n } := by
  simp [← not_even_iff_odd, ← Set.compl_setOf, isCompl_compl]

lemma _root_.Nat.cast_natAbs {α : Type*} [AddGroupWithOne α] (n : ℤ) : (n.natAbs : α) = |n| := by
  rw [← natCast_natAbs, Int.cast_natCast]

lemma two_le_iff_pos_of_even {m : ℤ} (even : Even m) : 2 ≤ m ↔ 0 < m :=
  le_iff_pos_of_dvd (by decide) even.two_dvd

lemma add_two_le_iff_lt_of_even_sub {m n : ℤ} (even : Even (n - m)) : m + 2 ≤ n ↔ m < n := by
  rw [add_comm]; exact le_add_iff_lt_of_dvd_sub (by decide) even.two_dvd

end Int
```
