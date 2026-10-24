# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Finsupp.Variantd6b03db3edc5bc83dc15518b2e401929bdea0c39751b8dde09c7f8c5f39dbe5a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a901b3c83b1a344db6d7e0a94f91aa3f91dc60b6` · SHA-256 `d6b03db3edc5bc83dc15518b2e401929bdea0c39751b8dde09c7f8c5f39dbe5a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2018 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Jens Wagemaker, Aaron Anderson
-/
import Mathlib.Data.Finsupp.Multiset
import Mathlib.RingTheory.UniqueFactorizationDomain.NormalizedFactors

/-!
# Factors as finsupp

## Main definitions
* `UniqueFactorizationMonoid.factorization`: the multiset of irreducible factors as a `Finsupp`.
-/

variable {α : Type*}

local infixl:50 " ~ᵤ " => Associated

section Finsupp

variable [CancelCommMonoidWithZero α] [UniqueFactorizationMonoid α]
variable [NormalizationMonoid α] [DecidableEq α]

open UniqueFactorizationMonoid

/-- This returns the multiset of irreducible factors as a `Finsupp`. -/
noncomputable def factorization (n : α) : α →₀ ℕ :=
  Multiset.toFinsupp (normalizedFactors n)

theorem factorization_eq_count {n p : α} :
    factorization n p = Multiset.count p (normalizedFactors n) := by simp [factorization]

@[simp]
theorem factorization_zero : factorization (0 : α) = 0 := by simp [factorization]

@[simp]
theorem factorization_one : factorization (1 : α) = 0 := by simp [factorization]

/-- The support of `factorization n` is exactly the Finset of normalized factors -/
@[simp]
theorem support_factorization {n : α} :
    (factorization n).support = (normalizedFactors n).toFinset := by
  simp [factorization, Multiset.toFinsupp_support]

/-- For nonzero `a` and `b`, the power of `p` in `a * b` is the sum of the powers in `a` and `b` -/
@[simp]
theorem factorization_mul {a b : α} (ha : a ≠ 0) (hb : b ≠ 0) :
    factorization (a * b) = factorization a + factorization b := by
  simp [factorization, normalizedFactors_mul ha hb]

/-- For any `p`, the power of `p` in `x^n` is `n` times the power in `x` -/
theorem factorization_pow {x : α} {n : ℕ} : factorization (x ^ n) = n • factorization x := by
  ext
  simp [factorization]

theorem associated_of_factorization_eq (a b : α) (ha : a ≠ 0) (hb : b ≠ 0)
    (h : factorization a = factorization b) : Associated a b := by
  simp_rw [factorization, AddEquiv.apply_eq_iff_eq] at h
  rwa [associated_iff_normalizedFactors_eq_normalizedFactors ha hb]

end Finsupp
```
