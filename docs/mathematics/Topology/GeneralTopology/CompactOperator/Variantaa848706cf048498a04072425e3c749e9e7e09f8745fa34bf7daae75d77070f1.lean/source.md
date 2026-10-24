# Complete source: GRWTSK.Topology.GeneralTopology.CompactOperator.Variantaa848706cf048498a04072425e3c749e9e7e09f8745fa34bf7daae75d77070f1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ad6f20323928ec80e6345c793fe419bff2da9f6c` · SHA-256 `aa848706cf048498a04072425e3c749e9e7e09f8745fa34bf7daae75d77070f1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Anatole Dedecker. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Anatole Dedecker
-/
import Mathlib.Analysis.LocallyConvex.Bounded
import Mathlib.Topology.Algebra.Module.StrongTopology

#align_import analysis.normed_space.compact_operator from "leanprover-community/mathlib"@"f0c8bf9245297a541f468be517f1bde6195105e9"

/-!
# Compact operators

In this file we define compact linear operators between two topological vector spaces (TVS).

## Main definitions

* `IsCompactOperator` : predicate for compact operators

## Main statements

* `isCompactOperator_iff_isCompact_closure_image_ball` : the usual characterization of
  compact operators from a normed space to a T2 TVS.
* `IsCompactOperator.comp_clm` : precomposing a compact operator by a continuous linear map gives
  a compact operator
* `IsCompactOperator.clm_comp` : postcomposing a compact operator by a continuous linear map
  gives a compact operator
* `IsCompactOperator.continuous` : compact operators are automatically continuous
* `isClosed_setOf_isCompactOperator` : the set of compact operators is closed for the operator
  norm

## Implementation details

We define `IsCompactOperator` as a predicate, because the space of compact operators inherits all
of its structure from the space of continuous linear maps (e.g we want to have the usual operator
norm on compact operators).

The two natural options then would be to make it a predicate over linear maps or continuous linear
maps. Instead we define it as a predicate over bare functions, although it really only makes sense
for linear functions, because Lean is really good at finding coercions to bare functions (whereas
coercing from continuous linear maps to linear maps often needs type ascriptions).

## References

* [N. Bourbaki, *Théories Spectrales*, Chapitre 3][bourbaki2023]

## Tags

Compact operator
-/


open Function Set Filter Bornology Metric Pointwise BigOperators Topology

/-- A compact operator between two topological vector spaces. This definition is usually
given as "there exists a neighborhood of zero whose image is contained in a compact set",
but we choose a definition which involves fewer existential quantifiers and replaces images
with preimages.

We prove the equivalence in `isCompactOperator_iff_exists_mem_nhds_image_subset_compact`. -/
def IsCompactOperator {M₁ M₂ : Type*} [Zero M₁] [TopologicalSpace M₁] [TopologicalSpace M₂]
    (f : M₁ → M₂) : Prop :=
  ∃ K, IsCompact K ∧ f ⁻¹' K ∈ (𝓝 0 : Filter M₁)
#align is_compact_operator IsCompactOperator

theorem isCompactOperator_zero {M₁ M₂ : Type*} [Zero M₁] [TopologicalSpace M₁]
    [TopologicalSpace M₂] [Zero M₂] : IsCompactOperator (0 : M₁ → M₂) :=
  ⟨{0}, isCompact_singleton, mem_of_superset univ_mem fun _ _ => rfl⟩
#align is_compact_operator_zero isCompactOperator_zero

section Characterizations

section

variable {R₁ R₂ : Type*} [Semiring R₁] [Semiring R₂] {σ₁₂ : R₁ →+* R₂} {M₁ M₂ : Type*}
  [TopologicalSpace M₁] [AddCommMonoid M₁] [TopologicalSpace M₂]

theorem isCompactOperator_iff_exists_mem_nhds_image_subset_compact (f : M₁ → M₂) :
    IsCompactOperator f ↔ ∃ V ∈ (𝓝 0 : Filter M₁), ∃ K : Set M₂, IsCompact K ∧ f '' V ⊆ K :=
  ⟨fun ⟨K, hK, hKf⟩ => ⟨f ⁻¹' K, hKf, K, hK, image_preimage_subset _ _⟩, fun ⟨_, hV, K, hK, hVK⟩ =>
    ⟨K, hK, mem_of_superset hV (image_subset_iff.mp hVK)⟩⟩
