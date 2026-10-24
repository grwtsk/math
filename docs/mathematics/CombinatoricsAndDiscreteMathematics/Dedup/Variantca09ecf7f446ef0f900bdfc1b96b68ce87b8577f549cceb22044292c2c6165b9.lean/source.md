# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Dedup.Variantca09ecf7f446ef0f900bdfc1b96b68ce87b8577f549cceb22044292c2c6165b9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6e6f98f4313b1f14a581ce027e266ede606d6b68` · SHA-256 `a6ad715da8bd7f21699d0dc389c219dad1cc16a87007656be9988a4b97d7d710`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.DedupEqSelf.Variant3613cd94aa2c056d00ecc3fa6e7e7e8ab4c6be98051d37f8c2b6c7f1d16bd028","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3613cd94aa2c056d00ecc3fa6e7e7e8ab4c6be98051d37f8c2b6c7f1d16bd028","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.DedupEqSelf.Variant3613cd94aa2c056d00ecc3fa6e7e7e8ab4c6be98051d37f8c2b6c7f1d16bd028","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"3613cd94aa2c056d00ecc3fa6e7e7e8ab4c6be98051d37f8c2b6c7f1d16bd028","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Data/Finset/Dedup.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2015 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura, Jeremy Avigad, Minchao Wu, Mario Carneiro
-/
module

public import Mathlib.Data.Finset.Defs
public import Mathlib.Data.Multiset.Dedup
public import Mathlib.Data.Multiset.Basic

/-!
# Deduplicating Multisets to make Finsets

This file concerns `Multiset.dedup` and `List.dedup` as a way to create `Finset`s.

## Tags

finite sets, finset

-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.DedupEqSelf.Variant3613cd94aa2c056d00ecc3fa6e7e7e8ab4c6be98051d37f8c2b6c7f1d16bd028

@[expose] public section

-- Assert that we define `Finset` without the material on `List.sublists`.
-- Note that we cannot use `List.sublists` itself as that is defined very early.
assert_not_exists List.sublistsLen Multiset.powerset CompleteLattice IsOrderedMonoid

open Multiset Function

universe u

variable {α : Type*} {β : Type*}

namespace Finset

@[simp]
theorem dedup_eq_self [DecidableEq α] (s : Finset α) : dedup s.1 = s.1 :=
  s.2.dedup

end Finset

/-! ### dedup on list and multiset -/

namespace Multiset

variable [DecidableEq α] {s t : Multiset α}

/-- `toFinset s` removes duplicates from the multiset `s` to produce a finset. -/
def toFinset (s : Multiset α) : Finset α :=
  ⟨_, nodup_dedup s⟩

@[simp]
theorem toFinset_val (s : Multiset α) : s.toFinset.1 = s.dedup :=
  rfl

theorem toFinset_eq {s : Multiset α} (n : Nodup s) : Finset.mk s n = s.toFinset :=
  Finset.val_inj.1 n.dedup.symm

