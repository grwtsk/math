# Complete source: GRWTSK.Algebra.UniversalAlgebra.Floor.Variante595edd408c36a8ecab6dcc8e97d67b4a02d68434aff6bf2317a3e8318055351

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a1299108eeda947d643a821640ce415888217183` · SHA-256 `d8598adec5ff0c393bb59fc4774ea065fe1eaea4e639e58d10faab8d576935a2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.FloorCoe.Variantf1b53e445b5137749f5c5679ab32f33df6504e9beaef6c15a8e27666f2961d08","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f1b53e445b5137749f5c5679ab32f33df6504e9beaef6c15a8e27666f2961d08","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.FloorCoe.Variantf1b53e445b5137749f5c5679ab32f33df6504e9beaef6c15a8e27666f2961d08","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"f1b53e445b5137749f5c5679ab32f33df6504e9beaef6c15a8e27666f2961d08","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/NNRat/Floor.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Eric Wieser. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Wieser
-/
import Mathlib.Algebra.Order.Floor.Semiring
import Mathlib.Data.NNRat.Order
import Mathlib.Data.Rat.Floor

/-!
# Floor Function for Non-negative Rational Numbers

## Summary

We define the `FloorSemiring` instance on `ℚ≥0`, and relate its operators to `NNRat.cast`.

Note that we cannot talk about `Int.fract`, which currently only works for rings.

## Tags

nnrat, rationals, ℚ≥0, floor
-/


namespace GRWTSK.Algebra.UniversalAlgebra.FloorCoe.Variantf1b53e445b5137749f5c5679ab32f33df6504e9beaef6c15a8e27666f2961d08

assert_not_exists Finset

namespace NNRat

instance : FloorSemiring ℚ≥0 where
  floor q := ⌊q.val⌋₊
  ceil q := ⌈q.val⌉₊
  floor_of_neg h := by simpa using h.trans zero_lt_one
  gc_floor {a n} h := by rw [← NNRat.coe_le_coe, Nat.le_floor_iff] <;> norm_cast
  gc_ceil {a b} := by rw [← NNRat.coe_le_coe, Nat.ceil_le]; norm_cast

@[simp, norm_cast]
theorem floor_coe (q : ℚ≥0) : ⌊(q : ℚ)⌋₊ = ⌊q⌋₊ := rfl

@[simp, norm_cast]
theorem ceil_coe (q : ℚ≥0) : ⌈(q : ℚ)⌉₊ = ⌈q⌉₊ := rfl

@[simp, norm_cast]
theorem coe_floor (q : ℚ≥0) : ↑⌊q⌋₊ = ⌊(q : ℚ)⌋ := Int.natCast_floor_eq_floor q.coe_nonneg

@[simp, norm_cast]
theorem coe_ceil (q : ℚ≥0) : ↑⌈q⌉₊ = ⌈(q : ℚ)⌉ := Int.natCast_ceil_eq_ceil q.coe_nonneg

protected theorem floor_def (q : ℚ≥0) : ⌊q⌋₊ = q.num / q.den := by
  rw [← Int.natCast_inj, NNRat.coe_floor, Rat.floor_def, Int.natCast_ediv, den_coe, num_coe]

section Semifield

variable {K} [Semifield K] [LinearOrder K] [IsStrictOrderedRing K] [FloorSemiring K]

@[simp, norm_cast]
theorem floor_cast (x : ℚ≥0) : ⌊(x : K)⌋₊ = ⌊x⌋₊ :=
  (Nat.floor_eq_iff x.cast_nonneg).2 (mod_cast (Nat.floor_eq_iff x.cast_nonneg).1 (Eq.refl ⌊x⌋₊))

@[simp, norm_cast]
theorem ceil_cast (x : ℚ≥0) : ⌈(x : K)⌉₊ = ⌈x⌉₊ := by
  obtain rfl | hx := eq_or_ne x 0
  · simp
  · refine (Nat.ceil_eq_iff ?_).2 (mod_cast (Nat.ceil_eq_iff ?_).1 (Eq.refl ⌈x⌉₊)) <;> simpa

end Semifield

section Field

variable {K} [Field K] [LinearOrder K] [IsStrictOrderedRing K] [FloorRing K]

@[simp, norm_cast]
theorem intFloor_cast (x : ℚ≥0) : ⌊(x : K)⌋ = ⌊(x : ℚ)⌋ := by
  rw [Int.floor_eq_iff, ← coe_floor]
  norm_cast
  norm_cast
  rw [Nat.cast_add_one, ← Nat.floor_eq_iff (zero_le _)]

@[simp, norm_cast]
theorem intCeil_cast (x : ℚ≥0) : ⌈(x : K)⌉ = ⌈(x : ℚ)⌉ := by
  rw [Int.ceil_eq_iff, ← coe_ceil, sub_lt_iff_lt_add]
  constructor
  · have := NNRat.cast_strictMono (K := K) <| Nat.ceil_lt_add_one <| zero_le x
    rw [NNRat.cast_add, NNRat.cast_one] at this
    refine Eq.trans_lt ?_ this
    norm_cast
  · rw [Int.cast_natCast, NNRat.cast_le_natCast]
    exact Nat.le_ceil _

end Field

@[norm_cast]
theorem floor_natCast_div_natCast (n d : ℕ) : ⌊(↑n / ↑d : ℚ≥0)⌋₊ = n / d :=
  Rat.natFloor_natCast_div_natCast n d

end NNRat
```
