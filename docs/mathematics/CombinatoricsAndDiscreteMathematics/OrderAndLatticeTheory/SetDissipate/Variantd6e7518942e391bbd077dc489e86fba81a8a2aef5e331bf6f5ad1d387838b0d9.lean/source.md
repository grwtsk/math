# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.SetDissipate.Variantd6e7518942e391bbd077dc489e86fba81a8a2aef5e331bf6f5ad1d387838b0d9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9e65138779d93633b1caaa80233f4ca83c6145d2` · SHA-256 `f026ac916703d2646ce7de11ffddcb0abce1236d4b25e8c23a144a0edc22b71f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Dissipate.Variantc624af82714a88e917e62ba006c78c26ed8e480ee39dfb65e266f98242017233","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c624af82714a88e917e62ba006c78c26ed8e480ee39dfb65e266f98242017233","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.OrderTheory.SourceCorpus.Dissipate.Variantc624af82714a88e917e62ba006c78c26ed8e480ee39dfb65e266f98242017233","mathematical_subject":"Algebra.OrderTheory","original_sha256":"c624af82714a88e917e62ba006c78c26ed8e480ee39dfb65e266f98242017233","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Order/SetDissipate.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Peter Pfaffelhuber. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Peter Pfaffelhuber
-/

module

public import Mathlib.Order.Lattice.Nat

/-!
# Dissipate

The function `dissipate` takes `s : α → Set β` with `LE α` and returns `⋂ y ≤ x, s y`.
It is related to `accumulate s := ⋃ y ≤ x, s y`.

-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Dissipate.Variantc624af82714a88e917e62ba006c78c26ed8e480ee39dfb65e266f98242017233

@[expose] public section

variable {α β : Type*} {s : α → Set β}

namespace Set

/-- `dissipate s` is the intersection of `s y` for `y ≤ x`. -/
def dissipate [LE α] (s : α → Set β) (x : α) : Set β :=
  ⋂ y ≤ x, s y

theorem dissipate_def [LE α] {x : α} : dissipate s x = ⋂ y ≤ x, s y := rfl

theorem dissipate_eq_biInter_lt {s : ℕ → Set β} {n : ℕ} : dissipate s n = ⋂ k < n + 1, s k := by
  simp_rw [Nat.lt_add_one_iff, dissipate]

@[simp]
theorem mem_dissipate [LE α] {x : α} {z : β} : z ∈ dissipate s x ↔ ∀ y ≤ x, z ∈ s y := by
  simp [dissipate_def]

theorem dissipate_subset [LE α] {x y : α} (hy : y ≤ x) : dissipate s x ⊆ s y :=
  biInter_subset_of_mem hy

theorem iInter_subset_dissipate [LE α] (x : α) : ⋂ i, s i ⊆ dissipate s x := by
  simp only [dissipate, subset_iInter_iff]
  exact fun x h ↦ iInter_subset_of_subset x fun ⦃a⦄ a ↦ a

theorem antitone_dissipate [Preorder α] : Antitone (dissipate s) :=
  fun _ _ hab ↦ biInter_subset_biInter_left fun _ hz => le_trans hz hab

@[gcongr]
theorem dissipate_subset_dissipate [Preorder α] {x y} (h : y ≤ x) :
    dissipate s x ⊆ dissipate s y :=
  antitone_dissipate h

@[simp]
theorem biInter_dissipate [Preorder α] {s : α → Set β} {x : α} :
    ⋂ y, ⋂ (_ : y ≤ x), dissipate s y = dissipate s x := by
  apply Subset.antisymm
  · apply iInter_mono fun z y hy ↦ ?_
    simp only [mem_iInter, mem_dissipate] at *
    exact fun h ↦ hy h z le_rfl
  · simp only [subset_iInter_iff]
    exact fun i j ↦ dissipate_subset_dissipate j

@[simp]
theorem iInter_dissipate [Preorder α] : ⋂ x, dissipate s x = ⋂ x, s x := by
  apply Subset.antisymm <;> simp_rw [subset_def, dissipate_def, mem_iInter]
  · exact fun z h x' ↦ h x' x' le_rfl
  · exact fun z h x' y hy ↦ h y

@[simp]
lemma dissipate_bot [PartialOrder α] [OrderBot α] (s : α → Set β) : dissipate s ⊥ = s ⊥ := by
  simp [dissipate_def]

@[simp]
lemma dissipate_zero_nat (s : ℕ → Set β) : dissipate s 0 = s 0 := by
  simp [dissipate_def]

@[simp]
theorem dissipate_succ (s : ℕ → Set α) (n : ℕ) :
  dissipate s (n + 1) = (dissipate s n) ∩ s (n + 1) := by
  ext x
  simp_all only [dissipate_def, mem_iInter, mem_inter_iff]
  grind

/-- For a directed set of sets `s : ℕ → Set α` and `n : ℕ`, there exists `m : ℕ` (maybe
larger than `n`) such that `s m ⊆ dissipate s n`. -/
lemma exists_subset_dissipate_of_directed {s : ℕ → Set α}
  (hd : Directed (· ⊇ ·) s) (n : ℕ) : ∃ m, s m ⊆ dissipate s n := by
  induction n with
  | zero => use 0; simp [dissipate_def]
  | succ n hn =>
    obtain ⟨m, hm⟩ := hn
    obtain ⟨k, hk⟩ := hd m (n + 1)
    exact ⟨k, by simp; grind⟩

lemma directed_dissipate {s : ℕ → Set α} : Directed (· ⊇ ·) (dissipate s) :=
  antitone_dissipate.directed_ge

lemma exists_dissipate_eq_empty_iff_of_directed {s : ℕ → Set α} (hd : Directed (· ⊇ ·) s) :
    (∃ n, dissipate s n = ∅) ↔ ∃ n, s n = ∅ := by
  refine ⟨?_, fun ⟨n, hn⟩ ↦ ⟨n, subset_eq_empty (dissipate_subset le_rfl) hn⟩⟩
  contrapose!
  intro h n
  obtain ⟨m, hm⟩ := exists_subset_dissipate_of_directed hd n
  exact (h m).mono hm

end Set
```
