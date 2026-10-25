# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.Cast.Variant45c19d981bac79711fe4f4bd992bf0ffee1bb761a686e355d4690cb01be64d39

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d6515e32628668a892cb4eeb41d7d268c5a6aa79` · SHA-256 `45c19d981bac79711fe4f4bd992bf0ffee1bb761a686e355d4690cb01be64d39`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
module

public import Mathlib.Data.Nat.Cast.Basic
public import Mathlib.Data.Nat.Factorial.Basic

/-!
# Cast of factorials

This file allows calculating factorials (including ascending and descending ones) as elements of a
semiring.

This is particularly crucial for `Nat.descFactorial` as subtraction on `ℕ` does **not** correspond
to subtraction on a general semiring. For example, we can't rely on existing cast lemmas to prove
`↑(a.descFactorial 2) = ↑a * (↑a - 1)`. We must use the fact that, whenever `↑(a - 1)` is not equal
to `↑a - 1`, the other factor is `0` anyway.
-/

public section


open Nat

variable (S : Type*)

namespace Nat

section Ring

variable [Ring S] (a : ℕ)

/-- Convenience lemma. The `a - 1` is not using truncated subtraction, as opposed to the definition
of `Nat.descFactorial` as a natural. -/
theorem cast_descFactorial_two : (a.descFactorial 2 : S) = a * (a - 1) := by
  rw [descFactorial]
  cases a
  · simp
  · simp [mul_add, add_mul]

end Ring

end Nat
```
