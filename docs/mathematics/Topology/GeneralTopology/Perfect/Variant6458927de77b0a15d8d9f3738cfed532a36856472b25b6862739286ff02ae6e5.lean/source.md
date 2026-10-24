# Complete source: GRWTSK.Topology.GeneralTopology.Perfect.Variant6458927de77b0a15d8d9f3738cfed532a36856472b25b6862739286ff02ae6e5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5dffd4e8b0c50f5ea2bfb16c0718a1bc49fbeb52` · SHA-256 `211b0793a2bdcb552c0c197b6a8bfbe562cc693880a4e98b4d432cdc0592855e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.Perfect.Varianta0a93a4e43b95bad9d5a260b045ada3f2dea48f612fc0b1842056cf44ce022ed","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a0a93a4e43b95bad9d5a260b045ada3f2dea48f612fc0b1842056cf44ce022ed","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.Perfect.Varianta0a93a4e43b95bad9d5a260b045ada3f2dea48f612fc0b1842056cf44ce022ed","mathematical_subject":"Topology.GeneralTopology","original_sha256":"a0a93a4e43b95bad9d5a260b045ada3f2dea48f612fc0b1842056cf44ce022ed","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Topology/Perfect.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Felix Weilacher. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Felix Weilacher
-/

import Mathlib.Topology.Separation.Regular

/-!
# Perfect Sets

In this file we define perfect subsets of a topological space, and prove some basic properties,
including a version of the Cantor-Bendixson Theorem.

## Main Definitions

* `Perfect C`: A set `C` is perfect, meaning it is closed and every point of it
  is an accumulation point of itself.
* `PerfectSpace X`: A topological space `X` is perfect if its universe is a perfect set.

## Main Statements

* `Perfect.splitting`: A perfect nonempty set contains two disjoint perfect nonempty subsets.
  The main inductive step in the construction of an embedding from the Cantor space to a
  perfect nonempty complete metric space.
* `exists_countable_union_perfect_of_isClosed`: One version of the **Cantor-Bendixson Theorem**:
  A closed set in a second countable space can be written as the union of a countable set and a
  perfect set.

## Implementation Notes

We do not require perfect sets to be nonempty.

We define a nonstandard predicate, `Preperfect`, which drops the closed-ness requirement
from the definition of perfect. In T1 spaces, this is equivalent to having a perfect closure,
see `preperfect_iff_perfect_closure`.

## See also

`Mathlib/Topology/MetricSpace/Perfect.lean`, for properties of perfect sets in metric spaces,
namely Polish spaces.

## References

* [kechris1995] (Chapters 6-7)

## Tags

accumulation point, perfect set, cantor-bendixson.

-/



namespace GRWTSK.Topology.GeneralTopology.Perfect.Varianta0a93a4e43b95bad9d5a260b045ada3f2dea48f612fc0b1842056cf44ce022ed

open Topology Filter Set TopologicalSpace

section Basic

variable {α : Type*} [TopologicalSpace α] {C : Set α}

/-- If `x` is an accumulation point of a set `C` and `U` is a neighborhood of `x`,
then `x` is an accumulation point of `U ∩ C`. -/
theorem AccPt.nhds_inter {x : α} {U : Set α} (h_acc : AccPt x (𝓟 C)) (hU : U ∈ 𝓝 x) :
    AccPt x (𝓟 (U ∩ C)) := by
  have : 𝓝[≠] x ≤ 𝓟 U := by
    rw [le_principal_iff]
    exact mem_nhdsWithin_of_mem_nhds hU
  rw [AccPt, ← inf_principal, ← inf_assoc, inf_of_le_left this]
  exact h_acc

/-- A set `C` is preperfect if all of its points are accumulation points of itself.
If `C` is nonempty and `α` is a T1 space, this is equivalent to the closure of `C` being perfect.
See `preperfect_iff_perfect_closure`. -/
def Preperfect (C : Set α) : Prop :=
  ∀ x ∈ C, AccPt x (𝓟 C)

/-- A set `C` is called perfect if it is closed and all of its
points are accumulation points of itself.
Note that we do not require `C` to be nonempty. -/
@[mk_iff perfect_def]
structure Perfect (C : Set α) : Prop where
  closed : IsClosed C
  acc : Preperfect C

theorem preperfect_iff_nhds : Preperfect C ↔ ∀ x ∈ C, ∀ U ∈ 𝓝 x, ∃ y ∈ U ∩ C, y ≠ x := by
  simp only [Preperfect, accPt_iff_nhds]

section PerfectSpace

