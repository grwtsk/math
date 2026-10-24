# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Basic.Varianta4a9aa3d2525982fd74cb939f6f4d5e7b9fe84a1ff90cc90859fe1497f6821f5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9c8015cc7cb07119f74084423b1c82708db5b43c` · SHA-256 `a4a9aa3d2525982fd74cb939f6f4d5e7b9fe84a1ff90cc90859fe1497f6821f5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2019 Jean Lo. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jean Lo, Bhavik Mehta, Yaël Dillies
-/
import Mathlib.Analysis.Convex.Basic
import Mathlib.Analysis.Convex.Hull
import Mathlib.Analysis.NormedSpace.Basic

#align_import analysis.locally_convex.basic from "leanprover-community/mathlib"@"f2ce6086713c78a7f880485f7917ea547a215982"

/-!
# Local convexity

This file defines absorbent and balanced sets.

An absorbent set is one that "surrounds" the origin. The idea is made precise by requiring that any
point belongs to all large enough scalings of the set. This is the vector world analog of a
topological neighborhood of the origin.

A balanced set is one that is everywhere around the origin. This means that `a • s ⊆ s` for all `a`
of norm less than `1`.

## Main declarations

For a module over a normed ring:
* `Absorbs`: A set `s` absorbs a set `t` if all large scalings of `s` contain `t`.
* `Absorbent`: A set `s` is absorbent if every point eventually belongs to all large scalings of
  `s`.
* `Balanced`: A set `s` is balanced if `a • s ⊆ s` for all `a` of norm less than `1`.

## References

* [H. H. Schaefer, *Topological Vector Spaces*][schaefer1966]

## Tags

absorbent, balanced, locally convex, LCTVS
-/


open Set

open Pointwise Topology

variable {𝕜 𝕝 E : Type*} {ι : Sort*} {κ : ι → Sort*}

section SeminormedRing

variable [SeminormedRing 𝕜]

section SMul

variable (𝕜) [SMul 𝕜 E]

/-- A set `A` absorbs another set `B` if `B` is contained in all scalings of `A` by elements of
sufficiently large norm. -/
def Absorbs (A B : Set E) :=
  ∃ r, 0 < r ∧ ∀ a : 𝕜, r ≤ ‖a‖ → B ⊆ a • A
#align absorbs Absorbs

variable {𝕜} {s t u v A B : Set E}

@[simp]
theorem absorbs_empty {s : Set E} : Absorbs 𝕜 s (∅ : Set E) :=
  ⟨1, one_pos, fun _a _ha => Set.empty_subset _⟩
#align absorbs_empty absorbs_empty

theorem Absorbs.mono (hs : Absorbs 𝕜 s u) (hst : s ⊆ t) (hvu : v ⊆ u) : Absorbs 𝕜 t v :=
  let ⟨r, hr, h⟩ := hs
  ⟨r, hr, fun _a ha => hvu.trans <| (h _ ha).trans <| smul_set_mono hst⟩
#align absorbs.mono Absorbs.mono

theorem Absorbs.mono_left (hs : Absorbs 𝕜 s u) (h : s ⊆ t) : Absorbs 𝕜 t u :=
  hs.mono h Subset.rfl
#align absorbs.mono_left Absorbs.mono_left

theorem Absorbs.mono_right (hs : Absorbs 𝕜 s u) (h : v ⊆ u) : Absorbs 𝕜 s v :=
  hs.mono Subset.rfl h
#align absorbs.mono_right Absorbs.mono_right

theorem Absorbs.union (hu : Absorbs 𝕜 s u) (hv : Absorbs 𝕜 s v) : Absorbs 𝕜 s (u ∪ v) := by
  obtain ⟨a, ha, hu⟩ := hu
  obtain ⟨b, _hb, hv⟩ := hv
  exact
    ⟨max a b, lt_max_of_lt_left ha, fun c hc =>
      union_subset (hu _ <| le_of_max_le_left hc) (hv _ <| le_of_max_le_right hc)⟩
#align absorbs.union Absorbs.union

@[simp]
theorem absorbs_union : Absorbs 𝕜 s (u ∪ v) ↔ Absorbs 𝕜 s u ∧ Absorbs 𝕜 s v :=
  ⟨fun h => ⟨h.mono_right <| subset_union_left _ _, h.mono_right <| subset_union_right _ _⟩,
    fun h => h.1.union h.2⟩
