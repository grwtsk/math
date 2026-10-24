# Complete source: GRWTSK.DifferentialEquationsAndDynamicalSystems.Transform.Variant7be1d2f9441d461a6eaf027d562858b2c5188a6c165a6e6a426242bb57dd0145

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `849993d87b8ab32c19e1cfcc3f16217c73873086` · SHA-256 `0f7c0d8f8465e6fc1e13645d92491e1598dc552a58e39c8e6c0cacc811d72241`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: DifferentialEquationsAndDynamicalSystems
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.DifferentialEquationsAndDynamicalSystems.IsIntegralCurveOnCompAdd.Variant5c0ca03689fc69740253b4828f4d4e2667383c7122857f308b4c386c28f177ad","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5c0ca03689fc69740253b4828f4d4e2667383c7122857f308b4c386c28f177ad","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.DifferentialEquations.SourceCorpus.IsIntegralCurveOnCompAdd.Variant5c0ca03689fc69740253b4828f4d4e2667383c7122857f308b4c386c28f177ad","mathematical_subject":"Analysis.DifferentialEquations","original_sha256":"5c0ca03689fc69740253b4828f4d4e2667383c7122857f308b4c386c28f177ad","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Geometry/Manifold/IntegralCurve/Transform.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Winston Yin. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Winston Yin
-/
import Mathlib.Geometry.Manifold.IntegralCurve.Basic

/-!
# Translation and scaling of integral curves

New integral curves may be constructed by translating or scaling the domain of an existing integral
curve.

## Reference

* [Lee, J. M. (2012). _Introduction to Smooth Manifolds_. Springer New York.][lee2012]

## Tags

integral curve, vector field
-/


namespace GRWTSK.DifferentialEquationsAndDynamicalSystems.IsIntegralCurveOnCompAdd.Variant5c0ca03689fc69740253b4828f4d4e2667383c7122857f308b4c386c28f177ad

open Function Set Pointwise