#align is_compact_operator_iff_exists_mem_nhds_image_subset_compact isCompactOperator_iff_exists_mem_nhds_image_subset_compact

theorem isCompactOperator_iff_exists_mem_nhds_isCompact_closure_image [T2Space M₂] (f : M₁ → M₂) :
    IsCompactOperator f ↔ ∃ V ∈ (𝓝 0 : Filter M₁), IsCompact (closure <| f '' V) := by
  rw [isCompactOperator_iff_exists_mem_nhds_image_subset_compact]
  exact
    ⟨fun ⟨V, hV, K, hK, hKV⟩ => ⟨V, hV, isCompact_closure_of_subset_compact hK hKV⟩,
      fun ⟨V, hV, hVc⟩ => ⟨V, hV, closure (f '' V), hVc, subset_closure⟩⟩
#align is_compact_operator_iff_exists_mem_nhds_is_compact_closure_image isCompactOperator_iff_exists_mem_nhds_isCompact_closure_image

end

section Bounded

variable {𝕜₁ 𝕜₂ : Type*} [NontriviallyNormedField 𝕜₁] [SeminormedRing 𝕜₂] {σ₁₂ : 𝕜₁ →+* 𝕜₂}
  {M₁ M₂ : Type*} [TopologicalSpace M₁] [AddCommMonoid M₁] [TopologicalSpace M₂] [AddCommMonoid M₂]
  [Module 𝕜₁ M₁] [Module 𝕜₂ M₂] [ContinuousConstSMul 𝕜₂ M₂]

theorem IsCompactOperator.image_subset_compact_of_isVonNBounded {f : M₁ →ₛₗ[σ₁₂] M₂}
    (hf : IsCompactOperator f) {S : Set M₁} (hS : IsVonNBounded 𝕜₁ S) :
    ∃ K : Set M₂, IsCompact K ∧ f '' S ⊆ K :=
  let ⟨K, hK, hKf⟩ := hf
  let ⟨r, hr, hrS⟩ := hS hKf
  let ⟨c, hc⟩ := NormedField.exists_lt_norm 𝕜₁ r
  let this := ne_zero_of_norm_ne_zero (hr.trans hc).ne.symm
  ⟨σ₁₂ c • K, hK.image <| continuous_id.const_smul (σ₁₂ c), by
    rw [image_subset_iff, preimage_smul_setₛₗ _ _ _ f this.isUnit]; exact hrS c hc.le⟩
set_option linter.uppercaseLean3 false in
#align is_compact_operator.image_subset_compact_of_vonN_bounded IsCompactOperator.image_subset_compact_of_isVonNBounded

theorem IsCompactOperator.isCompact_closure_image_of_isVonNBounded [T2Space M₂] {f : M₁ →ₛₗ[σ₁₂] M₂}
    (hf : IsCompactOperator f) {S : Set M₁} (hS : IsVonNBounded 𝕜₁ S) :
    IsCompact (closure <| f '' S) :=
  let ⟨_, hK, hKf⟩ := hf.image_subset_compact_of_isVonNBounded hS
  isCompact_closure_of_subset_compact hK hKf
set_option linter.uppercaseLean3 false in
#align is_compact_operator.is_compact_closure_image_of_vonN_bounded IsCompactOperator.isCompact_closure_image_of_isVonNBounded

end Bounded

section NormedSpace

variable {𝕜₁ 𝕜₂ : Type*} [NontriviallyNormedField 𝕜₁] [SeminormedRing 𝕜₂] {σ₁₂ : 𝕜₁ →+* 𝕜₂}
  {M₁ M₂ M₃ : Type*} [SeminormedAddCommGroup M₁] [TopologicalSpace M₂] [AddCommMonoid M₂]
  [NormedSpace 𝕜₁ M₁] [Module 𝕜₂ M₂]

theorem IsCompactOperator.image_subset_compact_of_bounded [ContinuousConstSMul 𝕜₂ M₂]
    {f : M₁ →ₛₗ[σ₁₂] M₂} (hf : IsCompactOperator f) {S : Set M₁} (hS : Metric.Bounded S) :
    ∃ K : Set M₂, IsCompact K ∧ f '' S ⊆ K :=
  hf.image_subset_compact_of_isVonNBounded
    (by rwa [NormedSpace.isVonNBounded_iff, ← Metric.bounded_iff_isBounded])
