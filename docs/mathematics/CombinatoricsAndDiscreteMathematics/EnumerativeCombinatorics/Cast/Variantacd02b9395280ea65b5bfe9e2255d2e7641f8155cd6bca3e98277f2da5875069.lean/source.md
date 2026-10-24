# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.Cast.Variantacd02b9395280ea65b5bfe9e2255d2e7641f8155cd6bca3e98277f2da5875069

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `67b349663aa72354cd3171f78fad8c70ca414a93` · SHA-256 `acd02b9395280ea65b5bfe9e2255d2e7641f8155cd6bca3e98277f2da5875069`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
import Mathlib.Data.Nat.Choose.Basic
import Mathlib.Data.Nat.Factorial.Cast

#align_import data.nat.choose.cast from "leanprover-community/mathlib"@"bb168510ef455e9280a152e7f31673cabd3d7496"

/-!
# Cast of binomial coefficients

This file allows calculating the binomial coefficient `a.choose b` as an element of a division ring
of characteristic `0`.
-/


open Nat

variable (K : Type*) [DivisionRing K] [CharZero K]

namespace Nat

theorem cast_choose {a b : ℕ} (h : a ≤ b) : (b.choose a : K) = b ! / (a ! * (b - a)!) := by
  have : ∀ {n : ℕ}, (n ! : K) ≠ 0 := Nat.cast_ne_zero.2 (factorial_ne_zero _)
  rw [eq_div_iff_mul_eq (mul_ne_zero this this)]
  rw_mod_cast [← mul_assoc, choose_mul_factorial_mul_factorial h]
#align nat.cast_choose Nat.cast_choose

theorem cast_add_choose {a b : ℕ} : ((a + b).choose a : K) = (a + b)! / (a ! * b !) := by
  rw [cast_choose K (_root_.le_add_right le_rfl), add_tsub_cancel_left]
#align nat.cast_add_choose Nat.cast_add_choose

theorem cast_choose_eq_pochhammer_div (a b : ℕ) :
    (a.choose b : K) = (pochhammer K b).eval ↑(a - (b - 1)) / b ! := by
  rw [eq_div_iff_mul_eq (cast_ne_zero.2 b.factorial_ne_zero : (b ! : K) ≠ 0), ← cast_mul,
    mul_comm, ← descFactorial_eq_factorial_mul_choose, ← cast_descFactorial]
#align nat.cast_choose_eq_pochhammer_div Nat.cast_choose_eq_pochhammer_div

theorem cast_choose_two (a : ℕ) : (a.choose 2 : K) = a * (a - 1) / 2 := by
  rw [← cast_descFactorial_two, descFactorial_eq_factorial_mul_choose, factorial_two, mul_comm,
    cast_mul, cast_two, eq_div_iff_mul_eq (two_ne_zero : (2 : K) ≠ 0)]
#align nat.cast_choose_two Nat.cast_choose_two

end Nat
```
