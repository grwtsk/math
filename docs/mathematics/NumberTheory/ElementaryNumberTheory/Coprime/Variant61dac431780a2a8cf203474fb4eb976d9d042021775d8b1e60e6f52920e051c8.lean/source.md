# Complete source: GRWTSK.NumberTheory.ElementaryNumberTheory.Coprime.Variant61dac431780a2a8cf203474fb4eb976d9d042021775d8b1e60e6f52920e051c8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4518a2d582101bca0bd30fb23ef2d0eb66c8bdb1` · SHA-256 `484b71ed3e845dd6e01184a0f2499e14bfeb1f047a00cd68c51f71eb0bc5f9d7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.ElementaryNumberTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.ElementaryNumberTheory.EqZeroIffGcdNeOne.Variantea556058f8e65bd6896156a952e8d26b812ae99cfc79039138ded37c90f64f06","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ea556058f8e65bd6896156a952e8d26b812ae99cfc79039138ded37c90f64f06","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.PrimeArithmetic.SourceCorpus.EqZeroIffGcdNeOne.Variantea556058f8e65bd6896156a952e8d26b812ae99cfc79039138ded37c90f64f06","mathematical_subject":"NumberTheory.PrimeArithmetic","original_sha256":"ea556058f8e65bd6896156a952e8d26b812ae99cfc79039138ded37c90f64f06","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/ZMod/Coprime.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Michael Stoll. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Michael Stoll
-/
import Mathlib.Algebra.EuclideanDomain.Int
import Mathlib.Data.Nat.Prime.Int
import Mathlib.Data.ZMod.Basic
import Mathlib.RingTheory.PrincipalIdealDomain

/-!
# Coprimality and vanishing

We show that for prime `p`, the image of an integer `a` in `ZMod p` vanishes if and only if
`a` and `p` are not coprime.
-/


namespace GRWTSK.NumberTheory.ElementaryNumberTheory.EqZeroIffGcdNeOne.Variantea556058f8e65bd6896156a952e8d26b812ae99cfc79039138ded37c90f64f06

assert_not_exists TwoSidedIdeal

namespace ZMod

/-- If `p` is a prime and `a` is an integer, then `a : ZMod p` is zero if and only if
`gcd a p ≠ 1`. -/
theorem eq_zero_iff_gcd_ne_one {a : ℤ} {p : ℕ} [pp : Fact p.Prime] :
    (a : ZMod p) = 0 ↔ a.gcd p ≠ 1 := by
  rw [Ne, Int.gcd_comm, ← Int.isCoprime_iff_gcd_eq_one,
    (Nat.prime_iff_prime_int.1 pp.1).coprime_iff_not_dvd, Classical.not_not,
    intCast_zmod_eq_zero_iff_dvd]

/-- If an integer `a` and a prime `p` satisfy `gcd a p = 1`, then `a : ZMod p` is nonzero. -/
theorem ne_zero_of_gcd_eq_one {a : ℤ} {p : ℕ} (pp : p.Prime) (h : a.gcd p = 1) : (a : ZMod p) ≠ 0 :=
  mt (@eq_zero_iff_gcd_ne_one a p ⟨pp⟩).mp (Classical.not_not.mpr h)

/-- If an integer `a` and a prime `p` satisfy `gcd a p ≠ 1`, then `a : ZMod p` is zero. -/
theorem eq_zero_of_gcd_ne_one {a : ℤ} {p : ℕ} (pp : p.Prime) (h : a.gcd p ≠ 1) : (a : ZMod p) = 0 :=
  (@eq_zero_iff_gcd_ne_one a p ⟨pp⟩).mpr h

end ZMod
```
