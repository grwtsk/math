# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TFAE.Variant18ec44930fcb4ba895c48bf671e81bc16269cd8f6c08b7711bb0b49ff2b2291c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `74fe8dac226dcb161c28ac1f7889999df8bbbce9` · SHA-256 `ecf5855e0ea4764aebf0068efb78c80dec040aceb5b8c016cd72858d11465fdb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TFAE.Variant7c6782b1630157c6b232194569c73548a3e47fa51fca0f14c335ad06525f2c80","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7c6782b1630157c6b232194569c73548a3e47fa51fca0f14c335ad06525f2c80","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.TFAE.Variant7c6782b1630157c6b232194569c73548a3e47fa51fca0f14c335ad06525f2c80","mathematical_subject":"Computation.DataStructures","original_sha256":"7c6782b1630157c6b232194569c73548a3e47fa51fca0f14c335ad06525f2c80","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/List/TFAE.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Johan Commelin. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johan Commelin, Simon Hudon
-/
import Batteries.Data.List.Lemmas
import Mathlib.Tactic.TypeStar

/-!
# The Following Are Equivalent

This file allows to state that all propositions in a list are equivalent. It is used by
`Mathlib/Tactic/Tfae.lean`.
`TFAE l` means `∀ x ∈ l, ∀ y ∈ l, x ↔ y`. This is equivalent to `Pairwise (↔) l`.
-/



namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TFAE.Variant7c6782b1630157c6b232194569c73548a3e47fa51fca0f14c335ad06525f2c80

namespace List

/-- TFAE: The Following (propositions) Are Equivalent.

The `tfae_have` and `tfae_finish` tactics can be useful in proofs with `TFAE` goals.
-/
def TFAE (l : List Prop) : Prop :=
  ∀ x ∈ l, ∀ y ∈ l, x ↔ y

theorem tfae_nil : TFAE [] :=
  forall_mem_nil _

@[simp]
theorem tfae_singleton (p) : TFAE [p] := by simp [TFAE, -eq_iff_iff]

theorem tfae_cons_of_mem {a b} {l : List Prop} (h : b ∈ l) : TFAE (a :: l) ↔ (a ↔ b) ∧ TFAE l :=
  ⟨fun H => ⟨H a (by simp) b (Mem.tail a h),
    fun _ hp _ hq => H _ (Mem.tail a hp) _ (Mem.tail a hq)⟩,
      by
        rintro ⟨ab, H⟩ p (_ | ⟨_, hp⟩) q (_ | ⟨_, hq⟩)
        · rfl
        · exact ab.trans (H _ h _ hq)
        · exact (ab.trans (H _ h _ hp)).symm
        · exact H _ hp _ hq⟩

theorem tfae_cons_cons {a b} {l : List Prop} : TFAE (a :: b :: l) ↔ (a ↔ b) ∧ TFAE (b :: l) :=
  tfae_cons_of_mem (Mem.head _)

@[simp]
theorem tfae_cons_self {a} {l : List Prop} : TFAE (a :: a :: l) ↔ TFAE (a :: l) := by
  simp [tfae_cons_cons]

theorem tfae_of_forall (b : Prop) (l : List Prop) (h : ∀ a ∈ l, a ↔ b) : TFAE l :=
  fun _a₁ h₁ _a₂ h₂ => (h _ h₁).trans (h _ h₂).symm

theorem tfae_of_cycle {a b} {l : List Prop} (h_chain : List.Chain (· → ·) a (b :: l))
    (h_last : getLastD l b → a) : TFAE (a :: b :: l) := by
  induction l generalizing a b with
  | nil => simp_all [tfae_cons_cons, iff_def]
  | cons c l IH =>
    simp only [tfae_cons_cons, getLastD_cons, tfae_singleton, and_true, chain_cons, Chain.nil] at *
    rcases h_chain with ⟨ab, ⟨bc, ch⟩⟩
    have := IH ⟨bc, ch⟩ (ab ∘ h_last)
    exact ⟨⟨ab, h_last ∘ (this.2 c (.head _) _ getLastD_mem_cons).1 ∘ bc⟩, this⟩

theorem TFAE.out {l} (h : TFAE l) (n₁ n₂ : Nat) {a b}
    (h₁ : l[n₁]? = some a := by rfl)
    (h₂ : l[n₂]? = some b := by rfl) :
    a ↔ b :=
  h _ (List.mem_of_getElem? h₁) _ (List.mem_of_getElem? h₂)

/-- If `P₁ x ↔ ... ↔ Pₙ x` for all `x`, then `(∀ x, P₁ x) ↔ ... ↔ (∀ x, Pₙ x)`.
Note: in concrete cases, Lean has trouble finding the list `[P₁, ..., Pₙ]` from the list
`[(∀ x, P₁ x), ..., (∀ x, Pₙ x)]`, but simply providing a list of underscores with the right
length makes it happier.

Example:
```lean
example (P₁ P₂ P₃ : ℕ → Prop) (H : ∀ n, [P₁ n, P₂ n, P₃ n].TFAE) :
    [∀ n, P₁ n, ∀ n, P₂ n, ∀ n, P₃ n].TFAE :=
  forall_tfae [_, _, _] H
```
-/
theorem forall_tfae {α : Type*} (l : List (α → Prop)) (H : ∀ a : α, (l.map (fun p ↦ p a)).TFAE) :
    (l.map (fun p ↦ ∀ a, p a)).TFAE := by
  simp only [TFAE, List.forall_mem_map]
  intros p₁ hp₁ p₂ hp₂
  exact forall_congr' fun a ↦ H a (p₁ a) (mem_map_of_mem hp₁)
    (p₂ a) (mem_map_of_mem hp₂)

/-- If `P₁ x ↔ ... ↔ Pₙ x` for all `x`, then `(∃ x, P₁ x) ↔ ... ↔ (∃ x, Pₙ x)`.
Note: in concrete cases, Lean has trouble finding the list `[P₁, ..., Pₙ]` from the list
`[(∃ x, P₁ x), ..., (∃ x, Pₙ x)]`, but simply providing a list of underscores with the right
length makes it happier.

Example:
```lean
example (P₁ P₂ P₃ : ℕ → Prop) (H : ∀ n, [P₁ n, P₂ n, P₃ n].TFAE) :
    [∃ n, P₁ n, ∃ n, P₂ n, ∃ n, P₃ n].TFAE :=
  exists_tfae [_, _, _] H
```
-/
theorem exists_tfae {α : Type*} (l : List (α → Prop)) (H : ∀ a : α, (l.map (fun p ↦ p a)).TFAE) :
    (l.map (fun p ↦ ∃ a, p a)).TFAE := by
  simp only [TFAE, List.forall_mem_map]
  intros p₁ hp₁ p₂ hp₂
  exact exists_congr fun a ↦ H a (p₁ a) (mem_map_of_mem hp₁)
    (p₂ a) (mem_map_of_mem hp₂)

theorem tfae_not_iff {l : List Prop} : TFAE (l.map Not) ↔ TFAE l := by
  classical
  simp only [TFAE, mem_map, forall_exists_index, and_imp, forall_apply_eq_imp_iff₂,
    Decidable.not_iff_not]

alias ⟨_, TFAE.not⟩ := tfae_not_iff

end List
````
