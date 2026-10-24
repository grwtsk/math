# Complete source: GRWTSK.Topology.GeneralTopology.Exposed.Variant949d00017bce7d17e540c1fe6981633522ab73de770a5a4dfed42a87dbdba767

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0f9920d47ff4baab691ee798a26c504de4cbf8d1` · SHA-256 `005cd8464f501feeebe84b30fc8419b89db01b530e710b0ae788246410b8510a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.IsExposed.Variantafef7fdb8c304c3c02fcfa6525490922e294738c342f567f84386e578dbbcf4a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"afef7fdb8c304c3c02fcfa6525490922e294738c342f567f84386e578dbbcf4a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.IsExposed.Variantafef7fdb8c304c3c02fcfa6525490922e294738c342f567f84386e578dbbcf4a","mathematical_subject":"Topology.GeneralTopology","original_sha256":"afef7fdb8c304c3c02fcfa6525490922e294738c342f567f84386e578dbbcf4a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Analysis/Convex/Exposed.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Yaël Dillies, Bhavik Mehta. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies, Bhavik Mehta
-/
import Mathlib.Analysis.Convex.Extreme
import Mathlib.Analysis.Convex.Function
import Mathlib.Topology.Algebra.Module.Basic
import Mathlib.Topology.Order.Basic


namespace GRWTSK.Topology.GeneralTopology.IsExposed.Variantafef7fdb8c304c3c02fcfa6525490922e294738c342f567f84386e578dbbcf4a

#align_import analysis.convex.exposed from "leanprover-community/mathlib"@"48024901a8e2a462363650c50d62248a77cbcab3"

/-!
# Exposed sets

This file defines exposed sets and exposed points for sets in a real vector space.

An exposed subset of `A` is a subset of `A` that is the set of all maximal points of a functional
(a continuous linear map `E → 𝕜`) over `A`. By convention, `∅` is an exposed subset of all sets.
This allows for better functoriality of the definition (the intersection of two exposed subsets is
exposed, faces of a polytope form a bounded lattice).
This is an analytic notion of "being on the side of". It is stronger than being extreme (see
`IsExposed.isExtreme`), but weaker (for exposed points) than being a vertex.

An exposed set of `A` is sometimes called a "face of `A`", but we decided to reserve this
terminology to the more specific notion of a face of a polytope (sometimes hopefully soon out
on mathlib!).

## Main declarations

* `IsExposed 𝕜 A B`: States that `B` is an exposed set of `A` (in the literature, `A` is often
  implicit).
* `IsExposed.isExtreme`: An exposed set is also extreme.

## References

See chapter 8 of [Barry Simon, *Convexity*][simon2011]

## TODO

Define intrinsic frontier/interior and prove the lemmas related to exposed sets and points.

Generalise to Locally Convex Topological Vector Spaces™

More not-yet-PRed stuff is available on the branch `sperner_again`.
-/


open Classical Affine BigOperators

open Set

section PreorderSemiring

variable (𝕜 : Type*) {E : Type*} [TopologicalSpace 𝕜] [Semiring 𝕜] [Preorder 𝕜] [AddCommMonoid E]
  [TopologicalSpace E] [Module 𝕜 E] {A B : Set E}

/-- A set `B` is exposed with respect to `A` iff it maximizes some functional over `A` (and contains
all points maximizing it). Written `IsExposed 𝕜 A B`. -/
def IsExposed (A B : Set E) : Prop :=
  B.Nonempty → ∃ l : E →L[𝕜] 𝕜, B = { x ∈ A | ∀ y ∈ A, l y ≤ l x }
#align is_exposed IsExposed

end PreorderSemiring

section OrderedRing

variable {𝕜 : Type*} {E : Type*} [TopologicalSpace 𝕜] [OrderedRing 𝕜] [AddCommMonoid E]
  [TopologicalSpace E] [Module 𝕜 E] {l : E →L[𝕜] 𝕜} {A B C : Set E} {X : Finset E} {x : E}

/-- A useful way to build exposed sets from intersecting `A` with halfspaces (modelled by an
inequality with a functional). -/
def ContinuousLinearMap.toExposed (l : E →L[𝕜] 𝕜) (A : Set E) : Set E :=
  { x ∈ A | ∀ y ∈ A, l y ≤ l x }
#align continuous_linear_map.to_exposed ContinuousLinearMap.toExposed

