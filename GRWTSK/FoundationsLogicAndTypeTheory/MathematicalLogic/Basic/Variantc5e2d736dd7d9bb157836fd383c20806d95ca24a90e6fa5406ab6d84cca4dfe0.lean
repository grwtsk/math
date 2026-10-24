-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.CountableIffNonemptyEmbedding.Variantadf27a8d03586012c0b1efb2ca908a08cf34c0048aea3db2857984a4bbad9c3b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"adf27a8d03586012c0b1efb2ca908a08cf34c0048aea3db2857984a4bbad9c3b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.CountableIffNonemptyEmbedding.Variantadf27a8d03586012c0b1efb2ca908a08cf34c0048aea3db2857984a4bbad9c3b","mathematical_subject":"Logic.Foundations","original_sha256":"adf27a8d03586012c0b1efb2ca908a08cf34c0048aea3db2857984a4bbad9c3b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Countable/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
import Mathlib.Data.Countable.Defs
import Mathlib.Data.Fin.Tuple.Basic
import Mathlib.Data.ENat.Defs
import Mathlib.Logic.Equiv.Nat

/-!
# Countable types

In this file we provide basic instances of the `Countable` typeclass defined elsewhere.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.CountableIffNonemptyEmbedding.Variantadf27a8d03586012c0b1efb2ca908a08cf34c0048aea3db2857984a4bbad9c3b

assert_not_exists Monoid

universe u v w

open Function

instance : Countable ℤ :=
  Countable.of_equiv ℕ Equiv.intEquivNat.symm

/-!
### Definition in terms of `Function.Embedding`
-/

section Embedding

variable {α : Sort u} {β : Sort v}

theorem countable_iff_nonempty_embedding : Countable α ↔ Nonempty (α ↪ ℕ) :=
  ⟨fun ⟨⟨f, hf⟩⟩ => ⟨⟨f, hf⟩⟩, fun ⟨f⟩ => ⟨⟨f, f.2⟩⟩⟩

theorem uncountable_iff_isEmpty_embedding : Uncountable α ↔ IsEmpty (α ↪ ℕ) := by
  rw [← not_countable_iff, countable_iff_nonempty_embedding, not_nonempty_iff]

theorem nonempty_embedding_nat (α) [Countable α] : Nonempty (α ↪ ℕ) :=
  countable_iff_nonempty_embedding.1 ‹_›

protected theorem Function.Embedding.countable [Countable β] (f : α ↪ β) : Countable α :=
  f.injective.countable

protected lemma Function.Embedding.uncountable [Uncountable α] (f : α ↪ β) : Uncountable β :=
  f.injective.uncountable

end Embedding

/-!
### Operations on `Type*`s
-/

section type

variable {α : Type u} {β : Type v} {π : α → Type w}

instance [Countable α] [Countable β] : Countable (α ⊕ β) := by
  rcases exists_injective_nat α with ⟨f, hf⟩
  rcases exists_injective_nat β with ⟨g, hg⟩
  exact (Equiv.natSumNatEquivNat.injective.comp <| hf.sumMap hg).countable

instance Sum.uncountable_inl [Uncountable α] : Uncountable (α ⊕ β) :=
  inl_injective.uncountable

instance Sum.uncountable_inr [Uncountable β] : Uncountable (α ⊕ β) :=
  inr_injective.uncountable

instance Option.instCountable [Countable α] : Countable (Option α) :=
  Countable.of_equiv _ (Equiv.optionEquivSumPUnit.{0, _} α).symm

instance WithTop.instCountable [Countable α] : Countable (WithTop α) := Option.instCountable
instance WithBot.instCountable [Countable α] : Countable (WithBot α) := Option.instCountable
instance ENat.instCountable : Countable ℕ∞ := Option.instCountable

instance Option.instUncountable [Uncountable α] : Uncountable (Option α) :=
  Injective.uncountable fun _ _ ↦ Option.some_inj.1

instance WithTop.instUncountable [Uncountable α] : Uncountable (WithTop α) := Option.instUncountable
instance WithBot.instUncountable [Uncountable α] : Uncountable (WithBot α) := Option.instUncountable

instance [Countable α] [Countable β] : Countable (α × β) := by
  rcases exists_injective_nat α with ⟨f, hf⟩
  rcases exists_injective_nat β with ⟨g, hg⟩
  exact (Nat.pairEquiv.injective.comp <| hf.prodMap hg).countable

instance [Uncountable α] [Nonempty β] : Uncountable (α × β) := by
  inhabit β
  exact (Prod.mk_left_injective default).uncountable

instance [Nonempty α] [Uncountable β] : Uncountable (α × β) := by
  inhabit α
  exact (Prod.mk_right_injective default).uncountable

lemma countable_left_of_prod_of_nonempty [Nonempty β] (h : Countable (α × β)) : Countable α := by
  contrapose h
  rw [not_countable_iff] at *
  infer_instance

lemma countable_right_of_prod_of_nonempty [Nonempty α] (h : Countable (α × β)) : Countable β := by
  contrapose h
  rw [not_countable_iff] at *
  infer_instance

lemma countable_prod_swap [Countable (α × β)] : Countable (β × α) :=
  Countable.of_equiv _ (Equiv.prodComm α β)

instance [Countable α] [∀ a, Countable (π a)] : Countable (Sigma π) := by
  rcases exists_injective_nat α with ⟨f, hf⟩
  choose g hg using fun a => exists_injective_nat (π a)
  exact ((Equiv.sigmaEquivProd ℕ ℕ).injective.comp <| hf.sigma_map hg).countable

lemma Sigma.uncountable (a : α) [Uncountable (π a)] : Uncountable (Sigma π) :=
  (sigma_mk_injective (i := a)).uncountable

instance [Nonempty α] [∀ a, Uncountable (π a)] : Uncountable (Sigma π) := by
  inhabit α; exact Sigma.uncountable default

instance (priority := 500) SetCoe.countable [Countable α] (s : Set α) : Countable s :=
  Subtype.countable

end type

section sort

variable {α : Sort u} {β : Sort v} {π : α → Sort w}

/-!
### Operations on `Sort*`s
-/

instance [Countable α] [Countable β] : Countable (α ⊕' β) :=
  Countable.of_equiv (PLift α ⊕ PLift β) (Equiv.plift.sumPSum Equiv.plift)

instance [Countable α] [Countable β] : Countable (PProd α β) :=
  Countable.of_equiv (PLift α × PLift β) (Equiv.plift.prodPProd Equiv.plift)

instance [Countable α] [∀ a, Countable (π a)] : Countable (PSigma π) :=
  Countable.of_equiv (Σa : PLift α, PLift (π a.down)) (Equiv.psigmaEquivSigmaPLift π).symm

instance [Finite α] [∀ a, Countable (π a)] : Countable (∀ a, π a) := by
  have : ∀ n, Countable (Fin n → ℕ) := by
    intro n
    induction' n with n ihn
    · change Countable (Fin 0 → ℕ); infer_instance
    · haveI := ihn
      exact Countable.of_equiv (ℕ × (Fin n → ℕ)) (Fin.consEquiv fun _ ↦ ℕ)
  rcases Finite.exists_equiv_fin α with ⟨n, ⟨e⟩⟩
  have f := fun a => (nonempty_embedding_nat (π a)).some
  exact ((Embedding.piCongrRight f).trans (Equiv.piCongrLeft' _ e).toEmbedding).countable

end sort