variable (α)

/--
A topological space `X` is said to be perfect if its universe is a perfect set.
Equivalently, this means that `𝓝[≠] x ≠ ⊥` for every point `x : X`.
-/
@[mk_iff perfectSpace_def]
class PerfectSpace : Prop where
  univ_preperfect : Preperfect (Set.univ : Set α)

theorem PerfectSpace.univ_perfect [PerfectSpace α] : Perfect (Set.univ : Set α) :=
  ⟨isClosed_univ, PerfectSpace.univ_preperfect⟩

end PerfectSpace

section Preperfect

/-- The intersection of a preperfect set and an open set is preperfect. -/
theorem Preperfect.open_inter {U : Set α} (hC : Preperfect C) (hU : IsOpen U) :
    Preperfect (U ∩ C) := by
  rintro x ⟨xU, xC⟩
  apply (hC _ xC).nhds_inter
  exact hU.mem_nhds xU

/-- The closure of a preperfect set is perfect.
For a converse, see `preperfect_iff_perfect_closure`. -/
theorem Preperfect.perfect_closure (hC : Preperfect C) : Perfect (closure C) := by
  constructor; · exact isClosed_closure
  intro x hx
  by_cases h : x ∈ C <;> apply AccPt.mono _ (principal_mono.mpr subset_closure)
  · exact hC _ h
  have : {x}ᶜ ∩ C = C := by simp [h]
  rw [AccPt, nhdsWithin, inf_assoc, inf_principal, this]
  rw [closure_eq_cluster_pts] at hx
  exact hx

/-- In a T1 space, being preperfect is equivalent to having perfect closure. -/
theorem preperfect_iff_perfect_closure [T1Space α] : Preperfect C ↔ Perfect (closure C) := by
  constructor <;> intro h
  · exact h.perfect_closure
  intro x xC
  have H : AccPt x (𝓟 (closure C)) := h.acc _ (subset_closure xC)
  rw [accPt_iff_frequently] at *
  have : ∀ y, y ≠ x ∧ y ∈ closure C → ∃ᶠ z in 𝓝 y, z ≠ x ∧ z ∈ C := by
    rintro y ⟨hyx, yC⟩
    simp only [← mem_compl_singleton_iff, and_comm, ← frequently_nhdsWithin_iff,
      hyx.nhdsWithin_compl_singleton, ← mem_closure_iff_frequently]
    exact yC
  rw [← frequently_frequently_nhds]
  exact H.mono this

theorem Perfect.closure_nhds_inter {U : Set α} (hC : Perfect C) (x : α) (xC : x ∈ C) (xU : x ∈ U)
    (Uop : IsOpen U) : Perfect (closure (U ∩ C)) ∧ (closure (U ∩ C)).Nonempty := by
  constructor
  · apply Preperfect.perfect_closure
    exact hC.acc.open_inter Uop
  apply Nonempty.closure
  exact ⟨x, ⟨xU, xC⟩⟩

/-- Given a perfect nonempty set in a T2.5 space, we can find two disjoint perfect subsets.
This is the main inductive step in the proof of the Cantor-Bendixson Theorem. -/
theorem Perfect.splitting [T25Space α] (hC : Perfect C) (hnonempty : C.Nonempty) :
    ∃ C₀ C₁ : Set α,
    (Perfect C₀ ∧ C₀.Nonempty ∧ C₀ ⊆ C) ∧ (Perfect C₁ ∧ C₁.Nonempty ∧ C₁ ⊆ C) ∧ Disjoint C₀ C₁ := by
  obtain ⟨y, yC⟩ := hnonempty
  obtain ⟨x, xC, hxy⟩ : ∃ x ∈ C, x ≠ y := by
    have := hC.acc _ yC
    rw [accPt_iff_nhds] at this
    rcases this univ univ_mem with ⟨x, xC, hxy⟩
    exact ⟨x, xC.2, hxy⟩
  obtain ⟨U, xU, Uop, V, yV, Vop, hUV⟩ := exists_open_nhds_disjoint_closure hxy
  use closure (U ∩ C), closure (V ∩ C)
  constructor <;> rw [← and_assoc]
  · refine ⟨hC.closure_nhds_inter x xC xU Uop, ?_⟩
    rw [hC.closed.closure_subset_iff]
    exact inter_subset_right
  constructor
  · refine ⟨hC.closure_nhds_inter y yC yV Vop, ?_⟩
    rw [hC.closed.closure_subset_iff]
    exact inter_subset_right
  apply Disjoint.mono _ _ hUV <;> apply closure_mono <;> exact inter_subset_left

