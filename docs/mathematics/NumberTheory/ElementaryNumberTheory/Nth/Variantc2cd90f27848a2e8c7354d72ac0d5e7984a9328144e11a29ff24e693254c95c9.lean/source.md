# Complete source: GRWTSK.NumberTheory.ElementaryNumberTheory.Nth.Variantc2cd90f27848a2e8c7354d72ac0d5e7984a9328144e11a29ff24e693254c95c9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f9d09d963c17e3cc1b715b3e39e9137b75d1007a` · SHA-256 `c2cd90f27848a2e8c7354d72ac0d5e7984a9328144e11a29ff24e693254c95c9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Ralf Stephan. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Ralf Stephan
-/
import Mathlib.Data.Nat.Prime.Defs
import Mathlib.Data.Nat.Nth

/-!
# The Nth primes
-/

namespace Nat

@[simp]
theorem nth_prime_zero_eq_two : nth Prime 0 = 2 := nth_count prime_two

@[simp]
theorem nth_prime_one_eq_three : nth Nat.Prime 1 = 3 := nth_count prime_three

@[simp]
theorem nth_prime_two_eq_five : nth Nat.Prime 2 = 5 := nth_count prime_five

@[simp]
theorem nth_prime_three_eq_seven : nth Nat.Prime 3 = 7 := nth_count prime_seven

@[simp]
theorem nth_prime_four_eq_eleven : nth Nat.Prime 4 = 11 := nth_count prime_eleven

end Nat
```