#align absorbs_union absorbs_union

theorem absorbs_iUnion_finset {ι : Type*} {t : Finset ι} {f : ι → Set E} :
    Absorbs 𝕜 s (⋃ i ∈ t, f i) ↔ ∀ i ∈ t, Absorbs 𝕜 s (f i) := by
  classical
    induction' t using Finset.induction_on with i t _ht hi
    · simp only [Finset.not_mem_empty, Set.iUnion_false, Set.iUnion_empty, absorbs_empty,
        IsEmpty.forall_iff, imp_true_iff]
    rw [Finset.set_biUnion_insert, absorbs_union, hi]
    constructor <;> intro h
    · refine' fun _ hi' => (Finset.mem_insert.mp hi').elim _ (h.2 _)
      exact fun hi'' => by
        rw [hi'']
        exact h.1
    exact ⟨h i (Finset.mem_insert_self i t), fun i' hi' => h i' (Finset.mem_insert_of_mem hi')⟩
#align absorbs_Union_finset absorbs_iUnion_finset

theorem Set.Finite.absorbs_iUnion {ι : Type*} {s : Set E} {t : Set ι} {f : ι → Set E}
    (hi : t.Finite) : Absorbs 𝕜 s (⋃ i ∈ t, f i) ↔ ∀ i ∈ t, Absorbs 𝕜 s (f i) := by
  lift t to Finset ι using hi
  simp only [Finset.mem_coe]
  exact absorbs_iUnion_finset
#align set.finite.absorbs_Union Set.Finite.absorbs_iUnion

variable (𝕜)

/-- A set is absorbent if it absorbs every singleton. -/
def Absorbent (A : Set E) :=
  ∀ x, ∃ r, 0 < r ∧ ∀ a : 𝕜, r ≤ ‖a‖ → x ∈ a • A
#align absorbent Absorbent

variable {𝕜}

theorem Absorbent.subset (hA : Absorbent 𝕜 A) (hAB : A ⊆ B) : Absorbent 𝕜 B := by
  refine' forall_imp (fun x => _) hA
  exact Exists.imp fun r => And.imp_right <| forall₂_imp fun a _ha hx => Set.smul_set_mono hAB hx
#align absorbent.subset Absorbent.subset

theorem absorbent_iff_forall_absorbs_singleton : Absorbent 𝕜 A ↔ ∀ x, Absorbs 𝕜 A {x} := by
  simp_rw [Absorbs, Absorbent, singleton_subset_iff]
#align absorbent_iff_forall_absorbs_singleton absorbent_iff_forall_absorbs_singleton

theorem Absorbent.absorbs (hs : Absorbent 𝕜 s) {x : E} : Absorbs 𝕜 s {x} :=
  absorbent_iff_forall_absorbs_singleton.1 hs _
#align absorbent.absorbs Absorbent.absorbs

theorem absorbent_iff_nonneg_lt :
    Absorbent 𝕜 A ↔ ∀ x, ∃ r, 0 ≤ r ∧ ∀ ⦃a : 𝕜⦄, r < ‖a‖ → x ∈ a • A :=
  forall_congr' fun _x =>
    ⟨fun ⟨r, hr, hx⟩ => ⟨r, hr.le, fun a ha => hx a ha.le⟩, fun ⟨r, hr, hx⟩ =>
      ⟨r + 1, add_pos_of_nonneg_of_pos hr zero_lt_one, fun _a ha =>
        hx ((lt_add_of_pos_right r zero_lt_one).trans_le ha)⟩⟩
#align absorbent_iff_nonneg_lt absorbent_iff_nonneg_lt

theorem Absorbent.absorbs_finite {s : Set E} (hs : Absorbent 𝕜 s) {v : Set E} (hv : v.Finite) :
    Absorbs 𝕜 s v := by
  rw [← Set.biUnion_of_singleton v]
  exact hv.absorbs_iUnion.mpr fun _ _ => hs.absorbs
#align absorbent.absorbs_finite Absorbent.absorbs_finite

variable (𝕜)

/-- A set `A` is balanced if `a • A` is contained in `A` whenever `a` has norm at most `1`. -/
def Balanced (A : Set E) :=
  ∀ a : 𝕜, ‖a‖ ≤ 1 → a • A ⊆ A
