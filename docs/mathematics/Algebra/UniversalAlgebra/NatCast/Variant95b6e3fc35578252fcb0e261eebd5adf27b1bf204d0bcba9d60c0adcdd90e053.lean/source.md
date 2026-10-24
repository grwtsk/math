# Complete source: GRWTSK.Algebra.UniversalAlgebra.NatCast.Variant95b6e3fc35578252fcb0e261eebd5adf27b1bf204d0bcba9d60c0adcdd90e053

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `15c1e3200162763b8911a24500eec04296800684` · SHA-256 `40c07a97a9ed341853b606b9110777a554f40631f30f471660d8dbf1f486ebcc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.LtAddOne.Variant68eddf19da1cdee5d385e54cadec6ee37d6e9ed02d8b302f8c964becc5dd4ff4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"68eddf19da1cdee5d385e54cadec6ee37d6e9ed02d8b302f8c964becc5dd4ff4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.LtAddOne.Variant68eddf19da1cdee5d385e54cadec6ee37d6e9ed02d8b302f8c964becc5dd4ff4","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"68eddf19da1cdee5d385e54cadec6ee37d6e9ed02d8b302f8c964becc5dd4ff4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Order/Monoid/NatCast.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2016 Jeremy Avigad. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jeremy Avigad, Leonardo de Moura, Mario Carneiro, Johannes Hölzl, Yuyang Zhao
-/
import Mathlib.Algebra.Order.Monoid.Unbundled.Basic
import Mathlib.Algebra.Order.ZeroLEOne
import Mathlib.Data.Nat.Cast.Defs

/-!
# Order of numerals in an `AddMonoidWithOne`.
-/


namespace GRWTSK.Algebra.UniversalAlgebra.LtAddOne.Variant68eddf19da1cdee5d385e54cadec6ee37d6e9ed02d8b302f8c964becc5dd4ff4

variable {α : Type*}

open Function

lemma lt_add_one [One α] [AddZeroClass α] [PartialOrder α] [ZeroLEOneClass α]
    [NeZero (1 : α)] [AddLeftStrictMono α] (a : α) : a < a + 1 :=
  lt_add_of_pos_right _ zero_lt_one

lemma lt_one_add [One α] [AddZeroClass α] [PartialOrder α] [ZeroLEOneClass α]
    [NeZero (1 : α)] [AddRightStrictMono α] (a : α) : a < 1 + a :=
  lt_add_of_pos_left _ zero_lt_one

variable [AddMonoidWithOne α]

lemma zero_le_two [Preorder α] [ZeroLEOneClass α] [AddLeftMono α] :
    (0 : α) ≤ 2 := by
  rw [← one_add_one_eq_two]
  exact add_nonneg zero_le_one zero_le_one

lemma zero_le_three [Preorder α] [ZeroLEOneClass α] [AddLeftMono α] :
    (0 : α) ≤ 3 := by
  rw [← two_add_one_eq_three]
  exact add_nonneg zero_le_two zero_le_one

lemma zero_le_four [Preorder α] [ZeroLEOneClass α] [AddLeftMono α] :
    (0 : α) ≤ 4 := by
  rw [← three_add_one_eq_four]
  exact add_nonneg zero_le_three zero_le_one

lemma one_le_two [LE α] [ZeroLEOneClass α] [AddLeftMono α] :
    (1 : α) ≤ 2 :=
  calc (1 : α) = 1 + 0 := (add_zero 1).symm
     _ ≤ 1 + 1 := add_le_add_left zero_le_one _
     _ = 2 := one_add_one_eq_two

lemma one_le_two' [LE α] [ZeroLEOneClass α] [AddRightMono α] :
    (1 : α) ≤ 2 :=
  calc (1 : α) = 0 + 1 := (zero_add 1).symm
     _ ≤ 1 + 1 := add_le_add_right zero_le_one _
     _ = 2 := one_add_one_eq_two

section
variable [PartialOrder α] [ZeroLEOneClass α] [NeZero (1 : α)]

section
variable [AddLeftMono α]

/-- See `zero_lt_two'` for a version with the type explicit. -/
@[simp] lemma zero_lt_two : (0 : α) < 2 := zero_lt_one.trans_le one_le_two

/-- See `zero_lt_three'` for a version with the type explicit. -/
@[simp] lemma zero_lt_three : (0 : α) < 3 := by
  rw [← two_add_one_eq_three]
  exact lt_add_of_lt_of_nonneg zero_lt_two zero_le_one

/-- See `zero_lt_four'` for a version with the type explicit. -/
@[simp] lemma zero_lt_four : (0 : α) < 4 := by
  rw [← three_add_one_eq_four]
  exact lt_add_of_lt_of_nonneg zero_lt_three zero_le_one

variable (α)

/-- See `zero_lt_two` for a version with the type implicit. -/
lemma zero_lt_two' : (0 : α) < 2 := zero_lt_two

/-- See `zero_lt_three` for a version with the type implicit. -/
lemma zero_lt_three' : (0 : α) < 3 := zero_lt_three

/-- See `zero_lt_four` for a version with the type implicit. -/
lemma zero_lt_four' : (0 : α) < 4 := zero_lt_four

instance ZeroLEOneClass.neZero.two : NeZero (2 : α) := ⟨zero_lt_two.ne'⟩
instance ZeroLEOneClass.neZero.three : NeZero (3 : α) := ⟨zero_lt_three.ne'⟩
instance ZeroLEOneClass.neZero.four : NeZero (4 : α) := ⟨zero_lt_four.ne'⟩

end

lemma one_lt_two [AddLeftStrictMono α] : (1 : α) < 2 := by
  rw [← one_add_one_eq_two]
  exact lt_add_one _

end

alias two_pos := zero_lt_two

alias three_pos := zero_lt_three

alias four_pos := zero_lt_four
```
