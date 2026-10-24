-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.HasFiniteIntegralProdMkLeft.Variantd19694fd92db98056a1d88f789eac0cbcbb4307bd423000d3744520ba2a3a3a7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d19694fd92db98056a1d88f789eac0cbcbb4307bd423000d3744520ba2a3a3a7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.HasFiniteIntegralProdMkLeft.Variantd19694fd92db98056a1d88f789eac0cbcbb4307bd423000d3744520ba2a3a3a7","mathematical_subject":"Analysis.Integration","original_sha256":"d19694fd92db98056a1d88f789eac0cbcbb4307bd423000d3744520ba2a3a3a7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Probability/Kernel/IntegralCompProd.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Rémy Degenne. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Rémy Degenne
-/
import Mathlib.Probability.Kernel.Composition
import Mathlib.MeasureTheory.Integral.SetIntegral


namespace GRWTSK.Analysis.RealAnalysis.Integration.HasFiniteIntegralProdMkLeft.Variantd19694fd92db98056a1d88f789eac0cbcbb4307bd423000d3744520ba2a3a3a7

#align_import probability.kernel.integral_comp_prod from "leanprover-community/mathlib"@"c0d694db494dd4f9aa57f2714b6e4c82b4ebc113"

/-!
# Bochner integral of a function against the composition-product of two kernels

We prove properties of the composition-product of two kernels. If `κ` is an s-finite kernel from
`α` to `β` and `η` is an s-finite kernel from `α × β` to `γ`, we can form their composition-product
`κ ⊗ₖ η : kernel α (β × γ)`. We proved in `ProbabilityTheory.kernel.lintegral_compProd` that it
verifies `∫⁻ bc, f bc ∂((κ ⊗ₖ η) a) = ∫⁻ b, ∫⁻ c, f (b, c) ∂(η (a, b)) ∂(κ a)`. In this file, we
prove the same equality for the Bochner integral.

## Main statements

* `ProbabilityTheory.integral_compProd`: the integral against the composition-product is
  `∫ z, f z ∂((κ ⊗ₖ η) a) = ∫ x, ∫ y, f (x, y) ∂(η (a, x)) ∂(κ a)`

## Implementation details

This file is to a large extent a copy of part of
`Mathlib/MeasureTheory/Constructions/Prod/Basic.lean`. The product of
two measures is a particular case of composition-product of kernels and it turns out that once the
measurablity of the Lebesgue integral of a kernel is proved, almost all proofs about integrals
against products of measures extend with minimal modifications to the composition-product of two
kernels.
-/


noncomputable section

open scoped Topology ENNReal MeasureTheory ProbabilityTheory

open Set Function Real ENNReal MeasureTheory Filter ProbabilityTheory ProbabilityTheory.kernel

variable {α β γ E : Type*} {mα : MeasurableSpace α} {mβ : MeasurableSpace β}
  {mγ : MeasurableSpace γ} [NormedAddCommGroup E] {κ : kernel α β} [IsSFiniteKernel κ]
  {η : kernel (α × β) γ} [IsSFiniteKernel η] {a : α}

namespace ProbabilityTheory