#align balanced Balanced

variable {𝕜}

theorem balanced_iff_smul_mem : Balanced 𝕜 s ↔ ∀ ⦃a : 𝕜⦄, ‖a‖ ≤ 1 → ∀ ⦃x : E⦄, x ∈ s → a • x ∈ s :=
  forall₂_congr fun _a _ha => smul_set_subset_iff
#align balanced_iff_smul_mem balanced_iff_smul_mem

alias ⟨Balanced.smul_mem, _⟩ := balanced_iff_smul_mem
#align balanced.smul_mem Balanced.smul_mem

@[simp]
theorem balanced_empty : Balanced 𝕜 (∅ : Set E) := fun _ _ => by rw [smul_set_empty]
#align balanced_empty balanced_empty

@[simp]
theorem balanced_univ : Balanced 𝕜 (univ : Set E) := fun _a _ha => subset_univ _
#align balanced_univ balanced_univ

theorem Balanced.union (hA : Balanced 𝕜 A) (hB : Balanced 𝕜 B) : Balanced 𝕜 (A ∪ B) := fun _a ha =>
  smul_set_union.subset.trans <| union_subset_union (hA _ ha) <| hB _ ha
#align balanced.union Balanced.union

theorem Balanced.inter (hA : Balanced 𝕜 A) (hB : Balanced 𝕜 B) : Balanced 𝕜 (A ∩ B) := fun _a ha =>
  smul_set_inter_subset.trans <| inter_subset_inter (hA _ ha) <| hB _ ha
#align balanced.inter Balanced.inter

theorem balanced_iUnion {f : ι → Set E} (h : ∀ i, Balanced 𝕜 (f i)) : Balanced 𝕜 (⋃ i, f i) :=
  fun _a ha => (smul_set_Union _ _).subset.trans <| iUnion_mono fun _ => h _ _ ha
#align balanced_Union balanced_iUnion

theorem balanced_iUnion₂ {f : ∀ i, κ i → Set E} (h : ∀ i j, Balanced 𝕜 (f i j)) :
    Balanced 𝕜 (⋃ (i) (j), f i j) :=
  balanced_iUnion fun _ => balanced_iUnion <| h _
#align balanced_Union₂ balanced_iUnion₂

theorem balanced_iInter {f : ι → Set E} (h : ∀ i, Balanced 𝕜 (f i)) : Balanced 𝕜 (⋂ i, f i) :=
  fun _a ha => (smul_set_iInter_subset _ _).trans <| iInter_mono fun _ => h _ _ ha
#align balanced_Inter balanced_iInter

theorem balanced_iInter₂ {f : ∀ i, κ i → Set E} (h : ∀ i j, Balanced 𝕜 (f i j)) :
    Balanced 𝕜 (⋂ (i) (j), f i j) :=
  balanced_iInter fun _ => balanced_iInter <| h _
#align balanced_Inter₂ balanced_iInter₂

variable [SMul 𝕝 E] [SMulCommClass 𝕜 𝕝 E]

theorem Balanced.smul (a : 𝕝) (hs : Balanced 𝕜 s) : Balanced 𝕜 (a • s) := fun _b hb =>
  (smul_comm _ _ _).subset.trans <| smul_set_mono <| hs _ hb
#align balanced.smul Balanced.smul

end SMul

section Module

variable [AddCommGroup E] [Module 𝕜 E] {s s₁ s₂ t t₁ t₂ : Set E}

theorem Absorbs.neg : Absorbs 𝕜 s t → Absorbs 𝕜 (-s) (-t) :=
  Exists.imp fun _r =>
    And.imp_right <| forall₂_imp fun _ _ h => (neg_subset_neg.2 h).trans (smul_set_neg _ _).superset
#align absorbs.neg Absorbs.neg

theorem Balanced.neg : Balanced 𝕜 s → Balanced 𝕜 (-s) :=
  forall₂_imp fun _ _ h => (smul_set_neg _ _).subset.trans <| neg_subset_neg.2 h
#align balanced.neg Balanced.neg

