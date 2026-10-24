# Complete source: GRWTSK.Analysis.FunctionalAnalysis.Extreme.Variant2a7932447520b251dfd9a10b4e17018a6a6bc00ad299c04b61a775dc6dea739d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5bfa7813a92deb0bb63953fabde58c581d61c3a7` · SHA-256 `9613259ada021cb1c6f2a82a2b8a4e48b07f4fb2ad5602bbee71e457fe58a262`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.IsExtreme.Variant4dfa03c508911730c356a908d4e4f3be7e2127fb4b1ec5a1518ef5091b938a13","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4dfa03c508911730c356a908d4e4f3be7e2127fb4b1ec5a1518ef5091b938a13","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.ConvexAnalysis.SourceCorpus.IsExtreme.Variant4dfa03c508911730c356a908d4e4f3be7e2127fb4b1ec5a1518ef5091b938a13","mathematical_subject":"Analysis.ConvexAnalysis","original_sha256":"4dfa03c508911730c356a908d4e4f3be7e2127fb4b1ec5a1518ef5091b938a13","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Analysis/Convex/Extreme.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Yaël Dillies, Bhavik Mehta. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies, Bhavik Mehta
-/
import Mathlib.Analysis.Convex.Hull


namespace GRWTSK.Analysis.FunctionalAnalysis.IsExtreme.Variant4dfa03c508911730c356a908d4e4f3be7e2127fb4b1ec5a1518ef5091b938a13

#align_import analysis.convex.extreme from "leanprover-community/mathlib"@"c5773405394e073885e2a144c9ca14637e8eb963"

/-!
# Extreme sets

This file defines extreme sets and extreme points for sets in a module.

An extreme set of `A` is a subset of `A` that is as far as it can get in any outward direction: If
point `x` is in it and point `y ∈ A`, then the line passing through `x` and `y` leaves `A` at `x`.
This is an analytic notion of "being on the side of". It is weaker than being exposed (see
`IsExposed.isExtreme`).

## Main declarations

* `IsExtreme 𝕜 A B`: States that `B` is an extreme set of `A` (in the literature, `A` is often
  implicit).
* `Set.extremePoints 𝕜 A`: Set of extreme points of `A` (corresponding to extreme singletons).
* `Convex.mem_extremePoints_iff_convex_diff`: A useful equivalent condition to being an extreme
  point: `x` is an extreme point iff `A \ {x}` is convex.

## Implementation notes

