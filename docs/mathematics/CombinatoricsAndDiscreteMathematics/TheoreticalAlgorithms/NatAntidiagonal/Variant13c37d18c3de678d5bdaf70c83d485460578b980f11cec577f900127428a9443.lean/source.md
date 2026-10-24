# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.NatAntidiagonal.Variant13c37d18c3de678d5bdaf70c83d485460578b980f11cec577f900127428a9443

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `14431d108a7bb8f84fce553258a8cc1c2bff6a9f` · SHA-256 `8b34e797deb58361b65667145d3bfea1dde71e8156c0ae3649a9bacdcc139cd0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Antidiagonal.Variantdca2aff44500796139fe659918b470d022f89b02b66155ac6abd0434165a37c4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"dca2aff44500796139fe659918b470d022f89b02b66155ac6abd0434165a37c4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.Antidiagonal.Variantdca2aff44500796139fe659918b470d022f89b02b66155ac6abd0434165a37c4","mathematical_subject":"Computation.DataStructures","original_sha256":"dca2aff44500796139fe659918b470d022f89b02b66155ac6abd0434165a37c4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Multiset/NatAntidiagonal.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Johan Commelin. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johan Commelin
-/
import Mathlib.Data.List.NatAntidiagonal
import Mathlib.Data.Multiset.MapFold

/-!
# Antidiagonals in ℕ × ℕ as multisets

This file defines the antidiagonals of ℕ × ℕ as multisets: the `n`-th antidiagonal is the multiset
of pairs `(i, j)` such that `i + j = n`. This is useful for polynomial multiplication and more
generally for sums going from `0` to `n`.

## Notes

This refines file `Data.List.NatAntidiagonal` and is further refined by file
`Data.Finset.NatAntidiagonal`.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Antidiagonal.Variantdca2aff44500796139fe659918b470d022f89b02b66155ac6abd0434165a37c4

assert_not_exists Monoid

namespace Multiset

namespace Nat

/-- The antidiagonal of a natural number `n` is
    the multiset of pairs `(i, j)` such that `i + j = n`. -/
def antidiagonal (n : ℕ) : Multiset (ℕ × ℕ) :=
  List.Nat.antidiagonal n

/-- A pair (i, j) is contained in the antidiagonal of `n` if and only if `i + j = n`. -/
@[simp]
theorem mem_antidiagonal {n : ℕ} {x : ℕ × ℕ} : x ∈ antidiagonal n ↔ x.1 + x.2 = n := by
  rw [antidiagonal, mem_coe, List.Nat.mem_antidiagonal]

/-- The cardinality of the antidiagonal of `n` is `n+1`. -/
@[simp]
theorem card_antidiagonal (n : ℕ) : card (antidiagonal n) = n + 1 := by
  rw [antidiagonal, coe_card, List.Nat.length_antidiagonal]

/-- The antidiagonal of `0` is the list `[(0, 0)]` -/
@[simp]
theorem antidiagonal_zero : antidiagonal 0 = {(0, 0)} :=
  rfl

/-- The antidiagonal of `n` does not contain duplicate entries. -/
@[simp]
theorem nodup_antidiagonal (n : ℕ) : Nodup (antidiagonal n) :=
  coe_nodup.2 <| List.Nat.nodup_antidiagonal n

@[simp]
theorem antidiagonal_succ {n : ℕ} :
    antidiagonal (n + 1) = (0, n + 1) ::ₘ (antidiagonal n).map (Prod.map Nat.succ id) := by
  simp only [antidiagonal, List.Nat.antidiagonal_succ, map_coe, cons_coe]

theorem antidiagonal_succ' {n : ℕ} :
    antidiagonal (n + 1) = (n + 1, 0) ::ₘ (antidiagonal n).map (Prod.map id Nat.succ) := by
  rw [antidiagonal, List.Nat.antidiagonal_succ', ← coe_add, Multiset.add_comm, antidiagonal,
    map_coe, coe_add, List.singleton_append, cons_coe]

theorem antidiagonal_succ_succ' {n : ℕ} :
    antidiagonal (n + 2) =
      (0, n + 2) ::ₘ (n + 2, 0) ::ₘ (antidiagonal n).map (Prod.map Nat.succ Nat.succ) := by
  rw [antidiagonal_succ, antidiagonal_succ', map_cons, map_map, Prod.map_apply]
  rfl

theorem map_swap_antidiagonal {n : ℕ} : (antidiagonal n).map Prod.swap = antidiagonal n := by
  rw [antidiagonal, map_coe, List.Nat.map_swap_antidiagonal, coe_reverse]

end Nat

end Multiset
```
