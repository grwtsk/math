# Complete source: GRWTSK.Analysis.MeasureTheory.IntegrableOn.Variante0ae0162600dee00a1aa32213707d0fc2617225349367178f64dbffc6a3e91b5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `62fd395cdd29539d7e4f65d0fc48cf06416fcf5c` · SHA-256 `e0ae0162600dee00a1aa32213707d0fc2617225349367178f64dbffc6a3e91b5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Rémy Degenne. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Zhouhang Zhou, Yury Kudryashov
-/
import Mathlib.MeasureTheory.Function.L1Space
import Mathlib.Analysis.NormedSpace.IndicatorFunction

#align_import measure_theory.integral.integrable_on from "leanprover-community/mathlib"@"8b8ba04e2f326f3f7cf24ad129beda58531ada61"

/-! # Functions integrable on a set and at a filter

We define `IntegrableOn f s μ := Integrable f (μ.restrict s)` and prove theorems like
`integrableOn_union : IntegrableOn f (s ∪ t) μ ↔ IntegrableOn f s μ ∧ IntegrableOn f t μ`.

Next we define a predicate `IntegrableAtFilter (f : α → E) (l : Filter α) (μ : Measure α)`
saying that `f` is integrable at some set `s ∈ l` and prove that a measurable function is integrable
at `l` with respect to `μ` provided that `f` is bounded above at `l ⊓ μ.ae` and `μ` is finite
at `l`.

-/


noncomputable section

open Set Filter TopologicalSpace MeasureTheory Function

open scoped Classical Topology Interval BigOperators Filter ENNReal MeasureTheory

variable {α β E F : Type*} [MeasurableSpace α]

section

