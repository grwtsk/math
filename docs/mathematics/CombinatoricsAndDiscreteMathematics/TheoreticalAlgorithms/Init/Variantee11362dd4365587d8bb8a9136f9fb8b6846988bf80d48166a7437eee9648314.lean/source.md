# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Init.Variantee11362dd4365587d8bb8a9136f9fb8b6846988bf80d48166a7437eee9648314

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ba9225d665a4df324985d4a095c3e4114c91dacd` · SHA-256 `ee11362dd4365587d8bb8a9136f9fb8b6846988bf80d48166a7437eee9648314`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Wrenna Robson. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Wrenna Robson
-/
module

public import Mathlib.Data.Nat.Notation
public import Init.Data.Fin.Bitwise

/-!
# Basic operations on bounded natural numbers.

This file should not depend on anything defined in Mathlib (except for notation), so that it can be
upstreamed to Batteries or the Lean standard library easily.
-/

public section

/- We don't want to import the algebraic hierarchy in this file. -/
assert_not_exists Monoid

namespace Fin

variable {n k : ℕ}

theorem xor_assoc (h : k = 2 ^ n) (a b c : Fin k) : (a ^^^ b) ^^^ c = a ^^^ (b ^^^ c) := by
  grind [Fin.xor_val, Nat.xor_mod_two_pow, Nat.mod_mod]
theorem xor_comm (a b : Fin k) : a ^^^ b = b ^^^ a := by grind [Fin.xor_val]
@[simp] theorem xor_self [NeZero k] (a : Fin k) : a ^^^ a = 0 := by
  grind [Fin.xor_val, Nat.zero_mod]
@[simp] theorem xor_zero [NeZero k] (a : Fin k) : a ^^^ 0 = a := by
  grind [Fin.xor_val, Fin.val_zero, Nat.mod_eq_of_lt]

end Fin
```
