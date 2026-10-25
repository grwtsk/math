# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.Lemmas.Variant21b6bbcc3775f527d128e9b9eefff7bea28ebee4e7f4c70cfa97178d55211284

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a7f8936642786870f29430de0be847d1c32798b5` · SHA-256 `ab1ac7c85f15babe334d2102dd30c39967a3f928423f162fd136a1556d3c0148`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.SubtypeCoeBot.Variant3a62564caf5c8c1d67c5997378285a9fcd7228653a6fcf7865747e5e45167233","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3a62564caf5c8c1d67c5997378285a9fcd7228653a6fcf7865747e5e45167233","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.SubtypeCoeBot.Variant3a62564caf5c8c1d67c5997378285a9fcd7228653a6fcf7865747e5e45167233","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"3a62564caf5c8c1d67c5997378285a9fcd7228653a6fcf7865747e5e45167233","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Nat/Order/Lemmas.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2014 Floris van Doorn (c) 2016 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Floris van Doorn, Leonardo de Moura, Jeremy Avigad, Mario Carneiro
-/
import Mathlib.Data.Nat.Find
import Mathlib.Data.Set.Basic

/-!
# Further lemmas about the natural numbers

The distinction between this file and `Mathlib/Algebra/Order/Ring/Nat.lean` is not particularly
clear. They were separated for now to minimize the porting requirements for tactics
during the transition to mathlib4. Please feel free to reorganize these two files.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.SubtypeCoeBot.Variant3a62564caf5c8c1d67c5997378285a9fcd7228653a6fcf7865747e5e45167233

assert_not_exists RelIso

namespace Nat

/-! ### Sets -/


instance Subtype.orderBot (s : Set ℕ) [DecidablePred (· ∈ s)] [h : Nonempty s] : OrderBot s where
  bot := ⟨Nat.find (nonempty_subtype.1 h), Nat.find_spec (nonempty_subtype.1 h)⟩
  bot_le x := Nat.find_min' _ x.2

instance Subtype.semilatticeSup (s : Set ℕ) : SemilatticeSup s :=
  { Subtype.instLinearOrder s, LinearOrder.toLattice with }

theorem Subtype.coe_bot {s : Set ℕ} [DecidablePred (· ∈ s)] [h : Nonempty s] :
    ((⊥ : s) : ℕ) = Nat.find (nonempty_subtype.1 h) :=
  rfl

theorem set_eq_univ {S : Set ℕ} : S = Set.univ ↔ 0 ∈ S ∧ ∀ k : ℕ, k ∈ S → k + 1 ∈ S :=
  ⟨by rintro rfl; simp, fun ⟨h0, hs⟩ => Set.eq_univ_of_forall (set_induction h0 hs)⟩

lemma exists_not_and_succ_of_not_zero_of_exists {p : ℕ → Prop} (H' : ¬ p 0) (H : ∃ n, p n) :
    ∃ n, ¬ p n ∧ p (n + 1) := by
  classical
  let k := Nat.find H
  have hk : p k := Nat.find_spec H
  suffices 0 < k from
    ⟨k - 1, Nat.find_min H <| Nat.pred_lt this.ne', by rwa [Nat.sub_add_cancel this]⟩
  by_contra! contra
  rw [le_zero_eq] at contra
  exact H' (contra ▸ hk)

end Nat
```
