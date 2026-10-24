# Complete source: GRWTSK.Algebra.UniversalAlgebra.SuccPred.Variant9c9b9c3bb2650ab525e4d640dcf418be2c536d5bdd666feca2f7f959283361fa

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b67f47fe5f3da4a57dee2a2c7047166a3938752b` · SHA-256 `5e4a725ccb66bb6e9ccb06b84aac40af40d9a235da51787e6cd8b6aea6a923d0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.SuccEqSucc.Variant0e9f52fa3d7b4f48c5d1a0ec31b200e5fc89bf17533a5b07835a12608806aa22","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0e9f52fa3d7b4f48c5d1a0ec31b200e5fc89bf17533a5b07835a12608806aa22","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.SuccEqSucc.Variant0e9f52fa3d7b4f48c5d1a0ec31b200e5fc89bf17533a5b07835a12608806aa22","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"0e9f52fa3d7b4f48c5d1a0ec31b200e5fc89bf17533a5b07835a12608806aa22","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Data/Nat/SuccPred.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
module

public import Mathlib.Algebra.Order.Group.Nat
public import Mathlib.Algebra.Ring.Nat
public import Mathlib.Algebra.Order.Monoid.Unbundled.WithTop
public import Mathlib.Algebra.Order.Sub.Unbundled.Basic
public import Mathlib.Algebra.Order.SuccPred
public import Mathlib.Data.Fin.Basic
public import Mathlib.Order.Nat
public import Mathlib.Order.SuccPred.Archimedean
public import Mathlib.Order.SuccPred.WithBot

/-!
# Successors and predecessors of naturals

In this file, we show that `ℕ` is both an archimedean `succOrder` and an archimedean `predOrder`.
-/


namespace GRWTSK.Algebra.UniversalAlgebra.SuccEqSucc.Variant0e9f52fa3d7b4f48c5d1a0ec31b200e5fc89bf17533a5b07835a12608806aa22

public section


open Function Order

namespace Nat
variable {m n : ℕ}

instance instSuccOrder : SuccOrder ℕ :=
  SuccOrder.ofSuccLeIff succ Nat.succ_le_iff

instance instSuccAddOrder : SuccAddOrder ℕ := ⟨fun _ => rfl⟩

instance instPredOrder : PredOrder ℕ where
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

/-- A special case of `Order.covBy_iff_add_one_eq` for use by simp. -/
@[simp] lemma covBy_iff_add_one_eq : m ⋖ n ↔ m + 1 = n := Order.covBy_iff_add_one_eq

lemma le_succ_iff_eq_or_le : m ≤ n.succ ↔ m = n.succ ∨ m ≤ n := Order.le_succ_iff_eq_or_le

instance : IsSuccArchimedean ℕ :=
  ⟨fun {a} {b} h => ⟨b - a, by rw [succ_eq_succ, Nat.succ_iterate, add_tsub_cancel_of_le h]⟩⟩

instance : IsPredArchimedean ℕ :=
  ⟨fun {a} {b} h => ⟨b - a, by rw [pred_eq_pred, Nat.pred_iterate, tsub_tsub_cancel_of_le h]⟩⟩

lemma forall_ne_zero_iff (P : ℕ → Prop) :
    (∀ i, i ≠ 0 → P i) ↔ (∀ i, P (i + 1)) :=
  SuccOrder.forall_ne_bot_iff P

end Nat

@[simp] theorem Fin.covBy_iff {n : ℕ} {a b : Fin n} : a ⋖ b ↔ (a : ℕ) ⋖ b :=
  and_congr_right' ⟨fun h c ha hb ↦ @h ⟨c, hb.trans b.prop⟩ ha hb, fun h _c hc ↦ h hc⟩

alias ⟨CovBy.coe_fin, _⟩ := Fin.covBy_iff

@[simp]
theorem withBotSucc_zero : WithBot.succ 0 = 1 := rfl

@[simp]
theorem withBotSucc_one : WithBot.succ 1 = 2 := rfl
```
