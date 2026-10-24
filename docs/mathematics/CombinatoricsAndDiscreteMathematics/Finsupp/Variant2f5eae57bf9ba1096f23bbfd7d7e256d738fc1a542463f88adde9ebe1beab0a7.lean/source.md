# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Finsupp.Variant2f5eae57bf9ba1096f23bbfd7d7e256d738fc1a542463f88adde9ebe1beab0a7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `40a714f5c4591d00fd0baea46c9d1d29801f9176` · SHA-256 `31e6e1c202261b2a46b4c0ba87ed7a5193c2be944f5349c0f0585d0702f03f28`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.MkFinsuppLiftOfFintype.Variant0bbecad90ffd6a49472bc06befe1d95f80153b515a744f55eb7e24526a594f67","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0bbecad90ffd6a49472bc06befe1d95f80153b515a744f55eb7e24526a594f67","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.MkFinsuppLiftOfFintype.Variant0bbecad90ffd6a49472bc06befe1d95f80153b515a744f55eb7e24526a594f67","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"0bbecad90ffd6a49472bc06befe1d95f80153b515a744f55eb7e24526a594f67","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/SetTheory/Cardinal/Finsupp.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Violeta Hernández Palacios. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Violeta Hernández Palacios, Junyan Xu
-/
import Mathlib.SetTheory.Cardinal.Arithmetic
import Mathlib.Data.Finsupp.Basic
import Mathlib.Data.Finsupp.Multiset

/-! # Results on the cardinality of finitely supported functions and multisets. -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.MkFinsuppLiftOfFintype.Variant0bbecad90ffd6a49472bc06befe1d95f80153b515a744f55eb7e24526a594f67

universe u v

namespace Cardinal

@[simp]
theorem mk_finsupp_lift_of_fintype (α : Type u) (β : Type v) [Fintype α] [Zero β] :
    #(α →₀ β) = lift.{u} #β ^ Fintype.card α := by
  simpa using (@Finsupp.equivFunOnFinite α β _ _).cardinal_eq

theorem mk_finsupp_of_fintype (α β : Type u) [Fintype α] [Zero β] :
    #(α →₀ β) = #β ^ Fintype.card α := by simp

@[simp]
theorem mk_finsupp_lift_of_infinite (α : Type u) (β : Type v) [Infinite α] [Zero β] [Nontrivial β] :
    #(α →₀ β) = max (lift.{v} #α) (lift.{u} #β) := by
  apply le_antisymm
  · calc
      #(α →₀ β) ≤ #(Finset (α × β)) := mk_le_of_injective (Finsupp.graph_injective α β)
      _ = #(α × β) := mk_finset_of_infinite _
      _ = max (lift.{v} #α) (lift.{u} #β) := by
        rw [mk_prod, mul_eq_max_of_aleph0_le_left] <;> simp

  · apply max_le <;> rw [← lift_id #(α →₀ β), ← lift_umax]
    · obtain ⟨b, hb⟩ := exists_ne (0 : β)
      exact lift_mk_le.{v}.2 ⟨⟨_, Finsupp.single_left_injective hb⟩⟩
    · inhabit α
      exact lift_mk_le.{u}.2 ⟨⟨_, Finsupp.single_injective default⟩⟩

theorem mk_finsupp_of_infinite (α β : Type u) [Infinite α] [Zero β] [Nontrivial β] :
    #(α →₀ β) = max #α #β := by simp

@[simp]
theorem mk_finsupp_lift_of_infinite' (α : Type u) (β : Type v) [Nonempty α] [Zero β] [Infinite β] :
    #(α →₀ β) = max (lift.{v} #α) (lift.{u} #β) := by
  cases fintypeOrInfinite α
  · rw [mk_finsupp_lift_of_fintype]
    have : ℵ₀ ≤ (#β).lift := aleph0_le_lift.2 (aleph0_le_mk β)
    rw [max_eq_right (le_trans _ this), power_nat_eq this]
    exacts [Fintype.card_pos, lift_le_aleph0.2 (lt_aleph0_of_finite _).le]
  · apply mk_finsupp_lift_of_infinite

theorem mk_finsupp_of_infinite' (α β : Type u) [Nonempty α] [Zero β] [Infinite β] :
    #(α →₀ β) = max #α #β := by simp

theorem mk_finsupp_nat (α : Type u) [Nonempty α] : #(α →₀ ℕ) = max #α ℵ₀ := by simp

theorem mk_multiset_of_isEmpty (α : Type u) [IsEmpty α] : #(Multiset α) = 1 :=
  Multiset.toFinsupp.toEquiv.cardinal_eq.trans (by simp)

@[simp]
theorem mk_multiset_of_nonempty (α : Type u) [Nonempty α] : #(Multiset α) = max #α ℵ₀ := by
  classical
  exact Multiset.toFinsupp.toEquiv.cardinal_eq.trans (mk_finsupp_nat α)

theorem mk_multiset_of_infinite (α : Type u) [Infinite α] : #(Multiset α) = #α := by simp

theorem mk_multiset_of_countable (α : Type u) [Countable α] [Nonempty α] : #(Multiset α) = ℵ₀ := by
  classical
  exact Multiset.toFinsupp.toEquiv.cardinal_eq.trans (by simp)

end Cardinal
```
