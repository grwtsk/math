-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.MeasurableSetIntegrable.Variantcb780861b7c076d65e9340a47a94995daeb260e19b47695b7aae95d0660bcc3b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cb780861b7c076d65e9340a47a94995daeb260e19b47695b7aae95d0660bcc3b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.MeasurableSetIntegrable.Variantcb780861b7c076d65e9340a47a94995daeb260e19b47695b7aae95d0660bcc3b","mathematical_subject":"Analysis.Integration","original_sha256":"cb780861b7c076d65e9340a47a94995daeb260e19b47695b7aae95d0660bcc3b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/MeasureTheory/Constructions/Prod/Integral.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Floris van Doorn. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Floris van Doorn
-/
import Mathlib.MeasureTheory.Constructions.Prod.Basic
import Mathlib.MeasureTheory.Integral.SetIntegral


namespace GRWTSK.Analysis.RealAnalysis.Integration.MeasurableSetIntegrable.Variantcb780861b7c076d65e9340a47a94995daeb260e19b47695b7aae95d0660bcc3b

#align_import measure_theory.constructions.prod.integral from "leanprover-community/mathlib"@"fd5edc43dc4f10b85abfe544b88f82cf13c5f844"

/-!
# Integration with respect to the product measure

In this file we prove Fubini's theorem.

## Main results

* `MeasureTheory.integrable_prod_iff` states that a binary function is integrable iff both
  * `y ↦ f (x, y)` is integrable for almost every `x`, and
  * the function `x ↦ ∫ ‖f (x, y)‖ dy` is integrable.
* `MeasureTheory.integral_prod`: Fubini's theorem. It states that for an integrable function
  `α × β → E` (where `E` is a second countable Banach space) we have
  `∫ z, f z ∂(μ.prod ν) = ∫ x, ∫ y, f (x, y) ∂ν ∂μ`. This theorem has the same variants as
  Tonelli's theorem (see `MeasureTheory.lintegral_prod`). The lemma
  `MeasureTheory.Integrable.integral_prod_right` states that the inner integral of the right-hand
  side is integrable.

## Tags

product measure, Fubini's theorem, Fubini-Tonelli theorem
-/


noncomputable section

open scoped Classical Topology ENNReal MeasureTheory

open Set Function Real ENNReal

open MeasureTheory MeasurableSpace MeasureTheory.Measure

open TopologicalSpace

open Filter hiding prod_eq map

variable {α α' β β' γ E : Type*}

variable [MeasurableSpace α] [MeasurableSpace α'] [MeasurableSpace β] [MeasurableSpace β']

variable [MeasurableSpace γ]

variable {μ μ' : Measure α} {ν ν' : Measure β} {τ : Measure γ}

variable [NormedAddCommGroup E]

/-! ### Measurability

Before we define the product measure, we can talk about the measurability of operations on binary
functions. We show that if `f` is a binary measurable function, then the function that integrates
along one of the variables (using either the Lebesgue or Bochner integral) is measurable.
-/


theorem measurableSet_integrable [SigmaFinite ν] ⦃f : α → β → E⦄
    (hf : StronglyMeasurable (uncurry f)) : MeasurableSet {x | Integrable (f x) ν} := by
  simp_rw [Integrable, hf.of_uncurry_left.aestronglyMeasurable, true_and_iff]
  exact measurableSet_lt (Measurable.lintegral_prod_right hf.ennnorm) measurable_const
#align measurable_set_integrable measurableSet_integrable

section

variable [NormedSpace ℝ E] [CompleteSpace E]

/-- The Bochner integral is measurable. This shows that the integrand of (the right-hand-side of)
  Fubini's theorem is measurable.
  This version has `f` in curried form. -/
