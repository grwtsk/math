# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.WithBot.Variantad178d1aefc571a0137b4255e616f96e11999e42ba0e050d7b3eb44afd6cb60b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `830b73ee5e71d59383301470fb387e1ec25a61d4` · SHA-256 `412c6d577070a1f57a51aea086040c8fa9fce12c46866bf725a02fd29bdc6e65`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.AddEqZeroIff.Variantf1f1d33293760c2d28281def54c52e2f7b5b7221e139725487f5717bc9ce996c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f1f1d33293760c2d28281def54c52e2f7b5b7221e139725487f5717bc9ce996c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.OrderTheory.SourceCorpus.AddEqZeroIff.Variantf1f1d33293760c2d28281def54c52e2f7b5b7221e139725487f5717bc9ce996c","mathematical_subject":"Algebra.OrderTheory","original_sha256":"f1f1d33293760c2d28281def54c52e2f7b5b7221e139725487f5717bc9ce996c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Data/Nat/WithBot.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Chris Hughes. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Chris Hughes
-/
module

public import Mathlib.Data.Nat.Cast.WithTop
public import Mathlib.Order.Nat
public import Mathlib.Algebra.Ring.Nat

/-!
# `WithBot ℕ`

Lemmas about the type of natural numbers with a bottom element adjoined.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.AddEqZeroIff.Variantf1f1d33293760c2d28281def54c52e2f7b5b7221e139725487f5717bc9ce996c

public section


namespace Nat

namespace WithBot

instance : WellFoundedRelation (WithBot ℕ) := WellFoundedLT.toWellFoundedRelation

theorem add_eq_zero_iff {n m : WithBot ℕ} : n + m = 0 ↔ n = 0 ∧ m = 0 := by
  cases n
  · simp [WithBot.bot_add]
  cases m
  · simp [WithBot.add_bot]
  simp [← WithBot.coe_add]

theorem add_eq_one_iff {n m : WithBot ℕ} : n + m = 1 ↔ n = 0 ∧ m = 1 ∨ n = 1 ∧ m = 0 := by
  cases n
  · simp
  cases m
  · simp [WithBot.add_bot]
  simp [← WithBot.coe_add, Nat.add_eq_one_iff]

theorem add_eq_two_iff {n m : WithBot ℕ} :
    n + m = 2 ↔ n = 0 ∧ m = 2 ∨ n = 1 ∧ m = 1 ∨ n = 2 ∧ m = 0 := by
  cases n
  · simp [WithBot.bot_add]
  cases m
  · simp [WithBot.add_bot]
  simp [← WithBot.coe_add, Nat.add_eq_two_iff]

theorem add_eq_three_iff {n m : WithBot ℕ} :
    n + m = 3 ↔ n = 0 ∧ m = 3 ∨ n = 1 ∧ m = 2 ∨ n = 2 ∧ m = 1 ∨ n = 3 ∧ m = 0 := by
  cases n
  · simp [WithBot.bot_add]
  cases m
  · simp [WithBot.add_bot]
  simp [← WithBot.coe_add, Nat.add_eq_three_iff]

theorem coe_nonneg {n : ℕ} : 0 ≤ (n : WithBot ℕ) := by
  rw [← WithBot.coe_zero, cast_withBot, WithBot.coe_le_coe]
  exact n.zero_le

@[simp]
theorem lt_zero_iff {n : WithBot ℕ} : n < 0 ↔ n = ⊥ := WithBot.lt_coe_bot

theorem one_le_iff_zero_lt {x : WithBot ℕ} : 1 ≤ x ↔ 0 < x := by
  refine ⟨zero_lt_one.trans_le, fun h => ?_⟩
  cases x
  · exact (not_lt_bot h).elim
  · rwa [← WithBot.coe_zero, WithBot.coe_lt_coe, ← Nat.add_one_le_iff, zero_add,
      ← WithBot.coe_le_coe, WithBot.coe_one] at h

theorem lt_one_iff_le_zero {x : WithBot ℕ} : x < 1 ↔ x ≤ 0 :=
  not_iff_not.mp (by simpa using one_le_iff_zero_lt)

theorem add_one_le_of_lt {n m : WithBot ℕ} (h : n < m) : n + 1 ≤ m := by
  cases n
  · simp only [WithBot.bot_add, bot_le]
  cases m
  · exact (not_lt_bot h).elim
  · rwa [WithBot.coe_lt_coe, ← Nat.add_one_le_iff, ← WithBot.coe_le_coe, WithBot.coe_add,
      WithBot.coe_one] at h

end WithBot

end Nat
```
