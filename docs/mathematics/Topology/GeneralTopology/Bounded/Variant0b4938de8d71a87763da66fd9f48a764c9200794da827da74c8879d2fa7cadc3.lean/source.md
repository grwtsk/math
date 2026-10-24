# Complete source: GRWTSK.Topology.GeneralTopology.Bounded.Variant0b4938de8d71a87763da66fd9f48a764c9200794da827da74c8879d2fa7cadc3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8c49cd1856d66addd45ccc716974270a850b87b4` · SHA-256 `d09ce434ff5190df69bb3fc8e119576f6502cce574d3da59ba10632d45ba65d1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.IsVonNBounded.Variant25f5b9d38e85591eb50ac26d283b27fa383bcd38d7aadbc664ab5f31e0deb23f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"25f5b9d38e85591eb50ac26d283b27fa383bcd38d7aadbc664ab5f31e0deb23f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.IsVonNBounded.Variant25f5b9d38e85591eb50ac26d283b27fa383bcd38d7aadbc664ab5f31e0deb23f","mathematical_subject":"Topology.GeneralTopology","original_sha256":"25f5b9d38e85591eb50ac26d283b27fa383bcd38d7aadbc664ab5f31e0deb23f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Analysis/LocallyConvex/Bounded.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Moritz Doll. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Moritz Doll
-/
import Mathlib.Analysis.LocallyConvex.Basic
import Mathlib.Analysis.LocallyConvex.BalancedCoreHull
import Mathlib.Analysis.Seminorm
import Mathlib.Topology.Bornology.Basic
import Mathlib.Topology.Algebra.UniformGroup
import Mathlib.Topology.UniformSpace.Cauchy


namespace GRWTSK.Topology.GeneralTopology.IsVonNBounded.Variant25f5b9d38e85591eb50ac26d283b27fa383bcd38d7aadbc664ab5f31e0deb23f

#align_import analysis.locally_convex.bounded from "leanprover-community/mathlib"@"f2ce6086713c78a7f880485f7917ea547a215982"

/-!
# Von Neumann Boundedness

This file defines natural or von Neumann bounded sets and proves elementary properties.

## Main declarations

* `Bornology.IsVonNBounded`: A set `s` is von Neumann-bounded if every neighborhood of zero
absorbs `s`.
* `Bornology.vonNBornology`: The bornology made of the von Neumann-bounded sets.

## Main results

* `Bornology.IsVonNBounded.of_topologicalSpace_le`: A coarser topology admits more
von Neumann-bounded sets.
* `Bornology.IsVonNBounded.image`: A continuous linear image of a bounded set is bounded.
* `Bornology.isVonNBounded_iff_smul_tendsto_zero`: Given any sequence `ε` of scalars which tends
  to `𝓝[≠] 0`, we have that a set `S` is bounded if and only if for any sequence `x : ℕ → S`,
  `ε • x` tends to 0. This shows that bounded sets are completely determined by sequences, which is
  the key fact for proving that sequential continuity implies continuity for linear maps defined on
  a bornological space

## References

* [Bourbaki, *Topological Vector Spaces*][bourbaki1987]

-/


variable {𝕜 𝕜' E E' F ι : Type*}

open Set Filter

open Topology Pointwise

set_option linter.uppercaseLean3 false

namespace Bornology

section SeminormedRing

section Zero

variable (𝕜)

variable [SeminormedRing 𝕜] [SMul 𝕜 E] [Zero E]

variable [TopologicalSpace E]

/-- A set `s` is von Neumann bounded if every neighborhood of 0 absorbs `s`. -/
def IsVonNBounded (s : Set E) : Prop :=
  ∀ ⦃V⦄, V ∈ 𝓝 (0 : E) → Absorbs 𝕜 V s
#align bornology.is_vonN_bounded Bornology.IsVonNBounded

variable (E)

@[simp]
theorem isVonNBounded_empty : IsVonNBounded 𝕜 (∅ : Set E) := fun _ _ => absorbs_empty
#align bornology.is_vonN_bounded_empty Bornology.isVonNBounded_empty

variable {𝕜 E}

theorem isVonNBounded_iff (s : Set E) : IsVonNBounded 𝕜 s ↔ ∀ V ∈ 𝓝 (0 : E), Absorbs 𝕜 V s :=
  Iff.rfl
#align bornology.is_vonN_bounded_iff Bornology.isVonNBounded_iff

