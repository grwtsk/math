# Complete source: GRWTSK.Topology.GeneralTopology.UniformSpaces.Equicontinuity.Variant12cdf224eb70ecf53b7064bd75e5d998ca22ec240535e918014972b5c9714bfb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `60a2468370e4f1a1f108a196c7cbfd52a43d4cb0` · SHA-256 `12cdf224eb70ecf53b7064bd75e5d998ca22ec240535e918014972b5c9714bfb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Anatole Dedecker. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Anatole Dedecker
-/
import Mathlib.Topology.UniformSpace.UniformConvergenceTopology

#align_import topology.uniform_space.equicontinuity from "leanprover-community/mathlib"@"f2ce6086713c78a7f880485f7917ea547a215982"

/-!
# Equicontinuity of a family of functions

Let `X` be a topological space and `α` a `UniformSpace`. A family of functions `F : ι → X → α`
is said to be *equicontinuous at a point `x₀ : X`* when, for any entourage `U` in `α`, there is a
neighborhood `V` of `x₀` such that, for all `x ∈ V`, and *for all `i`*, `F i x` is `U`-close to
`F i x₀`. In other words, one has `∀ U ∈ 𝓤 α, ∀ᶠ x in 𝓝 x₀, ∀ i, (F i x₀, F i x) ∈ U`.
For maps between metric spaces, this corresponds to
`∀ ε > 0, ∃ δ > 0, ∀ x, ∀ i, dist x₀ x < δ → dist (F i x₀) (F i x) < ε`.

`F` is said to be *equicontinuous* if it is equicontinuous at each point.

A closely related concept is that of ***uniform*** *equicontinuity* of a family of functions
`F : ι → β → α` between uniform spaces, which means that, for any entourage `U` in `α`, there is an
entourage `V` in `β` such that, if `x` and `y` are `V`-close, then *for all `i`*, `F i x` and
`F i y` are `U`-close. In other words, one has
`∀ U ∈ 𝓤 α, ∀ᶠ xy in 𝓤 β, ∀ i, (F i xy.1, F i xy.2) ∈ U`.
For maps between metric spaces, this corresponds to
`∀ ε > 0, ∃ δ > 0, ∀ x y, ∀ i, dist x y < δ → dist (F i x₀) (F i x) < ε`.

## Main definitions

* `EquicontinuousAt`: equicontinuity of a family of functions at a point
* `Equicontinuous`: equicontinuity of a family of functions on the whole domain
* `UniformEquicontinuous`: uniform equicontinuity of a family of functions on the whole domain

## Main statements

* `equicontinuous_iff_continuous`: equicontinuity can be expressed as a simple continuity
  condition between well-chosen function spaces. This is really useful for building up the theory.
* `Equicontinuous.closure`: if a set of functions is equicontinuous, its closure
  *for the topology of uniform convergence* is also equicontinuous.

## Notations

Throughout this file, we use :
- `ι`, `κ` for indexing types
- `X`, `Y`, `Z` for topological spaces
- `α`, `β`, `γ` for uniform spaces

## Implementation details

We choose to express equicontinuity as a properties of indexed families of functions rather
than sets of functions for the following reasons:
- it is really easy to express equicontinuity of `H : Set (X → α)` using our setup: it is just
  equicontinuity of the family `(↑) : ↥H → (X → α)`. On the other hand, going the other way around
  would require working with the range of the family, which is always annoying because it
  introduces useless existentials.
- in most applications, one doesn't work with bare functions but with a more specific hom type
  `hom`. Equicontinuity of a set `H : Set hom` would then have to be expressed as equicontinuity
  of `coe_fn '' H`, which is super annoying to work with. This is much simpler with families,
  because equicontinuity of a family `𝓕 : ι → hom` would simply be expressed as equicontinuity
  of `coe_fn ∘ 𝓕`, which doesn't introduce any nasty existentials.

To simplify statements, we do provide abbreviations `Set.EquicontinuousAt`, `Set.Equicontinuous`
and `Set.UniformEquicontinuous` asserting the corresponding fact about the family
`(↑) : ↥H → (X → α)` where `H : Set (X → α)`. Note however that these won't work for sets of hom
types, and in that case one should go back to the family definition rather than using `Set.image`.

Since we have no use case for it yet, we don't introduce any relative version
(i.e no `EquicontinuousWithinAt` or `EquicontinuousOn`), but this is more of a conservative
position than a design decision, so anyone needing relative versions should feel free to add them,
and that should hopefully be a straightforward task.

## References

* [N. Bourbaki, *General Topology, Chapter X*][bourbaki1966]

## Tags

