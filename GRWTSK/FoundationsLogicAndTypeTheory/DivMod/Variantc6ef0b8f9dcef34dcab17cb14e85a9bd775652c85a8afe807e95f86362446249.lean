-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MulEdivLeMulEdivAssoc.Varianta5a4bac3f05fc6c6a3dfe3e39e44be07e5584f4d5d3fabcd753878317d501e9d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a5a4bac3f05fc6c6a3dfe3e39e44be07e5584f4d5d3fabcd753878317d501e9d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.MulEdivLeMulEdivAssoc.Varianta5a4bac3f05fc6c6a3dfe3e39e44be07e5584f4d5d3fabcd753878317d501e9d","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"a5a4bac3f05fc6c6a3dfe3e39e44be07e5584f4d5d3fabcd753878317d501e9d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Data/Int/DivMod.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
module

public import Mathlib.Init

/-!
# Basic lemmas about division and modulo for integers

-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.MulEdivLeMulEdivAssoc.Varianta5a4bac3f05fc6c6a3dfe3e39e44be07e5584f4d5d3fabcd753878317d501e9d

public section

namespace Int

/-! ### `ediv` and `fdiv` -/

theorem mul_ediv_le_mul_ediv_assoc {a : Int} (ha : 0 ≤ a) (b : Int) {c : Int} (hc : 0 ≤ c) :
    a * (b / c) ≤ a * b / c := by
  obtain rfl | hlt : c = 0 ∨ 0 < c := by lia
  · simp
  · rw [Int.le_ediv_iff_mul_le hlt, Int.mul_assoc]
    exact Int.mul_le_mul_of_nonneg_left (Int.ediv_mul_le b (Int.ne_of_gt hlt)) ha

theorem fdiv_fdiv_eq_fdiv_mul (m : Int) {n k : Int} (hn : 0 ≤ n) (hk : 0 ≤ k) :
    (m.fdiv n).fdiv k = m.fdiv (n * k) := by
  rw [Int.fdiv_eq_ediv_of_nonneg _ hn,
    Int.fdiv_eq_ediv_of_nonneg _ hk,
    Int.fdiv_eq_ediv_of_nonneg _ (Int.mul_nonneg hn hk),
    ediv_ediv_of_nonneg hn]

/-! ### `emod` -/

theorem emod_eq_sub_self_emod {a b : Int} : a % b = (a - b) % b :=
  (sub_emod_right a b).symm

end Int
