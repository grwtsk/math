# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Subperm.Variant6cd57b1baea4cfd373126fae64c1bf5c0d7c461acb46bc90468d772bbd6689e0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d05c4cc0d6f2c58c79677084835b9952ad887d28` · SHA-256 `404a690bb7b92a730820973f511659f9273db9efd47b1d0ccd84cae8ec8dcc9c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SubpermIffCount.Variantcfc2a9abc1a2637704494d6e2b1fc591afd5b9910b8af2275b97c2d372855969","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cfc2a9abc1a2637704494d6e2b1fc591afd5b9910b8af2275b97c2d372855969","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.SubpermIffCount.Variantcfc2a9abc1a2637704494d6e2b1fc591afd5b9910b8af2275b97c2d372855969","mathematical_subject":"Computation.DataStructures","original_sha256":"cfc2a9abc1a2637704494d6e2b1fc591afd5b9910b8af2275b97c2d372855969","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/List/Perm/Subperm.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2015 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura, Jeremy Avigad, Mario Carneiro
-/
import Batteries.Data.List.Pairwise
import Batteries.Data.List.Perm
import Mathlib.Data.List.Basic

/-!
# List Sub-permutations

This file develops theory about the `List.Subperm` relation.

## Notation

The notation `<+~` is used for sub-permutations.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SubpermIffCount.Variantcfc2a9abc1a2637704494d6e2b1fc591afd5b9910b8af2275b97c2d372855969

open Nat

namespace List
variable {α : Type*} {l l₁ l₂ : List α} {a : α}

open Perm

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

@[deprecated List.cons_subperm_of_not_mem_of_mem (since := "2024-12-11"), nolint unusedArguments]
theorem cons_subperm_of_mem {a : α} {l₁ l₂ : List α} (_ : Nodup l₁) (h₁ : a ∉ l₁) (h₂ : a ∈ l₂)
    (s : l₁ <+~ l₂) : a :: l₁ <+~ l₂ :=
  cons_subperm_of_not_mem_of_mem h₁ h₂ s

protected theorem Nodup.subperm (d : Nodup l₁) (H : l₁ ⊆ l₂) : l₁ <+~ l₂ :=
  subperm_of_subset d H

end List
```