theorem _root_.GRWTSK.Topology.GeneralTopology.IsVonNBounded.Variant25f5b9d38e85591eb50ac26d283b27fa383bcd38d7aadbc664ab5f31e0deb23f.Filter.HasBasis.isVonNBounded_basis_iff {q : ι → Prop} {s : ι → Set E} {A : Set E}
    (h : (𝓝 (0 : E)).HasBasis q s) : IsVonNBounded 𝕜 A ↔ ∀ (i) (_ : q i), Absorbs 𝕜 (s i) A := by
  refine' ⟨fun hA i hi => hA (h.mem_of_mem hi), fun hA V hV => _⟩
  rcases h.mem_iff.mp hV with ⟨i, hi, hV⟩
  exact (hA i hi).mono_left hV
#align filter.has_basis.is_vonN_bounded_basis_iff Filter.HasBasis.isVonNBounded_basis_iff

/-- Subsets of bounded sets are bounded. -/
theorem IsVonNBounded.subset {s₁ s₂ : Set E} (h : s₁ ⊆ s₂) (hs₂ : IsVonNBounded 𝕜 s₂) :
    IsVonNBounded 𝕜 s₁ := fun _ hV => (hs₂ hV).mono_right h
#align bornology.is_vonN_bounded.subset Bornology.IsVonNBounded.subset

/-- The union of two bounded sets is bounded. -/
theorem IsVonNBounded.union {s₁ s₂ : Set E} (hs₁ : IsVonNBounded 𝕜 s₁) (hs₂ : IsVonNBounded 𝕜 s₂) :
    IsVonNBounded 𝕜 (s₁ ∪ s₂) := fun _ hV => (hs₁ hV).union (hs₂ hV)
#align bornology.is_vonN_bounded.union Bornology.IsVonNBounded.union

end Zero

end SeminormedRing

section MultipleTopologies

variable [SeminormedRing 𝕜] [AddCommGroup E] [Module 𝕜 E]