theorem ContinuousLinearMap.toExposed.isExposed : IsExposed 𝕜 A (l.toExposed A) := fun _ => ⟨l, rfl⟩
#align continuous_linear_map.to_exposed.is_exposed ContinuousLinearMap.toExposed.isExposed

theorem isExposed_empty : IsExposed 𝕜 A ∅ := fun ⟨_, hx⟩ => by
  exfalso
  exact hx
#align is_exposed_empty isExposed_empty

namespace IsExposed

protected theorem subset (hAB : IsExposed 𝕜 A B) : B ⊆ A := by
  rintro x hx
  obtain ⟨_, rfl⟩ := hAB ⟨x, hx⟩
  exact hx.1
#align is_exposed.subset IsExposed.subset

@[refl]
protected theorem refl (A : Set E) : IsExposed 𝕜 A A := fun ⟨_, _⟩ =>
  ⟨0, Subset.antisymm (fun _ hx => ⟨hx, fun _ _ => le_refl 0⟩) fun _ hx => hx.1⟩
#align is_exposed.refl IsExposed.refl

protected theorem antisymm (hB : IsExposed 𝕜 A B) (hA : IsExposed 𝕜 B A) : A = B :=
  hA.subset.antisymm hB.subset
#align is_exposed.antisymm IsExposed.antisymm

/- `IsExposed` is *not* transitive: Consider a (topologically) open cube with vertices
`A₀₀₀, ..., A₁₁₁` and add to it the triangle `A₀₀₀A₀₀₁A₀₁₀`. Then `A₀₀₁A₀₁₀` is an exposed subset
of `A₀₀₀A₀₀₁A₀₁₀` which is an exposed subset of the cube, but `A₀₀₁A₀₁₀` is not itself an exposed
subset of the cube. -/
protected theorem mono (hC : IsExposed 𝕜 A C) (hBA : B ⊆ A) (hCB : C ⊆ B) : IsExposed 𝕜 B C := by
  rintro ⟨w, hw⟩
  obtain ⟨l, rfl⟩ := hC ⟨w, hw⟩
  exact ⟨l, Subset.antisymm (fun x hx => ⟨hCB hx, fun y hy => hx.2 y (hBA hy)⟩) fun x hx =>
    ⟨hBA hx.1, fun y hy => (hw.2 y hy).trans (hx.2 w (hCB hw))⟩⟩
#align is_exposed.mono IsExposed.mono

/-- If `B` is a nonempty exposed subset of `A`, then `B` is the intersection of `A` with some closed
halfspace. The converse is *not* true. It would require that the corresponding open halfspace
doesn't intersect `A`. -/
theorem eq_inter_halfspace' {A B : Set E} (hAB : IsExposed 𝕜 A B) (hB : B.Nonempty) :
    ∃ l : E →L[𝕜] 𝕜, ∃ a, B = { x ∈ A | a ≤ l x } := by
  obtain ⟨l, rfl⟩ := hAB hB
  obtain ⟨w, hw⟩ := hB
  exact ⟨l, l w, Subset.antisymm (fun x hx => ⟨hx.1, hx.2 w hw.1⟩) fun x hx =>
    ⟨hx.1, fun y hy => (hw.2 y hy).trans hx.2⟩⟩
#align is_exposed.eq_inter_halfspace' IsExposed.eq_inter_halfspace'

/-- For nontrivial `𝕜`, if `B` is an exposed subset of `A`, then `B` is the intersection of `A` with
some closed halfspace. The converse is *not* true. It would require that the corresponding open
halfspace doesn't intersect `A`. -/
theorem eq_inter_halfspace [Nontrivial 𝕜] {A B : Set E} (hAB : IsExposed 𝕜 A B) :
    ∃ l : E →L[𝕜] 𝕜, ∃ a, B = { x ∈ A | a ≤ l x } := by
  obtain rfl | hB := B.eq_empty_or_nonempty
  · refine' ⟨0, 1, _⟩
    rw [eq_comm, eq_empty_iff_forall_not_mem]
    rintro x ⟨-, h⟩
    rw [ContinuousLinearMap.zero_apply] at h
    have : ¬(1 : 𝕜) ≤ 0 := not_le_of_lt zero_lt_one
    contradiction
  exact hAB.eq_inter_halfspace' hB
#align is_exposed.eq_inter_halfspace IsExposed.eq_inter_halfspace

