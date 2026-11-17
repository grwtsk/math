/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import Mathlib.Analysis.Calculus.MeanValue
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilPrimitiveSmoothTestAdmission

/-! # Endpoint decay for the original admissible primitive window tests -/

set_option autoImplicit false

open Set Filter
open scoped Topology

namespace GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain

private theorem eq_zero_at_right_endpoint {f : ℝ → ℝ} (hf : Continuous f)
    {T : ℝ} (hzero : ∀ x, T < x → f x = 0) : f T = 0 := by
  have hsubset : Ioi T ⊆ {x | f x = 0} := fun x hx => hzero x hx
  have hclosed : IsClosed {x | f x = 0} := isClosed_eq hf continuous_const
  have hmem : T ∈ closure (Ioi T) := by rw [closure_Ioi]; exact mem_Ici.mpr (le_refl T)
  exact closure_minimal hsubset hclosed hmem

private theorem deriv_even_of_odd {f : ℝ → ℝ} (hf : Differentiable ℝ f)
    (ho : Function.Odd f) : Function.Even (deriv f) := by
  intro x
  have h := (hf (-x)).hasDerivAt.comp x (hasDerivAt_neg (x := x))
  have heq : f ∘ Neg.neg = -f := funext ho
  rw [heq] at h
  have he := ((hf x).hasDerivAt.neg).unique h
  linarith

/-- At the original window endpoints an admitted test loses its value at
least quadratically and its actual first derivative at least linearly. -/
theorem admissible_endpoint_decay
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q)
    {T : ℝ} (hT : 0 < T) {f : ℝ → ℝ} (hf : Admissible χ T f) :
    ∃ C : ℝ, 0 ≤ C ∧ ∀ x ∈ Icc (-T) T,
      |f x| ≤ C * (T - |x|) ^ 2 ∧ |deriv f x| ≤ C * (T - |x|) := by
  obtain ⟨hs, ho, hsupport⟩ := (admissible_iff_smooth_odd_supported χ hT f).mp hf
  have hdiff := hs.differentiable (by norm_num)
  have hdiff' := hs.differentiable_deriv_two
  have hcont' : ContDiff ℝ 1 (deriv f) := hs.deriv'
  have hzero (x : ℝ) (hx : T < x) : f x = 0 :=
    hsupport x fun hm => (not_lt_of_ge hm.2) hx
  have hfT := eq_zero_at_right_endpoint hs.continuous hzero
  have hdT : deriv f T = 0 := by
    apply eq_zero_at_right_endpoint hcont'.continuous
    intro y hy
    have he : f =ᶠ[𝓝 y] (fun _ => (0 : ℝ)) :=
      (eventually_gt_nhds hy).mono hzero
    exact ((hasDerivAt_const y (0 : ℝ)).congr_of_eventuallyEq he).deriv
  obtain ⟨M, hM⟩ := (isCompact_Icc : IsCompact (Icc (0 : ℝ) T)).exists_bound_of_continuousOn
    (hcont'.continuous_deriv_one.continuousOn)
  have hM0 : 0 ≤ M := (norm_nonneg _).trans (hM 0 ⟨le_rfl, hT.le⟩)
  have hd_bound (y : ℝ) (hy : y ∈ Icc (0 : ℝ) T) :
      |deriv f y| ≤ M * (T - y) := by
    have h := (convex_Icc (0 : ℝ) T).norm_image_sub_le_of_norm_hasDerivWithin_le
      (fun z _ => (hdiff' z).hasDerivAt.hasDerivWithinAt) hM hy (right_mem_Icc.mpr hT.le)
    rw [hdT, zero_sub, norm_neg, Real.norm_eq_abs, Real.norm_eq_abs,
      abs_of_nonneg (sub_nonneg.mpr hy.2)] at h
    exact h
  have hf_bound (y : ℝ) (hy : y ∈ Icc (0 : ℝ) T) :
      |f y| ≤ M * (T - y) ^ 2 := by
    have hd_near (z : ℝ) (hz : z ∈ Icc y T) :
        ‖deriv f z‖ ≤ M * (T - y) := by
      rw [Real.norm_eq_abs]
      exact (hd_bound z ⟨hy.1.trans hz.1, hz.2⟩).trans
        (mul_le_mul_of_nonneg_left (sub_le_sub_left hz.1 T) hM0)
    have h := (convex_Icc y T).norm_image_sub_le_of_norm_hasDerivWithin_le
      (fun z _ => (hdiff z).hasDerivAt.hasDerivWithinAt) hd_near
      (left_mem_Icc.mpr hy.2) (right_mem_Icc.mpr hy.2)
    rw [hfT, zero_sub, norm_neg, Real.norm_eq_abs, Real.norm_eq_abs,
      abs_of_nonneg (sub_nonneg.mpr hy.2)] at h
    exact h.trans_eq (by ring)
  refine ⟨M, hM0, fun x hx => ?_⟩
  have hmem : |x| ∈ Icc (0 : ℝ) T := ⟨abs_nonneg _, abs_le.mpr hx⟩
  have hv := hf_bound |x| hmem
  have hd := hd_bound |x| hmem
  rcases le_or_gt 0 x with hp | hn
  · simpa only [abs_of_nonneg hp] using And.intro hv hd
  · rw [abs_of_neg hn, ho x, abs_neg] at hv
    rw [abs_of_neg hn, deriv_even_of_odd hdiff ho x] at hd
    simpa only [abs_of_neg hn] using And.intro hv hd

end GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain
