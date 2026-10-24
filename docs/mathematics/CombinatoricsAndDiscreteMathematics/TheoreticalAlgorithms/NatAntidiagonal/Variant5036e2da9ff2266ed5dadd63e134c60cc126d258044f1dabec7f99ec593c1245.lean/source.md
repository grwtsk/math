# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.NatAntidiagonal.Variant5036e2da9ff2266ed5dadd63e134c60cc126d258044f1dabec7f99ec593c1245

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6d004475c9c8f6ebd568fe69a0df8b0c39512c28` · SHA-256 `836e4c1e6bf1f1bbecee210aa2ea9cfaa3230ea5de9c161f6b8d2618f1adb447`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Antidiagonal.Variant0ecd4495d14b75e0f2e65635fa60b6ea6e9d802253ab9bdd4200cd0f6b07b283","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0ecd4495d14b75e0f2e65635fa60b6ea6e9d802253ab9bdd4200cd0f6b07b283","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.Antidiagonal.Variant0ecd4495d14b75e0f2e65635fa60b6ea6e9d802253ab9bdd4200cd0f6b07b283","mathematical_subject":"Computation.DataStructures","original_sha256":"0ecd4495d14b75e0f2e65635fa60b6ea6e9d802253ab9bdd4200cd0f6b07b283","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Data/List/NatAntidiagonal.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Johan Commelin. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johan Commelin
-/
import Mathlib.Data.List.Nodup
import Mathlib.Data.List.Range


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Antidiagonal.Variant0ecd4495d14b75e0f2e65635fa60b6ea6e9d802253ab9bdd4200cd0f6b07b283

#align_import data.list.nat_antidiagonal from "leanprover-community/mathlib"@"7b78d1776212a91ecc94cf601f83bdcc46b04213"

/-!
# Antidiagonals in ℕ × ℕ as lists

This file defines the antidiagonals of ℕ × ℕ as lists: the `n`-th antidiagonal is the list of
pairs `(i, j)` such that `i + j = n`. This is useful for polynomial multiplication and more
generally for sums going from `0` to `n`.

## Notes

Files `Data.Multiset.NatAntidiagonal` and `Data.Finset.NatAntidiagonal` successively turn the
`List` definition we have here into `Multiset` and `Finset`.
-/


open List Function Nat

namespace List

namespace Nat

/-- The antidiagonal of a natural number `n` is the list of pairs `(i, j)` such that `i + j = n`. -/
def antidiagonal (n : ℕ) : List (ℕ × ℕ) :=
  (range (n + 1)).map fun i ↦ (i, n - i)
#align list.nat.antidiagonal List.Nat.antidiagonal

/-- A pair (i, j) is contained in the antidiagonal of `n` if and only if `i + j = n`. -/
@[simp]
theorem mem_antidiagonal {n : ℕ} {x : ℕ × ℕ} : x ∈ antidiagonal n ↔ x.1 + x.2 = n := by
  rw [antidiagonal, mem_map]; constructor
  · rintro ⟨i, hi, rfl⟩
    rw [mem_range, lt_succ_iff] at hi
    exact add_tsub_cancel_of_le hi
  · rintro rfl
    refine' ⟨x.fst, _, _⟩
    · rw [mem_range, add_assoc, lt_add_iff_pos_right]
      exact zero_lt_succ _
    · exact Prod.ext rfl (by simp only [add_tsub_cancel_left])
#align list.nat.mem_antidiagonal List.Nat.mem_antidiagonal

/-- The length of the antidiagonal of `n` is `n + 1`. -/
@[simp]
theorem length_antidiagonal (n : ℕ) : (antidiagonal n).length = n + 1 := by
  rw [antidiagonal, length_map, length_range]
#align list.nat.length_antidiagonal List.Nat.length_antidiagonal

/-- The antidiagonal of `0` is the list `[(0, 0)]` -/
@[simp]
theorem antidiagonal_zero : antidiagonal 0 = [(0, 0)] :=
  rfl
#align list.nat.antidiagonal_zero List.Nat.antidiagonal_zero

/-- The antidiagonal of `n` does not contain duplicate entries. -/
theorem nodup_antidiagonal (n : ℕ) : Nodup (antidiagonal n) :=
  (nodup_range _).map ((@LeftInverse.injective ℕ (ℕ × ℕ) Prod.fst fun i ↦ (i, n - i)) fun _ ↦ rfl)
#align list.nat.nodup_antidiagonal List.Nat.nodup_antidiagonal

@[simp]
theorem antidiagonal_succ {n : ℕ} :
    antidiagonal (n + 1) = (0, n + 1) :: (antidiagonal n).map (Prod.map Nat.succ id) := by
  simp only [antidiagonal, range_succ_eq_map, map_cons, true_and_iff, Nat.add_succ_sub_one,
    add_zero, id.def, eq_self_iff_true, tsub_zero, map_map, Prod.map_mk]
  apply congr rfl (congr rfl _)
  ext; simp
#align list.nat.antidiagonal_succ List.Nat.antidiagonal_succ

theorem antidiagonal_succ' {n : ℕ} :
    antidiagonal (n + 1) = (antidiagonal n).map (Prod.map id Nat.succ) ++ [(n + 1, 0)] := by
  simp only [antidiagonal, range_succ, add_tsub_cancel_left, map_append, append_assoc, tsub_self,
    singleton_append, map_map, map]
  congr 1
  apply map_congr
  simp (config := { contextual := true }) [le_of_lt, Nat.succ_eq_add_one, Nat.sub_add_comm]
#align list.nat.antidiagonal_succ' List.Nat.antidiagonal_succ'

theorem antidiagonal_succ_succ' {n : ℕ} :
    antidiagonal (n + 2) =
      (0, n + 2) :: (antidiagonal n).map (Prod.map Nat.succ Nat.succ) ++ [(n + 2, 0)] := by
  rw [antidiagonal_succ']
  simp
  ext
  simp
#align list.nat.antidiagonal_succ_succ' List.Nat.antidiagonal_succ_succ'

theorem map_swap_antidiagonal {n : ℕ} :
    (antidiagonal n).map Prod.swap = (antidiagonal n).reverse := by
  rw [antidiagonal, map_map, ← List.map_reverse, range_eq_range', reverse_range', ←
    range_eq_range', map_map]
  apply map_congr
  simp (config := { contextual := true }) [Nat.sub_sub_self, lt_succ_iff]
#align list.nat.map_swap_antidiagonal List.Nat.map_swap_antidiagonal

end Nat

end List

```
