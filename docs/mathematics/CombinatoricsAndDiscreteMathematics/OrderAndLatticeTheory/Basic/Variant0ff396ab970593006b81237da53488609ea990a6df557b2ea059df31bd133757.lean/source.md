# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Basic.Variant0ff396ab970593006b81237da53488609ea990a6df557b2ea059df31bd133757

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `23797a0f1aa63d04fb5a54d5a91413963d34e3f0` · SHA-256 `d50409996f150bb50b111753247bd31e436b5ff2a138994ca710823403e1db97`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.LeElim.Variant00a51629cc291e0d907f74e4cd4f113c966bc3159cb2b2b49f31c03bd97de474","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"00a51629cc291e0d907f74e4cd4f113c966bc3159cb2b2b49f31c03bd97de474","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.OrderTheory.SourceCorpus.LeElim.Variant00a51629cc291e0d907f74e4cd4f113c966bc3159cb2b2b49f31c03bd97de474","mathematical_subject":"Algebra.OrderTheory","original_sha256":"00a51629cc291e0d907f74e4cd4f113c966bc3159cb2b2b49f31c03bd97de474","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Data/Int/Order/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2016 Jeremy Avigad. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jeremy Avigad
-/
module

public import Mathlib.Basic.Logic.Basic
public import Mathlib.Data.Int.Notation
public import Mathlib.Data.Nat.Notation
public import Mathlib.Order.Defs.LinearOrder

/-!
# The order relation on the integers
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.LeElim.Variant00a51629cc291e0d907f74e4cd4f113c966bc3159cb2b2b49f31c03bd97de474

public section

open Nat

namespace Int

variable {a b : ℤ}

theorem le.elim (h : a ≤ b) {P : Prop} (h' : ∀ n : ℕ, a + ↑n = b → P) : P :=
  Exists.elim (le.dest h) h'

alias ⟨le_of_ofNat_le_ofNat, ofNat_le_ofNat_of_le⟩ := ofNat_le

theorem lt.elim (h : a < b) {P : Prop} (h' : ∀ n : ℕ, a + ↑(Nat.succ n) = b → P) : P :=
  Exists.elim (lt.dest h) h'

alias ⟨lt_of_ofNat_lt_ofNat, ofNat_lt_ofNat_of_lt⟩ := ofNat_lt

instance instLinearOrder : LinearOrder ℤ where
  le_refl := Int.le_refl
  le_trans := @Int.le_trans
  le_antisymm := @Int.le_antisymm
  lt_iff_le_not_ge := @Int.lt_iff_le_and_not_ge
  le_total := Int.le_total
  toDecidableEq := instDecidableEq
  toDecidableLE := decLe
  toDecidableLT := decLt

-- Shortcut instances
instance : Preorder ℤ := inferInstance
instance : PartialOrder ℤ := inferInstance

protected alias ⟨eq_zero_or_eq_zero_of_mul_eq_zero, _⟩ := Int.mul_eq_zero

theorem nonneg_or_nonpos_of_mul_nonneg : 0 ≤ a * b → 0 ≤ a ∧ 0 ≤ b ∨ a ≤ 0 ∧ b ≤ 0 := by
  grind [Int.mul_comm, Int.mul_nonneg_iff_of_pos_right]

theorem mul_nonneg_of_nonneg_or_nonpos : 0 ≤ a ∧ 0 ≤ b ∨ a ≤ 0 ∧ b ≤ 0 → 0 ≤ a * b
  | .inl ⟨ha, hb⟩ => Int.mul_nonneg ha hb
  | .inr ⟨ha, hb⟩ => Int.mul_nonneg_of_nonpos_of_nonpos ha hb

protected theorem mul_nonneg_iff : 0 ≤ a * b ↔ 0 ≤ a ∧ 0 ≤ b ∨ a ≤ 0 ∧ b ≤ 0 :=
  ⟨nonneg_or_nonpos_of_mul_nonneg, mul_nonneg_of_nonneg_or_nonpos⟩

protected theorem mul_pos_iff : 0 < a * b ↔ 0 < a ∧ 0 < b ∨ a < 0 ∧ b < 0 := by
  rw [Int.lt_iff_le_and_ne, Int.mul_nonneg_iff, ne_comm, Int.mul_ne_zero_iff]
  lia

protected theorem mul_nonpos_iff : a * b ≤ 0 ↔ 0 ≤ a ∧ b ≤ 0 ∨ a ≤ 0 ∧ 0 ≤ b := by
  rw [← not_iff_not, not_le, Int.mul_pos_iff]
  lia

protected theorem mul_neg_iff : a * b < 0 ↔ 0 < a ∧ b < 0 ∨ a < 0 ∧ 0 < b := by
  rw [← not_iff_not, not_lt, Int.mul_nonneg_iff]
  lia

end Int
```
