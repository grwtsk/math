# Complete source: GRWTSK.NumberTheory.ElementaryNumberTheory.Imo1959Q1.Variantc959783ebacea7086e169b6885d4a6dcbd99fe838a0784cb2eba95bac44f5daa

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5a598731a498f28f98b7712826f760c20eadad3a` · SHA-256 `c959783ebacea7086e169b6885d4a6dcbd99fe838a0784cb2eba95bac44f5daa`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2020 Kevin Lacker. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kevin Lacker
-/
module

public import Mathlib.Tactic.Ring
public import Mathlib.Data.Nat.Prime.Basic

/-!
# IMO 1959 Q1

Prove that the fraction `(21n+4)/(14n+3)` is irreducible for every natural number `n`.

Since Lean doesn't have a concept of "irreducible fractions" per se, we just formalize this
as saying the numerator and denominator are relatively prime.
-/

public section

open Nat

namespace Imo1959Q1

theorem calculation (n k : ℕ) (h1 : k ∣ 21 * n + 4) (h2 : k ∣ 14 * n + 3) : k ∣ 1 :=
  have h3 : k ∣ 2 * (21 * n + 4) := h1.mul_left 2
  have h4 : k ∣ 3 * (14 * n + 3) := h2.mul_left 3
  have h5 : 3 * (14 * n + 3) = 2 * (21 * n + 4) + 1 := by ring
  (Nat.dvd_add_right h3).mp (h5 ▸ h4)

end Imo1959Q1

open Imo1959Q1

theorem imo1959_q1 : ∀ n : ℕ, Coprime (21 * n + 4) (14 * n + 3) := fun n =>
  coprime_of_dvd' fun k _ h1 h2 => calculation n k h1 h2
```
