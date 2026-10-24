# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Erase.Variant13d829c9ffb524326399daa94c1e2ab98b3829b897e8aa910926c01960a6ec19

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `27ef2f5a8181a1fca0d04095db95c7438c747e5b` · SHA-256 `df65d9c70681728e51ec173fff7d0a684c1dd890d97d11227c18f9f001668607`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.Erase.Variant6e8c181b188ed393538b28d6904fadb8f5c2c4cc28823e37d2cf09454b38d6d7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6e8c181b188ed393538b28d6904fadb8f5c2c4cc28823e37d2cf09454b38d6d7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.Erase.Variant6e8c181b188ed393538b28d6904fadb8f5c2c4cc28823e37d2cf09454b38d6d7","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"6e8c181b188ed393538b28d6904fadb8f5c2c4cc28823e37d2cf09454b38d6d7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Data/Finset/Erase.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2015 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura, Jeremy Avigad, Minchao Wu, Mario Carneiro
-/
module

public import Mathlib.Data.Finset.Defs
public import Mathlib.Data.Multiset.Filter

/-!
# Erasing an element from a finite set

## Main declarations

* `Finset.erase`: For any `a : α`, `erase s a` returns `s` with the element `a` removed.

## Tags

finite sets, finset

-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.Erase.Variant6e8c181b188ed393538b28d6904fadb8f5c2c4cc28823e37d2cf09454b38d6d7

@[expose] public section

-- Assert that we define `Finset` without the material on `List.sublists`.
-- Note that we cannot use `List.sublists` itself as that is defined very early.
assert_not_exists List.sublistsLen Multiset.powerset CompleteLattice IsOrderedMonoid

open Multiset

universe u

variable {α : Type*}

namespace Finset

-- TODO: these should be global attributes, but this will require fixing other files
attribute [local trans] Subset.trans Superset.trans

/-! ### erase -/

section Erase

variable [DecidableEq α] {s t : Finset α} {a b : α}

/-- `erase s a` is the set `s - {a}`, that is, the elements of `s` which are
  not equal to `a`. -/
def erase (s : Finset α) (a : α) : Finset α :=
  ⟨_, s.2.erase a⟩

@[simp]
theorem erase_val (s : Finset α) (a : α) : (erase s a).1 = s.1.erase a :=
  rfl

@[simp, grind =]
theorem mem_erase {a b : α} {s : Finset α} : a ∈ erase s b ↔ a ≠ b ∧ a ∈ s :=
  s.2.mem_erase_iff

theorem notMem_erase (a : α) (s : Finset α) : a ∉ erase s a :=
  s.2.notMem_erase

theorem ne_of_mem_erase : b ∈ erase s a → b ≠ a := fun h => (mem_erase.1 h).1

theorem mem_of_mem_erase : b ∈ erase s a → b ∈ s :=
  Multiset.mem_of_mem_erase

theorem mem_erase_of_ne_of_mem : a ≠ b → a ∈ s → a ∈ erase s b := by
  simp only [mem_erase]; exact And.intro

/-- An element of `s` that is not an element of `erase s a` must be `a`. -/
theorem eq_of_mem_of_notMem_erase (hs : b ∈ s) (hsa : b ∉ s.erase a) : b = a := by grind

@[simp]
theorem erase_eq_of_notMem {a : α} {s : Finset α} (h : a ∉ s) : erase s a = s :=
  eq_of_veq <| erase_of_notMem h

@[simp]
theorem erase_eq_self : s.erase a = s ↔ a ∉ s :=
  ⟨fun h => h ▸ notMem_erase _ _, erase_eq_of_notMem⟩

theorem erase_ne_self : s.erase a ≠ s ↔ a ∈ s :=
  erase_eq_self.not_left

@[gcongr]
theorem erase_subset_erase (a : α) {s t : Finset α} (h : s ⊆ t) : erase s a ⊆ erase t a :=
  val_le_iff.1 <| erase_le_erase _ <| val_le_iff.2 h

theorem erase_subset (a : α) (s : Finset α) : erase s a ⊆ s :=
  Multiset.erase_subset _ _

theorem subset_erase {a : α} {s t : Finset α} : s ⊆ t.erase a ↔ s ⊆ t ∧ a ∉ s := by grind

@[simp, norm_cast]
theorem coe_erase (a : α) (s : Finset α) : ↑(erase s a) = (s \ {a} : Set α) := by grind

theorem erase_idem {a : α} {s : Finset α} : erase (erase s a) a = erase s a := by simp

theorem erase_right_comm {a b : α} {s : Finset α} : erase (erase s a) b = erase (erase s b) a := by
  grind

theorem erase_inj {x y : α} (s : Finset α) (hx : x ∈ s) : s.erase x = s.erase y ↔ x = y := by
  grind [eq_of_mem_of_notMem_erase]

theorem erase_injOn (s : Finset α) : Set.InjOn s.erase s := fun _ _ _ _ => (erase_inj s ‹_›).mp

end Erase

end Finset
```
