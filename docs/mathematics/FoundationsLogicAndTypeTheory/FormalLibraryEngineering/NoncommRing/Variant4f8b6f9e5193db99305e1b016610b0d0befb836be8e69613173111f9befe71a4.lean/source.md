# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NoncommRing.Variant4f8b6f9e5193db99305e1b016610b0d0befb836be8e69613173111f9befe71a4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4495473685373c184a59c2685bff5dc65a7b109f` · SHA-256 `4f8b6f9e5193db99305e1b016610b0d0befb836be8e69613173111f9befe71a4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
/-
Copyright (c) 2020 Oliver Nash. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jireh Loreaux, Scott Morrison, Oliver Nash
-/
import Mathlib.Tactic.Abel

/-! # The `noncomm_ring` tactic

Solve goals in not necessarily commutative rings.

This tactic is rudimentary, but useful for solving simple goals in noncommutative rings. One
glaring flaw is that numeric powers are unfolded entirely with `pow_succ` and can easily exceed the
maximum recursion depth.

`noncomm_ring` is just a `simp only [some lemmas]` followed by `abel`. It automatically uses `abel1`
to close the goal, and if that doesn't succeed, defaults to `abel_nf`.
 -/

namespace Mathlib.Tactic.NoncommRing

section nat_lit_mul
variable {R : Type*} [NonAssocSemiring R] (r : R) (n : ℕ)

lemma nat_lit_mul_eq_nsmul [n.AtLeastTwo] : no_index (OfNat.ofNat n) * r = n • r := by
  simp only [nsmul_eq_mul, Nat.cast_eq_ofNat]
lemma mul_nat_lit_eq_nsmul [n.AtLeastTwo] : r * no_index (OfNat.ofNat n) = n • r := by
  simp only [nsmul_eq_mul', Nat.cast_eq_ofNat]

end nat_lit_mul

/-- A tactic for simplifying identities in not-necessarily-commutative rings.

An example:
```lean
example {R : Type*} [Ring R] (a b c : R) : a * (b + c + c - b) = 2*a*c :=
by noncomm_ring
```
-/
syntax (name := noncomm_ring) "noncomm_ring" : tactic
macro_rules
  | `(tactic| noncomm_ring) => `(tactic| (
      (first | simp only [
          -- Expand everything out.
          add_mul, mul_add, sub_eq_add_neg,
          -- Right associate all products.
          mul_assoc,
          -- Expand powers to numerals.
          pow_one, pow_zero, pow_succ,
          -- Replace multiplication by numerals with `zsmul`.
          one_mul, mul_one, zero_mul, mul_zero,
          nat_lit_mul_eq_nsmul, mul_nat_lit_eq_nsmul,
          -- Pull `zsmul n` out the front so `abel` can see them.
          mul_smul_comm, smul_mul_assoc,
          -- Pull out negations.
          neg_mul, mul_neg] |
        fail "`noncomm_ring` simp lemmas don't apply; try `abel` instead") <;>
      first | abel1 | abel_nf ))

end Mathlib.Tactic.NoncommRing
````