#align is_compact_operator.image_subset_compact_of_bounded IsCompactOperator.image_subset_compact_of_bounded

theorem IsCompactOperator.isCompact_closure_image_of_bounded [ContinuousConstSMul 𝕜₂ M₂]
    [T2Space M₂] {f : M₁ →ₛₗ[σ₁₂] M₂} (hf : IsCompactOperator f) {S : Set M₁}
    (hS : Metric.Bounded S) : IsCompact (closure <| f '' S) :=
  hf.isCompact_closure_image_of_isVonNBounded
    (by rwa [NormedSpace.isVonNBounded_iff, ← Metric.bounded_iff_isBounded])
#align is_compact_operator.is_compact_closure_image_of_bounded IsCompactOperator.isCompact_closure_image_of_bounded

theorem IsCompactOperator.image_ball_subset_compact [ContinuousConstSMul 𝕜₂ M₂] {f : M₁ →ₛₗ[σ₁₂] M₂}
    (hf : IsCompactOperator f) (r : ℝ) : ∃ K : Set M₂, IsCompact K ∧ f '' Metric.ball 0 r ⊆ K :=
  hf.image_subset_compact_of_isVonNBounded (NormedSpace.isVonNBounded_ball 𝕜₁ M₁ r)
#align is_compact_operator.image_ball_subset_compact IsCompactOperator.image_ball_subset_compact

theorem IsCompactOperator.image_closedBall_subset_compact [ContinuousConstSMul 𝕜₂ M₂]
    {f : M₁ →ₛₗ[σ₁₂] M₂} (hf : IsCompactOperator f) (r : ℝ) :
    ∃ K : Set M₂, IsCompact K ∧ f '' Metric.closedBall 0 r ⊆ K :=
  hf.image_subset_compact_of_isVonNBounded (NormedSpace.isVonNBounded_closedBall 𝕜₁ M₁ r)
#align is_compact_operator.image_closed_ball_subset_compact IsCompactOperator.image_closedBall_subset_compact

theorem IsCompactOperator.isCompact_closure_image_ball [ContinuousConstSMul 𝕜₂ M₂] [T2Space M₂]
    {f : M₁ →ₛₗ[σ₁₂] M₂} (hf : IsCompactOperator f) (r : ℝ) :
    IsCompact (closure <| f '' Metric.ball 0 r) :=
  hf.isCompact_closure_image_of_isVonNBounded (NormedSpace.isVonNBounded_ball 𝕜₁ M₁ r)
#align is_compact_operator.is_compact_closure_image_ball IsCompactOperator.isCompact_closure_image_ball

theorem IsCompactOperator.isCompact_closure_image_closedBall [ContinuousConstSMul 𝕜₂ M₂]
    [T2Space M₂] {f : M₁ →ₛₗ[σ₁₂] M₂} (hf : IsCompactOperator f) (r : ℝ) :
    IsCompact (closure <| f '' Metric.closedBall 0 r) :=
  hf.isCompact_closure_image_of_isVonNBounded (NormedSpace.isVonNBounded_closedBall 𝕜₁ M₁ r)
#align is_compact_operator.is_compact_closure_image_closed_ball IsCompactOperator.isCompact_closure_image_closedBall

theorem isCompactOperator_iff_image_ball_subset_compact [ContinuousConstSMul 𝕜₂ M₂]
    (f : M₁ →ₛₗ[σ₁₂] M₂) {r : ℝ} (hr : 0 < r) :
    IsCompactOperator f ↔ ∃ K : Set M₂, IsCompact K ∧ f '' Metric.ball 0 r ⊆ K :=
  ⟨fun hf => hf.image_ball_subset_compact r, fun ⟨K, hK, hKr⟩ =>
    (isCompactOperator_iff_exists_mem_nhds_image_subset_compact f).mpr
      ⟨Metric.ball 0 r, ball_mem_nhds _ hr, K, hK, hKr⟩⟩
#align is_compact_operator_iff_image_ball_subset_compact isCompactOperator_iff_image_ball_subset_compact

