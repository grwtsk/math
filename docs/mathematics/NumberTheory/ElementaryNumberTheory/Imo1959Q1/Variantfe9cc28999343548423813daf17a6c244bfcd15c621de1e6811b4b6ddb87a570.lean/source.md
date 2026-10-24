# Complete source: GRWTSK.NumberTheory.ElementaryNumberTheory.Imo1959Q1.Variantfe9cc28999343548423813daf17a6c244bfcd15c621de1e6811b4b6ddb87a570

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `783fe6f7e14c9699a3da1f8f5c06b1022b0521c9` · SHA-256 `fe9cc28999343548423813daf17a6c244bfcd15c621de1e6811b4b6ddb87a570`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2020 Kevin Lacker. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kevin Lacker
-/
import Mathlib.Tactic.Ring
import Mathlib.Data.Nat.Prime

#align_import imo.imo1959_q1 from "leanprover-community/mathlib"@"5f25c089cb34db4db112556f23c50d12da81b297"

/-!
# IMO 1959 Q1

Prove that the fraction `(21n+4)/(14n+3)` is irreducible for every natural number `n`.

Since Lean doesn't have a concept of "irreducible fractions" per se, we just formalize this
as saying the numerator and denominator are relatively prime.
-/


open Nat

namespace Imo1959Q1

theorem calculation (n k : ℕ) (h1 : k ∣ 21 * n + 4) (h2 : k ∣ 14 * n + 3) : k ∣ 1 :=
  have h3 : k ∣ 2 * (21 * n + 4) := h1.mul_left 2
  have h4 : k ∣ 3 * (14 * n + 3) := h2.mul_left 3
  have h5 : 3 * (14 * n + 3) = 2 * (21 * n + 4) + 1 := by ring
  (Nat.dvd_add_right h3).mp (h5 ▸ h4)
#align imo1959_q1.calculation Imo1959Q1.calculation

end Imo1959Q1

open Imo1959Q1

theorem imo1959_q1 : ∀ n : ℕ, coprime (21 * n + 4) (14 * n + 3) := fun n =>
  coprime_of_dvd' fun k _ h1 h2 => calculation n k h1 h2
#align imo1959_q1 imo1959_q1
```
