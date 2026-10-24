# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Order.Variantf48dec2bfb731197eaa5dcff2f4b14903a469bb6b6c0d8511d0de1ee66217c4a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fee2ddb8b48514944ea679b45f0cb55d09df360a` · SHA-256 `21344e078a0a9ad2de7c62ff6a3066df11f73f916c99b6aa61c0d3559aa96057`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.NonemptyIInterIicIff.Varianta97e7245f7af0560cd5adcc132e6a295ed9bee554aa2d8e5a653c99db04bbc6b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a97e7245f7af0560cd5adcc132e6a295ed9bee554aa2d8e5a653c99db04bbc6b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.NonemptyIInterIicIff.Varianta97e7245f7af0560cd5adcc132e6a295ed9bee554aa2d8e5a653c99db04bbc6b","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"a97e7245f7af0560cd5adcc132e6a295ed9bee554aa2d8e5a653c99db04bbc6b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Data/Set/Lattice/Order.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2014 Jeremy Avigad. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jeremy Avigad, Leonardo de Moura, Johannes Hölzl, Mario Carneiro
-/
module

public import Mathlib.Data.Set.Lattice.Bounded

/-!
# Set unions, intersections, and order

This file contains results connecting indexed unions and intersections of sets with order
structures. It covers intersections of intervals, tails of families indexed by natural numbers,
and the interaction of set unions with complete-lattice suprema and infima.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.NonemptyIInterIicIff.Varianta97e7245f7af0560cd5adcc132e6a295ed9bee554aa2d8e5a653c99db04bbc6b

public section

open Function

variable {α β : Type*} {ι : Sort*} {κ : ι → Sort*}

/-! ### Intervals -/

namespace Set

@[to_dual]
lemma nonempty_iInter_Iic_iff [Preorder α] {f : ι → α} :
    (⋂ i, Iic (f i)).Nonempty ↔ BddBelow (range f) := by
  have : (⋂ (i : ι), Iic (f i)) = lowerBounds (range f) := by
    ext c; simp [lowerBounds]
  simp [this, BddBelow]

variable [CompleteLattice α]

@[to_dual]
theorem Ici_iSup (f : ι → α) : Ici (⨆ i, f i) = ⋂ i, Ici (f i) :=
  ext fun _ => by simp only [mem_Ici, iSup_le_iff, mem_iInter]

@[to_dual]
theorem Ici_iSup₂ (f : ∀ i, κ i → α) : Ici (⨆ (i) (j), f i j) = ⋂ (i) (j), Ici (f i j) := by
  simp_rw [Ici_iSup]

@[to_dual]
theorem Ici_sSup (s : Set α) : Ici (sSup s) = ⋂ a ∈ s, Ici a := by rw [sSup_eq_iSup, Ici_iSup₂]

end Set

namespace Set

theorem iUnion_ge_eq_iUnion_nat_add (u : ℕ → Set α) (n : ℕ) : ⋃ i ≥ n, u i = ⋃ i, u (i + n) :=
  iSup_ge_eq_iSup_nat_add u n

theorem iInter_ge_eq_iInter_nat_add (u : ℕ → Set α) (n : ℕ) : ⋂ i ≥ n, u i = ⋂ i, u (i + n) :=
  iInf_ge_eq_iInf_nat_add u n

theorem _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.NonemptyIInterIicIff.Varianta97e7245f7af0560cd5adcc132e6a295ed9bee554aa2d8e5a653c99db04bbc6b.Monotone.iUnion_nat_add {f : ℕ → Set α} (hf : Monotone f) (k : ℕ) :
    ⋃ n, f (n + k) = ⋃ n, f n :=
  hf.iSup_nat_add k

theorem _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.NonemptyIInterIicIff.Varianta97e7245f7af0560cd5adcc132e6a295ed9bee554aa2d8e5a653c99db04bbc6b.Antitone.iInter_nat_add {f : ℕ → Set α} (hf : Antitone f) (k : ℕ) :
    ⋂ n, f (n + k) = ⋂ n, f n :=
  hf.iInf_nat_add k

@[simp]
theorem iUnion_iInter_ge_nat_add (f : ℕ → Set α) (k : ℕ) :
    ⋃ n, ⋂ i ≥ n, f (i + k) = ⋃ n, ⋂ i ≥ n, f i :=
  iSup_iInf_ge_nat_add f k

theorem union_iUnion_nat_succ (u : ℕ → Set α) : (u 0 ∪ ⋃ i, u (i + 1)) = ⋃ i, u i :=
  sup_iSup_nat_succ u

theorem inter_iInter_nat_succ (u : ℕ → Set α) : (u 0 ∩ ⋂ i, u (i + 1)) = ⋂ i, u i :=
  inf_iInf_nat_succ u

theorem iUnion_le_nat : ⋃ n : ℕ, {i | i ≤ n} = Set.univ :=
  subset_antisymm (Set.subset_univ _)
    (fun i _ ↦ Set.mem_iUnion_of_mem i (Set.mem_ofPred.mpr (le_refl _)))

end Set

open Set

variable [CompleteLattice β]

@[to_dual]
theorem iSup_iUnion (s : ι → Set α) (f : α → β) : ⨆ a ∈ ⋃ i, s i, f a = ⨆ (i) (a ∈ s i), f a := by
  rw [iSup_comm]
  simp_rw [mem_iUnion, iSup_exists]

@[to_dual]
theorem sSup_iUnion (t : ι → Set β) : sSup (⋃ i, t i) = ⨆ i, sSup (t i) := by
  simp_rw [sSup_eq_iSup, iSup_iUnion]

@[to_dual]
theorem sSup_sUnion (s : Set (Set β)) : sSup (⋃₀ s) = ⨆ t ∈ s, sSup t := by
  simp only [sUnion_eq_biUnion, sSup_eq_iSup, iSup_iUnion]

@[to_dual]
lemma iSup_sUnion (S : Set (Set α)) (f : α → β) :
    (⨆ x ∈ ⋃₀ S, f x) = ⨆ (s ∈ S) (x ∈ s), f x := by
  rw [sUnion_eq_iUnion, iSup_iUnion, ← iSup_subtype'']

lemma forall_sUnion {S : Set (Set α)} {p : α → Prop} :
    (∀ x ∈ ⋃₀ S, p x) ↔ ∀ s ∈ S, ∀ x ∈ s, p x := by
  simp_rw [← iInf_Prop_eq, iInf_sUnion]

lemma exists_sUnion {S : Set (Set α)} {p : α → Prop} :
    (∃ x ∈ ⋃₀ S, p x) ↔ ∃ s ∈ S, ∃ x ∈ s, p x := by
  simp_rw [← exists_prop, ← iSup_Prop_eq, iSup_sUnion]
```