theorem Absorbs.add : Absorbs 𝕜 s₁ t₁ → Absorbs 𝕜 s₂ t₂ → Absorbs 𝕜 (s₁ + s₂) (t₁ + t₂) :=
  fun ⟨r₁, hr₁, h₁⟩ ⟨r₂, _hr₂, h₂⟩ =>
  ⟨max r₁ r₂, lt_max_of_lt_left hr₁, fun _a ha =>
    (add_subset_add (h₁ _ <| le_of_max_le_left ha) <| h₂ _ <| le_of_max_le_right ha).trans
      (smul_add _ _ _).superset⟩
#align absorbs.add Absorbs.add

theorem Balanced.add (hs : Balanced 𝕜 s) (ht : Balanced 𝕜 t) : Balanced 𝕜 (s + t) := fun _a ha =>
  (smul_add _ _ _).subset.trans <| add_subset_add (hs _ ha) <| ht _ ha
#align balanced.add Balanced.add

theorem Absorbs.sub (h₁ : Absorbs 𝕜 s₁ t₁) (h₂ : Absorbs 𝕜 s₂ t₂) :
    Absorbs 𝕜 (s₁ - s₂) (t₁ - t₂) := by
  simp_rw [sub_eq_add_neg]
  exact h₁.add h₂.neg
#align absorbs.sub Absorbs.sub

theorem Balanced.sub (hs : Balanced 𝕜 s) (ht : Balanced 𝕜 t) : Balanced 𝕜 (s - t) := by
  simp_rw [sub_eq_add_neg]
  exact hs.add ht.neg
#align balanced.sub Balanced.sub

theorem balanced_zero : Balanced 𝕜 (0 : Set E) := fun _a _ha => (smul_zero _).subset
#align balanced_zero balanced_zero

end Module

end SeminormedRing

section NormedField

variable [NormedField 𝕜] [NormedRing 𝕝] [NormedSpace 𝕜 𝕝] [AddCommGroup E] [Module 𝕜 E]
  [SMulWithZero 𝕝 E] [IsScalarTower 𝕜 𝕝 E] {s t u v A B : Set E} {x : E} {a b : 𝕜}

/-- Scalar multiplication (by possibly different types) of a balanced set is monotone. -/
theorem Balanced.smul_mono (hs : Balanced 𝕝 s) {a : 𝕝} {b : 𝕜} (h : ‖a‖ ≤ ‖b‖) : a • s ⊆ b • s := by
  obtain rfl | hb := eq_or_ne b 0
  · rw [norm_zero] at h
    rw [norm_eq_zero.1 (h.antisymm <| norm_nonneg _)]
    obtain rfl | h := s.eq_empty_or_nonempty
    · simp_rw [smul_set_empty]; rfl
    · simp_rw [zero_smul_set h]; rfl
  rintro _ ⟨x, hx, rfl⟩
  refine' ⟨b⁻¹ • a • x, _, smul_inv_smul₀ hb _⟩
  rw [← smul_assoc]
  refine' hs _ _ (smul_mem_smul_set hx)
  rw [norm_smul, norm_inv, ← div_eq_inv_mul]
  exact div_le_one_of_le h (norm_nonneg _)
#align balanced.smul_mono Balanced.smul_mono

/-- A balanced set absorbs itself. -/
theorem Balanced.absorbs_self (hA : Balanced 𝕜 A) : Absorbs 𝕜 A A := by
  refine' ⟨1, zero_lt_one, fun a ha x hx => _⟩
  rw [mem_smul_set_iff_inv_smul_mem₀ (norm_pos_iff.1 <| zero_lt_one.trans_le ha)]
  refine' hA a⁻¹ _ (smul_mem_smul_set hx)
  rw [norm_inv]
  exact inv_le_one ha
#align balanced.absorbs_self Balanced.absorbs_self

theorem Balanced.subset_smul (hA : Balanced 𝕜 A) (ha : 1 ≤ ‖a‖) : A ⊆ a • A := by
  refine' (subset_set_smul_iff₀ _).2 (hA a⁻¹ _)
  · rintro rfl
    rw [norm_zero] at ha
    exact zero_lt_one.not_le ha
  · rw [norm_inv]
    exact inv_le_one ha
#align balanced.subset_smul Balanced.subset_smul

theorem Balanced.smul_eq (hA : Balanced 𝕜 A) (ha : ‖a‖ = 1) : a • A = A :=
  (hA _ ha.le).antisymm <| hA.subset_smul ha.ge
