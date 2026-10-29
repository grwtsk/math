-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.CastMemIocIff.Variantbb24ebe7e941ab8d20780171da772351ab98995c9339b7d1152b4b84f9f46d54","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bb24ebe7e941ab8d20780171da772351ab98995c9339b7d1152b4b84f9f46d54","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.CastMemIocIff.Variantbb24ebe7e941ab8d20780171da772351ab98995c9339b7d1152b4b84f9f46d54","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"bb24ebe7e941ab8d20780171da772351ab98995c9339b7d1152b4b84f9f46d54","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Order/Interval/Finset/Floor.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Terence Tao. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Terence Tao
-/
module

public import Mathlib.Algebra.Order.Floor.Semiring
public import Mathlib.Data.Int.Interval
public import Mathlib.Order.Interval.Finset.Nat

/-!
# Membership in intervals via `Int.floor` / `Nat.floor` / `Int.ceil` / `Nat.ceil`

For a `FloorRing` (resp. `FloorSemiring`) `α`, we relate membership of a cast `↑n` in an interval
of `α` to membership of the integer (resp. natural number) `n` in the corresponding interval with
floor/ceil endpoints, for instance `Int.cast_mem_Ioc_iff : ↑n ∈ Set.Ioc a b ↔ n ∈ Set.Ioc ⌊a⌋ ⌊b⌋`.
If the right-hand side set is finite, we express it as `Finset` instead.

In the natural number case, non-negativity hypotheses are required when the `Nat.floor` function
is involved.  In the `IsStrictOrderedRing` case, one of these hypotheses can be omitted.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.CastMemIocIff.Variantbb24ebe7e941ab8d20780171da772351ab98995c9339b7d1152b4b84f9f46d54

public section

namespace Int

variable {α : Type*} [Ring α] [LinearOrder α] [FloorRing α] {a b : α} {n : ℤ}

lemma cast_mem_Ioc_iff : ↑n ∈ Set.Ioc a b ↔ n ∈ Finset.Ioc ⌊a⌋ ⌊b⌋ := by
  simp [floor_lt, le_floor]

lemma cast_mem_Ico_iff : ↑n ∈ Set.Ico a b ↔ n ∈ Finset.Ico ⌈a⌉ ⌈b⌉ := by
  simp [ceil_le, lt_ceil]

lemma cast_mem_Icc_iff : ↑n ∈ Set.Icc a b ↔ n ∈ Finset.Icc ⌈a⌉ ⌊b⌋ := by
  simp [ceil_le, le_floor]

lemma cast_mem_Ioo_iff : ↑n ∈ Set.Ioo a b ↔ n ∈ Finset.Ioo ⌊a⌋ ⌈b⌉ := by
  simp [floor_lt, lt_ceil]

lemma cast_mem_Ioi_iff : ↑n ∈ Set.Ioi a ↔ n ∈ Set.Ioi ⌊a⌋ := by simp [floor_lt]

lemma cast_mem_Ici_iff : ↑n ∈ Set.Ici a ↔ n ∈ Set.Ici ⌈a⌉ := by simp [ceil_le]

lemma cast_mem_Iic_iff : ↑n ∈ Set.Iic b ↔ n ∈ Set.Iic ⌊b⌋ := by simp [le_floor]

lemma cast_mem_Iio_iff : ↑n ∈ Set.Iio b ↔ n ∈ Set.Iio ⌈b⌉ := by simp [lt_ceil]

end Int

namespace Nat

variable {α : Type*} [Semiring α] [LinearOrder α] [FloorSemiring α] {a b : α} {n : ℕ}

lemma cast_mem_Ioc_iff (ha : 0 ≤ a) (hb : 0 ≤ b) :
    ↑n ∈ Set.Ioc a b ↔ n ∈ Finset.Ioc ⌊a⌋₊ ⌊b⌋₊ := by simp [floor_lt ha, le_floor_iff hb]

/-- The `0 ≤ b` hypothesis in `cast_mem_Ioc_iff` can be dropped if `IsStrictOrderedRing α`. -/
lemma cast_mem_Ioc_iff' [IsStrictOrderedRing α] (ha : 0 ≤ a) :
    ↑n ∈ Set.Ioc a b ↔ n ∈ Finset.Ioc ⌊a⌋₊ ⌊b⌋₊ := by
  rcases le_or_gt 0 b with hb | hb
  · exact cast_mem_Ioc_iff ha hb
  · grind [floor_of_nonpos hb.le]

lemma cast_mem_Ico_iff : ↑n ∈ Set.Ico a b ↔ n ∈ Finset.Ico ⌈a⌉₊ ⌈b⌉₊ := by
  simp [ceil_le, lt_ceil]

lemma cast_mem_Icc_iff (hb : 0 ≤ b) : ↑n ∈ Set.Icc a b ↔ n ∈ Finset.Icc ⌈a⌉₊ ⌊b⌋₊ := by
  simp [ceil_le, le_floor_iff hb]

lemma cast_mem_Ioo_iff (ha : 0 ≤ a) : ↑n ∈ Set.Ioo a b ↔ n ∈ Finset.Ioo ⌊a⌋₊ ⌈b⌉₊ := by
  simp [floor_lt ha, lt_ceil]

lemma cast_mem_Iic_iff (hb : 0 ≤ b) : ↑n ∈ Set.Iic b ↔ n ∈ Finset.Iic ⌊b⌋₊ := by
  simp [le_floor_iff hb]

lemma cast_mem_Iio_iff : ↑n ∈ Set.Iio b ↔ n ∈ Finset.Iio ⌈b⌉₊ := by simp [lt_ceil]

lemma cast_mem_Ioi_iff (ha : 0 ≤ a) : ↑n ∈ Set.Ioi a ↔ n ∈ Set.Ioi ⌊a⌋₊ := by simp [floor_lt ha]

lemma cast_mem_Ici_iff : ↑n ∈ Set.Ici a ↔ n ∈ Set.Ici ⌈a⌉₊ := by simp [ceil_le]

end Nat