equicontinuity, uniform convergence, ascoli
-/


section

open UniformSpace Filter Set Uniformity Topology UniformConvergence

variable {ι κ X Y Z α β γ 𝓕 : Type*} [TopologicalSpace X] [TopologicalSpace Y] [TopologicalSpace Z]
  [UniformSpace α] [UniformSpace β] [UniformSpace γ]

/-- A family `F : ι → X → α` of functions from a topological space to a uniform space is
*equicontinuous at `x₀ : X`* if, for all entourage `U ∈ 𝓤 α`, there is a neighborhood `V` of `x₀`
such that, for all `x ∈ V` and for all `i : ι`, `F i x` is `U`-close to `F i x₀`. -/
def EquicontinuousAt (F : ι → X → α) (x₀ : X) : Prop :=
  ∀ U ∈ 𝓤 α, ∀ᶠ x in 𝓝 x₀, ∀ i, (F i x₀, F i x) ∈ U
#align equicontinuous_at EquicontinuousAt

/-- We say that a set `H : Set (X → α)` of functions is equicontinuous at a point if the family
`(↑) : ↥H → (X → α)` is equicontinuous at that point. -/
protected abbrev Set.EquicontinuousAt (H : Set <| X → α) (x₀ : X) : Prop :=
  EquicontinuousAt ((↑) : H → X → α) x₀
#align set.equicontinuous_at Set.EquicontinuousAt

/-- A family `F : ι → X → α` of functions from a topological space to a uniform space is
*equicontinuous* on all of `X` if it is equicontinuous at each point of `X`. -/
def Equicontinuous (F : ι → X → α) : Prop :=
  ∀ x₀, EquicontinuousAt F x₀
#align equicontinuous Equicontinuous

/-- We say that a set `H : Set (X → α)` of functions is equicontinuous if the family
`(↑) : ↥H → (X → α)` is equicontinuous. -/
protected abbrev Set.Equicontinuous (H : Set <| X → α) : Prop :=
  Equicontinuous ((↑) : H → X → α)
#align set.equicontinuous Set.Equicontinuous

/-- A family `F : ι → β → α` of functions between uniform spaces is *uniformly equicontinuous* if,
for all entourage `U ∈ 𝓤 α`, there is an entourage `V ∈ 𝓤 β` such that, whenever `x` and `y` are
`V`-close, we have that, *for all `i : ι`*, `F i x` is `U`-close to `F i x₀`. -/
def UniformEquicontinuous (F : ι → β → α) : Prop :=
  ∀ U ∈ 𝓤 α, ∀ᶠ xy : β × β in 𝓤 β, ∀ i, (F i xy.1, F i xy.2) ∈ U
#align uniform_equicontinuous UniformEquicontinuous

/-- We say that a set `H : Set (X → α)` of functions is uniformly equicontinuous if the family
`(↑) : ↥H → (X → α)` is uniformly equicontinuous. -/
protected abbrev Set.UniformEquicontinuous (H : Set <| β → α) : Prop :=
  UniformEquicontinuous ((↑) : H → β → α)
#align set.uniform_equicontinuous Set.UniformEquicontinuous

lemma equicontinuousAt_empty [h : IsEmpty ι] (F : ι → X → α) (x₀ : X) :
    EquicontinuousAt F x₀ :=
  fun _ _ ↦ eventually_of_forall (fun _ ↦ h.elim)

lemma equicontinuous_empty [IsEmpty ι] (F : ι → X → α) :
    Equicontinuous F :=
  equicontinuousAt_empty F

lemma uniformEquicontinuous_empty [h : IsEmpty ι] (F : ι → β → α) :
    UniformEquicontinuous F :=
  fun _ _ ↦ eventually_of_forall (fun _ ↦ h.elim)

/-- Reformulation of equicontinuity at `x₀` comparing two variables near `x₀` instead of comparing
only one with `x₀`. -/
theorem equicontinuousAt_iff_pair {F : ι → X → α} {x₀ : X} :
    EquicontinuousAt F x₀ ↔
      ∀ U ∈ 𝓤 α, ∃ V ∈ 𝓝 x₀, ∀ x ∈ V, ∀ y ∈ V, ∀ i, (F i x, F i y) ∈ U := by
  constructor <;> intro H U hU
  · rcases comp_symm_mem_uniformity_sets hU with ⟨V, hV, hVsymm, hVU⟩
    refine' ⟨_, H V hV, fun x hx y hy i => hVU (prod_mk_mem_compRel _ (hy i))⟩
    exact hVsymm.mk_mem_comm.mp (hx i)
  · rcases H U hU with ⟨V, hV, hVU⟩
    filter_upwards [hV]using fun x hx i => hVU x₀ (mem_of_mem_nhds hV) x hx i