theorem MeasureTheory.StronglyMeasurable.integral_prod_right [SigmaFinite ν] ⦃f : α → β → E⦄
    (hf : StronglyMeasurable (uncurry f)) : StronglyMeasurable fun x => ∫ y, f x y ∂ν := by
  borelize E
  haveI : SeparableSpace (range (uncurry f) ∪ {0} : Set E) :=
    hf.separableSpace_range_union_singleton
  let s : ℕ → SimpleFunc (α × β) E :=
    SimpleFunc.approxOn _ hf.measurable (range (uncurry f) ∪ {0}) 0 (by simp)
  let s' : ℕ → α → SimpleFunc β E := fun n x => (s n).comp (Prod.mk x) measurable_prod_mk_left
  let f' : ℕ → α → E := fun n => {x | Integrable (f x) ν}.indicator fun x => (s' n x).integral ν
  have hf' : ∀ n, StronglyMeasurable (f' n) := by
    intro n; refine' StronglyMeasurable.indicator _ (measurableSet_integrable hf)
    have : ∀ x, ((s' n x).range.filter fun x => x ≠ 0) ⊆ (s n).range := by
      intro x; refine' Finset.Subset.trans (Finset.filter_subset _ _) _; intro y
      simp_rw [SimpleFunc.mem_range]; rintro ⟨z, rfl⟩; exact ⟨(x, z), rfl⟩
    simp only [SimpleFunc.integral_eq_sum_of_subset (this _)]
    refine' Finset.stronglyMeasurable_sum _ fun x _ => _
    refine' (Measurable.ennreal_toReal _).stronglyMeasurable.smul_const _
    simp (config := { singlePass := true }) only [SimpleFunc.coe_comp, preimage_comp]
    apply measurable_measure_prod_mk_left
    exact (s n).measurableSet_fiber x
  have h2f' : Tendsto f' atTop (𝓝 fun x : α => ∫ y : β, f x y ∂ν) := by
    rw [tendsto_pi_nhds]; intro x
    by_cases hfx : Integrable (f x) ν
    · have : ∀ n, Integrable (s' n x) ν := by
        intro n; apply (hfx.norm.add hfx.norm).mono' (s' n x).aestronglyMeasurable
        apply eventually_of_forall; intro y
        simp_rw [SimpleFunc.coe_comp]; exact SimpleFunc.norm_approxOn_zero_le _ _ (x, y) n
      simp only [hfx, SimpleFunc.integral_eq_integral _ (this _), indicator_of_mem,
        mem_setOf_eq]
      refine'
        tendsto_integral_of_dominated_convergence (fun y => ‖f x y‖ + ‖f x y‖)
          (fun n => (s' n x).aestronglyMeasurable) (hfx.norm.add hfx.norm) _ _
      · refine' fun n => eventually_of_forall fun y => SimpleFunc.norm_approxOn_zero_le _ _ (x, y) n
        -- Porting note: Lean 3 solved the following two subgoals on its own
        · exact hf.measurable
        · simp
      · refine' eventually_of_forall fun y => SimpleFunc.tendsto_approxOn _ _ _
        -- Porting note: Lean 3 solved the following two subgoals on its own
        · exact hf.measurable.of_uncurry_left
        · simp
        apply subset_closure
        simp [-uncurry_apply_pair]
    · simp [hfx, integral_undef]
  exact stronglyMeasurable_of_tendsto _ hf' h2f'
#align measure_theory.strongly_measurable.integral_prod_right MeasureTheory.StronglyMeasurable.integral_prod_right

/-- The Bochner integral is measurable. This shows that the integrand of (the right-hand-side of)
  Fubini's theorem is measurable. -/
theorem MeasureTheory.StronglyMeasurable.integral_prod_right' [SigmaFinite ν] ⦃f : α × β → E⦄
    (hf : StronglyMeasurable f) : StronglyMeasurable fun x => ∫ y, f (x, y) ∂ν := by
  rw [← uncurry_curry f] at hf; exact hf.integral_prod_right
#align measure_theory.strongly_measurable.integral_prod_right' MeasureTheory.StronglyMeasurable.integral_prod_right'

/-- The Bochner integral is measurable. This shows that the integrand of (the right-hand-side of)
  the symmetric version of Fubini's theorem is measurable.
  This version has `f` in curried form. -/
theorem MeasureTheory.StronglyMeasurable.integral_prod_left [SigmaFinite μ] ⦃f : α → β → E⦄
    (hf : StronglyMeasurable (uncurry f)) : StronglyMeasurable fun y => ∫ x, f x y ∂μ :=
  (hf.comp_measurable measurable_swap).integral_prod_right'
#align measure_theory.strongly_measurable.integral_prod_left MeasureTheory.StronglyMeasurable.integral_prod_left

/-- The Bochner integral is measurable. This shows that the integrand of (the right-hand-side of)
  the symmetric version of Fubini's theorem is measurable. -/
theorem MeasureTheory.StronglyMeasurable.integral_prod_left' [SigmaFinite μ] ⦃f : α × β → E⦄
    (hf : StronglyMeasurable f) : StronglyMeasurable fun y => ∫ x, f (x, y) ∂μ :=
  (hf.comp_measurable measurable_swap).integral_prod_right'
#align measure_theory.strongly_measurable.integral_prod_left' MeasureTheory.StronglyMeasurable.integral_prod_left'

end

/-! ### The product measure -/


namespace MeasureTheory

namespace Measure

variable [SigmaFinite ν]

theorem integrable_measure_prod_mk_left {s : Set (α × β)} (hs : MeasurableSet s)
    (h2s : (μ.prod ν) s ≠ ∞) : Integrable (fun x => (ν (Prod.mk x ⁻¹' s)).toReal) μ := by
  refine' ⟨(measurable_measure_prod_mk_left hs).ennreal_toReal.aemeasurable.aestronglyMeasurable, _⟩
  simp_rw [HasFiniteIntegral, ennnorm_eq_ofReal toReal_nonneg]
  convert h2s.lt_top using 1
  -- Porting note: was `simp_rw`
  rw [prod_apply hs]
  apply lintegral_congr_ae
  refine' (ae_measure_lt_top hs h2s).mp _; apply eventually_of_forall; intro x hx
  rw [lt_top_iff_ne_top] at hx; simp [ofReal_toReal, hx]
#align measure_theory.measure.integrable_measure_prod_mk_left MeasureTheory.Measure.integrable_measure_prod_mk_left

end Measure

open Measure

end MeasureTheory

open MeasureTheory.Measure

section

nonrec theorem MeasureTheory.AEStronglyMeasurable.prod_swap {γ : Type*} [TopologicalSpace γ]
    [SigmaFinite μ] [SigmaFinite ν] {f : β × α → γ} (hf : AEStronglyMeasurable f (ν.prod μ)) :
    AEStronglyMeasurable (fun z : α × β => f z.swap) (μ.prod ν) := by
  rw [← prod_swap] at hf
  exact hf.comp_measurable measurable_swap
#align measure_theory.ae_strongly_measurable.prod_swap MeasureTheory.AEStronglyMeasurable.prod_swap

theorem MeasureTheory.AEStronglyMeasurable.fst {γ} [TopologicalSpace γ] [SigmaFinite ν] {f : α → γ}
    (hf : AEStronglyMeasurable f μ) : AEStronglyMeasurable (fun z : α × β => f z.1) (μ.prod ν) :=
  hf.comp_quasiMeasurePreserving quasiMeasurePreserving_fst
#align measure_theory.ae_strongly_measurable.fst MeasureTheory.AEStronglyMeasurable.fst

theorem MeasureTheory.AEStronglyMeasurable.snd {γ} [TopologicalSpace γ] [SigmaFinite ν] {f : β → γ}
    (hf : AEStronglyMeasurable f ν) : AEStronglyMeasurable (fun z : α × β => f z.2) (μ.prod ν) :=
  hf.comp_quasiMeasurePreserving quasiMeasurePreserving_snd
#align measure_theory.ae_strongly_measurable.snd MeasureTheory.AEStronglyMeasurable.snd

/-- The Bochner integral is a.e.-measurable.
  This shows that the integrand of (the right-hand-side of) Fubini's theorem is a.e.-measurable. -/
theorem MeasureTheory.AEStronglyMeasurable.integral_prod_right' [SigmaFinite ν] [NormedSpace ℝ E]
    [CompleteSpace E] ⦃f : α × β → E⦄ (hf : AEStronglyMeasurable f (μ.prod ν)) :
    AEStronglyMeasurable (fun x => ∫ y, f (x, y) ∂ν) μ :=
  ⟨fun x => ∫ y, hf.mk f (x, y) ∂ν, hf.stronglyMeasurable_mk.integral_prod_right', by
    filter_upwards [ae_ae_of_ae_prod hf.ae_eq_mk] with _ hx using integral_congr_ae hx⟩
#align measure_theory.ae_strongly_measurable.integral_prod_right' MeasureTheory.AEStronglyMeasurable.integral_prod_right'

theorem MeasureTheory.AEStronglyMeasurable.prod_mk_left {γ : Type*} [SigmaFinite ν]
    [TopologicalSpace γ] {f : α × β → γ} (hf : AEStronglyMeasurable f (μ.prod ν)) :
    ∀ᵐ x ∂μ, AEStronglyMeasurable (fun y => f (x, y)) ν := by
  filter_upwards [ae_ae_of_ae_prod hf.ae_eq_mk] with x hx
  exact
    ⟨fun y => hf.mk f (x, y), hf.stronglyMeasurable_mk.comp_measurable measurable_prod_mk_left, hx⟩
#align measure_theory.ae_strongly_measurable.prod_mk_left MeasureTheory.AEStronglyMeasurable.prod_mk_left

end

namespace MeasureTheory

variable [SigmaFinite ν]

/-! ### Integrability on a product -/


section

theorem Integrable.swap [SigmaFinite μ] ⦃f : α × β → E⦄ (hf : Integrable f (μ.prod ν)) :
    Integrable (f ∘ Prod.swap) (ν.prod μ) :=
  ⟨hf.aestronglyMeasurable.prod_swap,
    (lintegral_prod_swap _ hf.aestronglyMeasurable.ennnorm : _).le.trans_lt hf.hasFiniteIntegral⟩
#align measure_theory.integrable.swap MeasureTheory.Integrable.swap

theorem integrable_swap_iff [SigmaFinite μ] ⦃f : α × β → E⦄ :
    Integrable (f ∘ Prod.swap) (ν.prod μ) ↔ Integrable f (μ.prod ν) :=
  ⟨fun hf => hf.swap, fun hf => hf.swap⟩
#align measure_theory.integrable_swap_iff MeasureTheory.integrable_swap_iff

theorem hasFiniteIntegral_prod_iff ⦃f : α × β → E⦄ (h1f : StronglyMeasurable f) :
    HasFiniteIntegral f (μ.prod ν) ↔
      (∀ᵐ x ∂μ, HasFiniteIntegral (fun y => f (x, y)) ν) ∧
        HasFiniteIntegral (fun x => ∫ y, ‖f (x, y)‖ ∂ν) μ := by
  simp only [HasFiniteIntegral]
  -- Porting note: was `simp`
  rw [lintegral_prod_of_measurable _ h1f.ennnorm]
  have : ∀ x, ∀ᵐ y ∂ν, 0 ≤ ‖f (x, y)‖ := fun x => eventually_of_forall fun y => norm_nonneg _
  simp_rw [integral_eq_lintegral_of_nonneg_ae (this _)
      (h1f.norm.comp_measurable measurable_prod_mk_left).aestronglyMeasurable,
    ennnorm_eq_ofReal toReal_nonneg, ofReal_norm_eq_coe_nnnorm]
  -- this fact is probably too specialized to be its own lemma
  have : ∀ {p q r : Prop} (_ : r → p), (r ↔ p ∧ q) ↔ p → (r ↔ q) := fun {p q r} h1 => by
    rw [← and_congr_right_iff, and_iff_right_of_imp h1]
  rw [this]
  · intro h2f; rw [lintegral_congr_ae]
    refine' h2f.mp _; apply eventually_of_forall; intro x hx; dsimp only
    rw [ofReal_toReal]; rw [← lt_top_iff_ne_top]; exact hx
  · intro h2f; refine' ae_lt_top _ h2f.ne; exact h1f.ennnorm.lintegral_prod_right'
#align measure_theory.has_finite_integral_prod_iff MeasureTheory.hasFiniteIntegral_prod_iff

theorem hasFiniteIntegral_prod_iff' ⦃f : α × β → E⦄ (h1f : AEStronglyMeasurable f (μ.prod ν)) :
    HasFiniteIntegral f (μ.prod ν) ↔
      (∀ᵐ x ∂μ, HasFiniteIntegral (fun y => f (x, y)) ν) ∧
        HasFiniteIntegral (fun x => ∫ y, ‖f (x, y)‖ ∂ν) μ := by
  rw [hasFiniteIntegral_congr h1f.ae_eq_mk,
    hasFiniteIntegral_prod_iff h1f.stronglyMeasurable_mk]
  apply and_congr
  · apply eventually_congr
    filter_upwards [ae_ae_of_ae_prod h1f.ae_eq_mk.symm]
    intro x hx
    exact hasFiniteIntegral_congr hx
  · apply hasFiniteIntegral_congr
    filter_upwards [ae_ae_of_ae_prod h1f.ae_eq_mk.symm] with _ hx using
      integral_congr_ae (EventuallyEq.fun_comp hx _)
#align measure_theory.has_finite_integral_prod_iff' MeasureTheory.hasFiniteIntegral_prod_iff'

/-- A binary function is integrable if the function `y ↦ f (x, y)` is integrable for almost every
  `x` and the function `x ↦ ∫ ‖f (x, y)‖ dy` is integrable. -/
theorem integrable_prod_iff ⦃f : α × β → E⦄ (h1f : AEStronglyMeasurable f (μ.prod ν)) :
    Integrable f (μ.prod ν) ↔
      (∀ᵐ x ∂μ, Integrable (fun y => f (x, y)) ν) ∧ Integrable (fun x => ∫ y, ‖f (x, y)‖ ∂ν) μ := by
  simp [Integrable, h1f, hasFiniteIntegral_prod_iff', h1f.norm.integral_prod_right',
    h1f.prod_mk_left]
#align measure_theory.integrable_prod_iff MeasureTheory.integrable_prod_iff

/-- A binary function is integrable if the function `x ↦ f (x, y)` is integrable for almost every
  `y` and the function `y ↦ ∫ ‖f (x, y)‖ dx` is integrable. -/
theorem integrable_prod_iff' [SigmaFinite μ] ⦃f : α × β → E⦄
    (h1f : AEStronglyMeasurable f (μ.prod ν)) :
    Integrable f (μ.prod ν) ↔
      (∀ᵐ y ∂ν, Integrable (fun x => f (x, y)) μ) ∧ Integrable (fun y => ∫ x, ‖f (x, y)‖ ∂μ) ν := by
  convert integrable_prod_iff h1f.prod_swap using 1
  rw [funext fun _ => Function.comp_apply.symm, integrable_swap_iff]
#align measure_theory.integrable_prod_iff' MeasureTheory.integrable_prod_iff'

theorem Integrable.prod_left_ae [SigmaFinite μ] ⦃f : α × β → E⦄ (hf : Integrable f (μ.prod ν)) :
    ∀ᵐ y ∂ν, Integrable (fun x => f (x, y)) μ :=
  ((integrable_prod_iff' hf.aestronglyMeasurable).mp hf).1
#align measure_theory.integrable.prod_left_ae MeasureTheory.Integrable.prod_left_ae

theorem Integrable.prod_right_ae [SigmaFinite μ] ⦃f : α × β → E⦄ (hf : Integrable f (μ.prod ν)) :
    ∀ᵐ x ∂μ, Integrable (fun y => f (x, y)) ν :=
  hf.swap.prod_left_ae
#align measure_theory.integrable.prod_right_ae MeasureTheory.Integrable.prod_right_ae

theorem Integrable.integral_norm_prod_left ⦃f : α × β → E⦄ (hf : Integrable f (μ.prod ν)) :
    Integrable (fun x => ∫ y, ‖f (x, y)‖ ∂ν) μ :=
  ((integrable_prod_iff hf.aestronglyMeasurable).mp hf).2
#align measure_theory.integrable.integral_norm_prod_left MeasureTheory.Integrable.integral_norm_prod_left

theorem Integrable.integral_norm_prod_right [SigmaFinite μ] ⦃f : α × β → E⦄
    (hf : Integrable f (μ.prod ν)) : Integrable (fun y => ∫ x, ‖f (x, y)‖ ∂μ) ν :=
  hf.swap.integral_norm_prod_left
#align measure_theory.integrable.integral_norm_prod_right MeasureTheory.Integrable.integral_norm_prod_right

theorem integrable_prod_mul {L : Type*} [IsROrC L] {f : α → L} {g : β → L} (hf : Integrable f μ)
    (hg : Integrable g ν) : Integrable (fun z : α × β => f z.1 * g z.2) (μ.prod ν) := by
  refine' (integrable_prod_iff _).2 ⟨_, _⟩
  · exact hf.1.fst.mul hg.1.snd
  · exact eventually_of_forall fun x => hg.const_mul (f x)
  · simpa only [norm_mul, integral_mul_left] using hf.norm.mul_const _
#align measure_theory.integrable_prod_mul MeasureTheory.integrable_prod_mul

end

variable [NormedSpace ℝ E] [CompleteSpace E]

theorem Integrable.integral_prod_left ⦃f : α × β → E⦄ (hf : Integrable f (μ.prod ν)) :
    Integrable (fun x => ∫ y, f (x, y) ∂ν) μ :=
  Integrable.mono hf.integral_norm_prod_left hf.aestronglyMeasurable.integral_prod_right' <|
    eventually_of_forall fun x =>
      (norm_integral_le_integral_norm _).trans_eq <|
        (norm_of_nonneg <|
            integral_nonneg_of_ae <|
              eventually_of_forall fun y => (norm_nonneg (f (x, y)) : _)).symm
#align measure_theory.integrable.integral_prod_left MeasureTheory.Integrable.integral_prod_left

theorem Integrable.integral_prod_right [SigmaFinite μ] ⦃f : α × β → E⦄
    (hf : Integrable f (μ.prod ν)) : Integrable (fun y => ∫ x, f (x, y) ∂μ) ν :=
  hf.swap.integral_prod_left
#align measure_theory.integrable.integral_prod_right MeasureTheory.Integrable.integral_prod_right

/-! ### The Bochner integral on a product -/


variable [SigmaFinite μ]

theorem integral_prod_swap (f : α × β → E) (hf : AEStronglyMeasurable f (μ.prod ν)) :
    ∫ z, f z.swap ∂ν.prod μ = ∫ z, f z ∂μ.prod ν := by
  rw [← prod_swap] at hf
  rw [← integral_map measurable_swap.aemeasurable hf, prod_swap]
#align measure_theory.integral_prod_swap MeasureTheory.integral_prod_swap

variable {E' : Type*} [NormedAddCommGroup E'] [CompleteSpace E'] [NormedSpace ℝ E']

/-! Some rules about the sum/difference of double integrals. They follow from `integral_add`, but
  we separate them out as separate lemmas, because they involve quite some steps. -/


/-- Integrals commute with addition inside another integral. `F` can be any function. -/
theorem integral_fn_integral_add ⦃f g : α × β → E⦄ (F : E → E') (hf : Integrable f (μ.prod ν))
    (hg : Integrable g (μ.prod ν)) :
    (∫ x, F (∫ y, f (x, y) + g (x, y) ∂ν) ∂μ) =
      ∫ x, F ((∫ y, f (x, y) ∂ν) + ∫ y, g (x, y) ∂ν) ∂μ := by
  refine' integral_congr_ae _
  filter_upwards [hf.prod_right_ae, hg.prod_right_ae] with _ h2f h2g
  simp [integral_add h2f h2g]
#align measure_theory.integral_fn_integral_add MeasureTheory.integral_fn_integral_add

/-- Integrals commute with subtraction inside another integral.
  `F` can be any measurable function. -/
theorem integral_fn_integral_sub ⦃f g : α × β → E⦄ (F : E → E') (hf : Integrable f (μ.prod ν))
    (hg : Integrable g (μ.prod ν)) :
    (∫ x, F (∫ y, f (x, y) - g (x, y) ∂ν) ∂μ) =
      ∫ x, F ((∫ y, f (x, y) ∂ν) - ∫ y, g (x, y) ∂ν) ∂μ := by
  refine' integral_congr_ae _
  filter_upwards [hf.prod_right_ae, hg.prod_right_ae] with _ h2f h2g
  simp [integral_sub h2f h2g]
#align measure_theory.integral_fn_integral_sub MeasureTheory.integral_fn_integral_sub

/-- Integrals commute with subtraction inside a lower Lebesgue integral.
  `F` can be any function. -/
theorem lintegral_fn_integral_sub ⦃f g : α × β → E⦄ (F : E → ℝ≥0∞) (hf : Integrable f (μ.prod ν))
    (hg : Integrable g (μ.prod ν)) :
    (∫⁻ x, F (∫ y, f (x, y) - g (x, y) ∂ν) ∂μ) =
      ∫⁻ x, F ((∫ y, f (x, y) ∂ν) - ∫ y, g (x, y) ∂ν) ∂μ := by
  refine' lintegral_congr_ae _
  filter_upwards [hf.prod_right_ae, hg.prod_right_ae] with _ h2f h2g
  simp [integral_sub h2f h2g]
#align measure_theory.lintegral_fn_integral_sub MeasureTheory.lintegral_fn_integral_sub

/-- Double integrals commute with addition. -/
theorem integral_integral_add ⦃f g : α × β → E⦄ (hf : Integrable f (μ.prod ν))
    (hg : Integrable g (μ.prod ν)) :
    (∫ x, ∫ y, f (x, y) + g (x, y) ∂ν ∂μ) = (∫ x, ∫ y, f (x, y) ∂ν ∂μ) + ∫ x, ∫ y, g (x, y) ∂ν ∂μ :=
  (integral_fn_integral_add id hf hg).trans <|
    integral_add hf.integral_prod_left hg.integral_prod_left
#align measure_theory.integral_integral_add MeasureTheory.integral_integral_add

/-- Double integrals commute with addition. This is the version with `(f + g) (x, y)`
  (instead of `f (x, y) + g (x, y)`) in the LHS. -/
theorem integral_integral_add' ⦃f g : α × β → E⦄ (hf : Integrable f (μ.prod ν))
    (hg : Integrable g (μ.prod ν)) :
    (∫ x, ∫ y, (f + g) (x, y) ∂ν ∂μ) = (∫ x, ∫ y, f (x, y) ∂ν ∂μ) + ∫ x, ∫ y, g (x, y) ∂ν ∂μ :=
  integral_integral_add hf hg
#align measure_theory.integral_integral_add' MeasureTheory.integral_integral_add'

/-- Double integrals commute with subtraction. -/
theorem integral_integral_sub ⦃f g : α × β → E⦄ (hf : Integrable f (μ.prod ν))
    (hg : Integrable g (μ.prod ν)) :
    (∫ x, ∫ y, f (x, y) - g (x, y) ∂ν ∂μ) = (∫ x, ∫ y, f (x, y) ∂ν ∂μ) - ∫ x, ∫ y, g (x, y) ∂ν ∂μ :=
  (integral_fn_integral_sub id hf hg).trans <|
    integral_sub hf.integral_prod_left hg.integral_prod_left
#align measure_theory.integral_integral_sub MeasureTheory.integral_integral_sub

/-- Double integrals commute with subtraction. This is the version with `(f - g) (x, y)`
  (instead of `f (x, y) - g (x, y)`) in the LHS. -/
theorem integral_integral_sub' ⦃f g : α × β → E⦄ (hf : Integrable f (μ.prod ν))
    (hg : Integrable g (μ.prod ν)) :
    (∫ x, ∫ y, (f - g) (x, y) ∂ν ∂μ) = (∫ x, ∫ y, f (x, y) ∂ν ∂μ) - ∫ x, ∫ y, g (x, y) ∂ν ∂μ :=
  integral_integral_sub hf hg
#align measure_theory.integral_integral_sub' MeasureTheory.integral_integral_sub'

/-- The map that sends an L¹-function `f : α × β → E` to `∫∫f` is continuous. -/
theorem continuous_integral_integral :
    Continuous fun f : α × β →₁[μ.prod ν] E => ∫ x, ∫ y, f (x, y) ∂ν ∂μ := by
  rw [continuous_iff_continuousAt]; intro g
  refine'
    tendsto_integral_of_L1 _ (L1.integrable_coeFn g).integral_prod_left
      (eventually_of_forall fun h => (L1.integrable_coeFn h).integral_prod_left) _
  simp_rw [←
    lintegral_fn_integral_sub (fun x => (‖x‖₊ : ℝ≥0∞)) (L1.integrable_coeFn _)
      (L1.integrable_coeFn g)]
  refine' tendsto_of_tendsto_of_tendsto_of_le_of_le tendsto_const_nhds _ (fun i => zero_le _) _
  · exact fun i => ∫⁻ x, ∫⁻ y, ‖i (x, y) - g (x, y)‖₊ ∂ν ∂μ
  swap; · exact fun i => lintegral_mono fun x => ennnorm_integral_le_lintegral_ennnorm _
  show
    Tendsto (fun i : α × β →₁[μ.prod ν] E => ∫⁻ x, ∫⁻ y : β, ‖i (x, y) - g (x, y)‖₊ ∂ν ∂μ) (𝓝 g)
      (𝓝 0)
  have : ∀ i : α × β →₁[μ.prod ν] E, Measurable fun z => (‖i z - g z‖₊ : ℝ≥0∞) := fun i =>
    ((Lp.stronglyMeasurable i).sub (Lp.stronglyMeasurable g)).ennnorm
  -- Porting note: was
  -- simp_rw [← lintegral_prod_of_measurable _ (this _), ← L1.ofReal_norm_sub_eq_lintegral, ←
  --   ofReal_zero]
  conv =>
    congr
    ext
    rw [← lintegral_prod_of_measurable _ (this _), ← L1.ofReal_norm_sub_eq_lintegral]
  rw [← ofReal_zero]
  refine' (continuous_ofReal.tendsto 0).comp _
  rw [← tendsto_iff_norm_tendsto_zero]; exact tendsto_id
#align measure_theory.continuous_integral_integral MeasureTheory.continuous_integral_integral

/-- **Fubini's Theorem**: For integrable functions on `α × β`,
  the Bochner integral of `f` is equal to the iterated Bochner integral.
  `integrable_prod_iff` can be useful to show that the function in question in integrable.
  `MeasureTheory.Integrable.integral_prod_right` is useful to show that the inner integral
  of the right-hand side is integrable. -/
theorem integral_prod :
    ∀ (f : α × β → E) (_ : Integrable f (μ.prod ν)),
      ∫ z, f z ∂μ.prod ν = ∫ x, ∫ y, f (x, y) ∂ν ∂μ := by
  apply Integrable.induction
  · intro c s hs h2s
    simp_rw [integral_indicator hs, ← indicator_comp_right, Function.comp,
      integral_indicator (measurable_prod_mk_left hs), set_integral_const, integral_smul_const,
      integral_toReal (measurable_measure_prod_mk_left hs).aemeasurable
        (ae_measure_lt_top hs h2s.ne)]
    -- Porting note: was `simp_rw`
    rw [prod_apply hs]
  · rintro f g - i_f i_g hf hg
    simp_rw [integral_add' i_f i_g, integral_integral_add' i_f i_g, hf, hg]
  · exact isClosed_eq continuous_integral continuous_integral_integral
  · rintro f g hfg - hf; convert hf using 1
    · exact integral_congr_ae hfg.symm
    · refine' integral_congr_ae _
      refine' (ae_ae_of_ae_prod hfg).mp _
      apply eventually_of_forall; intro x hfgx
      exact integral_congr_ae (ae_eq_symm hfgx)
#align measure_theory.integral_prod MeasureTheory.integral_prod

/-- Symmetric version of **Fubini's Theorem**: For integrable functions on `α × β`,
  the Bochner integral of `f` is equal to the iterated Bochner integral.
  This version has the integrals on the right-hand side in the other order. -/
theorem integral_prod_symm (f : α × β → E) (hf : Integrable f (μ.prod ν)) :
    ∫ z, f z ∂μ.prod ν = ∫ y, ∫ x, f (x, y) ∂μ ∂ν := by
  simp_rw [← integral_prod_swap f hf.aestronglyMeasurable]; exact integral_prod _ hf.swap
#align measure_theory.integral_prod_symm MeasureTheory.integral_prod_symm

/-- Reversed version of **Fubini's Theorem**. -/
theorem integral_integral {f : α → β → E} (hf : Integrable (uncurry f) (μ.prod ν)) :
    ∫ x, ∫ y, f x y ∂ν ∂μ = ∫ z, f z.1 z.2 ∂μ.prod ν :=
  (integral_prod _ hf).symm
#align measure_theory.integral_integral MeasureTheory.integral_integral

/-- Reversed version of **Fubini's Theorem** (symmetric version). -/
theorem integral_integral_symm {f : α → β → E} (hf : Integrable (uncurry f) (μ.prod ν)) :
    ∫ x, ∫ y, f x y ∂ν ∂μ = ∫ z, f z.2 z.1 ∂ν.prod μ :=
  (integral_prod_symm _ hf.swap).symm
#align measure_theory.integral_integral_symm MeasureTheory.integral_integral_symm

/-- Change the order of Bochner integration. -/
theorem integral_integral_swap ⦃f : α → β → E⦄ (hf : Integrable (uncurry f) (μ.prod ν)) :
    ∫ x, ∫ y, f x y ∂ν ∂μ = ∫ y, ∫ x, f x y ∂μ ∂ν :=
  (integral_integral hf).trans (integral_prod_symm _ hf)
#align measure_theory.integral_integral_swap MeasureTheory.integral_integral_swap

/-- **Fubini's Theorem** for set integrals. -/
theorem set_integral_prod (f : α × β → E) {s : Set α} {t : Set β}
    (hf : IntegrableOn f (s ×ˢ t) (μ.prod ν)) :
    ∫ z in s ×ˢ t, f z ∂μ.prod ν = ∫ x in s, ∫ y in t, f (x, y) ∂ν ∂μ := by
  simp only [← Measure.prod_restrict s t, IntegrableOn] at hf ⊢
  exact integral_prod f hf
#align measure_theory.set_integral_prod MeasureTheory.set_integral_prod

theorem integral_prod_mul {L : Type*} [IsROrC L] (f : α → L) (g : β → L) :
    ∫ z, f z.1 * g z.2 ∂μ.prod ν = (∫ x, f x ∂μ) * ∫ y, g y ∂ν := by
  by_cases h : Integrable (fun z : α × β => f z.1 * g z.2) (μ.prod ν)
  · rw [integral_prod _ h]
    simp_rw [integral_mul_left, integral_mul_right]
  have H : ¬Integrable f μ ∨ ¬Integrable g ν := by
    contrapose! h
    exact integrable_prod_mul h.1 h.2
  cases' H with H H <;> simp [integral_undef h, integral_undef H]
#align measure_theory.integral_prod_mul MeasureTheory.integral_prod_mul

theorem set_integral_prod_mul {L : Type*} [IsROrC L] (f : α → L) (g : β → L) (s : Set α)
    (t : Set β) :
    ∫ z in s ×ˢ t, f z.1 * g z.2 ∂μ.prod ν = (∫ x in s, f x ∂μ) * ∫ y in t, g y ∂ν := by
  -- Porting note: added
  rw [← Measure.prod_restrict s t]
  simp only [← Measure.prod_restrict s t, IntegrableOn, integral_prod_mul]
#align measure_theory.set_integral_prod_mul MeasureTheory.set_integral_prod_mul

end MeasureTheory
