# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.Consecutive.Variant47ea0b7c82ba3dc1841080c7f68658eb8c907e0cfd7b13f7c20496f61611976f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c18c9a63f3ac5f6f7f3b9f4d153115914dfd370d` · SHA-256 `47ea0b7c82ba3dc1841080c7f68658eb8c907e0cfd7b13f7c20496f61611976f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Adam Kiezun. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Adam Kiezun
-/
module

public import Mathlib.Data.Nat.Choose.Basic
public import Mathlib.Data.Nat.Prime.Defs

import Mathlib.Data.Nat.Factorial.BigOperators
import Mathlib.Data.Nat.Prime.Factorial

/-!
# Binomial coefficients and consecutive products

This file contains results relating divisibility of binomial coefficients to divisibility of
consecutive products.
-/

public section

namespace Nat

namespace Prime

variable {p k n : ℕ}

lemma dvd_choose_add_sub_one_iff (hp : Prime p) (hpn : n < p) :
    p ∣ choose (k + n - 1) n ↔ ∃ i < n, p ∣ k + i := by
  rw [← hp.dvd_ascFactorial_iff, Nat.ascFactorial_eq_factorial_mul_choose']
  exact ⟨fun h => dvd_mul_of_dvd_right h (n !),
    fun h => (hp.coprime_factorial_of_lt hpn).dvd_of_dvd_mul_left h⟩

lemma dvd_choose_iff (hp : Prime p) (hpn : n < p) (hnk : n ≤ k) :
    p ∣ choose k n ↔ ∃ i < n, p ∣ k - i := by
  by_cases hn0 : n = 0
  · grind [dvd_one, Nat.not_prime_one]
  rw [show k = (k - n + 1) + n - 1 by grind, hp.dvd_choose_add_sub_one_iff hpn]
  constructor <;>
    rintro ⟨i, hlt, hdvd⟩ <;>
    refine ⟨n - i - 1, by grind, ?_⟩ <;>
    convert hdvd using 1 <;>
    grind

end Prime

end Nat
```