theorem Nodup.toFinset_inj {l l' : Multiset α} (hl : Nodup l) (hl' : Nodup l')
    (h : l.toFinset = l'.toFinset) : l = l' := by
  simpa [← toFinset_eq hl, ← toFinset_eq hl'] using h

@[simp, grind =]
theorem mem_toFinset {a : α} {s : Multiset α} : a ∈ s.toFinset ↔ a ∈ s :=
  mem_dedup

theorem coe_toFinset {s : Multiset α} : s.toFinset = {a | a ∈ s} := by
  ext
  simp

@[simp]
theorem toFinset_subset : s.toFinset ⊆ t.toFinset ↔ s ⊆ t := by
  simp only [Finset.subset_iff, Multiset.subset_iff, Multiset.mem_toFinset]

@[simp]
theorem toFinset_ssubset : s.toFinset ⊂ t.toFinset ↔ s ⊂ t := by
  simp_rw [Finset.ssubset_def, toFinset_subset]
  rfl

@[simp]
theorem toFinset_dedup (m : Multiset α) : m.dedup.toFinset = m.toFinset := by
  simp_rw [toFinset, dedup_idem]

instance isWellFounded_ssubset : @WellFounded (Multiset β) (· ⊂ ·) := by
  classical
  exact Subrelation.isWellFounded (InvImage _ toFinset) toFinset_ssubset.2

end Multiset

namespace Finset

@[simp]
theorem val_toFinset [DecidableEq α] (s : Finset α) : s.val.toFinset = s := by
  ext
  rw [Multiset.mem_toFinset, ← mem_def]

theorem val_le_iff_val_subset {a : Finset α} {b : Multiset α} : a.val ≤ b ↔ a.val ⊆ b :=
  Multiset.le_iff_subset a.nodup

end Finset

namespace List

variable [DecidableEq α] {l l' : List α} {a : α} {s : Finset α}

/-- `toFinset l` removes duplicates from the list `l` to produce a finset. -/
def toFinset (l : List α) : Finset α :=
  Multiset.toFinset l

@[simp]
theorem toFinset_val (l : List α) : l.toFinset.1 = (l.dedup : Multiset α) :=
  rfl

@[simp]
theorem toFinset_coe (l : List α) : (l : Multiset α).toFinset = l.toFinset :=
  rfl

theorem toFinset_eq (n : Nodup l) : @Finset.mk α l n = l.toFinset :=
  Multiset.toFinset_eq <| by rwa [Multiset.coe_nodup]

@[simp]
theorem mem_toFinset : a ∈ l.toFinset ↔ a ∈ l :=
  mem_dedup

@[simp, norm_cast]
theorem coe_toFinset (l : List α) : (l.toFinset : Set α) = { a | a ∈ l } :=
  Set.ext fun _ => List.mem_toFinset

@[simp]
theorem toFinset_dedup : l.dedup.toFinset = l.toFinset :=
  Finset.eq_of_veq <| by simp

theorem toFinset_surj_on : Set.SurjOn toFinset { l : List α | l.Nodup } Set.univ := by
  rintro ⟨⟨l⟩, hl⟩ _
  exact ⟨l, hl, (toFinset_eq hl).symm⟩

theorem toFinset_surjective : Surjective (toFinset : List α → Finset α) := fun s =>
  let ⟨l, _, hls⟩ := toFinset_surj_on (Set.mem_univ s)
  ⟨l, hls⟩

theorem toFinset_eq_iff_perm_dedup : l.toFinset = l'.toFinset ↔ l.dedup ~ l'.dedup := by
  simp [Finset.ext_iff, perm_ext_iff_of_nodup (nodup_dedup _) (nodup_dedup _)]

theorem toFinset.ext_iff {a b : List α} : a.toFinset = b.toFinset ↔ ∀ x, x ∈ a ↔ x ∈ b := by
  simp only [Finset.ext_iff, mem_toFinset]

theorem toFinset.ext : (∀ x, x ∈ l ↔ x ∈ l') → l.toFinset = l'.toFinset :=
  toFinset.ext_iff.mpr

theorem toFinset_eq_of_perm (l l' : List α) (h : l ~ l') : l.toFinset = l'.toFinset :=
  toFinset_eq_iff_perm_dedup.mpr h.dedup

theorem perm_of_nodup_nodup_toFinset_eq (hl : Nodup l) (hl' : Nodup l')
    (h : l.toFinset = l'.toFinset) : l ~ l' := by
  rw [← Multiset.coe_eq_coe]
  exact Multiset.Nodup.toFinset_inj hl hl' h

@[simp]
theorem toFinset_reverse {l : List α} : toFinset l.reverse = l.toFinset :=
  toFinset_eq_of_perm _ _ (reverse_perm l)

end List

namespace Finset

section ToList

/-- Produce a list of the elements in the finite set using choice. -/
noncomputable def toList (s : Finset α) : List α :=
  s.1.toList

theorem nodup_toList (s : Finset α) : s.toList.Nodup := by
  rw [toList, ← Multiset.coe_nodup, Multiset.coe_toList]
  exact s.nodup

@[simp]
theorem mem_toList {a : α} {s : Finset α} : a ∈ s.toList ↔ a ∈ s :=
  Multiset.mem_toList

@[simp, norm_cast]
theorem coe_toList (s : Finset α) : (s.toList : Multiset α) = s.val :=
  s.val.coe_toList

@[simp]
theorem toList_toFinset [DecidableEq α] (s : Finset α) : s.toList.toFinset = s := by
  ext
  simp

theorem _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.DedupEqSelf.Variant3613cd94aa2c056d00ecc3fa6e7e7e8ab4c6be98051d37f8c2b6c7f1d16bd028.List.toFinset_toList [DecidableEq α] {s : List α} (hs : s.Nodup) :
    s.toFinset.toList.Perm s := by
  apply List.perm_of_nodup_nodup_toFinset_eq (nodup_toList _) hs
  rw [toList_toFinset]

theorem exists_list_nodup_eq [DecidableEq α] (s : Finset α) :
    ∃ l : List α, l.Nodup ∧ l.toFinset = s :=
  ⟨s.toList, s.nodup_toList, s.toList_toFinset⟩

@[simp]
protected theorem perm_toList {f₁ f₂ : Finset α} : f₁.toList.Perm f₂.toList ↔ f₁ = f₂ where
  mp h := Finset.ext fun x => by simp [← Finset.mem_toList, h.mem_iff]
  mpr h := .of_eq <| congrArg Finset.toList h

end ToList

end Finset
```
