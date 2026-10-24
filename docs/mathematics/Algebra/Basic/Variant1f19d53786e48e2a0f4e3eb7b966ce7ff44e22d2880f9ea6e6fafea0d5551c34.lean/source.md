# Complete source: GRWTSK.Algebra.Basic.Variant1f19d53786e48e2a0f4e3eb7b966ce7ff44e22d2880f9ea6e6fafea0d5551c34

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4cfc6a17432c70e703afa858edd497de2f9f362a` · SHA-256 `8a53485f191f02c8d0bc63a238f31b357d9c34e2a6f5f3a706311bb6c03c9864`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.DvdSubPowOfDvdSub.Variantb098774f57b63b8d5c29953d85e065e7f3b777bec71c67fc5b3e080da5e6681c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b098774f57b63b8d5c29953d85e065e7f3b777bec71c67fc5b3e080da5e6681c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.DvdSubPowOfDvdSub.Variantb098774f57b63b8d5c29953d85e065e7f3b777bec71c67fc5b3e080da5e6681c","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"b098774f57b63b8d5c29953d85e065e7f3b777bec71c67fc5b3e080da5e6681c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/NumberTheory/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Johan Commelin. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johan Commelin, Kenny Lau
-/
import Mathlib.Algebra.GeomSum
import Mathlib.RingTheory.Ideal.Quotient


namespace GRWTSK.Algebra.DvdSubPowOfDvdSub.Variantb098774f57b63b8d5c29953d85e065e7f3b777bec71c67fc5b3e080da5e6681c

#align_import number_theory.basic from "leanprover-community/mathlib"@"168ad7fc5d8173ad38be9767a22d50b8ecf1cd00"

/-!
# Basic results in number theory

This file should contain basic results in number theory. So far, it only contains the essential
lemma in the construction of the ring of Witt vectors.

## Main statement

`dvd_sub_pow_of_dvd_sub` proves that for elements `a` and `b` in a commutative ring `R` and for
all natural numbers `p` and `k` if `p` divides `a-b` in `R`, then `p ^ (k + 1)` divides
`a ^ (p ^ k) - b ^ (p ^ k)`.
-/


section

open Ideal Ideal.Quotient

theorem dvd_sub_pow_of_dvd_sub {R : Type*} [CommRing R] {p : ℕ} {a b : R} (h : (p : R) ∣ a - b)
    (k : ℕ) : (p ^ (k + 1) : R) ∣ a ^ p ^ k - b ^ p ^ k := by
  induction' k with k ih
  · rwa [pow_one, pow_zero, pow_one, pow_one]
  rw [pow_succ' p k, pow_mul, pow_mul, ← geom_sum₂_mul, pow_succ, Nat.cast_mul]
  refine' mul_dvd_mul _ ih
  let f : R →+* R ⧸ span {(p : R)} := mk (span {(p : R)})
  have hf : ∀ r : R, (p : R) ∣ r ↔ f r = 0 := fun r ↦ by rw [eq_zero_iff_mem, mem_span_singleton]
  rw [hf, map_sub, sub_eq_zero] at h
  rw [hf, RingHom.map_geom_sum₂, map_pow, map_pow, h, geom_sum₂_self, mul_eq_zero_of_left]
  rw [← map_natCast f, eq_zero_iff_mem, mem_span_singleton]
#align dvd_sub_pow_of_dvd_sub dvd_sub_pow_of_dvd_sub

end
```