protected theorem inter [ContinuousAdd 𝕜] {A B C : Set E} (hB : IsExposed 𝕜 A B)
    (hC : IsExposed 𝕜 A C) : IsExposed 𝕜 A (B ∩ C) := by
  rintro ⟨w, hwB, hwC⟩
  obtain ⟨l₁, rfl⟩ := hB ⟨w, hwB⟩
  obtain ⟨l₂, rfl⟩ := hC ⟨w, hwC⟩
  refine' ⟨l₁ + l₂, Subset.antisymm _ _⟩
  · rintro x ⟨⟨hxA, hxB⟩, ⟨-, hxC⟩⟩
    exact ⟨hxA, fun z hz => add_le_add (hxB z hz) (hxC z hz)⟩
  rintro x ⟨hxA, hx⟩
  refine' ⟨⟨hxA, fun y hy => _⟩, hxA, fun y hy => _⟩
  · exact
      (add_le_add_iff_right (l₂ x)).1 ((add_le_add (hwB.2 y hy) (hwC.2 x hxA)).trans (hx w hwB.1))
  · exact
      (add_le_add_iff_left (l₁ x)).1 (le_trans (add_le_add (hwB.2 x hxA) (hwC.2 y hy)) (hx w hwB.1))
#align is_exposed.inter IsExposed.inter

