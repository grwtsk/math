# Complete source: GRWTSK.Algebra.UniversalAlgebra.SuccPred.Variant9a5e9f3baef12a105b8d8a5035ec8837083d55479b1636af5ae750a4d2acf3a5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `00b11b88270ead80d4d31392e83656b15bc78adf` · SHA-256 `51a403f58e00481fe46733eb561bd026a8cc31d0af2b5fd97f1e2bc1ec140c8f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.SuccEqSucc.Variant63d1fa0a2a91149e72536ffac82af7c7df3e3e987a5dc03a6ab006d61de527f4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"63d1fa0a2a91149e72536ffac82af7c7df3e3e987a5dc03a6ab006d61de527f4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.SuccEqSucc.Variant63d1fa0a2a91149e72536ffac82af7c7df3e3e987a5dc03a6ab006d61de527f4","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"63d1fa0a2a91149e72536ffac82af7c7df3e3e987a5dc03a6ab006d61de527f4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Nat/SuccPred.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
import Mathlib.Algebra.Order.Group.Nat
import Mathlib.Algebra.Ring.Nat
import Mathlib.Algebra.Order.Monoid.Unbundled.WithTop
import Mathlib.Algebra.Order.Sub.Unbundled.Basic
import Mathlib.Algebra.Order.SuccPred
import Mathlib.Data.Fin.Basic
import Mathlib.Order.Nat
import Mathlib.Order.SuccPred.Archimedean
import Mathlib.Order.SuccPred.WithBot

/-!
# Successors and predecessors of naturals

In this file, we show that `ℕ` is both an archimedean `succOrder` and an archimedean `predOrder`.
-/



namespace GRWTSK.Algebra.UniversalAlgebra.SuccEqSucc.Variant63d1fa0a2a91149e72536ffac82af7c7df3e3e987a5dc03a6ab006d61de527f4

open Function Order

namespace Nat
variable {m n : ℕ}

-- so that Lean reads `Nat.succ` through `succ_order.succ`
@[instance] abbrev instSuccOrder : SuccOrder ℕ :=
  SuccOrder.ofSuccLeIff succ Nat.succ_le

instance instSuccAddOrder : SuccAddOrder ℕ := ⟨fun _ => rfl⟩

-- so that Lean reads `Nat.pred` through `pred_order.pred`
@[instance] abbrev instPredOrder : PredOrder ℕ where
  pred := pred
  pred_le := pred_le
  min_of_le_pred {a} ha := by
    cases a
    · exact isMin_bot
    · exact (not_succ_le_self _ ha).elim
  le_pred_of_lt {a} {b} h := by
    cases b
    · exact (a.not_lt_zero h).elim
    · exact le_of_succ_le_succ h

instance instPredSubOrder : PredSubOrder ℕ := ⟨fun _ => rfl⟩

@[simp]
theorem succ_eq_succ : Order.succ = succ :=
  rfl

@[simp]
theorem pred_eq_pred : Order.pred = pred :=
  rfl

protected theorem succ_iterate (a : ℕ) : ∀ n, succ^[n] a = a + n :=
  Order.succ_iterate a

protected theorem pred_iterate (a : ℕ) : ∀ n, pred^[n] a = a - n
  | 0 => rfl
  | n + 1 => by
    rw [Function.iterate_succ', sub_succ]
    exact congr_arg _ (Nat.pred_iterate a n)

lemma le_succ_iff_eq_or_le : m ≤ n.succ ↔ m = n.succ ∨ m ≤ n := Order.le_succ_iff_eq_or_le

instance : IsSuccArchimedean ℕ :=
  ⟨fun {a} {b} h => ⟨b - a, by rw [succ_eq_succ, Nat.succ_iterate, add_tsub_cancel_of_le h]⟩⟩

instance : IsPredArchimedean ℕ :=
  ⟨fun {a} {b} h => ⟨b - a, by rw [pred_eq_pred, Nat.pred_iterate, tsub_tsub_cancel_of_le h]⟩⟩

lemma forall_ne_zero_iff (P : ℕ → Prop) :
    (∀ i, i ≠ 0 → P i) ↔ (∀ i, P (i + 1)) :=
  SuccOrder.forall_ne_bot_iff P

end Nat

@[simp, norm_cast]
theorem Fin.coe_covBy_iff {n : ℕ} {a b : Fin n} : (a : ℕ) ⋖ b ↔ a ⋖ b :=
  and_congr_right' ⟨fun h _c hc => h hc, fun h c ha hb => @h ⟨c, hb.trans b.prop⟩ ha hb⟩

alias ⟨_, CovBy.coe_fin⟩ := Fin.coe_covBy_iff

@[simp]
theorem withBotSucc_zero : WithBot.succ 0 = 1 := rfl

@[simp]
theorem withBotSucc_one : WithBot.succ 1 = 2 := rfl
```
