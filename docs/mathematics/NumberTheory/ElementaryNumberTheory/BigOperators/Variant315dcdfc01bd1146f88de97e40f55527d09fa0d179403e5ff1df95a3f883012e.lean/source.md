# Complete source: GRWTSK.NumberTheory.ElementaryNumberTheory.BigOperators.Variant315dcdfc01bd1146f88de97e40f55527d09fa0d179403e5ff1df95a3f883012e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fb84079ef3f8c9ba48613323b3a0afbea39adbd2` · SHA-256 `315dcdfc01bd1146f88de97e40f55527d09fa0d179403e5ff1df95a3f883012e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2014 Jeremy Avigad. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jeremy Avigad, Leonardo de Moura
-/
import Mathlib.Data.Nat.GCD.Basic
import Mathlib.Algebra.BigOperators.Basic

#align_import data.nat.gcd.big_operators from "leanprover-community/mathlib"@"008205aa645b3f194c1da47025c5f110c8406eab"

/-! # Lemmas about coprimality with big products.

These lemmas are kept separate from `Data.Nat.GCD.Basic` in order to minimize imports.
-/


namespace Nat

open BigOperators

/-- See `IsCoprime.prod_left` for the corresponding lemma about `IsCoprime` -/
theorem coprime_prod_left {ι : Type*} {x : ℕ} {s : ι → ℕ} {t : Finset ι} :
    (∀ i : ι, i ∈ t → coprime (s i) x) → coprime (∏ i : ι in t, s i) x :=
  Finset.prod_induction s (fun y ↦ y.coprime x) (fun a b ↦ coprime.mul) (by simp)
#align nat.coprime_prod_left Nat.coprime_prod_left

/-- See `IsCoprime.prod_right` for the corresponding lemma about `IsCoprime` -/
theorem coprime_prod_right {ι : Type*} {x : ℕ} {s : ι → ℕ} {t : Finset ι} :
    (∀ i : ι, i ∈ t → coprime x (s i)) → coprime x (∏ i : ι in t, s i) :=
  Finset.prod_induction s (fun y ↦ x.coprime y) (fun a b ↦ coprime.mul_right) (by simp)
#align nat.coprime_prod_right Nat.coprime_prod_right

end Nat
```
