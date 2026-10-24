# Complete source: GRWTSK.Analysis.MeasureTheory.MeasurableLIntegral.Variantc4de1fb3f82dfc8952e19d9942b875ede3477860407520a987281593f44975e9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `87054d14dcf4f76d83064bfda319b38591ff1bb8` · SHA-256 `e8c50ded26f04f1511befa0058a5c8fdb2fae48d73224f6035ec6f2ecf958a9b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.MeasureTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.MeasureTheory.MeasurableKernelProdMkLeftOfFinite.Variante5d7752a805267cfa2a29b9d3b7a94914f4520f92f957b955f7a56ea847afe7d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e5d7752a805267cfa2a29b9d3b7a94914f4520f92f957b955f7a56ea847afe7d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.MeasureTheory.SourceCorpus.MeasurableKernelProdMkLeftOfFinite.Variante5d7752a805267cfa2a29b9d3b7a94914f4520f92f957b955f7a56ea847afe7d","mathematical_subject":"Analysis.MeasureTheory","original_sha256":"e5d7752a805267cfa2a29b9d3b7a94914f4520f92f957b955f7a56ea847afe7d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Probability/Kernel/MeasurableLIntegral.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Rémy Degenne. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Rémy Degenne
-/
module

public import Mathlib.MeasureTheory.MeasurableSpace.Prod
public import Mathlib.Probability.Kernel.Basic

/-!
# Measurability of the integral against a kernel

The Lebesgue integral of a measurable function against a kernel is measurable.

## Main statements

* `Measurable.lintegral_kernel_prod_right`: the function `a ↦ ∫⁻ b, f a b ∂(κ a)` is measurable,
  for an s-finite kernel `κ : Kernel α β` and a function `f : α → β → ℝ≥0∞` such that `uncurry f`
  is measurable.

-/


namespace GRWTSK.Analysis.MeasureTheory.MeasurableKernelProdMkLeftOfFinite.Variante5d7752a805267cfa2a29b9d3b7a94914f4520f92f957b955f7a56ea847afe7d

public section


open MeasureTheory ProbabilityTheory Function Set

open scoped MeasureTheory ENNReal Topology

variable {α β γ : Type*} {mα : MeasurableSpace α} {mβ : MeasurableSpace β} {mγ : MeasurableSpace γ}
  {κ : Kernel α β} {η : Kernel (α × β) γ} {a : α}

namespace ProbabilityTheory

namespace Kernel

