# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Subperm.Variant438a89cbf769fa43e8b9e13ee560238086d786b79a8f2218d81f949aee77979b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `595c0b3e2c81628584d48ff3f2f044d07f335e95` · SHA-256 `7be379b320f23c1afd54d81e967f1656b3771b1347ca40fc6e71fb0ffeebd46d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SubpermIffCount.Variant18800e4f34a39c907e724bd28eb134cdc06aa1dede35f31e4de8343190808473","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"18800e4f34a39c907e724bd28eb134cdc06aa1dede35f31e4de8343190808473","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.SubpermIffCount.Variant18800e4f34a39c907e724bd28eb134cdc06aa1dede35f31e4de8343190808473","mathematical_subject":"Computation.DataStructures","original_sha256":"18800e4f34a39c907e724bd28eb134cdc06aa1dede35f31e4de8343190808473","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Data/List/Perm/Subperm.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2015 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura, Jeremy Avigad, Mario Carneiro
-/
module

public import Batteries.Data.List.Perm
public import Mathlib.Data.List.Basic
public import Batteries.Tactic.Trans
public import Mathlib.Data.List.Perm.Basic

/-!
# List Sub-permutations

This file develops theory about the `List.Subperm` relation.

## Notation

The notation `<+~` is used for sub-permutations.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SubpermIffCount.Variant18800e4f34a39c907e724bd28eb134cdc06aa1dede35f31e4de8343190808473

public section

open Nat

namespace List
variable {α : Type*} {l l₁ l₂ : List α} {a : α}

section Subperm

attribute [trans] Subperm.trans

end Subperm

/-- See also `List.subperm_ext_iff`. -/
lemma subperm_iff_count [DecidableEq α] : l₁ <+~ l₂ ↔ ∀ a, count a l₁ ≤ count a l₂ :=
  subperm_ext_iff.trans <| forall_congr' fun a ↦ by
    by_cases ha : a ∈ l₁ <;> simp [ha, count_eq_zero_of_not_mem]

lemma subperm_iff : l₁ <+~ l₂ ↔ ∃ l, l ~ l₂ ∧ l₁ <+ l := by
  refine ⟨?_, fun ⟨l, h₁, h₂⟩ ↦ h₂.subperm.trans h₁.subperm⟩
  rintro ⟨l, h₁, h₂⟩
  obtain ⟨l', h₂⟩ := h₂.exists_perm_append
  exact ⟨l₁ ++ l', (h₂.trans (h₁.append_right _)).symm, (prefix_append _ _).sublist⟩

@[simp] lemma subperm_singleton_iff : l <+~ [a] ↔ l = [] ∨ l = [a] := by
  constructor
  · rw [subperm_iff]
    rintro ⟨s, hla, h⟩
    rwa [perm_singleton.mp hla, sublist_singleton] at h
  · rintro (rfl | rfl)
    exacts [nil_subperm, Subperm.refl _]

lemma subperm_cons_self : l <+~ a :: l := ⟨l, Perm.refl _, sublist_cons_self _ _⟩

protected alias ⟨subperm.of_cons, subperm.cons⟩ := subperm_cons

theorem Subperm.append {l₁ l₂ r₁ r₂ : List α} :
    l₁ <+~ l₂ → r₁ <+~ r₂ → (l₁ ++ r₁) <+~ (l₂ ++ r₂)
  | ⟨l, hl_perm, hl_sub⟩, ⟨r, hr_perm, hr_sub⟩ =>
    ⟨l ++ r, hl_perm.append hr_perm, hl_sub.append hr_sub⟩

theorem map_subperm_map_iff {α β} {l₁ l₂ : List α} {f : α → β} (hf : Function.Injective f) :
    (l₁.map f) <+~ (l₂.map f) ↔ l₁ <+~ l₂ where
  mpr a := by
    obtain ⟨l, hl_perm, hl_sub⟩ := a
    exact ⟨l.map f, hl_perm.map f, hl_sub.map f⟩
  mp a := by
    obtain ⟨w, ⟨perm, sublist⟩⟩ := a
    obtain ⟨x, ⟨sublistₓ, mapₓ⟩⟩ := sublist_map_iff.mp sublist
    use x
    constructor
    · rw [mapₓ] at perm
      exact (map_perm_map_iff hf).mp perm
    · exact sublistₓ

alias ⟨_, Subperm.map⟩ := map_subperm_map_iff

protected theorem Nodup.subperm (d : Nodup l₁) (H : l₁ ⊆ l₂) : l₁ <+~ l₂ :=
  subperm_of_subset d H

end List
```
