# Complete source: GRWTSK.NumberTheory.AlgebraicNumberTheory.Embeddings.Variantcb3367d589c2e9eb0306cf646beec74e06bcb71071e5cdcfa96eb27a0210580f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `38fff15a778886f5469fbffea6b540e7386c7c52` · SHA-256 `5c448f6c135db4a96325f17e600f33ef33e1ffc6a6d60a89a7afed260e7faf14`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AlgebraicNumberTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AlgebraicNumberTheory.NrRealPlacesEqZero.Variant9ce6781ebc5a508a682ba57a7311cba0bbc29eec2ae609e06ce327ed6dbd7383","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9ce6781ebc5a508a682ba57a7311cba0bbc29eec2ae609e06ce327ed6dbd7383","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.AlgebraicNumberTheory.SourceCorpus.NrRealPlacesEqZero.Variant9ce6781ebc5a508a682ba57a7311cba0bbc29eec2ae609e06ce327ed6dbd7383","mathematical_subject":"NumberTheory.AlgebraicNumberTheory","original_sha256":"9ce6781ebc5a508a682ba57a7311cba0bbc29eec2ae609e06ce327ed6dbd7383","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/NumberTheory/Cyclotomic/Embeddings.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Riccardo Brasca. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Riccardo Brasca
-/

import Mathlib.NumberTheory.Cyclotomic.PrimitiveRoots
import Mathlib.NumberTheory.NumberField.InfinitePlace.Basic

/-!
# Cyclotomic extensions of `ℚ` are totally complex number fields.
We prove that cyclotomic extensions of `ℚ` are totally complex, meaning that
`NrRealPlaces K = 0` if `IsCyclotomicExtension {n} ℚ K` and `2 < n`.

## Main results
* `nrRealPlaces_eq_zero`: If `K` is a `n`-th cyclotomic extension of `ℚ`, where `2 < n`,
  then there are no real places of `K`.
-/


namespace GRWTSK.NumberTheory.AlgebraicNumberTheory.NrRealPlacesEqZero.Variant9ce6781ebc5a508a682ba57a7311cba0bbc29eec2ae609e06ce327ed6dbd7383

universe u

namespace IsCyclotomicExtension.Rat

open NumberField InfinitePlace Module Complex Nat Polynomial

variable {n : ℕ+} (K : Type u) [Field K] [CharZero K]

/-- If `K` is a `n`-th cyclotomic extension of `ℚ`, where `2 < n`, then there are no real places
of `K`. -/
theorem nrRealPlaces_eq_zero [IsCyclotomicExtension {n} ℚ K]
    (hn : 2 < n) :
    haveI := IsCyclotomicExtension.numberField {n} ℚ K
    nrRealPlaces K = 0 := by
  have := IsCyclotomicExtension.numberField {n} ℚ K
  apply (IsCyclotomicExtension.zeta_spec n ℚ K).nrRealPlaces_eq_zero_of_two_lt hn

variable (n)

/-- If `K` is a `n`-th cyclotomic extension of `ℚ`, then there are `φ n / n` complex places
of `K`. Note that this uses `1 / 2 = 0` in the cases `n = 1, 2`. -/
theorem nrComplexPlaces_eq_totient_div_two [h : IsCyclotomicExtension {n} ℚ K] :
    haveI := IsCyclotomicExtension.numberField {n} ℚ K
    nrComplexPlaces K = φ n / 2 := by
  have := IsCyclotomicExtension.numberField {n} ℚ K
  by_cases hn : 2 < n
  · obtain ⟨k, hk : φ n = k + k⟩ := totient_even hn
    have key := card_add_two_mul_card_eq_rank K
    rw [nrRealPlaces_eq_zero K hn, zero_add, IsCyclotomicExtension.finrank (n := n) K
      (cyclotomic.irreducible_rat n.pos), hk, ← two_mul, Nat.mul_right_inj (by norm_num)] at key
    simp [hk, key, ← two_mul]
  · have : φ n = 1 := by
      by_cases h1 : 1 < n.1
      · convert totient_two
        exact (eq_of_le_of_not_lt (succ_le_of_lt h1) hn).symm
      · convert totient_one
        rw [← PNat.one_coe, PNat.coe_inj]
        exact eq_of_le_of_not_lt (not_lt.mp h1) (PNat.not_lt_one _)
    rw [this]
    apply nrComplexPlaces_eq_zero_of_finrank_eq_one
    rw [IsCyclotomicExtension.finrank K (cyclotomic.irreducible_rat n.pos), this]


end IsCyclotomicExtension.Rat
```