theorem isCompactOperator_iff_image_closedBall_subset_compact [ContinuousConstSMul 𝕜₂ M₂]
    (f : M₁ →ₛₗ[σ₁₂] M₂) {r : ℝ} (hr : 0 < r) :
    IsCompactOperator f ↔ ∃ K : Set M₂, IsCompact K ∧ f '' Metric.closedBall 0 r ⊆ K :=
  ⟨fun hf => hf.image_closedBall_subset_compact r, fun ⟨K, hK, hKr⟩ =>
    (isCompactOperator_iff_exists_mem_nhds_image_subset_compact f).mpr
      ⟨Metric.closedBall 0 r, closedBall_mem_nhds _ hr, K, hK, hKr⟩⟩
#align is_compact_operator_iff_image_closed_ball_subset_compact isCompactOperator_iff_image_closedBall_subset_compact

theorem isCompactOperator_iff_isCompact_closure_image_ball [ContinuousConstSMul 𝕜₂ M₂] [T2Space M₂]
    (f : M₁ →ₛₗ[σ₁₂] M₂) {r : ℝ} (hr : 0 < r) :
    IsCompactOperator f ↔ IsCompact (closure <| f '' Metric.ball 0 r) :=
  ⟨fun hf => hf.isCompact_closure_image_ball r, fun hf =>
    (isCompactOperator_iff_exists_mem_nhds_isCompact_closure_image f).mpr
      ⟨Metric.ball 0 r, ball_mem_nhds _ hr, hf⟩⟩
#align is_compact_operator_iff_is_compact_closure_image_ball isCompactOperator_iff_isCompact_closure_image_ball

theorem isCompactOperator_iff_isCompact_closure_image_closedBall [ContinuousConstSMul 𝕜₂ M₂]
    [T2Space M₂] (f : M₁ →ₛₗ[σ₁₂] M₂) {r : ℝ} (hr : 0 < r) :
    IsCompactOperator f ↔ IsCompact (closure <| f '' Metric.closedBall 0 r) :=
  ⟨fun hf => hf.isCompact_closure_image_closedBall r, fun hf =>
    (isCompactOperator_iff_exists_mem_nhds_isCompact_closure_image f).mpr
      ⟨Metric.closedBall 0 r, closedBall_mem_nhds _ hr, hf⟩⟩
#align is_compact_operator_iff_is_compact_closure_image_closed_ball isCompactOperator_iff_isCompact_closure_image_closedBall

end NormedSpace

end Characterizations

section Operations

variable {R₁ R₂ R₃ R₄ : Type*} [Semiring R₁] [Semiring R₂] [CommSemiring R₃] [CommSemiring R₄]
  {σ₁₂ : R₁ →+* R₂} {σ₁₄ : R₁ →+* R₄} {σ₃₄ : R₃ →+* R₄} {M₁ M₂ M₃ M₄ : Type*} [TopologicalSpace M₁]
  [AddCommMonoid M₁] [TopologicalSpace M₂] [AddCommMonoid M₂] [TopologicalSpace M₃]
  [AddCommGroup M₃] [TopologicalSpace M₄] [AddCommGroup M₄]

theorem IsCompactOperator.smul {S : Type*} [Monoid S] [DistribMulAction S M₂]
    [ContinuousConstSMul S M₂] {f : M₁ → M₂} (hf : IsCompactOperator f) (c : S) :
    IsCompactOperator (c • f) :=
  let ⟨K, hK, hKf⟩ := hf
  ⟨c • K, hK.image <| continuous_id.const_smul c,
    mem_of_superset hKf fun _ hx => smul_mem_smul_set hx⟩
#align is_compact_operator.smul IsCompactOperator.smul

theorem IsCompactOperator.add [ContinuousAdd M₂] {f g : M₁ → M₂} (hf : IsCompactOperator f)
    (hg : IsCompactOperator g) : IsCompactOperator (f + g) :=
  let ⟨A, hA, hAf⟩ := hf
  let ⟨B, hB, hBg⟩ := hg
  ⟨A + B, hA.add hB,
    mem_of_superset (inter_mem hAf hBg) fun _ ⟨hxA, hxB⟩ => Set.add_mem_add hxA hxB⟩
#align is_compact_operator.add IsCompactOperator.add

theorem IsCompactOperator.neg [ContinuousNeg M₄] {f : M₁ → M₄} (hf : IsCompactOperator f) :
    IsCompactOperator (-f) :=
  let ⟨K, hK, hKf⟩ := hf
  ⟨-K, hK.neg, mem_of_superset hKf fun x (hx : f x ∈ K) => Set.neg_mem_neg.mpr hx⟩