The exact definition of extremeness has been carefully chosen so as to make as many lemmas
unconditional (in particular, the Krein-Milman theorem doesn't need the set to be convex!).
In practice, `A` is often assumed to be a convex set.

## References

See chapter 8 of [Barry Simon, *Convexity*][simon2011]

## TODO

Prove lemmas relating extreme sets and points to the intrinsic frontier.

More not-yet-PRed stuff is available on the mathlib3 branch `sperner_again`.
-/


open Function Set

open Affine Classical

variable {𝕜 E F ι : Type*} {π : ι → Type*}

section SMul

variable (𝕜) [OrderedSemiring 𝕜] [AddCommMonoid E] [SMul 𝕜 E]

/-- A set `B` is an extreme subset of `A` if `B ⊆ A` and all points of `B` only belong to open
segments whose ends are in `B`. -/
def IsExtreme (A B : Set E) : Prop :=
  B ⊆ A ∧ ∀ ⦃x₁⦄, x₁ ∈ A → ∀ ⦃x₂⦄, x₂ ∈ A → ∀ ⦃x⦄, x ∈ B → x ∈ openSegment 𝕜 x₁ x₂ → x₁ ∈ B ∧ x₂ ∈ B
#align is_extreme IsExtreme

/-- A point `x` is an extreme point of a set `A` if `x` belongs to no open segment with ends in
`A`, except for the obvious `openSegment x x`. -/
def Set.extremePoints (A : Set E) : Set E :=
  { x ∈ A | ∀ ⦃x₁⦄, x₁ ∈ A → ∀ ⦃x₂⦄, x₂ ∈ A → x ∈ openSegment 𝕜 x₁ x₂ → x₁ = x ∧ x₂ = x }
#align set.extreme_points Set.extremePoints

@[refl]
protected theorem IsExtreme.refl (A : Set E) : IsExtreme 𝕜 A A :=
  ⟨Subset.rfl, fun _ hx₁A _ hx₂A _ _ _ ↦ ⟨hx₁A, hx₂A⟩⟩
#align is_extreme.refl IsExtreme.refl

variable {𝕜} {A B C : Set E} {x : E}

protected theorem IsExtreme.rfl : IsExtreme 𝕜 A A :=
  IsExtreme.refl 𝕜 A
#align is_extreme.rfl IsExtreme.rfl

@[trans]
protected theorem IsExtreme.trans (hAB : IsExtreme 𝕜 A B) (hBC : IsExtreme 𝕜 B C) :
    IsExtreme 𝕜 A C := by
  refine' ⟨Subset.trans hBC.1 hAB.1, fun x₁ hx₁A x₂ hx₂A x hxC hx ↦ _⟩
  obtain ⟨hx₁B, hx₂B⟩ := hAB.2 hx₁A hx₂A (hBC.1 hxC) hx
  exact hBC.2 hx₁B hx₂B hxC hx
#align is_extreme.trans IsExtreme.trans

protected theorem IsExtreme.antisymm : AntiSymmetric (IsExtreme 𝕜 : Set E → Set E → Prop) :=
  fun _ _ hAB hBA ↦ Subset.antisymm hBA.1 hAB.1
#align is_extreme.antisymm IsExtreme.antisymm

instance : IsPartialOrder (Set E) (IsExtreme 𝕜) where
  refl := IsExtreme.refl 𝕜
  trans _ _ _ := IsExtreme.trans
  antisymm := IsExtreme.antisymm

theorem IsExtreme.inter (hAB : IsExtreme 𝕜 A B) (hAC : IsExtreme 𝕜 A C) :
    IsExtreme 𝕜 A (B ∩ C) := by
  use Subset.trans (inter_subset_left _ _) hAB.1
  rintro x₁ hx₁A x₂ hx₂A x ⟨hxB, hxC⟩ hx
  obtain ⟨hx₁B, hx₂B⟩ := hAB.2 hx₁A hx₂A hxB hx
  obtain ⟨hx₁C, hx₂C⟩ := hAC.2 hx₁A hx₂A hxC hx
  exact ⟨⟨hx₁B, hx₁C⟩, hx₂B, hx₂C⟩
#align is_extreme.inter IsExtreme.inter

protected theorem IsExtreme.mono (hAC : IsExtreme 𝕜 A C) (hBA : B ⊆ A) (hCB : C ⊆ B) :
    IsExtreme 𝕜 B C :=
  ⟨hCB, fun _ hx₁B _ hx₂B _ hxC hx ↦ hAC.2 (hBA hx₁B) (hBA hx₂B) hxC hx⟩
#align is_extreme.mono IsExtreme.mono

theorem isExtreme_iInter {ι : Sort*} [Nonempty ι] {F : ι → Set E}
    (hAF : ∀ i : ι, IsExtreme 𝕜 A (F i)) : IsExtreme 𝕜 A (⋂ i : ι, F i) := by
  obtain i := Classical.arbitrary ι
  refine' ⟨iInter_subset_of_subset i (hAF i).1, fun x₁ hx₁A x₂ hx₂A x hxF hx ↦ _⟩
  simp_rw [mem_iInter] at hxF ⊢
  have h := fun i ↦ (hAF i).2 hx₁A hx₂A (hxF i) hx
  exact ⟨fun i ↦ (h i).1, fun i ↦ (h i).2⟩
#align is_extreme_Inter isExtreme_iInter

theorem isExtreme_biInter {F : Set (Set E)} (hF : F.Nonempty) (hA : ∀ B ∈ F, IsExtreme 𝕜 A B) :
    IsExtreme 𝕜 A (⋂ B ∈ F, B) := by
  haveI := hF.to_subtype
  simpa only [iInter_subtype] using isExtreme_iInter fun i : F ↦ hA _ i.2
#align is_extreme_bInter isExtreme_biInter

theorem isExtreme_sInter {F : Set (Set E)} (hF : F.Nonempty) (hAF : ∀ B ∈ F, IsExtreme 𝕜 A B) :
    IsExtreme 𝕜 A (⋂₀ F) := by
  obtain ⟨B, hB⟩ := hF
  refine' ⟨(sInter_subset_of_mem hB).trans (hAF B hB).1, fun x₁ hx₁A x₂ hx₂A x hxF hx ↦ _⟩
  simp_rw [mem_sInter] at hxF ⊢
  have h := fun B hB ↦ (hAF B hB).2 hx₁A hx₂A (hxF B hB) hx
  exact ⟨fun B hB ↦ (h B hB).1, fun B hB ↦ (h B hB).2⟩
#align is_extreme_sInter isExtreme_sInter

theorem mem_extremePoints : x ∈ A.extremePoints 𝕜 ↔
    x ∈ A ∧ ∀ (x₁) (_ : x₁ ∈ A) (x₂) (_ : x₂ ∈ A), x ∈ openSegment 𝕜 x₁ x₂ → x₁ = x ∧ x₂ = x :=
  Iff.rfl
#align mem_extreme_points mem_extremePoints

/-- x is an extreme point to A iff {x} is an extreme set of A. -/
theorem mem_extremePoints_iff_extreme_singleton : x ∈ A.extremePoints 𝕜 ↔ IsExtreme 𝕜 A {x} := by
  refine' ⟨_, fun hx ↦ ⟨singleton_subset_iff.1 hx.1, fun x₁ hx₁ x₂ hx₂ ↦ hx.2 hx₁ hx₂ rfl⟩⟩
  rintro ⟨hxA, hAx⟩
  use singleton_subset_iff.2 hxA
  rintro x₁ hx₁A x₂ hx₂A y (rfl : y = x)
  exact hAx hx₁A hx₂A
#align mem_extreme_points_iff_extreme_singleton mem_extremePoints_iff_extreme_singleton

theorem extremePoints_subset : A.extremePoints 𝕜 ⊆ A :=
  fun _ hx ↦ hx.1
#align extreme_points_subset extremePoints_subset

@[simp]
theorem extremePoints_empty : (∅ : Set E).extremePoints 𝕜 = ∅ :=
  subset_empty_iff.1 extremePoints_subset
#align extreme_points_empty extremePoints_empty

@[simp]
theorem extremePoints_singleton : ({x} : Set E).extremePoints 𝕜 = {x} :=
  extremePoints_subset.antisymm <|
    singleton_subset_iff.2 ⟨mem_singleton x, fun _ hx₁ _ hx₂ _ ↦ ⟨hx₁, hx₂⟩⟩
#align extreme_points_singleton extremePoints_singleton

theorem inter_extremePoints_subset_extremePoints_of_subset (hBA : B ⊆ A) :
    B ∩ A.extremePoints 𝕜 ⊆ B.extremePoints 𝕜 :=
  fun _ ⟨hxB, hxA⟩ ↦ ⟨hxB, fun _ hx₁ _ hx₂ hx ↦ hxA.2 (hBA hx₁) (hBA hx₂) hx⟩
#align inter_extreme_points_subset_extreme_points_of_subset inter_extremePoints_subset_extremePoints_of_subset

theorem IsExtreme.extremePoints_subset_extremePoints (hAB : IsExtreme 𝕜 A B) :
    B.extremePoints 𝕜 ⊆ A.extremePoints 𝕜 :=
  fun _ hx ↦ mem_extremePoints_iff_extreme_singleton.2
    (hAB.trans (mem_extremePoints_iff_extreme_singleton.1 hx))
#align is_extreme.extreme_points_subset_extreme_points IsExtreme.extremePoints_subset_extremePoints

theorem IsExtreme.extremePoints_eq (hAB : IsExtreme 𝕜 A B) :
    B.extremePoints 𝕜 = B ∩ A.extremePoints 𝕜 :=
  Subset.antisymm (fun _ hx ↦ ⟨hx.1, hAB.extremePoints_subset_extremePoints hx⟩)
    (inter_extremePoints_subset_extremePoints_of_subset hAB.1)
#align is_extreme.extreme_points_eq IsExtreme.extremePoints_eq

end SMul

section OrderedSemiring

variable [OrderedSemiring 𝕜] [AddCommGroup E] [AddCommGroup F] [∀ i, AddCommGroup (π i)]
  [Module 𝕜 E] [Module 𝕜 F] [∀ i, Module 𝕜 (π i)] {A B : Set E} {x : E}

theorem IsExtreme.convex_diff (hA : Convex 𝕜 A) (hAB : IsExtreme 𝕜 A B) : Convex 𝕜 (A \ B) :=
  convex_iff_openSegment_subset.2 fun _ ⟨hx₁A, hx₁B⟩ _ ⟨hx₂A, _⟩ _ hx ↦
    ⟨hA.openSegment_subset hx₁A hx₂A hx, fun hxB ↦ hx₁B (hAB.2 hx₁A hx₂A hxB hx).1⟩
#align is_extreme.convex_diff IsExtreme.convex_diff

@[simp]
theorem extremePoints_prod (s : Set E) (t : Set F) :
    (s ×ˢ t).extremePoints 𝕜 = s.extremePoints 𝕜 ×ˢ t.extremePoints 𝕜 := by
  ext
  refine' (and_congr_right fun hx ↦ ⟨fun h ↦ _, fun h ↦ _⟩).trans and_and_and_comm
  constructor
  · rintro x₁ hx₁ x₂ hx₂ hx_fst
    refine' (h (mk_mem_prod hx₁ hx.2) (mk_mem_prod hx₂ hx.2) _).imp (congr_arg Prod.fst)
        (congr_arg Prod.fst)
    rw [← Prod.image_mk_openSegment_left]
    exact ⟨_, hx_fst, Prod.mk.eta⟩
  · rintro x₁ hx₁ x₂ hx₂ hx_snd
    refine' (h (mk_mem_prod hx.1 hx₁) (mk_mem_prod hx.1 hx₂) _).imp (congr_arg Prod.snd)
        (congr_arg Prod.snd)
    rw [← Prod.image_mk_openSegment_right]
    exact ⟨_, hx_snd, Prod.mk.eta⟩
  · rintro x₁ hx₁ x₂ hx₂ ⟨a, b, ha, hb, hab, hx'⟩
    simp_rw [Prod.ext_iff]
    exact and_and_and_comm.1
        ⟨h.1 hx₁.1 hx₂.1 ⟨a, b, ha, hb, hab, congr_arg Prod.fst hx'⟩,
          h.2 hx₁.2 hx₂.2 ⟨a, b, ha, hb, hab, congr_arg Prod.snd hx'⟩⟩
#align extreme_points_prod extremePoints_prod

@[simp]
theorem extremePoints_pi (s : ∀ i, Set (π i)) :
    (univ.pi s).extremePoints 𝕜 = univ.pi fun i ↦ (s i).extremePoints 𝕜 := by
  ext x
  simp only [mem_extremePoints, mem_pi, mem_univ, true_imp_iff, @forall_and ι]
  refine' and_congr_right fun hx ↦ ⟨fun h i ↦ _, fun h ↦ _⟩
  · rintro x₁ hx₁ x₂ hx₂ hi
    refine' (h (update x i x₁) _ (update x i x₂) _ _).imp (fun h₁ ↦ by rw [← h₁, update_same])
        fun h₂ ↦ by rw [← h₂, update_same]
    iterate 2
      rintro j
      obtain rfl | hji := eq_or_ne j i
      · rwa [update_same]
      · rw [update_noteq hji]
        exact hx _
    rw [← Pi.image_update_openSegment]
    exact ⟨_, hi, update_eq_self _ _⟩
  · rintro x₁ hx₁ x₂ hx₂ ⟨a, b, ha, hb, hab, hx'⟩
    simp_rw [funext_iff, ← forall_and]
    exact fun i ↦ h _ _ (hx₁ _) _ (hx₂ _) ⟨a, b, ha, hb, hab, congr_fun hx' _⟩
#align extreme_points_pi extremePoints_pi

end OrderedSemiring

section LinearOrderedRing

variable [LinearOrderedRing 𝕜] [AddCommGroup E] [Module 𝕜 E]

variable [DenselyOrdered 𝕜] [NoZeroSMulDivisors 𝕜 E] {A B : Set E} {x : E}

/-- A useful restatement using `segment`: `x` is an extreme point iff the only (closed) segments
that contain it are those with `x` as one of their endpoints. -/
theorem mem_extremePoints_iff_forall_segment : x ∈ A.extremePoints 𝕜 ↔
    x ∈ A ∧ ∀ (x₁) (_ : x₁ ∈ A) (x₂) (_ : x₂ ∈ A), x ∈ segment 𝕜 x₁ x₂ → x₁ = x ∨ x₂ = x := by
  refine' and_congr_right fun hxA ↦ forall₄_congr fun x₁ h₁ x₂ h₂ ↦ _
  constructor
  · rw [← insert_endpoints_openSegment]
    rintro H (rfl | rfl | hx)
    exacts [Or.inl rfl, Or.inr rfl, Or.inl <| (H hx).1]
  · intro H hx
    rcases H (openSegment_subset_segment _ _ _ hx) with (rfl | rfl)
    exacts [⟨rfl, (left_mem_openSegment_iff.1 hx).symm⟩, ⟨right_mem_openSegment_iff.1 hx, rfl⟩]
#align mem_extreme_points_iff_forall_segment mem_extremePoints_iff_forall_segment

theorem Convex.mem_extremePoints_iff_convex_diff (hA : Convex 𝕜 A) :
    x ∈ A.extremePoints 𝕜 ↔ x ∈ A ∧ Convex 𝕜 (A \ {x}) := by
  use fun hx ↦ ⟨hx.1, (mem_extremePoints_iff_extreme_singleton.1 hx).convex_diff hA⟩
  rintro ⟨hxA, hAx⟩
  refine' mem_extremePoints_iff_forall_segment.2 ⟨hxA, fun x₁ hx₁ x₂ hx₂ hx ↦ _⟩
  rw [convex_iff_segment_subset] at hAx
  by_contra' h
  exact (hAx ⟨hx₁, fun hx₁ ↦ h.1 (mem_singleton_iff.2 hx₁)⟩
      ⟨hx₂, fun hx₂ ↦ h.2 (mem_singleton_iff.2 hx₂)⟩ hx).2 rfl
#align convex.mem_extreme_points_iff_convex_diff Convex.mem_extremePoints_iff_convex_diff

theorem Convex.mem_extremePoints_iff_mem_diff_convexHull_diff (hA : Convex 𝕜 A) :
    x ∈ A.extremePoints 𝕜 ↔ x ∈ A \ convexHull 𝕜 (A \ {x}) := by
  rw [hA.mem_extremePoints_iff_convex_diff, hA.convex_remove_iff_not_mem_convexHull_remove,
    mem_diff]
#align convex.mem_extreme_points_iff_mem_diff_convex_hull_diff Convex.mem_extremePoints_iff_mem_diff_convexHull_diff

theorem extremePoints_convexHull_subset : (convexHull 𝕜 A).extremePoints 𝕜 ⊆ A := by
  rintro x hx
  rw [(convex_convexHull 𝕜 _).mem_extremePoints_iff_convex_diff] at hx
  by_contra h
  exact (convexHull_min (subset_diff.2 ⟨subset_convexHull 𝕜 _, disjoint_singleton_right.2 h⟩) hx.2
    hx.1).2 rfl
#align extreme_points_convex_hull_subset extremePoints_convexHull_subset

end LinearOrderedRing
```