variable
  {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
  {H : Type*} [TopologicalSpace H] {I : ModelWithCorners ℝ E H}
  {M : Type*} [TopologicalSpace M] [ChartedSpace H M]
  {γ γ' : ℝ → M} {v : (x : M) → TangentSpace I x} {s s' : Set ℝ} {t₀ : ℝ}

/-! ### Translation lemmas -/

section Translation

lemma IsIntegralCurveOn.comp_add (hγ : IsIntegralCurveOn γ v s) (dt : ℝ) :
    IsIntegralCurveOn (γ ∘ (· + dt)) v (-dt +ᵥ s) := by
  intros t ht
  rw [comp_apply, ← ContinuousLinearMap.comp_id (ContinuousLinearMap.smulRight 1 (v (γ (t + dt))))]
  rw [mem_vadd_set_iff_neg_vadd_mem, neg_neg, vadd_eq_add, add_comm,
    ← mem_setOf (p := fun t ↦ t + dt ∈ s)] at ht
  apply HasMFDerivAt.comp t (hγ (t + dt) ht)
  refine ⟨(continuous_add_right _).continuousAt, ?_⟩
  simp only [mfld_simps, hasFDerivWithinAt_univ]
  exact (hasFDerivAt_id _).add_const _

lemma isIntegralCurveOn_comp_add {dt : ℝ} :
    IsIntegralCurveOn γ v s ↔ IsIntegralCurveOn (γ ∘ (· + dt)) v (-dt +ᵥ s) := by
  refine ⟨fun hγ ↦ hγ.comp_add _, fun hγ ↦ ?_⟩
  convert hγ.comp_add (-dt)
  · ext t
    simp only [Function.comp_apply, neg_add_cancel_right]
  · simp only [neg_neg, vadd_neg_vadd]

lemma isIntegralCurveOn_comp_sub {dt : ℝ} :
    IsIntegralCurveOn γ v s ↔ IsIntegralCurveOn (γ ∘ (· - dt)) v (dt +ᵥ s) := by
  simpa using isIntegralCurveOn_comp_add (dt := -dt)

lemma IsIntegralCurveAt.comp_add (hγ : IsIntegralCurveAt γ v t₀) (dt : ℝ) :
    IsIntegralCurveAt (γ ∘ (· + dt)) v (t₀ - dt) := by
  rw [isIntegralCurveAt_iff'] at *
  obtain ⟨ε, hε, h⟩ := hγ
  refine ⟨ε, hε, ?_⟩
  convert h.comp_add dt
  rw [Metric.vadd_ball, vadd_eq_add, neg_add_eq_sub]

lemma isIntegralCurveAt_comp_add {dt : ℝ} :
    IsIntegralCurveAt γ v t₀ ↔ IsIntegralCurveAt (γ ∘ (· + dt)) v (t₀ - dt) := by
  refine ⟨fun hγ ↦ hγ.comp_add _, fun hγ ↦ ?_⟩
  convert hγ.comp_add (-dt)
  · ext t
    simp only [Function.comp_apply, neg_add_cancel_right]
  · simp only [sub_neg_eq_add, sub_add_cancel]

lemma isIntegralCurveAt_comp_sub {dt : ℝ} :
    IsIntegralCurveAt γ v t₀ ↔ IsIntegralCurveAt (γ ∘ (· - dt)) v (t₀ + dt) := by
  simpa using isIntegralCurveAt_comp_add (dt := -dt)

lemma IsIntegralCurve.comp_add (hγ : IsIntegralCurve γ v) (dt : ℝ) :
    IsIntegralCurve (γ ∘ (· + dt)) v := by
  rw [isIntegralCurve_iff_isIntegralCurveOn] at *
  simpa using hγ.comp_add dt

lemma isIntegralCurve_comp_add {dt : ℝ} :
    IsIntegralCurve γ v ↔ IsIntegralCurve (γ ∘ (· + dt)) v := by
  refine ⟨fun hγ ↦ hγ.comp_add _, fun hγ ↦ ?_⟩
  convert hγ.comp_add (-dt)
  ext t
  simp only [Function.comp_apply, neg_add_cancel_right]

lemma isIntegralCurve_comp_sub {dt : ℝ} :
    IsIntegralCurve γ v ↔ IsIntegralCurve (γ ∘ (· - dt)) v := by
  simpa using isIntegralCurve_comp_add (dt := -dt)

end Translation

/-! ### Scaling lemmas -/

section Scaling

lemma IsIntegralCurveOn.comp_mul (hγ : IsIntegralCurveOn γ v s) (a : ℝ) :
    IsIntegralCurveOn (γ ∘ (· * a)) (a • v) { t | t * a ∈ s } := by
  intros t ht
  rw [comp_apply, Pi.smul_apply, ← ContinuousLinearMap.smulRight_comp]
  refine HasMFDerivAt.comp t (hγ (t * a) ht) ⟨(continuous_mul_right _).continuousAt, ?_⟩
  simp only [mfld_simps, hasFDerivWithinAt_univ]
  exact HasFDerivAt.mul_const' (hasFDerivAt_id _) _

lemma isIntegralCurveOn_comp_mul_ne_zero {a : ℝ} (ha : a ≠ 0) :
    IsIntegralCurveOn γ v s ↔ IsIntegralCurveOn (γ ∘ (· * a)) (a • v) { t | t * a ∈ s } := by
  refine ⟨fun hγ ↦ hγ.comp_mul a, fun hγ ↦ ?_⟩
  convert hγ.comp_mul a⁻¹
  · ext t
    simp only [Function.comp_apply, mul_assoc, inv_mul_eq_div, div_self ha, mul_one]
  · simp only [smul_smul, inv_mul_eq_div, div_self ha, one_smul]
  · simp only [mem_setOf_eq, mul_assoc, inv_mul_eq_div, div_self ha, mul_one, setOf_mem_eq]

lemma IsIntegralCurveAt.comp_mul_ne_zero (hγ : IsIntegralCurveAt γ v t₀) {a : ℝ} (ha : a ≠ 0) :
    IsIntegralCurveAt (γ ∘ (· * a)) (a • v) (t₀ / a) := by
  rw [isIntegralCurveAt_iff'] at *
  obtain ⟨ε, hε, h⟩ := hγ
  refine ⟨ε / |a|, by positivity, ?_⟩
  convert h.comp_mul a
  ext t
  rw [mem_setOf_eq, Metric.mem_ball, Metric.mem_ball, Real.dist_eq, Real.dist_eq,
    lt_div_iff₀ (abs_pos.mpr ha), ← abs_mul, sub_mul, div_mul_cancel₀ _ ha]

lemma isIntegralCurveAt_comp_mul_ne_zero {a : ℝ} (ha : a ≠ 0) :
    IsIntegralCurveAt γ v t₀ ↔ IsIntegralCurveAt (γ ∘ (· * a)) (a • v) (t₀ / a) := by
  refine ⟨fun hγ ↦ hγ.comp_mul_ne_zero ha, fun hγ ↦ ?_⟩
  convert hγ.comp_mul_ne_zero (inv_ne_zero ha)
  · ext t
    simp only [Function.comp_apply, mul_assoc, inv_mul_eq_div, div_self ha, mul_one]
  · simp only [smul_smul, inv_mul_eq_div, div_self ha, one_smul]
  · simp only [div_inv_eq_mul, div_mul_cancel₀ _ ha]

lemma IsIntegralCurve.comp_mul (hγ : IsIntegralCurve γ v) (a : ℝ) :
    IsIntegralCurve (γ ∘ (· * a)) (a • v) := by
  rw [isIntegralCurve_iff_isIntegralCurveOn] at *
  exact hγ.comp_mul _

lemma isIntegralCurve_comp_mul_ne_zero {a : ℝ} (ha : a ≠ 0) :
    IsIntegralCurve γ v ↔ IsIntegralCurve (γ ∘ (· * a)) (a • v) := by
  refine ⟨fun hγ ↦ hγ.comp_mul _, fun hγ ↦ ?_⟩
  convert hγ.comp_mul a⁻¹
  · ext t
    simp only [Function.comp_apply, mul_assoc, inv_mul_eq_div, div_self ha, mul_one]
  · simp only [smul_smul, inv_mul_eq_div, div_self ha, one_smul]

/-- If the vector field `v` vanishes at `x₀`, then the constant curve at `x₀`
is a global integral curve of `v`. -/
lemma isIntegralCurve_const {x : M} (h : v x = 0) : IsIntegralCurve (fun _ ↦ x) v := by
  intro t
  rw [h, ← ContinuousLinearMap.zero_apply (R₁ := ℝ) (R₂ := ℝ) (1 : ℝ),
    ContinuousLinearMap.smulRight_one_one]
  exact hasMFDerivAt_const ..

end Scaling
```