#align is_compact_operator.neg IsCompactOperator.neg

theorem IsCompactOperator.sub [TopologicalAddGroup M₄] {f g : M₁ → M₄} (hf : IsCompactOperator f)
    (hg : IsCompactOperator g) : IsCompactOperator (f - g) := by
  rw [sub_eq_add_neg]; exact hf.add hg.neg
#align is_compact_operator.sub IsCompactOperator.sub

variable (σ₁₄ M₁ M₄)

/-- The submodule of compact continuous linear maps. -/
def compactOperator [Module R₁ M₁] [Module R₄ M₄] [ContinuousConstSMul R₄ M₄]
    [TopologicalAddGroup M₄] : Submodule R₄ (M₁ →SL[σ₁₄] M₄) where
  carrier := { f | IsCompactOperator f }
  add_mem' hf hg := hf.add hg
  zero_mem' := isCompactOperator_zero
  smul_mem' c _ hf := hf.smul c
#align compact_operator compactOperator

end Operations

section Comp

variable {R₁ R₂ R₃ : Type*} [Semiring R₁] [Semiring R₂] [Semiring R₃] {σ₁₂ : R₁ →+* R₂}
  {σ₂₃ : R₂ →+* R₃} {M₁ M₂ M₃ : Type*} [TopologicalSpace M₁] [TopologicalSpace M₂]
  [TopologicalSpace M₃] [AddCommMonoid M₁] [Module R₁ M₁]

theorem IsCompactOperator.comp_clm [AddCommMonoid M₂] [Module R₂ M₂] {f : M₂ → M₃}
    (hf : IsCompactOperator f) (g : M₁ →SL[σ₁₂] M₂) : IsCompactOperator (f ∘ g) := by
  have := g.continuous.tendsto 0
  rw [map_zero] at this
  rcases hf with ⟨K, hK, hKf⟩
  exact ⟨K, hK, this hKf⟩
#align is_compact_operator.comp_clm IsCompactOperator.comp_clm

theorem IsCompactOperator.continuous_comp {f : M₁ → M₂} (hf : IsCompactOperator f) {g : M₂ → M₃}
    (hg : Continuous g) : IsCompactOperator (g ∘ f) := by
  rcases hf with ⟨K, hK, hKf⟩
  refine' ⟨g '' K, hK.image hg, mem_of_superset hKf _⟩
  rw [preimage_comp]
  exact preimage_mono (subset_preimage_image _ _)
#align is_compact_operator.continuous_comp IsCompactOperator.continuous_comp

theorem IsCompactOperator.clm_comp [AddCommMonoid M₂] [Module R₂ M₂] [AddCommMonoid M₃]
    [Module R₃ M₃] {f : M₁ → M₂} (hf : IsCompactOperator f) (g : M₂ →SL[σ₂₃] M₃) :
    IsCompactOperator (g ∘ f) :=
  hf.continuous_comp g.continuous
#align is_compact_operator.clm_comp IsCompactOperator.clm_comp

end Comp

section CodRestrict

variable {R₁ R₂ : Type*} [Semiring R₁] [Semiring R₂] {σ₁₂ : R₁ →+* R₂} {M₁ M₂ : Type*}
  [TopologicalSpace M₁] [TopologicalSpace M₂] [AddCommMonoid M₁] [AddCommMonoid M₂] [Module R₁ M₁]
  [Module R₂ M₂]

theorem IsCompactOperator.codRestrict {f : M₁ → M₂} (hf : IsCompactOperator f) {V : Submodule R₂ M₂}
    (hV : ∀ x, f x ∈ V) (h_closed : IsClosed (V : Set M₂)) :
    IsCompactOperator (Set.codRestrict f V hV) :=
  let ⟨_, hK, hKf⟩ := hf
  ⟨_, (closedEmbedding_subtype_val h_closed).isCompact_preimage hK, hKf⟩
#align is_compact_operator.cod_restrict IsCompactOperator.codRestrict

end CodRestrict

section Restrict

variable {R₁ R₂ R₃ : Type*} [Semiring R₁] [Semiring R₂] [Semiring R₃] {σ₁₂ : R₁ →+* R₂}
  {σ₂₃ : R₂ →+* R₃} {M₁ M₂ M₃ : Type*} [TopologicalSpace M₁] [UniformSpace M₂]
  [TopologicalSpace M₃] [AddCommMonoid M₁] [AddCommMonoid M₂] [AddCommMonoid M₃] [Module R₁ M₁]
  [Module R₂ M₂] [Module R₃ M₃]

