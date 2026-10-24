# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SuccOrder.Variant27419a65a076f75393fcfc7dec29b99df77a393b60e22800129e04c56084faf5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b02bd0c8aa25686f82e24f250a43163d023276b8` · SHA-256 `f8456a944cb45b9017b4bb92202142e9fbb21d939faf5baaf351d679ab1ab66e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SuccDef.Variant61d7dc19b9be05a9c09169879586963f7d8d8ccb53f62a18166516e99d71d54d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"61d7dc19b9be05a9c09169879586963f7d8d8ccb53f62a18166516e99d71d54d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.SuccDef.Variant61d7dc19b9be05a9c09169879586963f7d8d8ccb53f62a18166516e99d71d54d","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"61d7dc19b9be05a9c09169879586963f7d8d8ccb53f62a18166516e99d71d54d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Data/ENat/SuccOrder.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Violeta Hernández Palacios. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Violeta Hernández Palacios
-/
module

public import Mathlib.Data.ENat.Monoid
public import Mathlib.Data.Nat.SuccPred

/-!
# `SuccOrder` structure on `ENat`
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SuccDef.Variant61d7dc19b9be05a9c09169879586963f7d8d8ccb53f62a18166516e99d71d54d

@[expose] public section

deriving instance SuccOrder for ENat

namespace ENat

variable {a b m n : ℕ∞}

@[simp] theorem succ_natCast (n : ℕ) : SuccOrder.succ (n : ℕ∞) = (n + 1 : ℕ) := WithTop.succ_coe

@[deprecated (since := "2026-07-17")] alias succ_coe := succ_natCast

@[simp] theorem succ_top : SuccOrder.succ (⊤ : ℕ∞) = ⊤ := rfl

instance : SuccAddOrder ℕ∞ where
  succ_eq_add_one x := by cases x <;> simp

@[deprecated Order.succ_eq_add_one (since := "2026-05-25")]
theorem succ_def (m : ℕ∞) : Order.succ m = m + 1 :=
  Order.succ_eq_add_one m

theorem add_one_le_iff (hm : m ≠ ⊤) : m + 1 ≤ n ↔ m < n :=
  Order.add_one_le_iff_of_not_isMax (not_isMax_iff_ne_top.mpr hm)

theorem add_one_le_iff' (hn : n ≠ ⊤) : m + 1 ≤ n ↔ m < n :=
  Order.add_one_le_iff_of_not_isMax' (not_isMax_iff_ne_top.mpr hn)

theorem natCast_add_one_le_iff {m : ℕ} {n : ℕ∞} : m + 1 ≤ n ↔ m < n :=
  add_one_le_iff <| natCast_ne_top m

@[deprecated (since := "2026-07-17")] alias coe_add_one_le_iff := natCast_add_one_le_iff

theorem add_one_le_natCast_iff {m : ℕ∞} {n : ℕ} : m + 1 ≤ n ↔ m < n :=
  add_one_le_iff' <| natCast_ne_top n

@[deprecated (since := "2026-07-17")] alias add_one_le_coe_iff := add_one_le_natCast_iff

@[deprecated Order.one_le_iff_ne_zero (since := "2026-05-25")]
protected theorem one_le_iff_ne_zero : 1 ≤ n ↔ n ≠ 0 :=
  Order.one_le_iff_ne_zero

@[deprecated Order.lt_one_iff (since := "2026-05-25")]
lemma lt_one_iff_eq_zero : n < 1 ↔ n = 0 :=
  Order.lt_one_iff

@[deprecated Order.le_one_iff (since := "2026-05-25")]
lemma le_one_iff_eq_zero_or_eq_one : n ≤ 1 ↔ n = 0 ∨ n = 1 :=
  Order.le_one_iff

theorem lt_add_one_iff (hn : n ≠ ⊤) : m < n + 1 ↔ m ≤ n :=
  Order.lt_add_one_iff_of_not_isMax (not_isMax_iff_ne_top.mpr hn)

theorem lt_add_one_iff' (hm : m ≠ ⊤) : m < n + 1 ↔ m ≤ n :=
  Order.lt_add_one_iff_of_not_isMax' (not_isMax_iff_ne_top.mpr hm)

@[simp]
theorem lt_two_iff : n < 2 ↔ n ≤ 1 := by
  rw [← one_add_one_eq_two, lt_add_one_iff one_ne_top]

theorem lt_natCast_add_one_iff {m : ℕ∞} {n : ℕ} : m < n + 1 ↔ m ≤ n :=
  lt_add_one_iff (natCast_ne_top n)

@[deprecated (since := "2026-07-17")] alias lt_coe_add_one_iff := lt_natCast_add_one_iff

theorem natCast_lt_add_one_iff {m : ℕ} {n : ℕ∞} : m < n + 1 ↔ m ≤ n :=
  lt_add_one_iff' (natCast_ne_top m)

@[deprecated (since := "2026-07-17")] alias coe_lt_add_one_iff := natCast_lt_add_one_iff

protected lemma le_sub_one_of_lt (h : a < b) : a ≤ b - 1 := by
  cases b
  · simp
  · exact ENat.le_sub_of_add_le_right one_ne_top <| lt_natCast_add_one_iff.mp <|
      lt_tsub_iff_right.mp h

namespace WithBot

lemma lt_add_one_iff {n : WithBot ℕ∞} {m : ℕ} : n < m + 1 ↔ n ≤ m := by
  rw [← WithBot.coe_one, ← ENat.natCast_one, WithBot.coe_natCast, ← Nat.cast_add,
    ← WithBot.coe_natCast]
  cases n
  · simp only [bot_le, WithBot.bot_lt_coe]
  · rw [WithBot.coe_lt_coe, Nat.cast_add, natCast_one, ENat.lt_add_one_iff (natCast_ne_top _),
      ← WithBot.coe_le_coe, WithBot.coe_natCast]

lemma add_one_le_iff {n : ℕ} {m : WithBot ℕ∞} : n + 1 ≤ m ↔ n < m := by
  rw [← WithBot.coe_one, ← natCast_one, WithBot.coe_natCast, ← Nat.cast_add, ← WithBot.coe_natCast]
  cases m
  · simp
  · rw [WithBot.coe_le_coe, natCast_add, natCast_one, ENat.add_one_le_iff (natCast_ne_top n),
      ← WithBot.coe_lt_coe, WithBot.coe_natCast]

lemma add_one_le_natCast_iff {n : WithBot ℕ∞} {m : ℕ} : n + 1 ≤ m ↔ n < m := by
  induction n with
  | bot => simp
  | coe n =>
    norm_cast
    simp [add_one_le_iff']

@[simp]
lemma add_one_le_zero_iff (n : WithBot ℕ∞) : n + 1 ≤ 0 ↔ n = ⊥ :=
  add_one_le_natCast_iff.trans (WithBot.lt_zero_iff_eq_bot n)

end WithBot
end ENat
```