/-- This is an auxiliary lemma for `measurable_kernel_prodMk_left`. -/
theorem measurable_kernel_prodMk_left_of_finite {t : Set (α × β)} (ht : MeasurableSet t)
    (hκs : ∀ a, IsFiniteMeasure (κ a)) : Measurable fun a => κ a (Prod.mk a ⁻¹' t) := by
  -- `t` is a measurable set in the product `α × β`: we use that the product σ-algebra is generated
  -- by boxes to prove the result by induction.
  induction t, ht
    using MeasurableSpace.induction_on_inter generateFrom_prod.symm isPiSystem_prod with
  | empty => simp only [preimage_empty, measure_empty, measurable_const]
  | basic t ht =>
    simp only [Set.mem_image2, Set.mem_ofPred_eq] at ht
    obtain ⟨t₁, ht₁, t₂, ht₂, rfl⟩ := ht
    classical
    simp_rw [mk_preimage_prod_right_eq_if]
    have h_eq_ite : (fun a => κ a (ite (a ∈ t₁) t₂ ∅)) = fun a => ite (a ∈ t₁) (κ a t₂) 0 := by
      ext1 a
      split_ifs
      exacts [rfl, measure_empty]
    rw [h_eq_ite]
    exact Measurable.ite ht₁ (Kernel.measurable_coe κ ht₂) measurable_const
  | compl t htm iht =>
    have h_eq_sdiff : ∀ a, Prod.mk a ⁻¹' tᶜ = Set.univ \ Prod.mk a ⁻¹' t := by
      intro a
      ext1 b
      simp only [mem_compl_iff, mem_preimage, Set.mem_sdiff, mem_univ, true_and]
    simp_rw [h_eq_sdiff]
    have : (fun a => κ a (Set.univ \ Prod.mk a ⁻¹' t)) =
        fun a => κ a Set.univ - κ a (Prod.mk a ⁻¹' t) := by
      ext1 a
      rw [← Set.sdiff_inter_self_eq_sdiff, Set.inter_univ, measure_sdiff (Set.subset_univ _)]
      · exact (measurable_prodMk_left htm).nullMeasurableSet
      · exact measure_ne_top _ _
    rw [this]
    exact Measurable.sub (Kernel.measurable_coe κ MeasurableSet.univ) iht
  | iUnion f h_disj hf_meas hf =>
    have (a : α) : κ a (Prod.mk a ⁻¹' ⋃ i, f i) = ∑' i, κ a (Prod.mk a ⁻¹' f i) := by
      rw [preimage_iUnion, measure_iUnion]
      · exact h_disj.mono fun _ _ ↦ .preimage _
      · exact fun i ↦ measurable_prodMk_left (hf_meas i)
    simpa only [this] using Measurable.tsum hf

theorem measurable_kernel_prodMk_left [IsSFiniteKernel κ] {t : Set (α × β)}
    (ht : MeasurableSet t) : Measurable fun a => κ a (Prod.mk a ⁻¹' t) := by
  rw [← Kernel.kernel_sum_seq κ]
  have (a : _) : Kernel.sum (Kernel.seq κ) a (Prod.mk a ⁻¹' t) =
      ∑' n, Kernel.seq κ n a (Prod.mk a ⁻¹' t) :=
    Kernel.sum_apply' _ _ (measurable_prodMk_left ht)
  simp_rw [this]
  refine Measurable.tsum fun n => ?_
  exact measurable_kernel_prodMk_left_of_finite ht inferInstance

theorem measurable_kernel_prodMk_left' [IsSFiniteKernel η] {s : Set (β × γ)} (hs : MeasurableSet s)
    (a : α) : Measurable fun b => η (a, b) (Prod.mk b ⁻¹' s) := by
  have (b : _) : Prod.mk b ⁻¹' s = {c | ((a, b), c) ∈ {p : (α × β) × γ | (p.1.2, p.2) ∈ s}} := rfl
  simp_rw [this]
  refine (measurable_kernel_prodMk_left ?_).comp measurable_prodMk_left
  exact (measurable_fst.snd.prodMk measurable_snd) hs

theorem measurable_kernel_prodMk_right [IsSFiniteKernel κ] {s : Set (β × α)}
    (hs : MeasurableSet s) : Measurable fun y => κ y ((fun x => (x, y)) ⁻¹' s) :=
  measurable_kernel_prodMk_left (measurableSet_swap_iff.mpr hs)

end Kernel

open ProbabilityTheory.Kernel

section Lintegral

variable [IsSFiniteKernel κ] [IsSFiniteKernel η]

/-- Auxiliary lemma for `Measurable.lintegral_kernel_prod_right`. -/
theorem Kernel.measurable_lintegral_indicator_const {t : Set (α × β)} (ht : MeasurableSet t)
    (c : ℝ≥0∞) : Measurable fun a => ∫⁻ b, t.indicator (Function.const (α × β) c) (a, b) ∂κ a := by
  unfold Function.const
  simp_rw [lintegral_indicator_const_comp measurable_prodMk_left ht _]
  exact Measurable.const_mul (measurable_kernel_prodMk_left ht) c

/-- For an s-finite kernel `κ` and a function `f : α → β → ℝ≥0∞` which is measurable when seen as a
map from `α × β` (hypothesis `Measurable (uncurry f)`), the integral `a ↦ ∫⁻ b, f a b ∂(κ a)` is
measurable. -/
@[fun_prop]
theorem _root_.GRWTSK.Analysis.MeasureTheory.MeasurableKernelProdMkLeftOfFinite.Variante5d7752a805267cfa2a29b9d3b7a94914f4520f92f957b955f7a56ea847afe7d.Measurable.lintegral_kernel_prod_right {f : α → β → ℝ≥0∞}
    (hf : Measurable (uncurry f)) : Measurable fun a => ∫⁻ b, f a b ∂κ a := by
  let F : ℕ → SimpleFunc (α × β) ℝ≥0∞ := SimpleFunc.eapprox (uncurry f)
  have h : ∀ a, ⨆ n, F n a = uncurry f a := SimpleFunc.iSup_eapprox_apply hf
  simp only [Prod.forall, uncurry_apply_pair] at h
  simp_rw [← h]
  have : ∀ a, (∫⁻ b, ⨆ n, F n (a, b) ∂κ a) = ⨆ n, ∫⁻ b, F n (a, b) ∂κ a := by
    intro a
    rw [lintegral_iSup]
    · exact fun n => (F n).measurable.comp measurable_prodMk_left
    · exact fun i j hij b => SimpleFunc.monotone_eapprox (uncurry f) hij _
  simp_rw [this]
  refine .iSup fun n => ?_
  refine SimpleFunc.induction
    (motive := fun f => Measurable (fun (a : α) => ∫⁻ (b : β), f (a, b) ∂κ a)) ?_ ?_ (F n)
  · intro c t ht
    simp only [SimpleFunc.const_zero, SimpleFunc.coe_piecewise, SimpleFunc.coe_const,
      SimpleFunc.coe_zero, Set.piecewise_eq_indicator]
    exact Kernel.measurable_lintegral_indicator_const (κ := κ) ht c
  · intro g₁ g₂ _ hm₁ hm₂
    simp only [SimpleFunc.coe_add, Pi.add_apply]
    have h_add :
      (fun a => ∫⁻ b, g₁ (a, b) + g₂ (a, b) ∂κ a) =
        (fun a => ∫⁻ b, g₁ (a, b) ∂κ a) + fun a => ∫⁻ b, g₂ (a, b) ∂κ a := by
      ext1 a
      rw [Pi.add_apply, lintegral_add_left (by fun_prop)]
    rw [h_add]
    exact Measurable.add hm₁ hm₂

@[fun_prop]
theorem _root_.GRWTSK.Analysis.MeasureTheory.MeasurableKernelProdMkLeftOfFinite.Variante5d7752a805267cfa2a29b9d3b7a94914f4520f92f957b955f7a56ea847afe7d.Measurable.lintegral_kernel_prod_right' {f : α × β → ℝ≥0∞} (hf : Measurable f) :
    Measurable fun a => ∫⁻ b, f (a, b) ∂κ a := by fun_prop

@[fun_prop]
theorem _root_.GRWTSK.Analysis.MeasureTheory.MeasurableKernelProdMkLeftOfFinite.Variante5d7752a805267cfa2a29b9d3b7a94914f4520f92f957b955f7a56ea847afe7d.Measurable.lintegral_kernel_prod_right'' {f : β × γ → ℝ≥0∞} (hf : Measurable f) :
    Measurable fun x => ∫⁻ y, f (x, y) ∂η (a, x) := by
  change
    Measurable
      ((fun x => ∫⁻ y, (fun u : (α × β) × γ => f (u.1.2, u.2)) (x, y) ∂η x) ∘ fun x => (a, x))
  -- Porting note: specified `κ`, `f`.
  refine (Measurable.lintegral_kernel_prod_right' (κ := η)
    (f := (fun u ↦ f (u.fst.snd, u.snd))) ?_).comp measurable_prodMk_left
  fun_prop

theorem _root_.GRWTSK.Analysis.MeasureTheory.MeasurableKernelProdMkLeftOfFinite.Variante5d7752a805267cfa2a29b9d3b7a94914f4520f92f957b955f7a56ea847afe7d.Measurable.setLIntegral_kernel_prod_right {f : α → β → ℝ≥0∞}
    (hf : Measurable (uncurry f)) {s : Set β} (hs : MeasurableSet s) :
    Measurable fun a => ∫⁻ b in s, f a b ∂κ a := by
  simp_rw [← lintegral_restrict κ hs]; fun_prop

@[fun_prop]
theorem _root_.GRWTSK.Analysis.MeasureTheory.MeasurableKernelProdMkLeftOfFinite.Variante5d7752a805267cfa2a29b9d3b7a94914f4520f92f957b955f7a56ea847afe7d.Measurable.lintegral_kernel_prod_left' {f : β × α → ℝ≥0∞} (hf : Measurable f) :
    Measurable fun y => ∫⁻ x, f (x, y) ∂κ y := by fun_prop

@[fun_prop]
theorem _root_.GRWTSK.Analysis.MeasureTheory.MeasurableKernelProdMkLeftOfFinite.Variante5d7752a805267cfa2a29b9d3b7a94914f4520f92f957b955f7a56ea847afe7d.Measurable.lintegral_kernel_prod_left {f : β → α → ℝ≥0∞}
    (hf : Measurable (uncurry f)) : Measurable fun y => ∫⁻ x, f x y ∂κ y := by fun_prop

theorem _root_.GRWTSK.Analysis.MeasureTheory.MeasurableKernelProdMkLeftOfFinite.Variante5d7752a805267cfa2a29b9d3b7a94914f4520f92f957b955f7a56ea847afe7d.Measurable.setLIntegral_kernel_prod_left {f : β → α → ℝ≥0∞}
    (hf : Measurable (uncurry f)) {s : Set β} (hs : MeasurableSet s) :
    Measurable fun b => ∫⁻ a in s, f a b ∂κ b := by
  simp_rw [← lintegral_restrict κ hs]; fun_prop

@[fun_prop]
theorem _root_.GRWTSK.Analysis.MeasureTheory.MeasurableKernelProdMkLeftOfFinite.Variante5d7752a805267cfa2a29b9d3b7a94914f4520f92f957b955f7a56ea847afe7d.Measurable.lintegral_kernel {κ : Kernel α β} {f : β → ℝ≥0∞} (hf : Measurable f) :
    Measurable fun a => ∫⁻ b, f b ∂κ a := by fun_prop

theorem _root_.GRWTSK.Analysis.MeasureTheory.MeasurableKernelProdMkLeftOfFinite.Variante5d7752a805267cfa2a29b9d3b7a94914f4520f92f957b955f7a56ea847afe7d.Measurable.setLIntegral_kernel {f : β → ℝ≥0∞} (hf : Measurable f) {s : Set β}
    (hs : MeasurableSet s) : Measurable fun a => ∫⁻ b in s, f b ∂κ a :=
  Measurable.setLIntegral_kernel_prod_right (by fun_prop) hs

end Lintegral

end ProbabilityTheory
```