/-- If a compact operator preserves a closed submodule, its restriction to that submodule is
compact.

Note that, following mathlib's convention in linear algebra, `restrict` designates the restriction
of an endomorphism `f : E →ₗ E` to an endomorphism `f' : ↥V →ₗ ↥V`. To prove that the restriction
`f' : ↥U →ₛₗ ↥V` of a compact operator `f : E →ₛₗ F` is compact, apply
`IsCompactOperator.codRestrict` to `f ∘ U.subtypeL`, which is compact by
`IsCompactOperator.comp_clm`. -/
theorem IsCompactOperator.restrict {f : M₁ →ₗ[R₁] M₁} (hf : IsCompactOperator f)
    {V : Submodule R₁ M₁} (hV : ∀ v ∈ V, f v ∈ V) (h_closed : IsClosed (V : Set M₁)) :
    IsCompactOperator (f.restrict hV) :=
  (hf.comp_clm V.subtypeL).codRestrict (SetLike.forall.2 hV) h_closed
#align is_compact_operator.restrict IsCompactOperator.restrict

/-- If a compact operator preserves a complete submodule, its restriction to that submodule is
compact.

Note that, following mathlib's convention in linear algebra, `restrict` designates the restriction
of an endomorphism `f : E →ₗ E` to an endomorphism `f' : ↥V →ₗ ↥V`. To prove that the restriction
`f' : ↥U →ₛₗ ↥V` of a compact operator `f : E →ₛₗ F` is compact, apply
`IsCompactOperator.codRestrict` to `f ∘ U.subtypeL`, which is compact by
`IsCompactOperator.comp_clm`. -/
theorem IsCompactOperator.restrict' [SeparatedSpace M₂] {f : M₂ →ₗ[R₂] M₂}
    (hf : IsCompactOperator f) {V : Submodule R₂ M₂} (hV : ∀ v ∈ V, f v ∈ V)
    [hcomplete : CompleteSpace V] : IsCompactOperator (f.restrict hV) :=
  hf.restrict hV (completeSpace_coe_iff_isComplete.mp hcomplete).isClosed
#align is_compact_operator.restrict' IsCompactOperator.restrict'

end Restrict

section Continuous

variable {𝕜₁ 𝕜₂ : Type*} [NontriviallyNormedField 𝕜₁] [NontriviallyNormedField 𝕜₂]
  {σ₁₂ : 𝕜₁ →+* 𝕜₂} [RingHomIsometric σ₁₂] {M₁ M₂ : Type*} [TopologicalSpace M₁] [AddCommGroup M₁]
  [TopologicalSpace M₂] [AddCommGroup M₂] [Module 𝕜₁ M₁] [Module 𝕜₂ M₂] [TopologicalAddGroup M₁]
  [ContinuousConstSMul 𝕜₁ M₁] [TopologicalAddGroup M₂] [ContinuousSMul 𝕜₂ M₂]

