# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Finsupp.Variantf9d4eb501d8dd14392f2d29674a0807e85e9b2e0d6be2242650f03dad7d255c9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ff9c1b9a71851f921ec9933533a02c30dfc398dd` · SHA-256 `0d5f47ff204145eb3c1b564d53cc6009a07bfa550d6b21a25966fca3ffb7c220`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.Factorization.Variantd6b03db3edc5bc83dc15518b2e401929bdea0c39751b8dde09c7f8c5f39dbe5a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d6b03db3edc5bc83dc15518b2e401929bdea0c39751b8dde09c7f8c5f39dbe5a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.Factorization.Variantd6b03db3edc5bc83dc15518b2e401929bdea0c39751b8dde09c7f8c5f39dbe5a","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"d6b03db3edc5bc83dc15518b2e401929bdea0c39751b8dde09c7f8c5f39dbe5a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/RingTheory/UniqueFactorizationDomain/Finsupp.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
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


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.Factorization.Variantd6b03db3edc5bc83dc15518b2e401929bdea0c39751b8dde09c7f8c5f39dbe5a

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
