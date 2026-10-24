-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.Sqrt.Variant9afac075a9e796761d81618e97b70b6463f72ea72b45c8b95a7d9b32b71cdae5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9afac075a9e796761d81618e97b70b6463f72ea72b45c8b95a7d9b32b71cdae5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Sqrt.Variant9afac075a9e796761d81618e97b70b6463f72ea72b45c8b95a7d9b32b71cdae5","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"9afac075a9e796761d81618e97b70b6463f72ea72b45c8b95a7d9b32b71cdae5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Data/Int/Sqrt.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Kenny Lau. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kenny Lau
-/
import Mathlib.Data.Nat.Sqrt


namespace GRWTSK.FoundationsLogicAndTypeTheory.Sqrt.Variant9afac075a9e796761d81618e97b70b6463f72ea72b45c8b95a7d9b32b71cdae5

#align_import data.int.sqrt from "leanprover-community/mathlib"@"ba2245edf0c8bb155f1569fd9b9492a9b384cde6"

/-!
# Square root of integers

This file defines the square root function on integers. `Int.sqrt z` is the greatest integer `r`
such that `r * r ≤ z`. If `z ≤ 0`, then `Int.sqrt z = 0`.
-/


namespace Int

/-- `sqrt z` is the square root of an integer `z`. If `z` is positive, it returns the largest
integer `r` such that `r * r ≤ n`. If it is negative, it returns `0`. For example, `sqrt (-1) = 0`,
`sqrt 1 = 1`, `sqrt 2 = 1` -/
-- @[pp_nodot] porting note: unknown attribute
def sqrt (z : ℤ) : ℤ :=
  Nat.sqrt <| Int.toNat z
#align int.sqrt Int.sqrt

theorem sqrt_eq (n : ℤ) : sqrt (n * n) = n.natAbs := by
  rw [sqrt, ← natAbs_mul_self, toNat_coe_nat, Nat.sqrt_eq]
#align int.sqrt_eq Int.sqrt_eq

theorem exists_mul_self (x : ℤ) : (∃ n, n * n = x) ↔ sqrt x * sqrt x = x :=
  ⟨fun ⟨n, hn⟩ => by rw [← hn, sqrt_eq, ← Int.ofNat_mul, natAbs_mul_self], fun h => ⟨sqrt x, h⟩⟩
#align int.exists_mul_self Int.exists_mul_self

theorem sqrt_nonneg (n : ℤ) : 0 ≤ sqrt n :=
  coe_nat_nonneg _
#align int.sqrt_nonneg Int.sqrt_nonneg

end Int
