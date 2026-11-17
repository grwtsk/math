/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilPrimitiveRationalWindowH1

/-! # Fixed-window uniform approximation implies native stage convergence -/

set_option autoImplicit false

open Filter MeasureTheory Set
open scoped Topology InnerProductSpace

namespace GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain

open NativeMixedGammaH1

/-- A uniform bound on a supported real function controls its whole-line L² norm. -/
theorem norm_toLp_le_of_window_bound {T δ : ℝ} (hδ : 0 ≤ δ)
    {g : ℝ → ℝ} (hg : MemLp g 2 volume)
    (hzero : ∀ x, x ∉ Icc (-T) T → g x = 0)
    (hbound : ∀ x ∈ Icc (-T) T, |g x| ≤ δ) :
    ‖hg.toLp g‖ ≤ Real.sqrt (volume.real (Icc (-T) T)) * δ := by
  have hnorm : ‖hg.toLp g‖ ^ 2 = ∫ x : ℝ, g x ^ 2 := by
    rw [← real_inner_self_eq_norm_sq, L2.inner_def]
    apply integral_congr_ae
    filter_upwards [hg.coeFn_toLp] with x hx
    simp [hx, pow_two]
  apply le_of_sq_le_sq _ (mul_nonneg (Real.sqrt_nonneg _) hδ)
  rw [hnorm, mul_pow, Real.sq_sqrt measureReal_nonneg]
  rw [← setIntegral_eq_integral_of_forall_compl_eq_zero
    (fun x hx => show g x ^ 2 = 0 by simp [hzero x hx])]
  calc
    (∫ x in Icc (-T) T, g x ^ 2) ≤ ∫ _ in Icc (-T) T, δ ^ 2 := by
      refine setIntegral_mono_on hg.integrable_sq.integrableOn
        (integrableOn_const isCompact_Icc.measure_ne_top) measurableSet_Icc ?_
      intro x hx
      exact sq_le_sq.mpr (by simpa only [abs_of_nonneg hδ] using hbound x hx)
    _ = _ := by rw [setIntegral_const, smul_eq_mul]

private theorem tendsto_toLp_of_window_error {ι : Type*} {l : Filter ι}
    {T : ℝ} {g : ι → ℝ → ℝ} {f : ℝ → ℝ}
    (hg : ∀ i, MemLp (g i) 2 volume) (hf : MemLp f 2 volume)
    (hzero : ∀ i x, x ∉ Icc (-T) T → g i x - f x = 0)
    (δ : ι → ℝ) (hδ : ∀ i, 0 ≤ δ i) (hlim : Tendsto δ l (𝓝 0))
    (hbound : ∀ i x, x ∈ Icc (-T) T → |g i x - f x| ≤ δ i) :
    Tendsto (fun i => (hg i).toLp (g i)) l (𝓝 (hf.toLp f)) := by
  rw [tendsto_iff_dist_tendsto_zero]
  have hup : Tendsto (fun i => Real.sqrt (volume.real (Icc (-T) T)) * δ i) l (𝓝 0) := by
    simpa only [mul_zero] using tendsto_const_nhds.mul hlim
  apply tendsto_of_tendsto_of_tendsto_of_le_of_le tendsto_const_nhds hup
  · intro i
    exact dist_nonneg
  · intro i
    dsimp only
    rw [dist_eq_norm, ← (hg i).toLp_sub hf]
    exact norm_toLp_le_of_window_bound (hδ i) ((hg i).sub hf) (hzero i) (hbound i)

private theorem first_eq_zero_off_window {f : ℝ → ℝ} {T x : ℝ}
    (hf : ClassicalRealH1 f) (hzero : ∀ t, t ∉ Icc (-T) T → f t = 0)
    (hx : x ∉ Icc (-T) T) : hf.first x = 0 := by
  have he : f =ᶠ[𝓝 x] (fun _ => (0 : ℝ)) :=
    (isClosed_Icc.isOpen_compl.eventually_mem hx).mono hzero
  exact (hf.derivative x).unique ((hasDerivAt_const x (0 : ℝ)).congr_of_eventuallyEq he)

/-- Uniform value and classical derivative errors on the original stage window
suffice for normalized codes to converge in the native stage topology. -/
theorem tendsto_normalized_stage_of_uniform_window_error
    {ι : Type*} {l : Filter ι} {q : ℕ} [NeZero q]
    (χ : DirichletCharacter ℂ q) (j : ℕ) (cs : ι → List ℚ)
    (f : PrimitiveStageMassTest χ j)
    (hf : ClassicalRealH1 f.val)
    (hraw : ∀ i, ClassicalRealH1 (rationalWindowTest ((j : ℝ) + 1) (cs i)))
    (δ : ι → ℝ) (hδ : ∀ i, 0 ≤ δ i) (hlim : Tendsto δ l (𝓝 0))
    (hvalue : ∀ i x, x ∈ Icc (-((j : ℝ) + 1)) ((j : ℝ) + 1) →
      |rationalWindowTest ((j : ℝ) + 1) (cs i) x - f.val x| ≤ δ i)
    (hfirst : ∀ i x, x ∈ Icc (-((j : ℝ) + 1)) ((j : ℝ) + 1) →
      |(hraw i).first x - hf.first x| ≤ δ i) :
    @Tendsto ι (PrimitiveStageMassTest χ j)
      (fun i => primitiveStageMassTestOfNormalizedCode χ j (cs i)) l
      (@nhds _ (primitiveStageH1Topology χ j) f) := by
  have hT : 0 < (j : ℝ) + 1 := by positivity
  have hfzero : ∀ x, x ∉ Icc (-((j : ℝ) + 1)) ((j : ℝ) + 1) → f.val x = 0 :=
    ((admissible_iff_smooth_odd_supported χ hT _).mp f.property.1).2.2
  have hrawzero (i : ι) : ∀ x, x ∉ Icc (-((j : ℝ) + 1)) ((j : ℝ) + 1) →
      rationalWindowTest ((j : ℝ) + 1) (cs i) x = 0 :=
    ((admissible_iff_smooth_odd_supported χ hT _).mp
      (rationalWindowTest_admissible χ hT (cs i))).2.2
  apply tendsto_primitiveStageMassTestOfNormalizedCode χ j cs f hf hraw
  exact (tendsto_toLp_of_window_error (fun i => (hraw i).f_memLp) hf.f_memLp
    (fun i x hx => by rw [hrawzero i x hx, hfzero x hx, sub_zero]) δ hδ hlim hvalue).prodMk_nhds
    (tendsto_toLp_of_window_error (fun i => (hraw i).first_memLp) hf.first_memLp
      (fun i x hx => by rw [first_eq_zero_off_window (hraw i) (hrawzero i) hx,
        first_eq_zero_off_window hf hfzero hx, sub_zero]) δ hδ hlim hfirst)

end GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain
