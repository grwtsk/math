# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Option.Variant85eeb90cb0cda5bfad9b7f89454b007785949f4032b995c4b8280a99f99b428a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6c5c80047dbea199511090043a7e3a04071ac2da` · SHA-256 `d930b917c3e0ee3e96964d70b1fd00e30c8411725d90a3e0201c9ca7fef330af`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.EquivOptionCongrOne.Variant9e021fd2e25adc521eef73116c7c3fce717a5643f811dae8771a9cc29d433559","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9e021fd2e25adc521eef73116c7c3fce717a5643f811dae8771a9cc29d433559","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.EquivOptionCongrOne.Variant9e021fd2e25adc521eef73116c7c3fce717a5643f811dae8771a9cc29d433559","mathematical_subject":"Logic.Foundations","original_sha256":"9e021fd2e25adc521eef73116c7c3fce717a5643f811dae8771a9cc29d433559","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/GroupTheory/Perm/Option.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Eric Wieser. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Wieser
-/
import Mathlib.Data.Fintype.Option
import Mathlib.GroupTheory.Perm.Sign

/-!
# Permutations of `Option α`
-/



namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.EquivOptionCongrOne.Variant9e021fd2e25adc521eef73116c7c3fce717a5643f811dae8771a9cc29d433559

open Equiv

@[simp]
theorem Equiv.optionCongr_one {α : Type*} : (1 : Perm α).optionCongr = 1 :=
  Equiv.optionCongr_refl

@[simp]
theorem Equiv.optionCongr_swap {α : Type*} [DecidableEq α] (x y : α) :
    optionCongr (swap x y) = swap (some x) (some y) := by
  ext (_ | i)
  · simp [swap_apply_of_ne_of_ne]
  · by_cases hx : i = x
    · simp only [hx, optionCongr_apply, Option.map_some, swap_apply_left, Option.mem_def,
             Option.some.injEq]
    by_cases hy : i = y <;> simp [hx, hy, swap_apply_of_ne_of_ne]

@[simp]
theorem Equiv.optionCongr_sign {α : Type*} [DecidableEq α] [Fintype α] (e : Perm α) :
    Perm.sign e.optionCongr = Perm.sign e := by
  induction e using Perm.swap_induction_on with
  | one => simp [Perm.one_def]
  | swap_mul f x y hne h =>
    simp [h, hne, Perm.mul_def, ← Equiv.optionCongr_trans]

@[simp]
theorem map_equiv_removeNone {α : Type*} [DecidableEq α] (σ : Perm (Option α)) :
    (removeNone σ).optionCongr = swap none (σ none) * σ := by
  ext1 x
  have : Option.map (⇑(removeNone σ)) x = (swap none (σ none)) (σ x) := by
    obtain - | x := x
    · simp
    · cases h : σ (some _)
      · simp [removeNone_none _ h]
      · have hn : σ (some x) ≠ none := by simp [h]
        have hσn : σ (some x) ≠ σ none := σ.injective.ne (by simp)
        simp [removeNone_some _ ⟨_, h⟩, ← h, swap_apply_of_ne_of_ne hn hσn]
  simpa using this

/-- Permutations of `Option α` are equivalent to fixing an
`Option α` and permuting the remaining with a `Perm α`.
The fixed `Option α` is swapped with `none`. -/
@[simps]
def Equiv.Perm.decomposeOption {α : Type*} [DecidableEq α] :
    Perm (Option α) ≃ Option α × Perm α where
  toFun σ := (σ none, removeNone σ)
  invFun i := swap none i.1 * i.2.optionCongr
  left_inv σ := by simp
  right_inv := fun ⟨x, σ⟩ => by
    have : removeNone (swap none x * σ.optionCongr) = σ :=
      Equiv.optionCongr_injective (by simp [← mul_assoc])
    simp [← Perm.eq_inv_iff_eq, this]

theorem Equiv.Perm.decomposeOption_symm_of_none_apply {α : Type*} [DecidableEq α] (e : Perm α)
    (i : Option α) : Equiv.Perm.decomposeOption.symm (none, e) i = i.map e := by simp

theorem Equiv.Perm.decomposeOption_symm_sign {α : Type*} [DecidableEq α] [Fintype α] (e : Perm α) :
    Perm.sign (Equiv.Perm.decomposeOption.symm (none, e)) = Perm.sign e := by simp

/-- The set of all permutations of `Option α` can be constructed by augmenting the set of
permutations of `α` by each element of `Option α` in turn. -/
theorem Finset.univ_perm_option {α : Type*} [DecidableEq α] [Fintype α] :
    @Finset.univ (Perm <| Option α) _ =
      (Finset.univ : Finset <| Option α × Perm α).map Equiv.Perm.decomposeOption.symm.toEmbedding :=
  (Finset.univ_map_equiv_to_embedding _).symm
```