variable [TopologicalSpace β] {l l' : Filter α} {f g : α → β} {μ ν : Measure α}

/-- A function `f` is strongly measurable at a filter `l` w.r.t. a measure `μ` if it is
ae strongly measurable w.r.t. `μ.restrict s` for some `s ∈ l`. -/
def StronglyMeasurableAtFilter (f : α → β) (l : Filter α) (μ : Measure α := by volume_tac) :=
  ∃ s ∈ l, AEStronglyMeasurable f (μ.restrict s)
#align strongly_measurable_at_filter StronglyMeasurableAtFilter

@[simp]
theorem stronglyMeasurableAt_bot {f : α → β} : StronglyMeasurableAtFilter f ⊥ μ :=
  ⟨∅, mem_bot, by simp⟩
#align strongly_measurable_at_bot stronglyMeasurableAt_bot

protected theorem StronglyMeasurableAtFilter.eventually (h : StronglyMeasurableAtFilter f l μ) :
    ∀ᶠ s in l.smallSets, AEStronglyMeasurable f (μ.restrict s) :=
  (eventually_smallSets' fun _ _ => AEStronglyMeasurable.mono_set).2 h
#align strongly_measurable_at_filter.eventually StronglyMeasurableAtFilter.eventually

protected theorem StronglyMeasurableAtFilter.filter_mono (h : StronglyMeasurableAtFilter f l μ)
    (h' : l' ≤ l) : StronglyMeasurableAtFilter f l' μ :=
  let ⟨s, hsl, hs⟩ := h
  ⟨s, h' hsl, hs⟩
#align strongly_measurable_at_filter.filter_mono StronglyMeasurableAtFilter.filter_mono

protected theorem MeasureTheory.AEStronglyMeasurable.stronglyMeasurableAtFilter
    (h : AEStronglyMeasurable f μ) : StronglyMeasurableAtFilter f l μ :=
  ⟨univ, univ_mem, by rwa [Measure.restrict_univ]⟩
#align measure_theory.ae_strongly_measurable.strongly_measurable_at_filter MeasureTheory.AEStronglyMeasurable.stronglyMeasurableAtFilter

theorem AeStronglyMeasurable.stronglyMeasurableAtFilter_of_mem {s}
    (h : AEStronglyMeasurable f (μ.restrict s)) (hl : s ∈ l) : StronglyMeasurableAtFilter f l μ :=
  ⟨s, hl, h⟩
#align ae_strongly_measurable.strongly_measurable_at_filter_of_mem AeStronglyMeasurable.stronglyMeasurableAtFilter_of_mem

protected theorem MeasureTheory.StronglyMeasurable.stronglyMeasurableAtFilter
    (h : StronglyMeasurable f) : StronglyMeasurableAtFilter f l μ :=
  h.aestronglyMeasurable.stronglyMeasurableAtFilter
#align measure_theory.strongly_measurable.strongly_measurable_at_filter MeasureTheory.StronglyMeasurable.stronglyMeasurableAtFilter

end

namespace MeasureTheory

section NormedAddCommGroup

theorem hasFiniteIntegral_restrict_of_bounded [NormedAddCommGroup E] {f : α → E} {s : Set α}
    {μ : Measure α} {C} (hs : μ s < ∞) (hf : ∀ᵐ x ∂μ.restrict s, ‖f x‖ ≤ C) :
    HasFiniteIntegral f (μ.restrict s) :=
  haveI : IsFiniteMeasure (μ.restrict s) := ⟨by rwa [Measure.restrict_apply_univ]⟩
  hasFiniteIntegral_of_bounded hf
#align measure_theory.has_finite_integral_restrict_of_bounded MeasureTheory.hasFiniteIntegral_restrict_of_bounded

variable [NormedAddCommGroup E] {f g : α → E} {s t : Set α} {μ ν : Measure α}

/-- A function is `IntegrableOn` a set `s` if it is almost everywhere strongly measurable on `s`
and if the integral of its pointwise norm over `s` is less than infinity. -/
def IntegrableOn (f : α → E) (s : Set α) (μ : Measure α := by volume_tac) : Prop :=
  Integrable f (μ.restrict s)
#align measure_theory.integrable_on MeasureTheory.IntegrableOn

-- Porting note: TODO Delete this when leanprover/lean4#2243 is fixed.
theorem integrableOn_def (f : α → E) (s : Set α) (μ : Measure α) :
    IntegrableOn f s μ ↔ Integrable f (μ.restrict s) :=
  Iff.rfl

attribute [eqns integrableOn_def] IntegrableOn

theorem IntegrableOn.integrable (h : IntegrableOn f s μ) : Integrable f (μ.restrict s) :=
  h
#align measure_theory.integrable_on.integrable MeasureTheory.IntegrableOn.integrable

@[simp]
theorem integrableOn_empty : IntegrableOn f ∅ μ := by simp [IntegrableOn, integrable_zero_measure]
#align measure_theory.integrable_on_empty MeasureTheory.integrableOn_empty

@[simp]
theorem integrableOn_univ : IntegrableOn f univ μ ↔ Integrable f μ := by
  rw [IntegrableOn, Measure.restrict_univ]
#align measure_theory.integrable_on_univ MeasureTheory.integrableOn_univ

theorem integrableOn_zero : IntegrableOn (fun _ => (0 : E)) s μ :=
  integrable_zero _ _ _
#align measure_theory.integrable_on_zero MeasureTheory.integrableOn_zero

@[simp]
theorem integrableOn_const {C : E} : IntegrableOn (fun _ => C) s μ ↔ C = 0 ∨ μ s < ∞ :=
  integrable_const_iff.trans <| by rw [Measure.restrict_apply_univ]
#align measure_theory.integrable_on_const MeasureTheory.integrableOn_const

theorem IntegrableOn.mono (h : IntegrableOn f t ν) (hs : s ⊆ t) (hμ : μ ≤ ν) : IntegrableOn f s μ :=
  h.mono_measure <| Measure.restrict_mono hs hμ
#align measure_theory.integrable_on.mono MeasureTheory.IntegrableOn.mono

theorem IntegrableOn.mono_set (h : IntegrableOn f t μ) (hst : s ⊆ t) : IntegrableOn f s μ :=
  h.mono hst le_rfl
#align measure_theory.integrable_on.mono_set MeasureTheory.IntegrableOn.mono_set

theorem IntegrableOn.mono_measure (h : IntegrableOn f s ν) (hμ : μ ≤ ν) : IntegrableOn f s μ :=
  h.mono (Subset.refl _) hμ
#align measure_theory.integrable_on.mono_measure MeasureTheory.IntegrableOn.mono_measure

theorem IntegrableOn.mono_set_ae (h : IntegrableOn f t μ) (hst : s ≤ᵐ[μ] t) : IntegrableOn f s μ :=
  h.integrable.mono_measure <| Measure.restrict_mono_ae hst
#align measure_theory.integrable_on.mono_set_ae MeasureTheory.IntegrableOn.mono_set_ae

theorem IntegrableOn.congr_set_ae (h : IntegrableOn f t μ) (hst : s =ᵐ[μ] t) : IntegrableOn f s μ :=
  h.mono_set_ae hst.le
#align measure_theory.integrable_on.congr_set_ae MeasureTheory.IntegrableOn.congr_set_ae

theorem IntegrableOn.congr_fun_ae (h : IntegrableOn f s μ) (hst : f =ᵐ[μ.restrict s] g) :
    IntegrableOn g s μ :=
  Integrable.congr h hst
#align measure_theory.integrable_on.congr_fun_ae MeasureTheory.IntegrableOn.congr_fun_ae

theorem integrableOn_congr_fun_ae (hst : f =ᵐ[μ.restrict s] g) :
    IntegrableOn f s μ ↔ IntegrableOn g s μ :=
  ⟨fun h => h.congr_fun_ae hst, fun h => h.congr_fun_ae hst.symm⟩
#align measure_theory.integrable_on_congr_fun_ae MeasureTheory.integrableOn_congr_fun_ae

theorem IntegrableOn.congr_fun (h : IntegrableOn f s μ) (hst : EqOn f g s) (hs : MeasurableSet s) :
    IntegrableOn g s μ :=
  h.congr_fun_ae ((ae_restrict_iff' hs).2 (eventually_of_forall hst))
#align measure_theory.integrable_on.congr_fun MeasureTheory.IntegrableOn.congr_fun

theorem integrableOn_congr_fun (hst : EqOn f g s) (hs : MeasurableSet s) :
    IntegrableOn f s μ ↔ IntegrableOn g s μ :=
  ⟨fun h => h.congr_fun hst hs, fun h => h.congr_fun hst.symm hs⟩
#align measure_theory.integrable_on_congr_fun MeasureTheory.integrableOn_congr_fun

theorem Integrable.integrableOn (h : Integrable f μ) : IntegrableOn f s μ :=
  h.mono_measure <| Measure.restrict_le_self
#align measure_theory.integrable.integrable_on MeasureTheory.Integrable.integrableOn

theorem IntegrableOn.restrict (h : IntegrableOn f s μ) (hs : MeasurableSet s) :
    IntegrableOn f s (μ.restrict t) := by
  rw [IntegrableOn, Measure.restrict_restrict hs]; exact h.mono_set (inter_subset_left _ _)
#align measure_theory.integrable_on.restrict MeasureTheory.IntegrableOn.restrict

theorem IntegrableOn.left_of_union (h : IntegrableOn f (s ∪ t) μ) : IntegrableOn f s μ :=
  h.mono_set <| subset_union_left _ _
#align measure_theory.integrable_on.left_of_union MeasureTheory.IntegrableOn.left_of_union

theorem IntegrableOn.right_of_union (h : IntegrableOn f (s ∪ t) μ) : IntegrableOn f t μ :=
  h.mono_set <| subset_union_right _ _
#align measure_theory.integrable_on.right_of_union MeasureTheory.IntegrableOn.right_of_union

theorem IntegrableOn.union (hs : IntegrableOn f s μ) (ht : IntegrableOn f t μ) :
    IntegrableOn f (s ∪ t) μ :=
  (hs.add_measure ht).mono_measure <| Measure.restrict_union_le _ _
#align measure_theory.integrable_on.union MeasureTheory.IntegrableOn.union

@[simp]
theorem integrableOn_union : IntegrableOn f (s ∪ t) μ ↔ IntegrableOn f s μ ∧ IntegrableOn f t μ :=
  ⟨fun h => ⟨h.left_of_union, h.right_of_union⟩, fun h => h.1.union h.2⟩
#align measure_theory.integrable_on_union MeasureTheory.integrableOn_union

@[simp]
theorem integrableOn_singleton_iff {x : α} [MeasurableSingletonClass α] :
    IntegrableOn f {x} μ ↔ f x = 0 ∨ μ {x} < ∞ := by
  have : f =ᵐ[μ.restrict {x}] fun _ => f x := by
    filter_upwards [ae_restrict_mem (measurableSet_singleton x)]with _ ha
    simp only [mem_singleton_iff.1 ha]
  rw [IntegrableOn, integrable_congr this, integrable_const_iff]
  simp
#align measure_theory.integrable_on_singleton_iff MeasureTheory.integrableOn_singleton_iff

@[simp]
theorem integrableOn_finite_biUnion {s : Set β} (hs : s.Finite) {t : β → Set α} :
    IntegrableOn f (⋃ i ∈ s, t i) μ ↔ ∀ i ∈ s, IntegrableOn f (t i) μ := by
  refine hs.induction_on ?_ ?_
  · simp
  · intro a s _ _ hf; simp [hf, or_imp, forall_and]
#align measure_theory.integrable_on_finite_bUnion MeasureTheory.integrableOn_finite_biUnion

@[simp]
theorem integrableOn_finset_iUnion {s : Finset β} {t : β → Set α} :
    IntegrableOn f (⋃ i ∈ s, t i) μ ↔ ∀ i ∈ s, IntegrableOn f (t i) μ :=
  integrableOn_finite_biUnion s.finite_toSet
#align measure_theory.integrable_on_finset_Union MeasureTheory.integrableOn_finset_iUnion

@[simp]
theorem integrableOn_finite_iUnion [Finite β] {t : β → Set α} :
    IntegrableOn f (⋃ i, t i) μ ↔ ∀ i, IntegrableOn f (t i) μ := by
  cases nonempty_fintype β
  simpa using @integrableOn_finset_iUnion _ _ _ _ _ f μ Finset.univ t
#align measure_theory.integrable_on_finite_Union MeasureTheory.integrableOn_finite_iUnion

theorem IntegrableOn.add_measure (hμ : IntegrableOn f s μ) (hν : IntegrableOn f s ν) :
    IntegrableOn f s (μ + ν) := by
  delta IntegrableOn; rw [Measure.restrict_add]; exact hμ.integrable.add_measure hν
#align measure_theory.integrable_on.add_measure MeasureTheory.IntegrableOn.add_measure

@[simp]
theorem integrableOn_add_measure :
    IntegrableOn f s (μ + ν) ↔ IntegrableOn f s μ ∧ IntegrableOn f s ν :=
  ⟨fun h =>
    ⟨h.mono_measure (Measure.le_add_right le_rfl), h.mono_measure (Measure.le_add_left le_rfl)⟩,
    fun h => h.1.add_measure h.2⟩
#align measure_theory.integrable_on_add_measure MeasureTheory.integrableOn_add_measure

theorem _root_.MeasurableEmbedding.integrableOn_map_iff [MeasurableSpace β] {e : α → β}
    (he : MeasurableEmbedding e) {f : β → E} {μ : Measure α} {s : Set β} :
    IntegrableOn f s (Measure.map e μ) ↔ IntegrableOn (f ∘ e) (e ⁻¹' s) μ := by
  simp only [IntegrableOn, he.restrict_map, he.integrable_map_iff]
#align measurable_embedding.integrable_on_map_iff MeasurableEmbedding.integrableOn_map_iff

theorem integrableOn_map_equiv [MeasurableSpace β] (e : α ≃ᵐ β) {f : β → E} {μ : Measure α}
    {s : Set β} : IntegrableOn f s (Measure.map e μ) ↔ IntegrableOn (f ∘ e) (e ⁻¹' s) μ := by
  simp only [IntegrableOn, e.restrict_map, integrable_map_equiv e]
#align measure_theory.integrable_on_map_equiv MeasureTheory.integrableOn_map_equiv

theorem MeasurePreserving.integrableOn_comp_preimage [MeasurableSpace β] {e : α → β} {ν}
    (h₁ : MeasurePreserving e μ ν) (h₂ : MeasurableEmbedding e) {f : β → E} {s : Set β} :
    IntegrableOn (f ∘ e) (e ⁻¹' s) μ ↔ IntegrableOn f s ν :=
  (h₁.restrict_preimage_emb h₂ s).integrable_comp_emb h₂
#align measure_theory.measure_preserving.integrable_on_comp_preimage MeasureTheory.MeasurePreserving.integrableOn_comp_preimage

theorem MeasurePreserving.integrableOn_image [MeasurableSpace β] {e : α → β} {ν}
    (h₁ : MeasurePreserving e μ ν) (h₂ : MeasurableEmbedding e) {f : β → E} {s : Set α} :
    IntegrableOn f (e '' s) ν ↔ IntegrableOn (f ∘ e) s μ :=
  ((h₁.restrict_image_emb h₂ s).integrable_comp_emb h₂).symm
#align measure_theory.measure_preserving.integrable_on_image MeasureTheory.MeasurePreserving.integrableOn_image

theorem integrable_indicator_iff (hs : MeasurableSet s) :
    Integrable (indicator s f) μ ↔ IntegrableOn f s μ := by
  simp [IntegrableOn, Integrable, HasFiniteIntegral, nnnorm_indicator_eq_indicator_nnnorm,
    ENNReal.coe_indicator, lintegral_indicator _ hs, aestronglyMeasurable_indicator_iff hs]
#align measure_theory.integrable_indicator_iff MeasureTheory.integrable_indicator_iff

theorem IntegrableOn.integrable_indicator (h : IntegrableOn f s μ) (hs : MeasurableSet s) :
    Integrable (indicator s f) μ :=
  (integrable_indicator_iff hs).2 h
#align measure_theory.integrable_on.integrable_indicator MeasureTheory.IntegrableOn.integrable_indicator

theorem Integrable.indicator (h : Integrable f μ) (hs : MeasurableSet s) :
    Integrable (indicator s f) μ :=
  h.integrableOn.integrable_indicator hs
#align measure_theory.integrable.indicator MeasureTheory.Integrable.indicator

theorem IntegrableOn.indicator (h : IntegrableOn f s μ) (ht : MeasurableSet t) :
    IntegrableOn (indicator t f) s μ :=
  Integrable.indicator h ht
#align measure_theory.integrable_on.indicator MeasureTheory.IntegrableOn.indicator

theorem integrable_indicatorConstLp {E} [NormedAddCommGroup E] {p : ℝ≥0∞} {s : Set α}
    (hs : MeasurableSet s) (hμs : μ s ≠ ∞) (c : E) :
    Integrable (indicatorConstLp p hs hμs c) μ := by
  rw [integrable_congr indicatorConstLp_coeFn, integrable_indicator_iff hs, IntegrableOn,
    integrable_const_iff, lt_top_iff_ne_top]
  right
  simpa only [Set.univ_inter, MeasurableSet.univ, Measure.restrict_apply] using hμs
set_option linter.uppercaseLean3 false in
#align measure_theory.integrable_indicator_const_Lp MeasureTheory.integrable_indicatorConstLp

/-- If a function is integrable on a set `s` and nonzero there, then the measurable hull of `s` is
well behaved: the restriction of the measure to `toMeasurable μ s` coincides with its restriction
to `s`. -/
theorem IntegrableOn.restrict_toMeasurable (hf : IntegrableOn f s μ) (h's : ∀ x ∈ s, f x ≠ 0) :
    μ.restrict (toMeasurable μ s) = μ.restrict s := by
  rcases exists_seq_strictAnti_tendsto (0 : ℝ) with ⟨u, _, u_pos, u_lim⟩
  let v n := toMeasurable (μ.restrict s) { x | u n ≤ ‖f x‖ }
  have A : ∀ n, μ (s ∩ v n) ≠ ∞ := by
    intro n
    rw [inter_comm, ← Measure.restrict_apply (measurableSet_toMeasurable _ _),
      measure_toMeasurable]
    exact (hf.measure_ge_lt_top (u_pos n)).ne
  apply Measure.restrict_toMeasurable_of_cover _ A
  intro x hx
  have : 0 < ‖f x‖ := by simp only [h's x hx, norm_pos_iff, Ne.def, not_false_iff]
  obtain ⟨n, hn⟩ : ∃ n, u n < ‖f x‖; exact ((tendsto_order.1 u_lim).2 _ this).exists
  refine' mem_iUnion.2 ⟨n, _⟩
  exact subset_toMeasurable _ _ hn.le
#align measure_theory.integrable_on.restrict_to_measurable MeasureTheory.IntegrableOn.restrict_toMeasurable

/-- If a function is integrable on a set `s`, and vanishes on `t \ s`, then it is integrable on `t`
if `t` is null-measurable. -/
theorem IntegrableOn.of_ae_diff_eq_zero (hf : IntegrableOn f s μ) (ht : NullMeasurableSet t μ)
    (h't : ∀ᵐ x ∂μ, x ∈ t \ s → f x = 0) : IntegrableOn f t μ := by
  let u := { x ∈ s | f x ≠ 0 }
  have hu : IntegrableOn f u μ := hf.mono_set fun x hx => hx.1
  let v := toMeasurable μ u
  have A : IntegrableOn f v μ := by
    rw [IntegrableOn, hu.restrict_toMeasurable]
    · exact hu
    · intro x hx; exact hx.2
  have B : IntegrableOn f (t \ v) μ := by
    apply integrableOn_zero.congr
    filter_upwards [ae_restrict_of_ae h't,
      ae_restrict_mem₀ (ht.diff (measurableSet_toMeasurable μ u).nullMeasurableSet)] with x hxt hx
    by_cases h'x : x ∈ s
    · by_contra H
      exact hx.2 (subset_toMeasurable μ u ⟨h'x, Ne.symm H⟩)
    · exact (hxt ⟨hx.1, h'x⟩).symm
  apply (A.union B).mono_set _
  rw [union_diff_self]
  exact subset_union_right _ _
#align measure_theory.integrable_on.of_ae_diff_eq_zero MeasureTheory.IntegrableOn.of_ae_diff_eq_zero

/-- If a function is integrable on a set `s`, and vanishes on `t \ s`, then it is integrable on `t`
if `t` is measurable. -/
theorem IntegrableOn.of_forall_diff_eq_zero (hf : IntegrableOn f s μ) (ht : MeasurableSet t)
    (h't : ∀ x ∈ t \ s, f x = 0) : IntegrableOn f t μ :=
  hf.of_ae_diff_eq_zero ht.nullMeasurableSet (eventually_of_forall h't)
#align measure_theory.integrable_on.of_forall_diff_eq_zero MeasureTheory.IntegrableOn.of_forall_diff_eq_zero

/-- If a function is integrable on a set `s` and vanishes almost everywhere on its complement,
then it is integrable. -/
theorem IntegrableOn.integrable_of_ae_not_mem_eq_zero (hf : IntegrableOn f s μ)
    (h't : ∀ᵐ x ∂μ, x ∉ s → f x = 0) : Integrable f μ := by
  rw [← integrableOn_univ]
  apply hf.of_ae_diff_eq_zero nullMeasurableSet_univ
  filter_upwards [h't]with x hx h'x using hx h'x.2
#align measure_theory.integrable_on.integrable_of_ae_not_mem_eq_zero MeasureTheory.IntegrableOn.integrable_of_ae_not_mem_eq_zero

/-- If a function is integrable on a set `s` and vanishes everywhere on its complement,
then it is integrable. -/
theorem IntegrableOn.integrable_of_forall_not_mem_eq_zero (hf : IntegrableOn f s μ)
    (h't : ∀ x, x ∉ s → f x = 0) : Integrable f μ :=
  hf.integrable_of_ae_not_mem_eq_zero (eventually_of_forall fun x hx => h't x hx)
#align measure_theory.integrable_on.integrable_of_forall_not_mem_eq_zero MeasureTheory.IntegrableOn.integrable_of_forall_not_mem_eq_zero

theorem integrableOn_iff_integrable_of_support_subset (h1s : support f ⊆ s) :
    IntegrableOn f s μ ↔ Integrable f μ := by
  refine' ⟨fun h => _, fun h => h.integrableOn⟩
  refine h.integrable_of_forall_not_mem_eq_zero fun x hx => ?_
  contrapose! hx
  exact h1s (mem_support.2 hx)
#align measure_theory.integrable_on_iff_integrable_of_support_subset MeasureTheory.integrableOn_iff_integrable_of_support_subset

theorem integrableOn_Lp_of_measure_ne_top {E} [NormedAddCommGroup E] {p : ℝ≥0∞} {s : Set α}
    (f : Lp E p μ) (hp : 1 ≤ p) (hμs : μ s ≠ ∞) : IntegrableOn f s μ := by
  refine' memℒp_one_iff_integrable.mp _
  have hμ_restrict_univ : (μ.restrict s) Set.univ < ∞ := by
    simpa only [Set.univ_inter, MeasurableSet.univ, Measure.restrict_apply, lt_top_iff_ne_top]
  haveI hμ_finite : IsFiniteMeasure (μ.restrict s) := ⟨hμ_restrict_univ⟩
  exact ((Lp.memℒp _).restrict s).memℒp_of_exponent_le hp
set_option linter.uppercaseLean3 false in
#align measure_theory.integrable_on_Lp_of_measure_ne_top MeasureTheory.integrableOn_Lp_of_measure_ne_top

theorem Integrable.lintegral_lt_top {f : α → ℝ} (hf : Integrable f μ) :
    (∫⁻ x, ENNReal.ofReal (f x) ∂μ) < ∞ :=
  calc
    (∫⁻ x, ENNReal.ofReal (f x) ∂μ) ≤ ∫⁻ x, ↑‖f x‖₊ ∂μ := lintegral_ofReal_le_lintegral_nnnorm f
    _ < ∞ := hf.2
#align measure_theory.integrable.lintegral_lt_top MeasureTheory.Integrable.lintegral_lt_top

theorem IntegrableOn.set_lintegral_lt_top {f : α → ℝ} {s : Set α} (hf : IntegrableOn f s μ) :
    (∫⁻ x in s, ENNReal.ofReal (f x) ∂μ) < ∞ :=
  Integrable.lintegral_lt_top hf
#align measure_theory.integrable_on.set_lintegral_lt_top MeasureTheory.IntegrableOn.set_lintegral_lt_top

/-- We say that a function `f` is *integrable at filter* `l` if it is integrable on some
set `s ∈ l`. Equivalently, it is eventually integrable on `s` in `l.smallSets`. -/
def IntegrableAtFilter (f : α → E) (l : Filter α) (μ : Measure α := by volume_tac) :=
  ∃ s ∈ l, IntegrableOn f s μ
#align measure_theory.integrable_at_filter MeasureTheory.IntegrableAtFilter

variable {l l' : Filter α}

theorem Integrable.integrableAtFilter (h : Integrable f μ) (l : Filter α) :
    IntegrableAtFilter f l μ :=
  ⟨univ, Filter.univ_mem, integrableOn_univ.2 h⟩
#align measure_theory.integrable.integrable_at_filter MeasureTheory.Integrable.integrableAtFilter

protected theorem IntegrableAtFilter.eventually (h : IntegrableAtFilter f l μ) :
    ∀ᶠ s in l.smallSets, IntegrableOn f s μ :=
  Iff.mpr (eventually_smallSets' fun _s _t hst ht => ht.mono_set hst) h
#align measure_theory.integrable_at_filter.eventually MeasureTheory.IntegrableAtFilter.eventually

protected theorem IntegrableAtFilter.add {f g : α → E}
    (hf : IntegrableAtFilter f l μ) (hg : IntegrableAtFilter g l μ) :
    IntegrableAtFilter (f + g) l μ := by
  rcases hf with ⟨s, sl, hs⟩
  rcases hg with ⟨t, tl, ht⟩
  refine ⟨s ∩ t, inter_mem sl tl, ?_⟩
  exact (hs.mono_set (inter_subset_left _ _)).add (ht.mono_set (inter_subset_right _ _))

protected theorem IntegrableAtFilter.neg {f : α → E} (hf : IntegrableAtFilter f l μ) :
    IntegrableAtFilter (-f) l μ := by
  rcases hf with ⟨s, sl, hs⟩
  exact ⟨s, sl, hs.neg⟩

protected theorem IntegrableAtFilter.sub {f g : α → E}
    (hf : IntegrableAtFilter f l μ) (hg : IntegrableAtFilter g l μ) :
    IntegrableAtFilter (f - g) l μ := by
  rw [sub_eq_add_neg]
  exact hf.add hg.neg

theorem IntegrableAtFilter.filter_mono (hl : l ≤ l') (hl' : IntegrableAtFilter f l' μ) :
    IntegrableAtFilter f l μ :=
  let ⟨s, hs, hsf⟩ := hl'
  ⟨s, hl hs, hsf⟩
#align measure_theory.integrable_at_filter.filter_mono MeasureTheory.IntegrableAtFilter.filter_mono

theorem IntegrableAtFilter.inf_of_left (hl : IntegrableAtFilter f l μ) :
    IntegrableAtFilter f (l ⊓ l') μ :=
  hl.filter_mono inf_le_left
#align measure_theory.integrable_at_filter.inf_of_left MeasureTheory.IntegrableAtFilter.inf_of_left

theorem IntegrableAtFilter.inf_of_right (hl : IntegrableAtFilter f l μ) :
    IntegrableAtFilter f (l' ⊓ l) μ :=
  hl.filter_mono inf_le_right
#align measure_theory.integrable_at_filter.inf_of_right MeasureTheory.IntegrableAtFilter.inf_of_right

@[simp]
theorem IntegrableAtFilter.inf_ae_iff {l : Filter α} :
    IntegrableAtFilter f (l ⊓ μ.ae) μ ↔ IntegrableAtFilter f l μ := by
  refine' ⟨_, fun h => h.filter_mono inf_le_left⟩
  rintro ⟨s, ⟨t, ht, u, hu, rfl⟩, hf⟩
  refine' ⟨t, ht, _⟩
  refine' hf.integrable.mono_measure fun v hv => _
  simp only [Measure.restrict_apply hv]
  refine' measure_mono_ae (mem_of_superset hu fun x hx => _)
  exact fun ⟨hv, ht⟩ => ⟨hv, ⟨ht, hx⟩⟩
#align measure_theory.integrable_at_filter.inf_ae_iff MeasureTheory.IntegrableAtFilter.inf_ae_iff

alias ⟨IntegrableAtFilter.of_inf_ae, _⟩ := IntegrableAtFilter.inf_ae_iff
#align measure_theory.integrable_at_filter.of_inf_ae MeasureTheory.IntegrableAtFilter.of_inf_ae

/-- If `μ` is a measure finite at filter `l` and `f` is a function such that its norm is bounded
above at `l`, then `f` is integrable at `l`. -/
theorem Measure.FiniteAtFilter.integrableAtFilter {l : Filter α} [IsMeasurablyGenerated l]
    (hfm : StronglyMeasurableAtFilter f l μ) (hμ : μ.FiniteAtFilter l)
    (hf : l.IsBoundedUnder (· ≤ ·) (norm ∘ f)) : IntegrableAtFilter f l μ := by
  obtain ⟨C, hC⟩ : ∃ C, ∀ᶠ s in l.smallSets, ∀ x ∈ s, ‖f x‖ ≤ C
  exact hf.imp fun C hC => eventually_smallSets.2 ⟨_, hC, fun t => id⟩
  rcases(hfm.eventually.and (hμ.eventually.and hC)).exists_measurable_mem_of_smallSets with
    ⟨s, hsl, hsm, hfm, hμ, hC⟩
  refine' ⟨s, hsl, ⟨hfm, hasFiniteIntegral_restrict_of_bounded hμ _⟩⟩
  exact C
  rw [ae_restrict_eq hsm, eventually_inf_principal]
  exact eventually_of_forall hC
#align measure_theory.measure.finite_at_filter.integrable_at_filter MeasureTheory.Measure.FiniteAtFilter.integrableAtFilter

theorem Measure.FiniteAtFilter.integrableAtFilter_of_tendsto_ae {l : Filter α}
    [IsMeasurablyGenerated l] (hfm : StronglyMeasurableAtFilter f l μ) (hμ : μ.FiniteAtFilter l) {b}
    (hf : Tendsto f (l ⊓ μ.ae) (𝓝 b)) : IntegrableAtFilter f l μ :=
  (hμ.inf_of_left.integrableAtFilter (hfm.filter_mono inf_le_left)
      hf.norm.isBoundedUnder_le).of_inf_ae
#align measure_theory.measure.finite_at_filter.integrable_at_filter_of_tendsto_ae MeasureTheory.Measure.FiniteAtFilter.integrableAtFilter_of_tendsto_ae

alias _root_.Filter.Tendsto.integrableAtFilter_ae :=
  Measure.FiniteAtFilter.integrableAtFilter_of_tendsto_ae
#align filter.tendsto.integrable_at_filter_ae Filter.Tendsto.integrableAtFilter_ae

theorem Measure.FiniteAtFilter.integrableAtFilter_of_tendsto {l : Filter α}
    [IsMeasurablyGenerated l] (hfm : StronglyMeasurableAtFilter f l μ) (hμ : μ.FiniteAtFilter l) {b}
    (hf : Tendsto f l (𝓝 b)) : IntegrableAtFilter f l μ :=
  hμ.integrableAtFilter hfm hf.norm.isBoundedUnder_le
#align measure_theory.measure.finite_at_filter.integrable_at_filter_of_tendsto MeasureTheory.Measure.FiniteAtFilter.integrableAtFilter_of_tendsto

alias _root_.Filter.Tendsto.integrableAtFilter :=
  Measure.FiniteAtFilter.integrableAtFilter_of_tendsto
#align filter.tendsto.integrable_at_filter Filter.Tendsto.integrableAtFilter

theorem integrable_add_of_disjoint {f g : α → E} (h : Disjoint (support f) (support g))
    (hf : StronglyMeasurable f) (hg : StronglyMeasurable g) :
    Integrable (f + g) μ ↔ Integrable f μ ∧ Integrable g μ := by
  refine' ⟨fun hfg => ⟨_, _⟩, fun h => h.1.add h.2⟩
  · rw [← indicator_add_eq_left h]; exact hfg.indicator hf.measurableSet_support
  · rw [← indicator_add_eq_right h]; exact hfg.indicator hg.measurableSet_support
#align measure_theory.integrable_add_of_disjoint MeasureTheory.integrable_add_of_disjoint

end NormedAddCommGroup

end MeasureTheory

open MeasureTheory

variable [NormedAddCommGroup E]

/-- A function which is continuous on a set `s` is almost everywhere measurable with respect to
`μ.restrict s`. -/
theorem ContinuousOn.aemeasurable [TopologicalSpace α] [OpensMeasurableSpace α] [MeasurableSpace β]
    [TopologicalSpace β] [BorelSpace β] {f : α → β} {s : Set α} {μ : Measure α}
    (hf : ContinuousOn f s) (hs : MeasurableSet s) : AEMeasurable f (μ.restrict s) := by
  nontriviality α; inhabit α
  have : (Set.piecewise s f fun _ => f default) =ᵐ[μ.restrict s] f := piecewise_ae_eq_restrict hs
  refine' ⟨Set.piecewise s f fun _ => f default, _, this.symm⟩
  apply measurable_of_isOpen
  intro t ht
  obtain ⟨u, u_open, hu⟩ : ∃ u : Set α, IsOpen u ∧ f ⁻¹' t ∩ s = u ∩ s :=
    _root_.continuousOn_iff'.1 hf t ht
  rw [piecewise_preimage, Set.ite, hu]
  exact (u_open.measurableSet.inter hs).union ((measurable_const ht.measurableSet).diff hs)
#align continuous_on.ae_measurable ContinuousOn.aemeasurable

/-- A function which is continuous on a separable set `s` is almost everywhere strongly measurable
with respect to `μ.restrict s`. -/
theorem ContinuousOn.aestronglyMeasurable_of_isSeparable [TopologicalSpace α]
    [PseudoMetrizableSpace α] [OpensMeasurableSpace α] [TopologicalSpace β]
    [PseudoMetrizableSpace β] {f : α → β} {s : Set α} {μ : Measure α} (hf : ContinuousOn f s)
    (hs : MeasurableSet s) (h's : TopologicalSpace.IsSeparable s) :
    AEStronglyMeasurable f (μ.restrict s) := by
  letI := pseudoMetrizableSpacePseudoMetric α
  borelize β
  rw [aestronglyMeasurable_iff_aemeasurable_separable]
  refine' ⟨hf.aemeasurable hs, f '' s, hf.isSeparable_image h's, _⟩
  exact mem_of_superset (self_mem_ae_restrict hs) (subset_preimage_image _ _)
#align continuous_on.ae_strongly_measurable_of_is_separable ContinuousOn.aestronglyMeasurable_of_isSeparable

/-- A function which is continuous on a set `s` is almost everywhere strongly measurable with
respect to `μ.restrict s` when either the source space or the target space is second-countable. -/
theorem ContinuousOn.aestronglyMeasurable [TopologicalSpace α] [TopologicalSpace β]
    [h : SecondCountableTopologyEither α β] [OpensMeasurableSpace α] [PseudoMetrizableSpace β]
    {f : α → β} {s : Set α} {μ : Measure α} (hf : ContinuousOn f s) (hs : MeasurableSet s) :
    AEStronglyMeasurable f (μ.restrict s) := by
  borelize β
  refine'
    aestronglyMeasurable_iff_aemeasurable_separable.2
      ⟨hf.aemeasurable hs, f '' s, _,
        mem_of_superset (self_mem_ae_restrict hs) (subset_preimage_image _ _)⟩
  cases h.out
  · let f' : s → β := s.restrict f
    have A : Continuous f' := continuousOn_iff_continuous_restrict.1 hf
    have B : IsSeparable (univ : Set s) := isSeparable_of_separableSpace _
    convert IsSeparable.image B A using 1
    ext x
    simp
  · exact isSeparable_of_separableSpace _
#align continuous_on.ae_strongly_measurable ContinuousOn.aestronglyMeasurable

/-- A function which is continuous on a compact set `s` is almost everywhere strongly measurable
with respect to `μ.restrict s`. -/
theorem ContinuousOn.aestronglyMeasurable_of_isCompact [TopologicalSpace α] [OpensMeasurableSpace α]
    [TopologicalSpace β] [PseudoMetrizableSpace β] {f : α → β} {s : Set α} {μ : Measure α}
    (hf : ContinuousOn f s) (hs : IsCompact s) (h's : MeasurableSet s) :
    AEStronglyMeasurable f (μ.restrict s) := by
  letI := pseudoMetrizableSpacePseudoMetric β
  borelize β
  rw [aestronglyMeasurable_iff_aemeasurable_separable]
  refine' ⟨hf.aemeasurable h's, f '' s, _, _⟩
  · exact (hs.image_of_continuousOn hf).isSeparable
  · exact mem_of_superset (self_mem_ae_restrict h's) (subset_preimage_image _ _)
#align continuous_on.ae_strongly_measurable_of_is_compact ContinuousOn.aestronglyMeasurable_of_isCompact

theorem ContinuousOn.integrableAt_nhdsWithin_of_isSeparable [TopologicalSpace α]
    [PseudoMetrizableSpace α] [OpensMeasurableSpace α] {μ : Measure α} [IsLocallyFiniteMeasure μ]
    {a : α} {t : Set α} {f : α → E} (hft : ContinuousOn f t) (ht : MeasurableSet t)
    (h't : TopologicalSpace.IsSeparable t) (ha : a ∈ t) : IntegrableAtFilter f (𝓝[t] a) μ :=
  haveI : (𝓝[t] a).IsMeasurablyGenerated := ht.nhdsWithin_isMeasurablyGenerated _
  (hft a ha).integrableAtFilter
    ⟨_, self_mem_nhdsWithin, hft.aestronglyMeasurable_of_isSeparable ht h't⟩
    (μ.finiteAt_nhdsWithin _ _)
#align continuous_on.integrable_at_nhds_within_of_is_separable ContinuousOn.integrableAt_nhdsWithin_of_isSeparable

theorem ContinuousOn.integrableAt_nhdsWithin [TopologicalSpace α]
    [SecondCountableTopologyEither α E] [OpensMeasurableSpace α] {μ : Measure α}
    [IsLocallyFiniteMeasure μ] {a : α} {t : Set α} {f : α → E} (hft : ContinuousOn f t)
    (ht : MeasurableSet t) (ha : a ∈ t) : IntegrableAtFilter f (𝓝[t] a) μ :=
  haveI : (𝓝[t] a).IsMeasurablyGenerated := ht.nhdsWithin_isMeasurablyGenerated _
  (hft a ha).integrableAtFilter ⟨_, self_mem_nhdsWithin, hft.aestronglyMeasurable ht⟩
    (μ.finiteAt_nhdsWithin _ _)
#align continuous_on.integrable_at_nhds_within ContinuousOn.integrableAt_nhdsWithin

theorem Continuous.integrableAt_nhds [TopologicalSpace α] [SecondCountableTopologyEither α E]
    [OpensMeasurableSpace α] {μ : Measure α} [IsLocallyFiniteMeasure μ] {f : α → E}
    (hf : Continuous f) (a : α) : IntegrableAtFilter f (𝓝 a) μ := by
  rw [← nhdsWithin_univ]
  exact hf.continuousOn.integrableAt_nhdsWithin MeasurableSet.univ (mem_univ a)
#align continuous.integrable_at_nhds Continuous.integrableAt_nhds

/-- If a function is continuous on an open set `s`, then it is strongly measurable at the filter
`𝓝 x` for all `x ∈ s` if either the source space or the target space is second-countable. -/
theorem ContinuousOn.stronglyMeasurableAtFilter [TopologicalSpace α] [OpensMeasurableSpace α]
    [TopologicalSpace β] [PseudoMetrizableSpace β] [SecondCountableTopologyEither α β] {f : α → β}
    {s : Set α} {μ : Measure α} (hs : IsOpen s) (hf : ContinuousOn f s) :
    ∀ x ∈ s, StronglyMeasurableAtFilter f (𝓝 x) μ := fun _x hx =>
  ⟨s, IsOpen.mem_nhds hs hx, hf.aestronglyMeasurable hs.measurableSet⟩
#align continuous_on.strongly_measurable_at_filter ContinuousOn.stronglyMeasurableAtFilter

theorem ContinuousAt.stronglyMeasurableAtFilter [TopologicalSpace α] [OpensMeasurableSpace α]
    [SecondCountableTopologyEither α E] {f : α → E} {s : Set α} {μ : Measure α} (hs : IsOpen s)
    (hf : ∀ x ∈ s, ContinuousAt f x) : ∀ x ∈ s, StronglyMeasurableAtFilter f (𝓝 x) μ :=
  ContinuousOn.stronglyMeasurableAtFilter hs <| ContinuousAt.continuousOn hf
#align continuous_at.strongly_measurable_at_filter ContinuousAt.stronglyMeasurableAtFilter

theorem Continuous.stronglyMeasurableAtFilter [TopologicalSpace α] [OpensMeasurableSpace α]
    [TopologicalSpace β] [PseudoMetrizableSpace β] [SecondCountableTopologyEither α β] {f : α → β}
    (hf : Continuous f) (μ : Measure α) (l : Filter α) : StronglyMeasurableAtFilter f l μ :=
  hf.stronglyMeasurable.stronglyMeasurableAtFilter
#align continuous.strongly_measurable_at_filter Continuous.stronglyMeasurableAtFilter

/-- If a function is continuous on a measurable set `s`, then it is measurable at the filter
  `𝓝[s] x` for all `x`. -/
theorem ContinuousOn.stronglyMeasurableAtFilter_nhdsWithin {α β : Type*} [MeasurableSpace α]
    [TopologicalSpace α] [OpensMeasurableSpace α] [TopologicalSpace β] [PseudoMetrizableSpace β]
    [SecondCountableTopologyEither α β] {f : α → β} {s : Set α} {μ : Measure α}
    (hf : ContinuousOn f s) (hs : MeasurableSet s) (x : α) :
    StronglyMeasurableAtFilter f (𝓝[s] x) μ :=
  ⟨s, self_mem_nhdsWithin, hf.aestronglyMeasurable hs⟩
#align continuous_on.strongly_measurable_at_filter_nhds_within ContinuousOn.stronglyMeasurableAtFilter_nhdsWithin

/-! ### Lemmas about adding and removing interval boundaries

The primed lemmas take explicit arguments about the measure being finite at the endpoint, while
the unprimed ones use `[NoAtoms μ]`.
-/


section PartialOrder

variable [PartialOrder α] [MeasurableSingletonClass α] {f : α → E} {μ : Measure α} {a b : α}

theorem integrableOn_Icc_iff_integrableOn_Ioc' (ha : μ {a} ≠ ∞) :
    IntegrableOn f (Icc a b) μ ↔ IntegrableOn f (Ioc a b) μ := by
  by_cases hab : a ≤ b
  · rw [← Ioc_union_left hab, integrableOn_union,
      eq_true (integrableOn_singleton_iff.mpr <| Or.inr ha.lt_top), and_true_iff]
  · rw [Icc_eq_empty hab, Ioc_eq_empty]
    contrapose! hab
    exact hab.le
#align integrable_on_Icc_iff_integrable_on_Ioc' integrableOn_Icc_iff_integrableOn_Ioc'

theorem integrableOn_Icc_iff_integrableOn_Ico' (hb : μ {b} ≠ ∞) :
    IntegrableOn f (Icc a b) μ ↔ IntegrableOn f (Ico a b) μ := by
  by_cases hab : a ≤ b
  · rw [← Ico_union_right hab, integrableOn_union,
      eq_true (integrableOn_singleton_iff.mpr <| Or.inr hb.lt_top), and_true_iff]
  · rw [Icc_eq_empty hab, Ico_eq_empty]
    contrapose! hab
    exact hab.le
#align integrable_on_Icc_iff_integrable_on_Ico' integrableOn_Icc_iff_integrableOn_Ico'

theorem integrableOn_Ico_iff_integrableOn_Ioo' (ha : μ {a} ≠ ∞) :
    IntegrableOn f (Ico a b) μ ↔ IntegrableOn f (Ioo a b) μ := by
  by_cases hab : a < b
  · rw [← Ioo_union_left hab, integrableOn_union,
      eq_true (integrableOn_singleton_iff.mpr <| Or.inr ha.lt_top), and_true_iff]
  · rw [Ioo_eq_empty hab, Ico_eq_empty hab]
#align integrable_on_Ico_iff_integrable_on_Ioo' integrableOn_Ico_iff_integrableOn_Ioo'

theorem integrableOn_Ioc_iff_integrableOn_Ioo' (hb : μ {b} ≠ ∞) :
    IntegrableOn f (Ioc a b) μ ↔ IntegrableOn f (Ioo a b) μ := by
  by_cases hab : a < b
  · rw [← Ioo_union_right hab, integrableOn_union,
      eq_true (integrableOn_singleton_iff.mpr <| Or.inr hb.lt_top), and_true_iff]
  · rw [Ioo_eq_empty hab, Ioc_eq_empty hab]
#align integrable_on_Ioc_iff_integrable_on_Ioo' integrableOn_Ioc_iff_integrableOn_Ioo'

theorem integrableOn_Icc_iff_integrableOn_Ioo' (ha : μ {a} ≠ ∞) (hb : μ {b} ≠ ∞) :
    IntegrableOn f (Icc a b) μ ↔ IntegrableOn f (Ioo a b) μ := by
  rw [integrableOn_Icc_iff_integrableOn_Ioc' ha, integrableOn_Ioc_iff_integrableOn_Ioo' hb]
#align integrable_on_Icc_iff_integrable_on_Ioo' integrableOn_Icc_iff_integrableOn_Ioo'

theorem integrableOn_Ici_iff_integrableOn_Ioi' (hb : μ {b} ≠ ∞) :
    IntegrableOn f (Ici b) μ ↔ IntegrableOn f (Ioi b) μ := by
  rw [← Ioi_union_left, integrableOn_union,
    eq_true (integrableOn_singleton_iff.mpr <| Or.inr hb.lt_top), and_true_iff]
#align integrable_on_Ici_iff_integrable_on_Ioi' integrableOn_Ici_iff_integrableOn_Ioi'

theorem integrableOn_Iic_iff_integrableOn_Iio' (hb : μ {b} ≠ ∞) :
    IntegrableOn f (Iic b) μ ↔ IntegrableOn f (Iio b) μ := by
  rw [← Iio_union_right, integrableOn_union,
    eq_true (integrableOn_singleton_iff.mpr <| Or.inr hb.lt_top), and_true_iff]
#align integrable_on_Iic_iff_integrable_on_Iio' integrableOn_Iic_iff_integrableOn_Iio'

variable [NoAtoms μ]

theorem integrableOn_Icc_iff_integrableOn_Ioc :
    IntegrableOn f (Icc a b) μ ↔ IntegrableOn f (Ioc a b) μ :=
  integrableOn_Icc_iff_integrableOn_Ioc' (by rw [measure_singleton]; exact ENNReal.zero_ne_top)
#align integrable_on_Icc_iff_integrable_on_Ioc integrableOn_Icc_iff_integrableOn_Ioc

theorem integrableOn_Icc_iff_integrableOn_Ico :
    IntegrableOn f (Icc a b) μ ↔ IntegrableOn f (Ico a b) μ :=
  integrableOn_Icc_iff_integrableOn_Ico' (by rw [measure_singleton]; exact ENNReal.zero_ne_top)
#align integrable_on_Icc_iff_integrable_on_Ico integrableOn_Icc_iff_integrableOn_Ico

theorem integrableOn_Ico_iff_integrableOn_Ioo :
    IntegrableOn f (Ico a b) μ ↔ IntegrableOn f (Ioo a b) μ :=
  integrableOn_Ico_iff_integrableOn_Ioo' (by rw [measure_singleton]; exact ENNReal.zero_ne_top)
#align integrable_on_Ico_iff_integrable_on_Ioo integrableOn_Ico_iff_integrableOn_Ioo

theorem integrableOn_Ioc_iff_integrableOn_Ioo :
    IntegrableOn f (Ioc a b) μ ↔ IntegrableOn f (Ioo a b) μ :=
  integrableOn_Ioc_iff_integrableOn_Ioo' (by rw [measure_singleton]; exact ENNReal.zero_ne_top)
#align integrable_on_Ioc_iff_integrable_on_Ioo integrableOn_Ioc_iff_integrableOn_Ioo

theorem integrableOn_Icc_iff_integrableOn_Ioo :
    IntegrableOn f (Icc a b) μ ↔ IntegrableOn f (Ioo a b) μ := by
  rw [integrableOn_Icc_iff_integrableOn_Ioc, integrableOn_Ioc_iff_integrableOn_Ioo]
#align integrable_on_Icc_iff_integrable_on_Ioo integrableOn_Icc_iff_integrableOn_Ioo

theorem integrableOn_Ici_iff_integrableOn_Ioi :
    IntegrableOn f (Ici b) μ ↔ IntegrableOn f (Ioi b) μ :=
  integrableOn_Ici_iff_integrableOn_Ioi' (by rw [measure_singleton]; exact ENNReal.zero_ne_top)
#align integrable_on_Ici_iff_integrable_on_Ioi integrableOn_Ici_iff_integrableOn_Ioi

theorem integrableOn_Iic_iff_integrableOn_Iio :
    IntegrableOn f (Iic b) μ ↔ IntegrableOn f (Iio b) μ :=
  integrableOn_Iic_iff_integrableOn_Iio' (by rw [measure_singleton]; exact ENNReal.zero_ne_top)
#align integrable_on_Iic_iff_integrable_on_Iio integrableOn_Iic_iff_integrableOn_Iio

end PartialOrder
```