#align equicontinuous_at_iff_pair equicontinuousAt_iff_pair

/-- Uniform equicontinuity implies equicontinuity. -/
theorem UniformEquicontinuous.equicontinuous {F : ι → β → α} (h : UniformEquicontinuous F) :
    Equicontinuous F := fun x₀ U hU =>
  mem_of_superset (ball_mem_nhds x₀ (h U hU)) fun _ hx i => hx i
#align uniform_equicontinuous.equicontinuous UniformEquicontinuous.equicontinuous

/-- Each function of a family equicontinuous at `x₀` is continuous at `x₀`. -/
theorem EquicontinuousAt.continuousAt {F : ι → X → α} {x₀ : X} (h : EquicontinuousAt F x₀) (i : ι) :
    ContinuousAt (F i) x₀ := by
  intro U hU
  rw [UniformSpace.mem_nhds_iff] at hU
  rcases hU with ⟨V, hV₁, hV₂⟩
  exact mem_map.mpr (mem_of_superset (h V hV₁) fun x hx => hV₂ (hx i))
#align equicontinuous_at.continuous_at EquicontinuousAt.continuousAt

protected theorem Set.EquicontinuousAt.continuousAt_of_mem {H : Set <| X → α} {x₀ : X}
    (h : H.EquicontinuousAt x₀) {f : X → α} (hf : f ∈ H) : ContinuousAt f x₀ :=
  h.continuousAt ⟨f, hf⟩
#align set.equicontinuous_at.continuous_at_of_mem Set.EquicontinuousAt.continuousAt_of_mem

/-- Each function of an equicontinuous family is continuous. -/
theorem Equicontinuous.continuous {F : ι → X → α} (h : Equicontinuous F) (i : ι) :
    Continuous (F i) :=
  continuous_iff_continuousAt.mpr fun x => (h x).continuousAt i
#align equicontinuous.continuous Equicontinuous.continuous

protected theorem Set.Equicontinuous.continuous_of_mem {H : Set <| X → α} (h : H.Equicontinuous)
    {f : X → α} (hf : f ∈ H) : Continuous f :=
  h.continuous ⟨f, hf⟩
#align set.equicontinuous.continuous_of_mem Set.Equicontinuous.continuous_of_mem

/-- Each function of a uniformly equicontinuous family is uniformly continuous. -/
theorem UniformEquicontinuous.uniformContinuous {F : ι → β → α} (h : UniformEquicontinuous F)
    (i : ι) : UniformContinuous (F i) := fun U hU =>
  mem_map.mpr (mem_of_superset (h U hU) fun _ hxy => hxy i)
#align uniform_equicontinuous.uniform_continuous UniformEquicontinuous.uniformContinuous

protected theorem Set.UniformEquicontinuous.uniformContinuous_of_mem {H : Set <| β → α}
    (h : H.UniformEquicontinuous) {f : β → α} (hf : f ∈ H) : UniformContinuous f :=
  h.uniformContinuous ⟨f, hf⟩
#align set.uniform_equicontinuous.uniform_continuous_of_mem Set.UniformEquicontinuous.uniformContinuous_of_mem

/-- Taking sub-families preserves equicontinuity at a point. -/
theorem EquicontinuousAt.comp {F : ι → X → α} {x₀ : X} (h : EquicontinuousAt F x₀) (u : κ → ι) :
    EquicontinuousAt (F ∘ u) x₀ := fun U hU => (h U hU).mono fun _ H k => H (u k)
#align equicontinuous_at.comp EquicontinuousAt.comp