@[continuity]
theorem IsCompactOperator.continuous {f : M₁ →ₛₗ[σ₁₂] M₂} (hf : IsCompactOperator f) :
    Continuous f := by
  letI : UniformSpace M₂ := TopologicalAddGroup.toUniformSpace _
  haveI : UniformAddGroup M₂ := comm_topologicalAddGroup_is_uniform
  -- Since `f` is linear, we only need to show that it is continuous at zero.
  -- Let `U` be a neighborhood of `0` in `M₂`.
  refine' continuous_of_continuousAt_zero f fun U hU => _
  rw [map_zero] at hU
  -- The compactness of `f` gives us a compact set `K : Set M₂` such that `f ⁻¹' K` is a
  -- neighborhood of `0` in `M₁`.
  rcases hf with ⟨K, hK, hKf⟩
  -- But any compact set is totally bounded, hence Von-Neumann bounded. Thus, `K` absorbs `U`.
  -- This gives `r > 0` such that `∀ a : 𝕜₂, r ≤ ‖a‖ → K ⊆ a • U`.
  rcases hK.totallyBounded.isVonNBounded 𝕜₂ hU with ⟨r, hr, hrU⟩
  -- Choose `c : 𝕜₂` with `r < ‖c‖`.
  rcases NormedField.exists_lt_norm 𝕜₁ r with ⟨c, hc⟩
  have hcnz : c ≠ 0 := ne_zero_of_norm_ne_zero (hr.trans hc).ne.symm
  -- We have `f ⁻¹' ((σ₁₂ c⁻¹) • K) = c⁻¹ • f ⁻¹' K ∈ 𝓝 0`. Thus, showing that
  -- `(σ₁₂ c⁻¹) • K ⊆ U` is enough to deduce that `f ⁻¹' U ∈ 𝓝 0`.
  suffices (σ₁₂ <| c⁻¹) • K ⊆ U by
    refine' mem_of_superset _ this
    have : IsUnit c⁻¹ := hcnz.isUnit.inv
    rwa [mem_map, preimage_smul_setₛₗ _ _ _ f this, set_smul_mem_nhds_zero_iff (inv_ne_zero hcnz)]
  -- Since `σ₁₂ c⁻¹` = `(σ₁₂ c)⁻¹`, we have to prove that `K ⊆ σ₁₂ c • U`.
  rw [map_inv₀, ← subset_set_smul_iff₀ ((map_ne_zero σ₁₂).mpr hcnz)]
  -- But `σ₁₂` is isometric, so `‖σ₁₂ c‖ = ‖c‖ > r`, which concludes the argument since
  -- `∀ a : 𝕜₂, r ≤ ‖a‖ → K ⊆ a • U`.
  refine' hrU (σ₁₂ c) _
  rw [RingHomIsometric.is_iso]
  exact hc.le
#align is_compact_operator.continuous IsCompactOperator.continuous

/-- Upgrade a compact `LinearMap` to a `ContinuousLinearMap`. -/
def ContinuousLinearMap.mkOfIsCompactOperator {f : M₁ →ₛₗ[σ₁₂] M₂} (hf : IsCompactOperator f) :
    M₁ →SL[σ₁₂] M₂ :=
  ⟨f, hf.continuous⟩
#align continuous_linear_map.mk_of_is_compact_operator ContinuousLinearMap.mkOfIsCompactOperator

@[simp]
theorem ContinuousLinearMap.mkOfIsCompactOperator_to_linearMap {f : M₁ →ₛₗ[σ₁₂] M₂}
    (hf : IsCompactOperator f) :
    (ContinuousLinearMap.mkOfIsCompactOperator hf : M₁ →ₛₗ[σ₁₂] M₂) = f :=
  rfl
#align continuous_linear_map.mk_of_is_compact_operator_to_linear_map ContinuousLinearMap.mkOfIsCompactOperator_to_linearMap

@[simp]
theorem ContinuousLinearMap.coe_mkOfIsCompactOperator {f : M₁ →ₛₗ[σ₁₂] M₂}
    (hf : IsCompactOperator f) : (ContinuousLinearMap.mkOfIsCompactOperator hf : M₁ → M₂) = f :=
  rfl
#align continuous_linear_map.coe_mk_of_is_compact_operator ContinuousLinearMap.coe_mkOfIsCompactOperator

theorem ContinuousLinearMap.mkOfIsCompactOperator_mem_compactOperator {f : M₁ →ₛₗ[σ₁₂] M₂}
    (hf : IsCompactOperator f) :
    ContinuousLinearMap.mkOfIsCompactOperator hf ∈ compactOperator σ₁₂ M₁ M₂ :=
  hf
#align continuous_linear_map.mk_of_is_compact_operator_mem_compact_operator ContinuousLinearMap.mkOfIsCompactOperator_mem_compactOperator

end Continuous

