# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Box.Varianta6ca8b6014b259b71c99ebfbc61e3bf7eec1ab9cd3ce7708630302e789455cdc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4fd0dcdffa29711211bb5544b25401e98f9f5577` · SHA-256 `8caf13263fe1158abf530a45b6c74f21fe454045218ca52fe0a04eb8a08a5452`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.IccNegMono.Variant05ee8c1920e5eddf6633ec92513062df055e8a944f974f9654f3f324928eb7c6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"05ee8c1920e5eddf6633ec92513062df055e8a944f974f9654f3f324928eb7c6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.IccNegMono.Variant05ee8c1920e5eddf6633ec92513062df055e8a944f974f9654f3f324928eb7c6","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"05ee8c1920e5eddf6633ec92513062df055e8a944f974f9654f3f324928eb7c6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Order/Interval/Finset/Box.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
import Mathlib.Algebra.Order.Disjointed
import Mathlib.Algebra.Order.Ring.Prod
import Mathlib.Data.Int.Interval
import Mathlib.Tactic.Ring
import Mathlib.Tactic.Zify

/-!
# Decomposing a locally finite ordered ring into boxes

This file proves that any locally finite ordered ring can be decomposed into "boxes", namely
differences of consecutive intervals.

## Implementation notes

We don't need the full ring structure, only that there is an order embedding `ℤ → `
-/

/-! ### General locally finite ordered ring -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.IccNegMono.Variant05ee8c1920e5eddf6633ec92513062df055e8a944f974f9654f3f324928eb7c6

namespace Finset
variable {α : Type*} [Ring α] [PartialOrder α] [IsOrderedRing α] [LocallyFiniteOrder α] {n : ℕ}

private lemma Icc_neg_mono : Monotone fun n : ℕ ↦ Icc (-n : α) n := by
  refine fun m n hmn ↦ by apply Icc_subset_Icc <;> simpa using Nat.mono_cast hmn

variable [DecidableEq α]

/-- Hollow box centered at `0 : α` going from `-n` to `n`. -/
def box : ℕ → Finset α := disjointed fun n ↦ Icc (-n : α) n

omit [IsOrderedRing α] in
@[simp] lemma box_zero : (box 0 : Finset α) = {0} := by simp [box]

lemma box_succ_eq_sdiff (n : ℕ) :
    box (n + 1) = Icc (-n.succ : α) n.succ \ Icc (-n) n := by
  rw [box, Icc_neg_mono.disjointed_add_one]
  simp only [Nat.cast_add_one, Nat.succ_eq_add_one]

lemma disjoint_box_succ_prod (n : ℕ) : Disjoint (box (n + 1)) (Icc (-n : α) n) := by
  rw [box_succ_eq_sdiff]; exact disjoint_sdiff_self_left

@[simp] lemma box_succ_union_prod (n : ℕ) :
    box (n + 1) ∪ Icc (-n : α) n = Icc (-n.succ : α) n.succ :=
  Icc_neg_mono.disjointed_add_one_sup _

lemma box_succ_disjUnion (n : ℕ) :
    (box (n + 1)).disjUnion (Icc (-n : α) n) (disjoint_box_succ_prod _) =
      Icc (-n.succ : α) n.succ := by rw [disjUnion_eq_union, box_succ_union_prod]

@[simp] lemma zero_mem_box : (0 : α) ∈ box n ↔ n = 0 := by cases n <;> simp [box_succ_eq_sdiff]

lemma eq_zero_iff_eq_zero_of_mem_box  {x : α} (hx : x ∈ box n) : x = 0 ↔ n = 0 :=
  ⟨zero_mem_box.mp ∘ (· ▸ hx), fun hn ↦ by rwa [hn, box_zero, mem_singleton] at hx⟩

end Finset

open Finset

/-! ### Product of locally finite ordered rings -/

namespace Prod
variable {α β : Type*} [Ring α] [PartialOrder α] [IsOrderedRing α]
  [Ring β] [PartialOrder β] [IsOrderedRing β] [LocallyFiniteOrder α] [LocallyFiniteOrder β]
  [DecidableEq α] [DecidableEq β] [DecidableLE (α × β)]

@[simp] lemma card_box_succ (n : ℕ) :
    #(box (n + 1) : Finset (α × β)) =
      #(Icc (-n.succ : α) n.succ) * #(Icc (-n.succ : β) n.succ) -
        #(Icc (-n : α) n) * #(Icc (-n : β) n) := by
  rw [box_succ_eq_sdiff, card_sdiff (Icc_neg_mono n.le_succ), Finset.card_Icc_prod,
    Finset.card_Icc_prod]
  rfl

end Prod

/-! ### `ℤ × ℤ` -/

namespace Int
variable {x : ℤ × ℤ}

attribute [norm_cast] toNat_ofNat

lemma card_box : ∀ {n}, n ≠ 0 → #(box n : Finset (ℤ × ℤ)) = 8 * n
  | n + 1, _ => by
    simp_rw [Prod.card_box_succ, card_Icc, sub_neg_eq_add]
    norm_cast
    refine tsub_eq_of_eq_add ?_
    zify
    ring

@[simp] lemma mem_box : ∀ {n}, x ∈ box n ↔ max x.1.natAbs x.2.natAbs = n
  | 0 => by simp [Prod.ext_iff]
  | n + 1 => by
    simp [box_succ_eq_sdiff, Prod.le_def]
    omega

-- TODO: Can this be generalised to locally finite archimedean ordered rings?
lemma existsUnique_mem_box (x : ℤ × ℤ) : ∃! n : ℕ, x ∈ box n := by
  use max x.1.natAbs x.2.natAbs; simp only [mem_box, and_self_iff, forall_eq']

end Int
```