protected theorem Set.EquicontinuousAt.mono {H H' : Set <| X → α} {x₀ : X}
    (h : H.EquicontinuousAt x₀) (hH : H' ⊆ H) : H'.EquicontinuousAt x₀ :=
  h.comp (inclusion hH)
#align set.equicontinuous_at.mono Set.EquicontinuousAt.mono

/-- Taking sub-families preserves equicontinuity. -/
theorem Equicontinuous.comp {F : ι → X → α} (h : Equicontinuous F) (u : κ → ι) :
    Equicontinuous (F ∘ u) := fun x => (h x).comp u
#align equicontinuous.comp Equicontinuous.comp

protected theorem Set.Equicontinuous.mono {H H' : Set <| X → α} (h : H.Equicontinuous)
    (hH : H' ⊆ H) : H'.Equicontinuous :=
  h.comp (inclusion hH)
#align set.equicontinuous.mono Set.Equicontinuous.mono

/-- Taking sub-families preserves uniform equicontinuity. -/
theorem UniformEquicontinuous.comp {F : ι → β → α} (h : UniformEquicontinuous F) (u : κ → ι) :
    UniformEquicontinuous (F ∘ u) := fun U hU => (h U hU).mono fun _ H k => H (u k)
#align uniform_equicontinuous.comp UniformEquicontinuous.comp

protected theorem Set.UniformEquicontinuous.mono {H H' : Set <| β → α} (h : H.UniformEquicontinuous)
    (hH : H' ⊆ H) : H'.UniformEquicontinuous :=
  h.comp (inclusion hH)
#align set.uniform_equicontinuous.mono Set.UniformEquicontinuous.mono

/-- A family `𝓕 : ι → X → α` is equicontinuous at `x₀` iff `range 𝓕` is equicontinuous at `x₀`,
i.e the family `(↑) : range F → X → α` is equicontinuous at `x₀`. -/
theorem equicontinuousAt_iff_range {F : ι → X → α} {x₀ : X} :
    EquicontinuousAt F x₀ ↔ EquicontinuousAt ((↑) : range F → X → α) x₀ :=
  ⟨fun h => by rw [← comp_rangeSplitting F]; exact h.comp _,
   fun h => h.comp (rangeFactorization F)⟩
#align equicontinuous_at_iff_range equicontinuousAt_iff_range

/-- A family `𝓕 : ι → X → α` is equicontinuous iff `range 𝓕` is equicontinuous,
i.e the family `(↑) : range F → X → α` is equicontinuous. -/
theorem equicontinuous_iff_range {F : ι → X → α} :
    Equicontinuous F ↔ Equicontinuous ((↑) : range F → X → α) :=
  forall_congr' fun _ => equicontinuousAt_iff_range
#align equicontinuous_iff_range equicontinuous_iff_range

/-- A family `𝓕 : ι → β → α` is uniformly equicontinuous iff `range 𝓕` is uniformly equicontinuous,
i.e the family `(↑) : range F → β → α` is uniformly equicontinuous. -/
theorem uniformEquicontinuous_at_iff_range {F : ι → β → α} :
    UniformEquicontinuous F ↔ UniformEquicontinuous ((↑) : range F → β → α) :=
  ⟨fun h => by rw [← comp_rangeSplitting F]; exact h.comp _, fun h =>
    h.comp (rangeFactorization F)⟩
#align uniform_equicontinuous_at_iff_range uniformEquicontinuous_at_iff_range

section

open UniformFun

/-- A family `𝓕 : ι → X → α` is equicontinuous at `x₀` iff the function `swap 𝓕 : X → ι → α` is
continuous at `x₀` *when `ι → α` is equipped with the topology of uniform convergence*. This is
very useful for developping the equicontinuity API, but it should not be used directly for other
purposes. -/
theorem equicontinuousAt_iff_continuousAt {F : ι → X → α} {x₀ : X} :
    EquicontinuousAt F x₀ ↔ ContinuousAt (ofFun ∘ Function.swap F : X → ι →ᵤ α) x₀ := by
  rw [ContinuousAt, (UniformFun.hasBasis_nhds ι α _).tendsto_right_iff]
  rfl
#align equicontinuous_at_iff_continuous_at equicontinuousAt_iff_continuousAt

/-- A family `𝓕 : ι → X → α` is equicontinuous iff the function `swap 𝓕 : X → ι → α` is
continuous *when `ι → α` is equipped with the topology of uniform convergence*. This is
very useful for developping the equicontinuity API, but it should not be used directly for other
purposes. -/
theorem equicontinuous_iff_continuous {F : ι → X → α} :
    Equicontinuous F ↔ Continuous (ofFun ∘ Function.swap F : X → ι →ᵤ α) := by
  simp_rw [Equicontinuous, continuous_iff_continuousAt, equicontinuousAt_iff_continuousAt]
#align equicontinuous_iff_continuous equicontinuous_iff_continuous

/-- A family `𝓕 : ι → β → α` is uniformly equicontinuous iff the function `swap 𝓕 : β → ι → α` is
uniformly continuous *when `ι → α` is equipped with the uniform structure of uniform convergence*.
This is very useful for developping the equicontinuity API, but it should not be used directly
for other purposes. -/
theorem uniformEquicontinuous_iff_uniformContinuous {F : ι → β → α} :
    UniformEquicontinuous F ↔ UniformContinuous (ofFun ∘ Function.swap F : β → ι →ᵤ α) := by
  rw [UniformContinuous, (UniformFun.hasBasis_uniformity ι α).tendsto_right_iff]
  rfl
#align uniform_equicontinuous_iff_uniform_continuous uniformEquicontinuous_iff_uniformContinuous

theorem equicontinuousAt_iInf_rng {α' : Type*} {u : κ → UniformSpace α'} {F : ι → X → α'}
    {x₀ : X} :
    @EquicontinuousAt _ _ _ _ (⨅ k, u k) F x₀ ↔ ∀ k, @EquicontinuousAt _ _ _ _ (u k) F x₀ := by
  simp [@equicontinuousAt_iff_continuousAt _ _ _ _ _, UniformFun.topologicalSpace]
  unfold ContinuousAt
  rw [UniformFun.iInf_eq, toTopologicalSpace_iInf, nhds_iInf, tendsto_iInf]

theorem equicontinuous_iInf_rng {α' : Type*} {u : κ → UniformSpace α'} {F : ι → X → α'} :
    @Equicontinuous _ _ _ _ (⨅ k, u k) F ↔ ∀ k, @Equicontinuous _ _ _ _ (u k) F := by
  simp_rw [@equicontinuous_iff_continuous _ _ _ _ _, UniformFun.topologicalSpace]
  rw [UniformFun.iInf_eq, toTopologicalSpace_iInf, continuous_iInf_rng]

theorem uniformEquicontinuous_iInf_rng {α' : Type*} {u : κ → UniformSpace α'} {F : ι → β → α'} :
    @UniformEquicontinuous _ _ _ (⨅ k, u k) _ F ↔ ∀ k, @UniformEquicontinuous _ _ _ (u k) _ F := by
  simp_rw [@uniformEquicontinuous_iff_uniformContinuous _ _ _ _]
  rw [UniformFun.iInf_eq, uniformContinuous_iInf_rng]

theorem equicontinuousAt_iInf_dom {X' : Type*} {t : κ → TopologicalSpace X'} {F : ι → X' → α}
    {x₀ : X'} {k : κ} (hk : @EquicontinuousAt _ _ _ (t k) _ F x₀) :
    @EquicontinuousAt _ _ _ (⨅ k, t k) _ F x₀ := by
  simp [@equicontinuousAt_iff_continuousAt _ _ _ _] at hk ⊢
  unfold ContinuousAt at hk ⊢
  rw [nhds_iInf]
  exact tendsto_iInf' k hk

theorem equicontinuous_iInf_dom {X' : Type*} {t : κ → TopologicalSpace X'} {F : ι → X' → α}
    {k : κ} (hk : @Equicontinuous _ _ _ (t k) _ F) :
    @Equicontinuous _ _ _ (⨅ k, t k) _ F := by
  simp_rw [@equicontinuous_iff_continuous _ _ _ _] at hk ⊢
  exact continuous_iInf_dom hk

theorem uniform_equicontinuous_infi_dom {β' : Type*} {u : κ → UniformSpace β'} {F : ι → β' → α}
    {k : κ} (hk : @UniformEquicontinuous _ _ _ _ (u k) F) :
    @UniformEquicontinuous _ _ _ _ (⨅ k, u k) F := by
  simp_rw [@uniformEquicontinuous_iff_uniformContinuous _ _ _ _ _] at hk ⊢
  exact uniformContinuous_iInf_dom hk

-- Porting note: changed from `∃ k (_ : p k), _` to `∃ k, p k ∧ _` since Lean 4 generates the
-- second one when parsing expressions like `∃ δ > 0, _`.
theorem Filter.HasBasis.equicontinuousAt_iff_left {κ : Type*} {p : κ → Prop} {s : κ → Set X}
    {F : ι → X → α} {x₀ : X} (hX : (𝓝 x₀).HasBasis p s) :
    EquicontinuousAt F x₀ ↔ ∀ U ∈ 𝓤 α, ∃ k, p k ∧ ∀ x ∈ s k, ∀ i, (F i x₀, F i x) ∈ U := by
  rw [equicontinuousAt_iff_continuousAt, ContinuousAt,
    hX.tendsto_iff (UniformFun.hasBasis_nhds ι α _)]
  simp only [Function.comp_apply, mem_setOf_eq, exists_prop]
  rfl
#align filter.has_basis.equicontinuous_at_iff_left Filter.HasBasis.equicontinuousAt_iff_left

theorem Filter.HasBasis.equicontinuousAt_iff_right {κ : Type*} {p : κ → Prop} {s : κ → Set (α × α)}
    {F : ι → X → α} {x₀ : X} (hα : (𝓤 α).HasBasis p s) :
    EquicontinuousAt F x₀ ↔ ∀ k, p k → ∀ᶠ x in 𝓝 x₀, ∀ i, (F i x₀, F i x) ∈ s k := by
  rw [equicontinuousAt_iff_continuousAt, ContinuousAt,
    (UniformFun.hasBasis_nhds_of_basis ι α _ hα).tendsto_right_iff]
  rfl
#align filter.has_basis.equicontinuous_at_iff_right Filter.HasBasis.equicontinuousAt_iff_right

-- Porting note: changed from `∃ k (_ : p k), _` to `∃ k, p k ∧ _` since Lean 4 generates the
-- second one when parsing expressions like `∃ δ > 0, _`.
theorem Filter.HasBasis.equicontinuousAt_iff {κ₁ κ₂ : Type*} {p₁ : κ₁ → Prop} {s₁ : κ₁ → Set X}
    {p₂ : κ₂ → Prop} {s₂ : κ₂ → Set (α × α)} {F : ι → X → α} {x₀ : X} (hX : (𝓝 x₀).HasBasis p₁ s₁)
    (hα : (𝓤 α).HasBasis p₂ s₂) :
    EquicontinuousAt F x₀ ↔
      ∀ k₂, p₂ k₂ → ∃ k₁, p₁ k₁ ∧ ∀ x ∈ s₁ k₁, ∀ i, (F i x₀, F i x) ∈ s₂ k₂ := by
  rw [equicontinuousAt_iff_continuousAt, ContinuousAt,
    hX.tendsto_iff (UniformFun.hasBasis_nhds_of_basis ι α _ hα)]
  simp only [Function.comp_apply, mem_setOf_eq, exists_prop]
  rfl
#align filter.has_basis.equicontinuous_at_iff Filter.HasBasis.equicontinuousAt_iff

-- Porting note: changed from `∃ k (_ : p k), _` to `∃ k, p k ∧ _` since Lean 4 generates the
-- second one when parsing expressions like `∃ δ > 0, _`.
theorem Filter.HasBasis.uniformEquicontinuous_iff_left {κ : Type*} {p : κ → Prop}
    {s : κ → Set (β × β)} {F : ι → β → α} (hβ : (𝓤 β).HasBasis p s) :
    UniformEquicontinuous F ↔
      ∀ U ∈ 𝓤 α, ∃ k, p k ∧ ∀ x y, (x, y) ∈ s k → ∀ i, (F i x, F i y) ∈ U := by
  rw [uniformEquicontinuous_iff_uniformContinuous, UniformContinuous,
    hβ.tendsto_iff (UniformFun.hasBasis_uniformity ι α)]
  simp only [Prod.forall, Function.comp_apply, mem_setOf_eq, exists_prop]
  rfl
#align filter.has_basis.uniform_equicontinuous_iff_left Filter.HasBasis.uniformEquicontinuous_iff_left

theorem Filter.HasBasis.uniformEquicontinuous_iff_right {κ : Type*} {p : κ → Prop}
    {s : κ → Set (α × α)} {F : ι → β → α} (hα : (𝓤 α).HasBasis p s) :
    UniformEquicontinuous F ↔ ∀ k, p k → ∀ᶠ xy : β × β in 𝓤 β, ∀ i, (F i xy.1, F i xy.2) ∈ s k := by
  rw [uniformEquicontinuous_iff_uniformContinuous, UniformContinuous,
    (UniformFun.hasBasis_uniformity_of_basis ι α hα).tendsto_right_iff]
  rfl
#align filter.has_basis.uniform_equicontinuous_iff_right Filter.HasBasis.uniformEquicontinuous_iff_right

-- Porting note: changed from `∃ k (_ : p k), _` to `∃ k, p k ∧ _` since Lean 4 generates the
-- second one when parsing expressions like `∃ δ > 0, _`.
theorem Filter.HasBasis.uniformEquicontinuous_iff {κ₁ κ₂ : Type*} {p₁ : κ₁ → Prop}
    {s₁ : κ₁ → Set (β × β)} {p₂ : κ₂ → Prop} {s₂ : κ₂ → Set (α × α)} {F : ι → β → α}
    (hβ : (𝓤 β).HasBasis p₁ s₁) (hα : (𝓤 α).HasBasis p₂ s₂) :
    UniformEquicontinuous F ↔
      ∀ k₂, p₂ k₂ → ∃ k₁, p₁ k₁ ∧ ∀ x y, (x, y) ∈ s₁ k₁ → ∀ i, (F i x, F i y) ∈ s₂ k₂ := by
  rw [uniformEquicontinuous_iff_uniformContinuous, UniformContinuous,
    hβ.tendsto_iff (UniformFun.hasBasis_uniformity_of_basis ι α hα)]
  simp only [Prod.forall, Function.comp_apply, mem_setOf_eq, exists_prop]
  rfl
#align filter.has_basis.uniform_equicontinuous_iff Filter.HasBasis.uniformEquicontinuous_iff

/-- Given `u : α → β` a uniform inducing map, a family `𝓕 : ι → X → α` is equicontinuous at a point
`x₀ : X` iff the family `𝓕'`, obtained by precomposing each function of `𝓕` by `u`, is
equicontinuous at `x₀`. -/
theorem UniformInducing.equicontinuousAt_iff {F : ι → X → α} {x₀ : X} {u : α → β}
    (hu : UniformInducing u) : EquicontinuousAt F x₀ ↔ EquicontinuousAt ((· ∘ ·) u ∘ F) x₀ := by
  have := (UniformFun.postcomp_uniformInducing (α := ι) hu).inducing
  rw [equicontinuousAt_iff_continuousAt, equicontinuousAt_iff_continuousAt, this.continuousAt_iff]
  rfl
#align uniform_inducing.equicontinuous_at_iff UniformInducing.equicontinuousAt_iff

/-- Given `u : α → β` a uniform inducing map, a family `𝓕 : ι → X → α` is equicontinuous iff the
family `𝓕'`, obtained by precomposing each function of `𝓕` by `u`, is equicontinuous. -/
theorem UniformInducing.equicontinuous_iff {F : ι → X → α} {u : α → β} (hu : UniformInducing u) :
    Equicontinuous F ↔ Equicontinuous ((· ∘ ·) u ∘ F) := by
  congrm ∀ x, ?_
  rw [hu.equicontinuousAt_iff]
#align uniform_inducing.equicontinuous_iff UniformInducing.equicontinuous_iff

/-- Given `u : α → γ` a uniform inducing map, a family `𝓕 : ι → β → α` is uniformly equicontinuous
iff the family `𝓕'`, obtained by precomposing each function of `𝓕` by `u`, is uniformly
equicontinuous. -/
theorem UniformInducing.uniformEquicontinuous_iff {F : ι → β → α} {u : α → γ}
    (hu : UniformInducing u) : UniformEquicontinuous F ↔ UniformEquicontinuous ((· ∘ ·) u ∘ F) := by
  have := UniformFun.postcomp_uniformInducing (α := ι) hu
  rw [uniformEquicontinuous_iff_uniformContinuous, uniformEquicontinuous_iff_uniformContinuous,
    this.uniformContinuous_iff]
  rfl
#align uniform_inducing.uniform_equicontinuous_iff UniformInducing.uniformEquicontinuous_iff

/-- A version of `EquicontinuousAt.closure` applicable to subsets of types which embed continuously
into `X → α` with the product topology. It turns out we don't need any other condition on the
embedding than continuity, but in practice this will mostly be applied to `FunLike` types where
the coercion is injective. -/
theorem EquicontinuousAt.closure' {A : Set Y} {u : Y → X → α} {x₀ : X}
    (hA : EquicontinuousAt (u ∘ (↑) : A → X → α) x₀) (hu : Continuous u) :
    EquicontinuousAt (u ∘ (↑) : closure A → X → α) x₀ := by
  intro U hU
  rcases mem_uniformity_isClosed hU with ⟨V, hV, hVclosed, hVU⟩
  filter_upwards [hA V hV]with x hx
  rw [SetCoe.forall] at *
  change A ⊆ (fun f => (u f x₀, u f x)) ⁻¹' V at hx
  refine' (closure_minimal hx <| hVclosed.preimage <| _).trans (preimage_mono hVU)
  exact Continuous.prod_mk ((continuous_apply x₀).comp hu) ((continuous_apply x).comp hu)
#align equicontinuous_at.closure' EquicontinuousAt.closure'

/-- If a set of functions is equicontinuous at some `x₀`, its closure for the product topology is
also equicontinuous at `x₀`. -/
theorem EquicontinuousAt.closure {A : Set <| X → α} {x₀ : X} (hA : A.EquicontinuousAt x₀) :
    (closure A).EquicontinuousAt x₀ :=
  EquicontinuousAt.closure' (u := id) hA continuous_id
#align equicontinuous_at.closure EquicontinuousAt.closure

/-- If `𝓕 : ι → X → α` tends to `f : X → α` *pointwise* along some nontrivial filter, and if the
family `𝓕` is equicontinuous at some `x₀ : X`, then the limit is continuous at `x₀`. -/
theorem Filter.Tendsto.continuousAt_of_equicontinuousAt {l : Filter ι} [l.NeBot] {F : ι → X → α}
    {f : X → α} {x₀ : X} (h₁ : Tendsto F l (𝓝 f)) (h₂ : EquicontinuousAt F x₀) :
    ContinuousAt f x₀ :=
  (equicontinuousAt_iff_range.mp h₂).closure.continuousAt
    ⟨f, mem_closure_of_tendsto h₁ <| eventually_of_forall mem_range_self⟩
#align filter.tendsto.continuous_at_of_equicontinuous_at Filter.Tendsto.continuousAt_of_equicontinuousAt

/-- A version of `Equicontinuous.closure` applicable to subsets of types which embed continuously
into `X → α` with the product topology. It turns out we don't need any other condition on the
embedding than continuity, but in practice this will mostly be applied to `FunLike` types where
the coercion is injective. -/
theorem Equicontinuous.closure' {A : Set Y} {u : Y → X → α}
    (hA : Equicontinuous (u ∘ (↑) : A → X → α)) (hu : Continuous u) :
    Equicontinuous (u ∘ (↑) : closure A → X → α) := fun x => (hA x).closure' hu
#align equicontinuous.closure' Equicontinuous.closure'

/-- If a set of functions is equicontinuous, its closure for the product topology is also
equicontinuous. -/
theorem Equicontinuous.closure {A : Set <| X → α} (hA : A.Equicontinuous) :
    (closure A).Equicontinuous := fun x => (hA x).closure
#align equicontinuous.closure Equicontinuous.closure

/-- If `𝓕 : ι → X → α` tends to `f : X → α` *pointwise* along some nontrivial filter, and if the
family `𝓕` is equicontinuous, then the limit is continuous. -/
theorem Filter.Tendsto.continuous_of_equicontinuous_at {l : Filter ι} [l.NeBot] {F : ι → X → α}
    {f : X → α} (h₁ : Tendsto F l (𝓝 f)) (h₂ : Equicontinuous F) : Continuous f :=
  continuous_iff_continuousAt.mpr fun x => h₁.continuousAt_of_equicontinuousAt (h₂ x)
#align filter.tendsto.continuous_of_equicontinuous_at Filter.Tendsto.continuous_of_equicontinuous_at

/-- A version of `UniformEquicontinuous.closure` applicable to subsets of types which embed
continuously into `β → α` with the product topology. It turns out we don't need any other condition
on the embedding than continuity, but in practice this will mostly be applied to `FunLike` types
where the coercion is injective. -/
theorem UniformEquicontinuous.closure' {A : Set Y} {u : Y → β → α}
    (hA : UniformEquicontinuous (u ∘ (↑) : A → β → α)) (hu : Continuous u) :
    UniformEquicontinuous (u ∘ (↑) : closure A → β → α) := by
  intro U hU
  rcases mem_uniformity_isClosed hU with ⟨V, hV, hVclosed, hVU⟩
  filter_upwards [hA V hV]
  rintro ⟨x, y⟩ hxy
  rw [SetCoe.forall] at *
  change A ⊆ (fun f => (u f x, u f y)) ⁻¹' V at hxy
  refine' (closure_minimal hxy <| hVclosed.preimage <| _).trans (preimage_mono hVU)
  exact Continuous.prod_mk ((continuous_apply x).comp hu) ((continuous_apply y).comp hu)
#align uniform_equicontinuous.closure' UniformEquicontinuous.closure'

/-- If a set of functions is uniformly equicontinuous, its closure for the product topology is also
uniformly equicontinuous. -/
theorem UniformEquicontinuous.closure {A : Set <| β → α} (hA : A.UniformEquicontinuous) :
    (closure A).UniformEquicontinuous :=
  UniformEquicontinuous.closure' (u := id) hA continuous_id
#align uniform_equicontinuous.closure UniformEquicontinuous.closure

/-- If `𝓕 : ι → β → α` tends to `f : β → α` *pointwise* along some nontrivial filter, and if the
family `𝓕` is uniformly equicontinuous, then the limit is uniformly continuous. -/
theorem Filter.Tendsto.uniformContinuous_of_uniformEquicontinuous {l : Filter ι} [l.NeBot]
    {F : ι → β → α} {f : β → α} (h₁ : Tendsto F l (𝓝 f)) (h₂ : UniformEquicontinuous F) :
    UniformContinuous f :=
  (uniformEquicontinuous_at_iff_range.mp h₂).closure.uniformContinuous
    ⟨f, mem_closure_of_tendsto h₁ <| eventually_of_forall mem_range_self⟩
#align filter.tendsto.uniform_continuous_of_uniform_equicontinuous Filter.Tendsto.uniformContinuous_of_uniformEquicontinuous

end

end
```