lemma IsPreconnected.preperfect_of_nontrivial [T1Space α] {U : Set α} (hu : U.Nontrivial)
    (h : IsPreconnected U) : Preperfect U := by
  intro x hx
  rw [isPreconnected_closed_iff] at h
  specialize h {x} (closure (U \ {x})) isClosed_singleton isClosed_closure ?_ ?_ ?_
  · trans {x} ∪ (U \ {x})
    · simp
    apply Set.union_subset_union_right
    exact subset_closure
  · exact Set.inter_singleton_nonempty.mpr hx
  · obtain ⟨y, hy⟩ := Set.Nontrivial.exists_ne hu x
    use y
    simp only [Set.mem_inter_iff, hy, true_and]
    apply subset_closure
    simp [hy]
  · apply Set.Nonempty.right at h
    rw [Set.singleton_inter_nonempty, mem_closure_iff_clusterPt,
      ← accPt_principal_iff_clusterPt] at h
    exact h

end Preperfect

section Kernel

/-- The **Cantor-Bendixson Theorem**: Any closed subset of a second countable space
can be written as the union of a countable set and a perfect set. -/
theorem exists_countable_union_perfect_of_isClosed [SecondCountableTopology α]
    (hclosed : IsClosed C) : ∃ V D : Set α, V.Countable ∧ Perfect D ∧ C = V ∪ D := by
  obtain ⟨b, bct, _, bbasis⟩ := TopologicalSpace.exists_countable_basis α
  let v := { U ∈ b | (U ∩ C).Countable }
  let V := ⋃ U ∈ v, U
  let D := C \ V
  have Vct : (V ∩ C).Countable := by
    simp only [V, iUnion_inter, mem_sep_iff]
    apply Countable.biUnion
    · exact Countable.mono inter_subset_left bct
    · exact inter_subset_right
  refine ⟨V ∩ C, D, Vct, ⟨?_, ?_⟩, ?_⟩
  · refine hclosed.sdiff (isOpen_biUnion fun _ ↦ ?_)
    exact fun ⟨Ub, _⟩ ↦ IsTopologicalBasis.isOpen bbasis Ub
  · rw [preperfect_iff_nhds]
    intro x xD E xE
    have : ¬(E ∩ D).Countable := by
      intro h
      obtain ⟨U, hUb, xU, hU⟩ : ∃ U ∈ b, x ∈ U ∧ U ⊆ E :=
        (IsTopologicalBasis.mem_nhds_iff bbasis).mp xE
      have hU_cnt : (U ∩ C).Countable := by
        apply @Countable.mono _ _ (E ∩ D ∪ V ∩ C)
        · rintro y ⟨yU, yC⟩
          by_cases h : y ∈ V
          · exact mem_union_right _ (mem_inter h yC)
          · exact mem_union_left _ (mem_inter (hU yU) ⟨yC, h⟩)
        exact Countable.union h Vct
      have : U ∈ v := ⟨hUb, hU_cnt⟩
      apply xD.2
      exact mem_biUnion this xU
    by_contra! h
    exact absurd (Countable.mono h (Set.countable_singleton _)) this
  · rw [inter_comm, inter_union_diff]

/-- Any uncountable closed set in a second countable space contains a nonempty perfect subset. -/
theorem exists_perfect_nonempty_of_isClosed_of_not_countable [SecondCountableTopology α]
    (hclosed : IsClosed C) (hunc : ¬C.Countable) : ∃ D : Set α, Perfect D ∧ D.Nonempty ∧ D ⊆ C := by
  rcases exists_countable_union_perfect_of_isClosed hclosed with ⟨V, D, Vct, Dperf, VD⟩
  refine ⟨D, ⟨Dperf, ?_⟩⟩
  constructor
  · rw [nonempty_iff_ne_empty]
    by_contra h
    rw [h, union_empty] at VD
    rw [VD] at hunc
    contradiction
  rw [VD]
  exact subset_union_right

end Kernel

end Basic

section PerfectSpace

variable {X : Type*} [TopologicalSpace X]

theorem perfectSpace_iff_forall_not_isolated : PerfectSpace X ↔ ∀ x : X, Filter.NeBot (𝓝[≠] x) := by
  simp [perfectSpace_def, Preperfect, AccPt]

instance PerfectSpace.not_isolated [PerfectSpace X] (x : X) : Filter.NeBot (𝓝[≠] x) :=
  perfectSpace_iff_forall_not_isolated.mp ‹_› x

end PerfectSpace
```