theorem sInter [ContinuousAdd 𝕜] {F : Finset (Set E)} (hF : F.Nonempty)
    (hAF : ∀ B ∈ F, IsExposed 𝕜 A B) : IsExposed 𝕜 A (⋂₀ F) := by
  induction F using Finset.induction with
  | empty => exfalso; exact Finset.not_nonempty_empty hF
  | @insert C F _ hF' =>
    rw [Finset.coe_insert, sInter_insert]
    obtain rfl | hFnemp := F.eq_empty_or_nonempty
    · rw [Finset.coe_empty, sInter_empty, inter_univ]
      exact hAF C (Finset.mem_singleton_self C)
    · exact (hAF C (Finset.mem_insert_self C F)).inter
        (hF' hFnemp fun B hB => hAF B (Finset.mem_insert_of_mem hB))
#align is_exposed.sInter IsExposed.sInter

theorem inter_left (hC : IsExposed 𝕜 A C) (hCB : C ⊆ B) : IsExposed 𝕜 (A ∩ B) C := by
  rintro ⟨w, hw⟩
  obtain ⟨l, rfl⟩ := hC ⟨w, hw⟩
  exact ⟨l, Subset.antisymm (fun x hx => ⟨⟨hx.1, hCB hx⟩, fun y hy => hx.2 y hy.1⟩)
    fun x ⟨⟨hxC, _⟩, hx⟩ => ⟨hxC, fun y hy => (hw.2 y hy).trans (hx w ⟨hC.subset hw, hCB hw⟩)⟩⟩
#align is_exposed.inter_left IsExposed.inter_left

theorem inter_right (hC : IsExposed 𝕜 B C) (hCA : C ⊆ A) : IsExposed 𝕜 (A ∩ B) C := by
  rw [inter_comm]
  exact hC.inter_left hCA
#align is_exposed.inter_right IsExposed.inter_right

protected theorem isClosed [OrderClosedTopology 𝕜] {A B : Set E} (hAB : IsExposed 𝕜 A B)
    (hA : IsClosed A) : IsClosed B := by
  obtain rfl | hB := B.eq_empty_or_nonempty
  · simp
  obtain ⟨l, a, rfl⟩ := hAB.eq_inter_halfspace' hB
  exact hA.isClosed_le continuousOn_const l.continuous.continuousOn
#align is_exposed.is_closed IsExposed.isClosed

protected theorem isCompact [OrderClosedTopology 𝕜] [T2Space E] {A B : Set E}
    (hAB : IsExposed 𝕜 A B) (hA : IsCompact A) : IsCompact B :=
  isCompact_of_isClosed_subset hA (hAB.isClosed hA.isClosed) hAB.subset
#align is_exposed.is_compact IsExposed.isCompact

end IsExposed

variable (𝕜)

/-- A point is exposed with respect to `A` iff there exists a hyperplane whose intersection with
`A` is exactly that point. -/
def Set.exposedPoints (A : Set E) : Set E :=
  { x ∈ A | ∃ l : E →L[𝕜] 𝕜, ∀ y ∈ A, l y ≤ l x ∧ (l x ≤ l y → y = x) }
#align set.exposed_points Set.exposedPoints

variable {𝕜}

theorem exposed_point_def :
    x ∈ A.exposedPoints 𝕜 ↔ x ∈ A ∧ ∃ l : E →L[𝕜] 𝕜, ∀ y ∈ A, l y ≤ l x ∧ (l x ≤ l y → y = x) :=
  Iff.rfl
#align exposed_point_def exposed_point_def

theorem exposedPoints_subset : A.exposedPoints 𝕜 ⊆ A := fun _ hx => hx.1
#align exposed_points_subset exposedPoints_subset

@[simp]
theorem exposedPoints_empty : (∅ : Set E).exposedPoints 𝕜 = ∅ :=
  subset_empty_iff.1 exposedPoints_subset
#align exposed_points_empty exposedPoints_empty

/-- Exposed points exactly correspond to exposed singletons. -/
theorem mem_exposedPoints_iff_exposed_singleton : x ∈ A.exposedPoints 𝕜 ↔ IsExposed 𝕜 A {x} := by
  use fun ⟨hxA, l, hl⟩ _ =>
    ⟨l,
      Eq.symm <|
        eq_singleton_iff_unique_mem.2
          ⟨⟨hxA, fun y hy => (hl y hy).1⟩, fun z hz => (hl z hz.1).2 (hz.2 x hxA)⟩⟩
  rintro h
  obtain ⟨l, hl⟩ := h ⟨x, mem_singleton _⟩
  rw [eq_comm, eq_singleton_iff_unique_mem] at hl
  exact
    ⟨hl.1.1, l, fun y hy =>
      ⟨hl.1.2 y hy, fun hxy => hl.2 y ⟨hy, fun z hz => (hl.1.2 z hz).trans hxy⟩⟩⟩
#align mem_exposed_points_iff_exposed_singleton mem_exposedPoints_iff_exposed_singleton

end OrderedRing

section LinearOrderedRing

variable {𝕜 : Type*} {E : Type*} [TopologicalSpace 𝕜] [LinearOrderedRing 𝕜] [AddCommMonoid E]
  [TopologicalSpace E] [Module 𝕜 E] {A B C : Set E}

namespace IsExposed

protected theorem convex (hAB : IsExposed 𝕜 A B) (hA : Convex 𝕜 A) : Convex 𝕜 B := by
  obtain rfl | hB := B.eq_empty_or_nonempty
  · exact convex_empty
  obtain ⟨l, rfl⟩ := hAB hB
  exact fun x₁ hx₁ x₂ hx₂ a b ha hb hab =>
    ⟨hA hx₁.1 hx₂.1 ha hb hab, fun y hy =>
      ((l.toLinearMap.concaveOn convex_univ).convex_ge _ ⟨mem_univ _, hx₁.2 y hy⟩
          ⟨mem_univ _, hx₂.2 y hy⟩ ha hb hab).2⟩
#align is_exposed.convex IsExposed.convex

protected theorem isExtreme (hAB : IsExposed 𝕜 A B) : IsExtreme 𝕜 A B := by
  refine' ⟨hAB.subset, fun x₁ hx₁A x₂ hx₂A x hxB hx => _⟩
  obtain ⟨l, rfl⟩ := hAB ⟨x, hxB⟩
  have hl : ConvexOn 𝕜 univ l := l.toLinearMap.convexOn convex_univ
  have hlx₁ := hxB.2 x₁ hx₁A
  have hlx₂ := hxB.2 x₂ hx₂A
  refine' ⟨⟨hx₁A, fun y hy => _⟩, ⟨hx₂A, fun y hy => _⟩⟩
  · rw [hlx₁.antisymm (hl.le_left_of_right_le (mem_univ _) (mem_univ _) hx hlx₂)]
    exact hxB.2 y hy
  · rw [hlx₂.antisymm (hl.le_right_of_left_le (mem_univ _) (mem_univ _) hx hlx₁)]
    exact hxB.2 y hy
#align is_exposed.is_extreme IsExposed.isExtreme

end IsExposed

theorem exposedPoints_subset_extremePoints : A.exposedPoints 𝕜 ⊆ A.extremePoints 𝕜 := fun _ hx =>
  mem_extremePoints_iff_extreme_singleton.2 (mem_exposedPoints_iff_exposed_singleton.1 hx).isExtreme
#align exposed_points_subset_extreme_points exposedPoints_subset_extremePoints

end LinearOrderedRing
```