theorem hasFiniteIntegral_prod_mk_left (a : α) {s : Set (β × γ)} (h2s : (κ ⊗ₖ η) a s ≠ ∞) :
    HasFiniteIntegral (fun b => (η (a, b) (Prod.mk b ⁻¹' s)).toReal) (κ a) := by
  let t := toMeasurable ((κ ⊗ₖ η) a) s
  simp_rw [HasFiniteIntegral, ennnorm_eq_ofReal toReal_nonneg]
  calc
    ∫⁻ b, ENNReal.ofReal (η (a, b) (Prod.mk b ⁻¹' s)).toReal ∂κ a
    _ ≤ ∫⁻ b, η (a, b) (Prod.mk b ⁻¹' t) ∂κ a := by
      refine' lintegral_mono_ae _
      filter_upwards [ae_kernel_lt_top a h2s] with b hb
      rw [ofReal_toReal hb.ne]
      exact measure_mono (preimage_mono (subset_toMeasurable _ _))
    _ ≤ (κ ⊗ₖ η) a t := (le_compProd_apply _ _ _ _)
    _ = (κ ⊗ₖ η) a s := (measure_toMeasurable s)
    _ < ⊤ := h2s.lt_top
#align probability_theory.has_finite_integral_prod_mk_left ProbabilityTheory.hasFiniteIntegral_prod_mk_left

theorem integrable_kernel_prod_mk_left (a : α) {s : Set (β × γ)} (hs : MeasurableSet s)
    (h2s : (κ ⊗ₖ η) a s ≠ ∞) : Integrable (fun b => (η (a, b) (Prod.mk b ⁻¹' s)).toReal) (κ a) := by
  constructor
  · exact (measurable_kernel_prod_mk_left' hs a).ennreal_toReal.aestronglyMeasurable
  · exact hasFiniteIntegral_prod_mk_left a h2s
#align probability_theory.integrable_kernel_prod_mk_left ProbabilityTheory.integrable_kernel_prod_mk_left

theorem _root_.GRWTSK.Analysis.RealAnalysis.Integration.HasFiniteIntegralProdMkLeft.Variantd19694fd92db98056a1d88f789eac0cbcbb4307bd423000d3744520ba2a3a3a7.MeasureTheory.AEStronglyMeasurable.integral_kernel_compProd [NormedSpace ℝ E]
    [CompleteSpace E] ⦃f : β × γ → E⦄ (hf : AEStronglyMeasurable f ((κ ⊗ₖ η) a)) :
    AEStronglyMeasurable (fun x => ∫ y, f (x, y) ∂η (a, x)) (κ a) :=
  ⟨fun x => ∫ y, hf.mk f (x, y) ∂η (a, x), hf.stronglyMeasurable_mk.integral_kernel_prod_right'', by
    filter_upwards [ae_ae_of_ae_compProd hf.ae_eq_mk] with _ hx using integral_congr_ae hx⟩
#align measure_theory.ae_strongly_measurable.integral_kernel_comp_prod MeasureTheory.AEStronglyMeasurable.integral_kernel_compProd

theorem _root_.GRWTSK.Analysis.RealAnalysis.Integration.HasFiniteIntegralProdMkLeft.Variantd19694fd92db98056a1d88f789eac0cbcbb4307bd423000d3744520ba2a3a3a7.MeasureTheory.AEStronglyMeasurable.compProd_mk_left {δ : Type*} [TopologicalSpace δ]
    {f : β × γ → δ} (hf : AEStronglyMeasurable f ((κ ⊗ₖ η) a)) :
    ∀ᵐ x ∂κ a, AEStronglyMeasurable (fun y => f (x, y)) (η (a, x)) := by
  filter_upwards [ae_ae_of_ae_compProd hf.ae_eq_mk] with x hx using
    ⟨fun y => hf.mk f (x, y), hf.stronglyMeasurable_mk.comp_measurable measurable_prod_mk_left, hx⟩
#align measure_theory.ae_strongly_measurable.comp_prod_mk_left MeasureTheory.AEStronglyMeasurable.compProd_mk_left

/-! ### Integrability -/


theorem hasFiniteIntegral_compProd_iff ⦃f : β × γ → E⦄ (h1f : StronglyMeasurable f) :
    HasFiniteIntegral f ((κ ⊗ₖ η) a) ↔
      (∀ᵐ x ∂κ a, HasFiniteIntegral (fun y => f (x, y)) (η (a, x))) ∧
        HasFiniteIntegral (fun x => ∫ y, ‖f (x, y)‖ ∂η (a, x)) (κ a) := by
  simp only [HasFiniteIntegral]
  rw [kernel.lintegral_compProd _ _ _ h1f.ennnorm]
  have : ∀ x, ∀ᵐ y ∂η (a, x), 0 ≤ ‖f (x, y)‖ := fun x => eventually_of_forall fun y => norm_nonneg _
  simp_rw [integral_eq_lintegral_of_nonneg_ae (this _)
      (h1f.norm.comp_measurable measurable_prod_mk_left).aestronglyMeasurable,
    ennnorm_eq_ofReal toReal_nonneg, ofReal_norm_eq_coe_nnnorm]
  have : ∀ {p q r : Prop} (_ : r → p), (r ↔ p ∧ q) ↔ p → (r ↔ q) := fun {p q r} h1 => by
    rw [← and_congr_right_iff, and_iff_right_of_imp h1]
  rw [this]
  · intro h2f; rw [lintegral_congr_ae]
    refine' h2f.mp _; apply eventually_of_forall; intro x hx; dsimp only
    rw [ofReal_toReal]; rw [← lt_top_iff_ne_top]; exact hx
  · intro h2f; refine' ae_lt_top _ h2f.ne; exact h1f.ennnorm.lintegral_kernel_prod_right''
#align probability_theory.has_finite_integral_comp_prod_iff ProbabilityTheory.hasFiniteIntegral_compProd_iff

theorem hasFiniteIntegral_compProd_iff' ⦃f : β × γ → E⦄
    (h1f : AEStronglyMeasurable f ((κ ⊗ₖ η) a)) :
    HasFiniteIntegral f ((κ ⊗ₖ η) a) ↔
      (∀ᵐ x ∂κ a, HasFiniteIntegral (fun y => f (x, y)) (η (a, x))) ∧
        HasFiniteIntegral (fun x => ∫ y, ‖f (x, y)‖ ∂η (a, x)) (κ a) := by
  rw [hasFiniteIntegral_congr h1f.ae_eq_mk,
    hasFiniteIntegral_compProd_iff h1f.stronglyMeasurable_mk]
  apply and_congr
  · apply eventually_congr
    filter_upwards [ae_ae_of_ae_compProd h1f.ae_eq_mk.symm]
    intro x hx
    exact hasFiniteIntegral_congr hx
  · apply hasFiniteIntegral_congr
    filter_upwards [ae_ae_of_ae_compProd h1f.ae_eq_mk.symm] with _ hx using
      integral_congr_ae (EventuallyEq.fun_comp hx _)
#align probability_theory.has_finite_integral_comp_prod_iff' ProbabilityTheory.hasFiniteIntegral_compProd_iff'

theorem integrable_compProd_iff ⦃f : β × γ → E⦄ (hf : AEStronglyMeasurable f ((κ ⊗ₖ η) a)) :
    Integrable f ((κ ⊗ₖ η) a) ↔
      (∀ᵐ x ∂κ a, Integrable (fun y => f (x, y)) (η (a, x))) ∧
        Integrable (fun x => ∫ y, ‖f (x, y)‖ ∂η (a, x)) (κ a) := by
  simp only [Integrable, hasFiniteIntegral_compProd_iff' hf, hf.norm.integral_kernel_compProd,
    hf, hf.compProd_mk_left, eventually_and, true_and_iff]
#align probability_theory.integrable_comp_prod_iff ProbabilityTheory.integrable_compProd_iff

theorem _root_.GRWTSK.Analysis.RealAnalysis.Integration.HasFiniteIntegralProdMkLeft.Variantd19694fd92db98056a1d88f789eac0cbcbb4307bd423000d3744520ba2a3a3a7.MeasureTheory.Integrable.compProd_mk_left_ae ⦃f : β × γ → E⦄
    (hf : Integrable f ((κ ⊗ₖ η) a)) : ∀ᵐ x ∂κ a, Integrable (fun y => f (x, y)) (η (a, x)) :=
  ((integrable_compProd_iff hf.aestronglyMeasurable).mp hf).1
#align measure_theory.integrable.comp_prod_mk_left_ae MeasureTheory.Integrable.compProd_mk_left_ae

theorem _root_.GRWTSK.Analysis.RealAnalysis.Integration.HasFiniteIntegralProdMkLeft.Variantd19694fd92db98056a1d88f789eac0cbcbb4307bd423000d3744520ba2a3a3a7.MeasureTheory.Integrable.integral_norm_compProd ⦃f : β × γ → E⦄
    (hf : Integrable f ((κ ⊗ₖ η) a)) : Integrable (fun x => ∫ y, ‖f (x, y)‖ ∂η (a, x)) (κ a) :=
  ((integrable_compProd_iff hf.aestronglyMeasurable).mp hf).2
#align measure_theory.integrable.integral_norm_comp_prod MeasureTheory.Integrable.integral_norm_compProd

theorem _root_.GRWTSK.Analysis.RealAnalysis.Integration.HasFiniteIntegralProdMkLeft.Variantd19694fd92db98056a1d88f789eac0cbcbb4307bd423000d3744520ba2a3a3a7.MeasureTheory.Integrable.integral_compProd [NormedSpace ℝ E] [CompleteSpace E]
    ⦃f : β × γ → E⦄ (hf : Integrable f ((κ ⊗ₖ η) a)) :
    Integrable (fun x => ∫ y, f (x, y) ∂η (a, x)) (κ a) :=
  Integrable.mono hf.integral_norm_compProd hf.aestronglyMeasurable.integral_kernel_compProd <|
    eventually_of_forall fun x =>
      (norm_integral_le_integral_norm _).trans_eq <|
        (norm_of_nonneg <|
            integral_nonneg_of_ae <|
              eventually_of_forall fun y => (norm_nonneg (f (x, y)) : _)).symm
#align measure_theory.integrable.integral_comp_prod MeasureTheory.Integrable.integral_compProd

/-! ### Bochner integral -/


variable [NormedSpace ℝ E] [CompleteSpace E] {E' : Type*} [NormedAddCommGroup E']
  [CompleteSpace E'] [NormedSpace ℝ E']

theorem kernel.integral_fn_integral_add ⦃f g : β × γ → E⦄ (F : E → E')
    (hf : Integrable f ((κ ⊗ₖ η) a)) (hg : Integrable g ((κ ⊗ₖ η) a)) :
    ∫ x, F (∫ y, f (x, y) + g (x, y) ∂η (a, x)) ∂κ a =
      ∫ x, F (∫ y, f (x, y) ∂η (a, x) + ∫ y, g (x, y) ∂η (a, x)) ∂κ a := by
  refine' integral_congr_ae _
  filter_upwards [hf.compProd_mk_left_ae, hg.compProd_mk_left_ae] with _ h2f h2g
  simp [integral_add h2f h2g]
#align probability_theory.kernel.integral_fn_integral_add ProbabilityTheory.kernel.integral_fn_integral_add

theorem kernel.integral_fn_integral_sub ⦃f g : β × γ → E⦄ (F : E → E')
    (hf : Integrable f ((κ ⊗ₖ η) a)) (hg : Integrable g ((κ ⊗ₖ η) a)) :
    ∫ x, F (∫ y, f (x, y) - g (x, y) ∂η (a, x)) ∂κ a =
      ∫ x, F (∫ y, f (x, y) ∂η (a, x) - ∫ y, g (x, y) ∂η (a, x)) ∂κ a := by
  refine' integral_congr_ae _
  filter_upwards [hf.compProd_mk_left_ae, hg.compProd_mk_left_ae] with _ h2f h2g
  simp [integral_sub h2f h2g]
#align probability_theory.kernel.integral_fn_integral_sub ProbabilityTheory.kernel.integral_fn_integral_sub

theorem kernel.lintegral_fn_integral_sub ⦃f g : β × γ → E⦄ (F : E → ℝ≥0∞)
    (hf : Integrable f ((κ ⊗ₖ η) a)) (hg : Integrable g ((κ ⊗ₖ η) a)) :
    ∫⁻ x, F (∫ y, f (x, y) - g (x, y) ∂η (a, x)) ∂κ a =
      ∫⁻ x, F (∫ y, f (x, y) ∂η (a, x) - ∫ y, g (x, y) ∂η (a, x)) ∂κ a := by
  refine' lintegral_congr_ae _
  filter_upwards [hf.compProd_mk_left_ae, hg.compProd_mk_left_ae] with _ h2f h2g
  simp [integral_sub h2f h2g]
#align probability_theory.kernel.lintegral_fn_integral_sub ProbabilityTheory.kernel.lintegral_fn_integral_sub

theorem kernel.integral_integral_add ⦃f g : β × γ → E⦄ (hf : Integrable f ((κ ⊗ₖ η) a))
    (hg : Integrable g ((κ ⊗ₖ η) a)) :
    ∫ x, ∫ y, f (x, y) + g (x, y) ∂η (a, x) ∂κ a =
      ∫ x, ∫ y, f (x, y) ∂η (a, x) ∂κ a + ∫ x, ∫ y, g (x, y) ∂η (a, x) ∂κ a :=
  (kernel.integral_fn_integral_add id hf hg).trans <|
    integral_add hf.integral_compProd hg.integral_compProd
#align probability_theory.kernel.integral_integral_add ProbabilityTheory.kernel.integral_integral_add

theorem kernel.integral_integral_add' ⦃f g : β × γ → E⦄ (hf : Integrable f ((κ ⊗ₖ η) a))
    (hg : Integrable g ((κ ⊗ₖ η) a)) :
    ∫ x, ∫ y, (f + g) (x, y) ∂η (a, x) ∂κ a =
      ∫ x, ∫ y, f (x, y) ∂η (a, x) ∂κ a + ∫ x, ∫ y, g (x, y) ∂η (a, x) ∂κ a :=
  kernel.integral_integral_add hf hg
#align probability_theory.kernel.integral_integral_add' ProbabilityTheory.kernel.integral_integral_add'

theorem kernel.integral_integral_sub ⦃f g : β × γ → E⦄ (hf : Integrable f ((κ ⊗ₖ η) a))
    (hg : Integrable g ((κ ⊗ₖ η) a)) :
    ∫ x, ∫ y, f (x, y) - g (x, y) ∂η (a, x) ∂κ a =
      ∫ x, ∫ y, f (x, y) ∂η (a, x) ∂κ a - ∫ x, ∫ y, g (x, y) ∂η (a, x) ∂κ a :=
  (kernel.integral_fn_integral_sub id hf hg).trans <|
    integral_sub hf.integral_compProd hg.integral_compProd
#align probability_theory.kernel.integral_integral_sub ProbabilityTheory.kernel.integral_integral_sub

theorem kernel.integral_integral_sub' ⦃f g : β × γ → E⦄ (hf : Integrable f ((κ ⊗ₖ η) a))
    (hg : Integrable g ((κ ⊗ₖ η) a)) :
    ∫ x, ∫ y, (f - g) (x, y) ∂η (a, x) ∂κ a =
      ∫ x, ∫ y, f (x, y) ∂η (a, x) ∂κ a - ∫ x, ∫ y, g (x, y) ∂η (a, x) ∂κ a :=
  kernel.integral_integral_sub hf hg
#align probability_theory.kernel.integral_integral_sub' ProbabilityTheory.kernel.integral_integral_sub'

-- Porting note: couldn't get the `→₁[]` syntax to work
theorem kernel.continuous_integral_integral :
    -- Continuous fun f : α × β →₁[(κ ⊗ₖ η) a] E => ∫ x, ∫ y, f (x, y) ∂η (a, x) ∂κ a := by
    Continuous fun f : (MeasureTheory.Lp (α := β × γ) E 1 (((κ ⊗ₖ η) a) : Measure (β × γ))) =>
        ∫ x, ∫ y, f (x, y) ∂η (a, x) ∂κ a := by
  rw [continuous_iff_continuousAt]; intro g
  refine'
    tendsto_integral_of_L1 _ (L1.integrable_coeFn g).integral_compProd
      (eventually_of_forall fun h => (L1.integrable_coeFn h).integral_compProd) _
  simp_rw [←
    kernel.lintegral_fn_integral_sub (fun x => (‖x‖₊ : ℝ≥0∞)) (L1.integrable_coeFn _)
      (L1.integrable_coeFn g)]
  refine' tendsto_of_tendsto_of_tendsto_of_le_of_le tendsto_const_nhds _ (fun i => zero_le _) _
  · exact fun i => ∫⁻ x, ∫⁻ y, ‖i (x, y) - g (x, y)‖₊ ∂η (a, x) ∂κ a
  swap; · exact fun i => lintegral_mono fun x => ennnorm_integral_le_lintegral_ennnorm _
  show
    Tendsto
      (fun i : β × γ →₁[(κ ⊗ₖ η) a] E => ∫⁻ x, ∫⁻ y : γ, ‖i (x, y) - g (x, y)‖₊ ∂η (a, x) ∂κ a)
      (𝓝 g) (𝓝 0)
  have : ∀ i : (MeasureTheory.Lp (α := β × γ) E 1 (((κ ⊗ₖ η) a) : Measure (β × γ))),
      Measurable fun z => (‖i z - g z‖₊ : ℝ≥0∞) := fun i =>
    ((Lp.stronglyMeasurable i).sub (Lp.stronglyMeasurable g)).ennnorm
  simp_rw [← kernel.lintegral_compProd _ _ _ (this _), ← L1.ofReal_norm_sub_eq_lintegral, ←
    ofReal_zero]
  refine' (continuous_ofReal.tendsto 0).comp _
  rw [← tendsto_iff_norm_tendsto_zero]
  exact tendsto_id
#align probability_theory.kernel.continuous_integral_integral ProbabilityTheory.kernel.continuous_integral_integral

theorem integral_compProd :
    ∀ {f : β × γ → E} (_ : Integrable f ((κ ⊗ₖ η) a)),
      ∫ z, f z ∂(κ ⊗ₖ η) a = ∫ x, ∫ y, f (x, y) ∂η (a, x) ∂κ a := by
  apply Integrable.induction
  · intro c s hs h2s
    simp_rw [integral_indicator hs, ← indicator_comp_right, Function.comp,
      integral_indicator (measurable_prod_mk_left hs), MeasureTheory.set_integral_const,
      integral_smul_const]
    congr 1
    rw [integral_toReal]
    rotate_left
    · exact (kernel.measurable_kernel_prod_mk_left' hs _).aemeasurable
    · exact ae_kernel_lt_top a h2s.ne
    rw [kernel.compProd_apply _ _ _ hs]
    rfl
  · intro f g _ i_f i_g hf hg
    simp_rw [integral_add' i_f i_g, kernel.integral_integral_add' i_f i_g, hf, hg]
  · exact isClosed_eq continuous_integral kernel.continuous_integral_integral
  · intro f g hfg _ hf
    convert hf using 1
    · exact integral_congr_ae hfg.symm
    · refine' integral_congr_ae _
      refine' (ae_ae_of_ae_compProd hfg).mp (eventually_of_forall _)
      exact fun x hfgx => integral_congr_ae (ae_eq_symm hfgx)
#align probability_theory.integral_comp_prod ProbabilityTheory.integral_compProd

theorem set_integral_compProd {f : β × γ → E} {s : Set β} {t : Set γ} (hs : MeasurableSet s)
    (ht : MeasurableSet t) (hf : IntegrableOn f (s ×ˢ t) ((κ ⊗ₖ η) a)) :
    ∫ z in s ×ˢ t, f z ∂(κ ⊗ₖ η) a = ∫ x in s, ∫ y in t, f (x, y) ∂η (a, x) ∂κ a := by
  -- Porting note: `compProd_restrict` needed some explicit argumnts
  rw [← kernel.restrict_apply (κ ⊗ₖ η) (hs.prod ht), ← compProd_restrict hs ht, integral_compProd]
  · simp_rw [kernel.restrict_apply]
  · rw [compProd_restrict, kernel.restrict_apply]; exact hf
#align probability_theory.set_integral_comp_prod ProbabilityTheory.set_integral_compProd

theorem set_integral_compProd_univ_right (f : β × γ → E) {s : Set β} (hs : MeasurableSet s)
    (hf : IntegrableOn f (s ×ˢ univ) ((κ ⊗ₖ η) a)) :
    ∫ z in s ×ˢ univ, f z ∂(κ ⊗ₖ η) a = ∫ x in s, ∫ y, f (x, y) ∂η (a, x) ∂κ a := by
  simp_rw [set_integral_compProd hs MeasurableSet.univ hf, Measure.restrict_univ]
#align probability_theory.set_integral_comp_prod_univ_right ProbabilityTheory.set_integral_compProd_univ_right

theorem set_integral_compProd_univ_left (f : β × γ → E) {t : Set γ} (ht : MeasurableSet t)
    (hf : IntegrableOn f (univ ×ˢ t) ((κ ⊗ₖ η) a)) :
    ∫ z in univ ×ˢ t, f z ∂(κ ⊗ₖ η) a = ∫ x, ∫ y in t, f (x, y) ∂η (a, x) ∂κ a := by
  simp_rw [set_integral_compProd MeasurableSet.univ ht hf, Measure.restrict_univ]
#align probability_theory.set_integral_comp_prod_univ_left ProbabilityTheory.set_integral_compProd_univ_left

end ProbabilityTheory