/-- If a topology `t'` is coarser than `t`, then any set `s` that is bounded with respect to
`t` is bounded with respect to `t'`. -/
theorem IsVonNBounded.of_topologicalSpace_le {t t' : TopologicalSpace E} (h : t ≤ t') {s : Set E}
    (hs : @IsVonNBounded 𝕜 E _ _ _ t s) : @IsVonNBounded 𝕜 E _ _ _ t' s := fun _ hV =>
  hs <| (le_iff_nhds t t').mp h 0 hV
#align bornology.is_vonN_bounded.of_topological_space_le Bornology.IsVonNBounded.of_topologicalSpace_le

end MultipleTopologies

section Image

variable {𝕜₁ 𝕜₂ : Type*} [NormedDivisionRing 𝕜₁] [NormedDivisionRing 𝕜₂] [AddCommGroup E]
  [Module 𝕜₁ E] [AddCommGroup F] [Module 𝕜₂ F] [TopologicalSpace E] [TopologicalSpace F]

/-- A continuous linear image of a bounded set is bounded. -/
theorem IsVonNBounded.image {σ : 𝕜₁ →+* 𝕜₂} [RingHomSurjective σ] [RingHomIsometric σ] {s : Set E}
    (hs : IsVonNBounded 𝕜₁ s) (f : E →SL[σ] F) : IsVonNBounded 𝕜₂ (f '' s) := by
  let σ' := RingEquiv.ofBijective σ ⟨σ.injective, σ.surjective⟩
  have σ_iso : Isometry σ := AddMonoidHomClass.isometry_of_norm σ fun x => RingHomIsometric.is_iso
  have σ'_symm_iso : Isometry σ'.symm := σ_iso.right_inv σ'.right_inv
  have f_tendsto_zero := f.continuous.tendsto 0
  rw [map_zero] at f_tendsto_zero
  intro V hV
  rcases hs (f_tendsto_zero hV) with ⟨r, hrpos, hr⟩
  refine' ⟨r, hrpos, fun a ha => _⟩
  rw [← σ'.apply_symm_apply a]
  have hanz : a ≠ 0 := norm_pos_iff.mp (hrpos.trans_le ha)
  have : σ'.symm a ≠ 0 := (map_ne_zero σ'.symm.toRingHom).mpr hanz
  change _ ⊆ σ _ • _
  rw [Set.image_subset_iff, preimage_smul_setₛₗ _ _ _ f this.isUnit]
  refine' hr (σ'.symm a) _
  rwa [σ'_symm_iso.norm_map_of_map_zero (map_zero _)]
#align bornology.is_vonN_bounded.image Bornology.IsVonNBounded.image

end Image

section sequence

variable {𝕝 : Type*} [NormedField 𝕜] [NontriviallyNormedField 𝕝] [AddCommGroup E] [Module 𝕜 E]
  [Module 𝕝 E] [TopologicalSpace E] [ContinuousSMul 𝕝 E]

theorem IsVonNBounded.smul_tendsto_zero {S : Set E} {ε : ι → 𝕜} {x : ι → E} {l : Filter ι}
    (hS : IsVonNBounded 𝕜 S) (hxS : ∀ᶠ n in l, x n ∈ S) (hε : Tendsto ε l (𝓝 0)) :
    Tendsto (ε • x) l (𝓝 0) := by
  rw [tendsto_def] at *
  intro V hV
  rcases hS hV with ⟨r, r_pos, hrS⟩
  filter_upwards [hxS, hε _ (Metric.ball_mem_nhds 0 <| inv_pos.mpr r_pos)] with n hnS hnr
  by_cases hε : ε n = 0
  · simp [hε, mem_of_mem_nhds hV]
  · rw [mem_preimage, mem_ball_zero_iff, lt_inv (norm_pos_iff.mpr hε) r_pos, ← norm_inv] at hnr
    rw [mem_preimage, Pi.smul_apply', ← Set.mem_inv_smul_set_iff₀ hε]
    exact hrS _ hnr.le hnS
#align bornology.is_vonN_bounded.smul_tendsto_zero Bornology.IsVonNBounded.smul_tendsto_zero

theorem isVonNBounded_of_smul_tendsto_zero {ε : ι → 𝕝} {l : Filter ι} [l.NeBot]
    (hε : ∀ᶠ n in l, ε n ≠ 0) {S : Set E}
    (H : ∀ x : ι → E, (∀ n, x n ∈ S) → Tendsto (ε • x) l (𝓝 0)) : IsVonNBounded 𝕝 S := by
  rw [(nhds_basis_balanced 𝕝 E).isVonNBounded_basis_iff]
  by_contra' H'
  rcases H' with ⟨V, ⟨hV, hVb⟩, hVS⟩
  have : ∀ᶠ n in l, ∃ x : S, ε n • (x : E) ∉ V := by
    filter_upwards [hε]with n hn
    rw [Absorbs] at hVS
    push_neg at hVS
    rcases hVS _ (norm_pos_iff.mpr <| inv_ne_zero hn) with ⟨a, haε, haS⟩
    rcases Set.not_subset.mp haS with ⟨x, hxS, hx⟩
    refine' ⟨⟨x, hxS⟩, fun hnx => _⟩
    rw [← Set.mem_inv_smul_set_iff₀ hn] at hnx
    exact hx (hVb.smul_mono haε hnx)
  rcases this.choice with ⟨x, hx⟩
  refine' Filter.frequently_false l (Filter.Eventually.frequently _)
  filter_upwards [hx,
    (H (_ ∘ x) fun n => (x n).2).eventually (eventually_mem_set.mpr hV)] using fun n => id
#align bornology.is_vonN_bounded_of_smul_tendsto_zero Bornology.isVonNBounded_of_smul_tendsto_zero

/-- Given any sequence `ε` of scalars which tends to `𝓝[≠] 0`, we have that a set `S` is bounded
  if and only if for any sequence `x : ℕ → S`, `ε • x` tends to 0. This actually works for any
  indexing type `ι`, but in the special case `ι = ℕ` we get the important fact that convergent
  sequences fully characterize bounded sets. -/
theorem isVonNBounded_iff_smul_tendsto_zero {ε : ι → 𝕝} {l : Filter ι} [l.NeBot]
    (hε : Tendsto ε l (𝓝[≠] 0)) {S : Set E} :
    IsVonNBounded 𝕝 S ↔ ∀ x : ι → E, (∀ n, x n ∈ S) → Tendsto (ε • x) l (𝓝 0) :=
  ⟨fun hS x hxS => hS.smul_tendsto_zero (eventually_of_forall hxS) (le_trans hε nhdsWithin_le_nhds),
    isVonNBounded_of_smul_tendsto_zero (by exact hε self_mem_nhdsWithin)⟩
#align bornology.is_vonN_bounded_iff_smul_tendsto_zero Bornology.isVonNBounded_iff_smul_tendsto_zero

end sequence

section NormedField

variable [NormedField 𝕜] [AddCommGroup E] [Module 𝕜 E]

variable [TopologicalSpace E] [ContinuousSMul 𝕜 E]

/-- Singletons are bounded. -/
theorem isVonNBounded_singleton (x : E) : IsVonNBounded 𝕜 ({x} : Set E) := fun _ hV =>
  (absorbent_nhds_zero hV).absorbs
#align bornology.is_vonN_bounded_singleton Bornology.isVonNBounded_singleton

/-- The union of all bounded set is the whole space. -/
theorem isVonNBounded_covers : ⋃₀ setOf (IsVonNBounded 𝕜) = (Set.univ : Set E) :=
  Set.eq_univ_iff_forall.mpr fun x =>
    Set.mem_sUnion.mpr ⟨{x}, isVonNBounded_singleton _, Set.mem_singleton _⟩
#align bornology.is_vonN_bounded_covers Bornology.isVonNBounded_covers

variable (𝕜 E)

-- See note [reducible non-instances]
/-- The von Neumann bornology defined by the von Neumann bounded sets.

Note that this is not registered as an instance, in order to avoid diamonds with the
metric bornology.-/
@[reducible]
def vonNBornology : Bornology E :=
  Bornology.ofBounded (setOf (IsVonNBounded 𝕜)) (isVonNBounded_empty 𝕜 E)
    (fun _ hs _ ht => hs.subset ht) (fun _ hs _ => hs.union) isVonNBounded_singleton
#align bornology.vonN_bornology Bornology.vonNBornology

variable {E}

@[simp]
theorem isBounded_iff_isVonNBounded {s : Set E} :
    @IsBounded _ (vonNBornology 𝕜 E) s ↔ IsVonNBounded 𝕜 s :=
  isBounded_ofBounded_iff _
#align bornology.is_bounded_iff_is_vonN_bounded Bornology.isBounded_iff_isVonNBounded

end NormedField

end Bornology

section UniformAddGroup

variable (𝕜) [NontriviallyNormedField 𝕜] [AddCommGroup E] [Module 𝕜 E]

variable [UniformSpace E] [UniformAddGroup E] [ContinuousSMul 𝕜 E]

theorem TotallyBounded.isVonNBounded {s : Set E} (hs : TotallyBounded s) :
    Bornology.IsVonNBounded 𝕜 s := by
  rw [totallyBounded_iff_subset_finite_iUnion_nhds_zero] at hs
  intro U hU
  have h : Filter.Tendsto (fun x : E × E => x.fst + x.snd) (𝓝 (0, 0)) (𝓝 ((0 : E) + (0 : E))) :=
    tendsto_add
  rw [add_zero] at h
  have h' := (nhds_basis_balanced 𝕜 E).prod (nhds_basis_balanced 𝕜 E)
  simp_rw [← nhds_prod_eq, id.def] at h'
  rcases h.basis_left h' U hU with ⟨x, hx, h''⟩
  rcases hs x.snd hx.2.1 with ⟨t, ht, hs⟩
  refine' Absorbs.mono_right _ hs
  rw [ht.absorbs_iUnion]
  have hx_fstsnd : x.fst + x.snd ⊆ U := by
    intro z hz
    rcases Set.mem_add.mp hz with ⟨z1, z2, hz1, hz2, hz⟩
    have hz' : (z1, z2) ∈ x.fst ×ˢ x.snd := ⟨hz1, hz2⟩
    simpa only [hz] using h'' hz'
  refine' fun y _ => Absorbs.mono_left _ hx_fstsnd
  rw [← Set.singleton_vadd, vadd_eq_add]
  exact (absorbent_nhds_zero hx.1.1).absorbs.add hx.2.2.absorbs_self
#align totally_bounded.is_vonN_bounded TotallyBounded.isVonNBounded

end UniformAddGroup

section VonNBornologyEqMetric

variable (𝕜 E) [NontriviallyNormedField 𝕜] [SeminormedAddCommGroup E] [NormedSpace 𝕜 E]

namespace NormedSpace

theorem isVonNBounded_ball (r : ℝ) : Bornology.IsVonNBounded 𝕜 (Metric.ball (0 : E) r) := by
  rw [Metric.nhds_basis_ball.isVonNBounded_basis_iff, ← ball_normSeminorm 𝕜 E]
  exact fun ε hε => (normSeminorm 𝕜 E).ball_zero_absorbs_ball_zero hε
#align normed_space.is_vonN_bounded_ball NormedSpace.isVonNBounded_ball

theorem isVonNBounded_closedBall (r : ℝ) :
    Bornology.IsVonNBounded 𝕜 (Metric.closedBall (0 : E) r) :=
  (isVonNBounded_ball 𝕜 E (r + 1)).subset (Metric.closedBall_subset_ball <| by linarith)
#align normed_space.is_vonN_bounded_closed_ball NormedSpace.isVonNBounded_closedBall

theorem isVonNBounded_iff (s : Set E) : Bornology.IsVonNBounded 𝕜 s ↔ Bornology.IsBounded s := by
  rw [← Metric.bounded_iff_isBounded, Metric.bounded_iff_subset_ball (0 : E)]
  constructor
  · intro h
    rcases h (Metric.ball_mem_nhds 0 zero_lt_one) with ⟨ρ, hρ, hρball⟩
    rcases NormedField.exists_lt_norm 𝕜 ρ with ⟨a, ha⟩
    specialize hρball a ha.le
    rw [← ball_normSeminorm 𝕜 E, Seminorm.smul_ball_zero (norm_pos_iff.1 <| hρ.trans ha),
      ball_normSeminorm, mul_one] at hρball
    exact ⟨‖a‖, hρball.trans Metric.ball_subset_closedBall⟩
  · exact fun ⟨C, hC⟩ => (isVonNBounded_closedBall 𝕜 E C).subset hC
#align normed_space.is_vonN_bounded_iff NormedSpace.isVonNBounded_iff

theorem isVonNBounded_iff' (s : Set E) :
    Bornology.IsVonNBounded 𝕜 s ↔ ∃ r : ℝ, ∀ (x : E) (_ : x ∈ s), ‖x‖ ≤ r := by
  rw [NormedSpace.isVonNBounded_iff, ← Metric.bounded_iff_isBounded, bounded_iff_forall_norm_le]
#align normed_space.is_vonN_bounded_iff' NormedSpace.isVonNBounded_iff'

theorem image_isVonNBounded_iff (f : E' → E) (s : Set E') :
    Bornology.IsVonNBounded 𝕜 (f '' s) ↔ ∃ r : ℝ, ∀ (x : E') (_ : x ∈ s), ‖f x‖ ≤ r := by
  simp_rw [isVonNBounded_iff', Set.ball_image_iff]
#align normed_space.image_is_vonN_bounded_iff NormedSpace.image_isVonNBounded_iff

/-- In a normed space, the von Neumann bornology (`Bornology.vonNBornology`) is equal to the
metric bornology. -/
theorem vonNBornology_eq : Bornology.vonNBornology 𝕜 E = PseudoMetricSpace.toBornology := by
  rw [Bornology.ext_iff_isBounded]
  intro s
  rw [Bornology.isBounded_iff_isVonNBounded]
  exact isVonNBounded_iff 𝕜 E s
#align normed_space.vonN_bornology_eq NormedSpace.vonNBornology_eq

theorem isBounded_iff_subset_smul_ball {s : Set E} :
    Bornology.IsBounded s ↔ ∃ a : 𝕜, s ⊆ a • Metric.ball (0 : E) 1 := by
  rw [← isVonNBounded_iff 𝕜]
  constructor
  · intro h
    rcases h (Metric.ball_mem_nhds 0 zero_lt_one) with ⟨ρ, _, hρball⟩
    rcases NormedField.exists_lt_norm 𝕜 ρ with ⟨a, ha⟩
    exact ⟨a, hρball a ha.le⟩
  · rintro ⟨a, ha⟩
    exact ((isVonNBounded_ball 𝕜 E 1).image (a • (1 : E →L[𝕜] E))).subset ha
#align normed_space.is_bounded_iff_subset_smul_ball NormedSpace.isBounded_iff_subset_smul_ball

theorem isBounded_iff_subset_smul_closedBall {s : Set E} :
    Bornology.IsBounded s ↔ ∃ a : 𝕜, s ⊆ a • Metric.closedBall (0 : E) 1 := by
  constructor
  · rw [isBounded_iff_subset_smul_ball 𝕜]
    exact Exists.imp fun a ha => ha.trans <| Set.smul_set_mono <| Metric.ball_subset_closedBall
  · rw [← isVonNBounded_iff 𝕜]
    rintro ⟨a, ha⟩
    exact ((isVonNBounded_closedBall 𝕜 E 1).image (a • (1 : E →L[𝕜] E))).subset ha
#align normed_space.is_bounded_iff_subset_smul_closed_ball NormedSpace.isBounded_iff_subset_smul_closedBall

end NormedSpace

end VonNBornologyEqMetric
```
