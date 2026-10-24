# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.SymmDiff.Variant112e6d21e698624aa3c8da5a1c505278c87667ed60df9b926b9c886815ecfcfa

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dff71deef7956f8ecb4b8df61729d5973789a7ed` · SHA-256 `9aee035bdb009b92d8f97aa65ccf509ae948c1ff96014c8f7267d2e8a93d404d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.MemSymmDiff.Varianta28791e624c0fa2a80601d94dd45dd882902698ec28937b29b3725cd115fa494","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a28791e624c0fa2a80601d94dd45dd882902698ec28937b29b3725cd115fa494","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.MemSymmDiff.Varianta28791e624c0fa2a80601d94dd45dd882902698ec28937b29b3725cd115fa494","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"a28791e624c0fa2a80601d94dd45dd882902698ec28937b29b3725cd115fa494","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Data/Finset/SymmDiff.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2015 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura, Jeremy Avigad, Minchao Wu, Mario Carneiro
-/
module

public import Mathlib.Data.Finset.Image
public import Mathlib.Data.Set.SymmDiff

/-!
# Symmetric difference of finite sets

This file concerns the symmetric difference operator `s Δ t` on finite sets.

## Tags

finite sets, finset

-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.MemSymmDiff.Varianta28791e624c0fa2a80601d94dd45dd882902698ec28937b29b3725cd115fa494

public section

-- Assert that we define `Finset` without the material on `List.sublists`.
-- Note that we cannot use `List.sublists` itself as that is defined very early.
assert_not_exists List.sublistsLen Multiset.powerset CompleteLattice Monoid

open Function

universe u

variable {α : Type*} {β : Type*}

namespace Finset

/-! ### Symmetric difference -/

section SymmDiff

open scoped symmDiff

variable [DecidableEq α] {s t : Finset α} {a : α}

theorem mem_symmDiff : a ∈ s ∆ t ↔ a ∈ s ∧ a ∉ t ∨ a ∈ t ∧ a ∉ s := by
  simp_rw [symmDiff, sup_eq_union, mem_union, mem_sdiff]

protected theorem symmDiff_def (s t : Finset α) : s ∆ t = s \ t ∪ t \ s := rfl

@[simp, norm_cast]
theorem coe_symmDiff : (↑(s ∆ t) : Set α) = (s : Set α) ∆ t :=
  Set.ext fun x => by simp [mem_symmDiff, Set.mem_symmDiff]

@[simp] lemma symmDiff_eq_empty : s ∆ t = ∅ ↔ s = t := symmDiff_eq_bot
@[simp] lemma symmDiff_nonempty : (s ∆ t).Nonempty ↔ s ≠ t :=
  nonempty_iff_ne_empty.trans symmDiff_eq_empty.not

theorem image_symmDiff [DecidableEq β] {f : α → β} (s t : Finset α) (hf : Injective f) :
    (s ∆ t).image f = s.image f ∆ t.image f :=
  mod_cast Set.image_symmDiff hf s t

/-- See `symmDiff_subset_sdiff'` for the swapped version of this. -/
lemma symmDiff_subset_sdiff : s \ t ⊆ s ∆ t := subset_union_left

/-- See `symmDiff_subset_sdiff` for the swapped version of this. -/
lemma symmDiff_subset_sdiff' : t \ s ⊆ s ∆ t := subset_union_right

lemma symmDiff_subset_union : s ∆ t ⊆ s ∪ t := symmDiff_le_sup (α := Finset α)

lemma symmDiff_eq_union_iff (s t : Finset α) : s ∆ t = s ∪ t ↔ Disjoint s t := symmDiff_eq_sup s t

lemma symmDiff_eq_union (h : Disjoint s t) : s ∆ t = s ∪ t := Disjoint.symmDiff_eq_sup h

end SymmDiff

end Finset
```
