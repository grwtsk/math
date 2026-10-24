# Complete source: GRWTSK.Algebra.UniversalAlgebra.Int.Variantffc93a1e950f770809009aad91e2b8713de727e265b3f48d8199660736825e89

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dd34dcb21df01fbe7970b96171e9375ca14a19de` · SHA-256 `ffc93a1e950f770809009aad91e2b8713de727e265b3f48d8199660736825e89`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 María Inés de Frutos-Fernández, Filippo A. E. Nuccio. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: María Inés de Frutos-Fernández, Filippo A. E. Nuccio
-/
import Mathlib.Algebra.Group.Int.TypeTags
import Mathlib.Algebra.GroupWithZero.WithZero

/-!
# Lemmas about `ℤₘ₀`.
-/

assert_not_exists Ring

local notation "ℤₘ₀" => WithZero (Multiplicative ℤ)

namespace WithZero

open Multiplicative

theorem ofAdd_zpow (a : ℤ) : (↑(ofAdd a) : ℤₘ₀) = ofAdd (1 : ℤ) ^ a := by
  rw [← WithZero.coe_zpow, WithZero.coe_inj, ← Int.ofAdd_mul, one_mul]

theorem ofAdd_neg_one_pow_comm (a : ℤ) (n : ℕ) :
    ((↑(ofAdd (-1 : ℤ)) : ℤₘ₀) ^ (-a)) ^ n = ofAdd (n : ℤ) ^ a := by
  rw [ofAdd_zpow (-1)]
  simp only [zpow_neg, zpow_one, inv_zpow', inv_inv, coe_zpow]
  rw [← zpow_natCast, zpow_comm, ← ofAdd_zpow]

end WithZero
```