/-- The set of compact operators from a normed space to a complete topological vector space is
closed. -/
theorem isClosed_setOf_isCompactOperator {𝕜₁ 𝕜₂ : Type*} [NontriviallyNormedField 𝕜₁]
    [NormedField 𝕜₂] {σ₁₂ : 𝕜₁ →+* 𝕜₂} {M₁ M₂ : Type*} [SeminormedAddCommGroup M₁]
    [AddCommGroup M₂] [NormedSpace 𝕜₁ M₁] [Module 𝕜₂ M₂] [UniformSpace M₂] [UniformAddGroup M₂]
    [ContinuousConstSMul 𝕜₂ M₂] [T2Space M₂] [CompleteSpace M₂] :
    IsClosed { f : M₁ →SL[σ₁₂] M₂ | IsCompactOperator f } := by
  refine' isClosed_of_closure_subset _
  rintro u hu
  rw [mem_closure_iff_nhds_zero] at hu
  suffices TotallyBounded (u '' Metric.closedBall 0 1) by
    change IsCompactOperator (u : M₁ →ₛₗ[σ₁₂] M₂)
    rw [isCompactOperator_iff_isCompact_closure_image_closedBall (u : M₁ →ₛₗ[σ₁₂] M₂) zero_lt_one]
    exact isCompact_of_totallyBounded_isClosed this.closure isClosed_closure
  rw [totallyBounded_iff_subset_finite_iUnion_nhds_zero]
  intro U hU
  rcases exists_nhds_zero_half hU with ⟨V, hV, hVU⟩
  let SV : Set M₁ × Set M₂ := ⟨closedBall 0 1, -V⟩
  rcases hu { f | ∀ x ∈ SV.1, f x ∈ SV.2 }
      (ContinuousLinearMap.hasBasis_nhds_zero.mem_of_mem
        ⟨NormedSpace.isVonNBounded_closedBall _ _ _, neg_mem_nhds_zero M₂ hV⟩) with
    ⟨v, hv, huv⟩
  rcases totallyBounded_iff_subset_finite_iUnion_nhds_zero.mp
      (hv.isCompact_closure_image_closedBall 1).totallyBounded V hV with
    ⟨T, hT, hTv⟩
  have hTv : v '' closedBall 0 1 ⊆ _ := subset_closure.trans hTv
  refine' ⟨T, hT, _⟩
  rw [image_subset_iff, preimage_iUnion₂] at hTv ⊢
  intro x hx
  specialize hTv hx
  rw [mem_iUnion₂] at hTv ⊢
  rcases hTv with ⟨t, ht, htx⟩
  refine' ⟨t, ht, _⟩
  rw [mem_preimage, mem_vadd_set_iff_neg_vadd_mem, vadd_eq_add, neg_add_eq_sub] at htx ⊢
  convert hVU _ htx _ (huv x hx) using 1
  rw [ContinuousLinearMap.sub_apply]
  abel
#align is_closed_set_of_is_compact_operator isClosed_setOf_isCompactOperator

theorem compactOperator_topologicalClosure {𝕜₁ 𝕜₂ : Type*} [NontriviallyNormedField 𝕜₁]
    [NormedField 𝕜₂] {σ₁₂ : 𝕜₁ →+* 𝕜₂} {M₁ M₂ : Type*} [SeminormedAddCommGroup M₁]
    [AddCommGroup M₂] [NormedSpace 𝕜₁ M₁] [Module 𝕜₂ M₂] [UniformSpace M₂] [UniformAddGroup M₂]
    [ContinuousConstSMul 𝕜₂ M₂] [T2Space M₂] [CompleteSpace M₂]
    [ContinuousSMul 𝕜₂ (M₁ →SL[σ₁₂] M₂)] :
    (compactOperator σ₁₂ M₁ M₂).topologicalClosure = compactOperator σ₁₂ M₁ M₂ :=
  SetLike.ext' isClosed_setOf_isCompactOperator.closure_eq
#align compact_operator_topological_closure compactOperator_topologicalClosure

theorem isCompactOperator_of_tendsto {ι 𝕜₁ 𝕜₂ : Type*} [NontriviallyNormedField 𝕜₁]
    [NormedField 𝕜₂] {σ₁₂ : 𝕜₁ →+* 𝕜₂} {M₁ M₂ : Type*} [SeminormedAddCommGroup M₁]
    [AddCommGroup M₂] [NormedSpace 𝕜₁ M₁] [Module 𝕜₂ M₂] [UniformSpace M₂] [UniformAddGroup M₂]
    [ContinuousConstSMul 𝕜₂ M₂] [T2Space M₂] [CompleteSpace M₂] {l : Filter ι} [l.NeBot]
    {F : ι → M₁ →SL[σ₁₂] M₂} {f : M₁ →SL[σ₁₂] M₂} (hf : Tendsto F l (𝓝 f))
    (hF : ∀ᶠ i in l, IsCompactOperator (F i)) : IsCompactOperator f :=
  isClosed_setOf_isCompactOperator.mem_of_tendsto hf hF
#align is_compact_operator_of_tendsto isCompactOperator_of_tendsto
```
