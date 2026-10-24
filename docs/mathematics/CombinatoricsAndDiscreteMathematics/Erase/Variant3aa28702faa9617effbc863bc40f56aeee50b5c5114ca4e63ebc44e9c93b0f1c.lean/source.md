# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Erase.Variant3aa28702faa9617effbc863bc40f56aeee50b5c5114ca4e63ebc44e9c93b0f1c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b744a657d03d0365cfb3751ed186bffddd849c60` · SHA-256 `b30a2cdb1306c682244dd2cadcfeec003aa6739cbe9fe6ca10019311b3519ad5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.Erase.Variantc5202c7591d8649a1378b901657abbf491119b0cafd8667092742e434faecb31","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c5202c7591d8649a1378b901657abbf491119b0cafd8667092742e434faecb31","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.Erase.Variantc5202c7591d8649a1378b901657abbf491119b0cafd8667092742e434faecb31","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"c5202c7591d8649a1378b901657abbf491119b0cafd8667092742e434faecb31","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Finset/Erase.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2015 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura, Jeremy Avigad, Minchao Wu, Mario Carneiro
-/
import Mathlib.Data.Finset.Defs
import Mathlib.Data.Multiset.Filter

/-!
# Erasing an element from a finite set

## Main declarations

* `Finset.erase`: For any `a : α`, `erase s a` returns `s` with the element `a` removed.

## Tags

finite sets, finset

-/

-- Assert that we define `Finset` without the material on `List.sublists`.
-- Note that we cannot use `List.sublists` itself as that is defined very early.

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.Erase.Variantc5202c7591d8649a1378b901657abbf491119b0cafd8667092742e434faecb31

assert_not_exists List.sublistsLen Multiset.powerset CompleteLattice OrderedCommMonoid

open Multiset Subtype Function

universe u

variable {α : Type*} {β : Type*} {γ : Type*}

namespace Finset

-- TODO: these should be global attributes, but this will require fixing other files
attribute [local trans] Subset.trans Superset.trans

/-! ### erase -/

section Erase

variable [DecidableEq α] {s t u v : Finset α} {a b : α}

/-- `erase s a` is the set `s - {a}`, that is, the elements of `s` which are
  not equal to `a`. -/
def erase (s : Finset α) (a : α) : Finset α :=
  ⟨_, s.2.erase a⟩

@[simp]
theorem erase_val (s : Finset α) (a : α) : (erase s a).1 = s.1.erase a :=
  rfl

@[simp]
theorem mem_erase {a b : α} {s : Finset α} : a ∈ erase s b ↔ a ≠ b ∧ a ∈ s :=
  s.2.mem_erase_iff

theorem notMem_erase (a : α) (s : Finset α) : a ∉ erase s a :=
  s.2.notMem_erase

@[deprecated (since := "2025-05-23")] alias not_mem_erase := notMem_erase

theorem ne_of_mem_erase : b ∈ erase s a → b ≠ a := fun h => (mem_erase.1 h).1

theorem mem_of_mem_erase : b ∈ erase s a → b ∈ s :=
  Multiset.mem_of_mem_erase

theorem mem_erase_of_ne_of_mem : a ≠ b → a ∈ s → a ∈ erase s b := by
  simp only [mem_erase]; exact And.intro

/-- An element of `s` that is not an element of `erase s a` must be`a`. -/
theorem eq_of_mem_of_notMem_erase (hs : b ∈ s) (hsa : b ∉ s.erase a) : b = a := by
  rw [mem_erase, not_and] at hsa
  exact not_imp_not.mp hsa hs

@[deprecated (since := "2025-05-23")] alias eq_of_mem_of_not_mem_erase := eq_of_mem_of_notMem_erase

@[simp]
theorem erase_eq_of_notMem {a : α} {s : Finset α} (h : a ∉ s) : erase s a = s :=
  eq_of_veq <| erase_of_notMem h

@[deprecated (since := "2025-05-23")] alias erase_eq_of_not_mem := erase_eq_of_notMem

@[simp]
theorem erase_eq_self : s.erase a = s ↔ a ∉ s :=
  ⟨fun h => h ▸ notMem_erase _ _, erase_eq_of_notMem⟩

theorem erase_ne_self : s.erase a ≠ s ↔ a ∈ s :=
  erase_eq_self.not_left

theorem erase_subset_erase (a : α) {s t : Finset α} (h : s ⊆ t) : erase s a ⊆ erase t a :=
  val_le_iff.1 <| erase_le_erase _ <| val_le_iff.2 h

theorem erase_subset (a : α) (s : Finset α) : erase s a ⊆ s :=
  Multiset.erase_subset _ _

theorem subset_erase {a : α} {s t : Finset α} : s ⊆ t.erase a ↔ s ⊆ t ∧ a ∉ s :=
  ⟨fun h => ⟨h.trans (erase_subset _ _), fun ha => notMem_erase _ _ (h ha)⟩,
   fun h _b hb => mem_erase.2 ⟨ne_of_mem_of_not_mem hb h.2, h.1 hb⟩⟩

@[simp, norm_cast]
theorem coe_erase (a : α) (s : Finset α) : ↑(erase s a) = (s \ {a} : Set α) :=
  Set.ext fun _ => mem_erase.trans <| by rw [and_comm, Set.mem_diff, Set.mem_singleton_iff, mem_coe]

theorem erase_idem {a : α} {s : Finset α} : erase (erase s a) a = erase s a := by simp

theorem erase_right_comm {a b : α} {s : Finset α} : erase (erase s a) b = erase (erase s b) a := by
  ext x
  simp only [mem_erase, ← and_assoc]
  rw [@and_comm (x ≠ a)]

theorem erase_inj {x y : α} (s : Finset α) (hx : x ∈ s) : s.erase x = s.erase y ↔ x = y := by
  refine ⟨fun h => eq_of_mem_of_notMem_erase hx ?_, congr_arg _⟩
  rw [← h]
  simp

theorem erase_injOn (s : Finset α) : Set.InjOn s.erase s := fun _ _ _ _ => (erase_inj s ‹_›).mp

end Erase

end Finset
```
