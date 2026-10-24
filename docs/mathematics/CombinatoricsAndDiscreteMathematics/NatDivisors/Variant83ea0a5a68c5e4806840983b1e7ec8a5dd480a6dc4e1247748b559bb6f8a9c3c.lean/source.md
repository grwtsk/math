# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.NatDivisors.Variant83ea0a5a68c5e4806840983b1e7ec8a5dd480a6dc4e1247748b559bb6f8a9c3c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2ffc4228b8d407c3f1ee40de4811d384bbfcf7ae` · SHA-256 `c77c14db5e9f249750b0c1bd6074e5a71522fe6f1d95b3343479592018e37b7a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.NatDivisorsMul.Variant09a452b7ef501c4b336c85373376481ec17184ae8a1293b4cf32064061384816","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"09a452b7ef501c4b336c85373376481ec17184ae8a1293b4cf32064061384816","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.NatDivisorsMul.Variant09a452b7ef501c4b336c85373376481ec17184ae8a1293b4cf32064061384816","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"09a452b7ef501c4b336c85373376481ec17184ae8a1293b4cf32064061384816","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Finset/NatDivisors.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Damiano Testa. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Damiano Testa, Yury Kudryashov
-/
import Mathlib.NumberTheory.Divisors
import Mathlib.Algebra.Group.Pointwise.Finset.Basic

/-!
#  `Nat.divisors` as a multiplicative homomorpism

The main definition of this file is `Nat.divisorsHom : ℕ →* Finset ℕ`,
exhibiting `Nat.divisors` as a multiplicative homomorphism from `ℕ` to `Finset ℕ`.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.NatDivisorsMul.Variant09a452b7ef501c4b336c85373376481ec17184ae8a1293b4cf32064061384816

open Nat Finset
open scoped Pointwise

/-- The divisors of a product of natural numbers are the pointwise product of the divisors of the
factors. -/
lemma Nat.divisors_mul (m n : ℕ) : divisors (m * n) = divisors m * divisors n := by
  ext k
  simp_rw [mem_mul, mem_divisors, Nat.dvd_mul, mul_ne_zero_iff, ← exists_and_left,
    ← exists_and_right]
  simp only [and_assoc, and_comm, and_left_comm]

/-- `Nat.divisors` as a `MonoidHom`. -/
@[simps]
def Nat.divisorsHom : ℕ →* Finset ℕ where
  toFun := Nat.divisors
  map_mul' := divisors_mul
  map_one' := divisors_one

lemma Nat.Prime.divisors_sq {p : ℕ} (hp : p.Prime) : (p ^ 2).divisors = {p ^ 2, p, 1} := by
  simp [divisors_prime_pow hp, range_succ]

lemma List.nat_divisors_prod (l : List ℕ) : divisors l.prod = (l.map divisors).prod :=
  map_list_prod Nat.divisorsHom l

lemma Multiset.nat_divisors_prod (s : Multiset ℕ) : divisors s.prod = (s.map divisors).prod :=
  map_multiset_prod Nat.divisorsHom s

lemma Finset.nat_divisors_prod {ι : Type*} (s : Finset ι) (f : ι → ℕ) :
    divisors (∏ i ∈ s, f i) = ∏ i ∈ s, divisors (f i) :=
  map_prod Nat.divisorsHom f s
```