#align balanced.smul_eq Balanced.smul_eq

theorem Balanced.mem_smul_iff (hs : Balanced 𝕜 s) (h : ‖a‖ = ‖b‖) : a • x ∈ s ↔ b • x ∈ s := by
  obtain rfl | hb := eq_or_ne b 0
  · rw [norm_zero, norm_eq_zero] at h
    rw [h]
  have ha : a ≠ 0 := norm_ne_zero_iff.1 (ne_of_eq_of_ne h <| norm_ne_zero_iff.2 hb)
  constructor <;> intro h' <;> [rw [← inv_mul_cancel_right₀ ha b];
      rw [← inv_mul_cancel_right₀ hb a]] <;>
    · rw [← smul_eq_mul, smul_assoc]
      refine' hs.smul_mem _ h'
      simp [← h, ha]
#align balanced.mem_smul_iff Balanced.mem_smul_iff

theorem Balanced.neg_mem_iff (hs : Balanced 𝕜 s) : -x ∈ s ↔ x ∈ s := by
  convert hs.mem_smul_iff (x := x) (norm_neg 1) using 0;
  simp only [neg_smul, one_smul 𝕜 x]
#align balanced.neg_mem_iff Balanced.neg_mem_iff

theorem Absorbs.inter (hs : Absorbs 𝕜 s u) (ht : Absorbs 𝕜 t u) : Absorbs 𝕜 (s ∩ t) u := by
  obtain ⟨a, ha, hs⟩ := hs
  obtain ⟨b, _hb, ht⟩ := ht
  have h : 0 < max a b := lt_max_of_lt_left ha
  refine' ⟨max a b, lt_max_of_lt_left ha, fun c hc => _⟩
  rw [smul_set_inter₀ (norm_pos_iff.1 <| h.trans_le hc)]
  exact subset_inter (hs _ <| le_of_max_le_left hc) (ht _ <| le_of_max_le_right hc)
#align absorbs.inter Absorbs.inter

@[simp]
theorem absorbs_inter : Absorbs 𝕜 (s ∩ t) u ↔ Absorbs 𝕜 s u ∧ Absorbs 𝕜 t u :=
  ⟨fun h => ⟨h.mono_left <| inter_subset_left _ _, h.mono_left <| inter_subset_right _ _⟩, fun h =>
    h.1.inter h.2⟩
#align absorbs_inter absorbs_inter

theorem absorbent_univ : Absorbent 𝕜 (univ : Set E) := by
  refine' fun x => ⟨1, zero_lt_one, fun a ha => _⟩
  rw [smul_set_univ₀ (norm_pos_iff.1 <| zero_lt_one.trans_le ha)]
  exact trivial
#align absorbent_univ absorbent_univ

variable [TopologicalSpace E] [ContinuousSMul 𝕜 E]

/-- Every neighbourhood of the origin is absorbent. -/
theorem absorbent_nhds_zero (hA : A ∈ 𝓝 (0 : E)) : Absorbent 𝕜 A := by
  intro x
  obtain ⟨w, hw₁, hw₂, hw₃⟩ := mem_nhds_iff.mp hA
  have hc : Continuous fun t : 𝕜 => t • x := continuous_id.smul continuous_const
  obtain ⟨r, hr₁, hr₂⟩ :=
    Metric.isOpen_iff.mp (hw₂.preimage hc) 0 (by rwa [mem_preimage, zero_smul])
  have hr₃ := inv_pos.mpr (half_pos hr₁)
  refine' ⟨(r / 2)⁻¹, hr₃, fun a ha₁ => _⟩
  have ha₂ : 0 < ‖a‖ := hr₃.trans_le ha₁
  refine' (mem_smul_set_iff_inv_smul_mem₀ (norm_pos_iff.mp ha₂) _ _).2 (hw₁ <| hr₂ _)
  rw [Metric.mem_ball, dist_zero_right, norm_inv]
  calc
    ‖a‖⁻¹ ≤ r / 2 := (inv_le (half_pos hr₁) ha₂).mp ha₁
    _ < r := half_lt_self hr₁
#align absorbent_nhds_zero absorbent_nhds_zero

/-- The union of `{0}` with the interior of a balanced set is balanced. -/
theorem balanced_zero_union_interior (hA : Balanced 𝕜 A) :
    Balanced 𝕜 ((0 : Set E) ∪ interior A) := by
  intro a ha
  obtain rfl | h := eq_or_ne a 0
  · rw [zero_smul_set]
    exacts [subset_union_left _ _, ⟨0, Or.inl rfl⟩]
  · rw [← image_smul, image_union]
    apply union_subset_union
    · rw [image_zero, smul_zero]
      rfl
    · calc
        a • interior A ⊆ interior (a • A) := (isOpenMap_smul₀ h).image_interior_subset A
        _ ⊆ interior A := interior_mono (hA _ ha)
#align balanced_zero_union_interior balanced_zero_union_interior

/-- The interior of a balanced set is balanced if it contains the origin. -/
theorem Balanced.interior (hA : Balanced 𝕜 A) (h : (0 : E) ∈ interior A) :
    Balanced 𝕜 (interior A) := by
  rw [← union_eq_self_of_subset_left (singleton_subset_iff.2 h)]
  exact balanced_zero_union_interior hA
#align balanced.interior Balanced.interior

theorem Balanced.closure (hA : Balanced 𝕜 A) : Balanced 𝕜 (closure A) := fun _a ha =>
  (image_closure_subset_closure_image <| continuous_id.const_smul _).trans <|
    closure_mono <| hA _ ha
#align balanced.closure Balanced.closure

end NormedField

section NontriviallyNormedField

variable [NontriviallyNormedField 𝕜] [AddCommGroup E] [Module 𝕜 E] {s : Set E}

theorem absorbs_zero_iff : Absorbs 𝕜 s 0 ↔ (0 : E) ∈ s := by
  refine' ⟨_, fun h => ⟨1, zero_lt_one, fun a _ => zero_subset.2 <| zero_mem_smul_set h⟩⟩
  rintro ⟨r, hr, h⟩
  obtain ⟨a, ha⟩ := NormedSpace.exists_lt_norm 𝕜 𝕜 r
  have := h _ ha.le
  rwa [zero_subset, zero_mem_smul_set_iff] at this
  exact norm_ne_zero_iff.1 (hr.trans ha).ne'
#align absorbs_zero_iff absorbs_zero_iff

theorem Absorbent.zero_mem (hs : Absorbent 𝕜 s) : (0 : E) ∈ s :=
  absorbs_zero_iff.1 <| absorbent_iff_forall_absorbs_singleton.1 hs _
#align absorbent.zero_mem Absorbent.zero_mem

variable [Module ℝ E] [SMulCommClass ℝ 𝕜 E]

theorem balanced_convexHull_of_balanced (hs : Balanced 𝕜 s) : Balanced 𝕜 (convexHull ℝ s) := by
  suffices Convex ℝ { x | ∀ a : 𝕜, ‖a‖ ≤ 1 → a • x ∈ convexHull ℝ s } by
    rw [balanced_iff_smul_mem] at hs ⊢
    refine' fun a ha x hx => convexHull_min _ this hx a ha
    exact fun y hy a ha => subset_convexHull ℝ s (hs ha hy)
  intro x hx y hy u v hu hv huv a ha
  simp only [smul_add, ← smul_comm]
  exact convex_convexHull ℝ s (hx a ha) (hy a ha) hu hv huv
#align balanced_convex_hull_of_balanced balanced_convexHull_of_balanced

end NontriviallyNormedField

section Real

variable [AddCommGroup E] [Module ℝ E] {s : Set E}

theorem balanced_iff_neg_mem (hs : Convex ℝ s) : Balanced ℝ s ↔ ∀ ⦃x⦄, x ∈ s → -x ∈ s := by
  refine' ⟨fun h x => h.neg_mem_iff.2, fun h a ha => smul_set_subset_iff.2 fun x hx => _⟩
  rw [Real.norm_eq_abs, abs_le] at ha
  rw [show a = -((1 - a) / 2) + (a - -1) / 2 by ring, add_smul, neg_smul, ← smul_neg]
  exact
    hs (h hx) hx (div_nonneg (sub_nonneg_of_le ha.2) zero_le_two)
      (div_nonneg (sub_nonneg_of_le ha.1) zero_le_two) (by ring)
#align balanced_iff_neg_mem balanced_iff_neg_mem

end Real
```
