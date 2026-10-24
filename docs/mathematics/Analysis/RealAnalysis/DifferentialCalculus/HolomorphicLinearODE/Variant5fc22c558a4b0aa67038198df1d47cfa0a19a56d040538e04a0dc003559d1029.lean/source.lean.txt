module

public meta import Surface.Core.Classification
public import Mathlib.Analysis.Complex.HasPrimitives
public import Mathlib.Analysis.Normed.Module.Connected

/-!
# Nonvanishing for a holomorphic scalar linear ODE

This module isolates the analytic uniqueness statement used by the
Dirichlet-GRH zero-exclusion argument.  A holomorphic solution of

`f' = g * f`

on a connected open complex domain is either identically zero or nowhere
zero.  The proof is local: on a ball, a primitive of `-g` gives an
integrating factor.  The complex identity theorem then propagates a local
zero solution across the domain.

No number-theoretic definition or hypothesis occurs here.
-/

public section

namespace Surface.Core.Analysis

noncomputable section

open Set Complex

/-- A holomorphic solution of `f' = g * f` on a connected open complex
domain is nowhere zero as soon as it is nonzero at one point. -/
@[surface_novel]
theorem nowhereZero_of_deriv_eq_mul
    {U : Set ℂ}
    (hUopen : IsOpen U)
    (hUconn : IsPreconnected U)
    (f g : ℂ → ℂ)
    (hf : DifferentiableOn ℂ f U)
    (hg : DifferentiableOn ℂ g U)
    (hODE : ∀ z ∈ U, deriv f z = g z * f z)
    (z₀ : ℂ)
    (hz₀ : z₀ ∈ U)
    (hf₀ : f z₀ ≠ 0) :
    ∀ z ∈ U, f z ≠ 0 := by
  intro z hz hfz
  obtain ⟨r, hr, hball⟩ := Metric.isOpen_iff.mp hUopen z hz
  have hnegG : DifferentiableOn ℂ (fun w ↦ -g w) (Metric.ball z r) :=
    (hg.mono hball).neg
  obtain ⟨P, _hPz, hP⟩ := hnegG.isExactOn_ball.with_val_at z (0 : ℂ)
  let H : ℂ → ℂ := fun w ↦ Complex.exp (P w) * f w
  have hPdiff : DifferentiableOn ℂ P (Metric.ball z r) := by
    intro w hw
    exact (hP w hw).differentiableAt.differentiableWithinAt
  have hHdiff : DifferentiableOn ℂ H (Metric.ball z r) :=
    hPdiff.cexp.mul (hf.mono hball)
  have hHderiv : EqOn (deriv H) (fun _ : ℂ ↦ 0) (Metric.ball z r) := by
    intro w hw
    have hpw := hP w hw
    have hfw :=
      (hf.differentiableAt (hUopen.mem_nhds (hball hw))).hasDerivAt
    have hprod := hpw.cexp.mul hfw
    change deriv ((fun w ↦ Complex.exp (P w)) * f) w = 0
    rw [hprod.deriv]
    rw [hODE w (hball hw)]
    ring
  have hHz : H z = 0 := by
    simp [H, hfz]
  have hH_zero : ∀ w ∈ Metric.ball z r, H w = 0 := by
    intro w hw
    have hconst :=
      (Metric.isOpen_ball : IsOpen (Metric.ball z r)).is_const_of_deriv_eq_zero
        Metric.isPreconnected_ball hHdiff hHderiv hw (Metric.mem_ball_self hr)
    exact hconst.trans hHz
  have hf_zero : ∀ w ∈ Metric.ball z r, f w = 0 := by
    intro w hw
    have h := hH_zero w hw
    dsimp [H] at h
    exact (mul_eq_zero.mp h).resolve_left (Complex.exp_ne_zero (P w))
  have hEventually : f =ᶠ[nhds z] (fun _ : ℂ ↦ 0) := by
    filter_upwards [Metric.ball_mem_nhds z hr] with w hw
    exact hf_zero w hw
  have hfAnalytic : AnalyticOnNhd ℂ f U :=
    hf.analyticOnNhd hUopen
  have hzeroAnalytic : AnalyticOnNhd ℂ (fun _ : ℂ ↦ (0 : ℂ)) U :=
    analyticOnNhd_const
  have hEverywhere :=
    hfAnalytic.eqOn_of_preconnected_of_eventuallyEq
      hzeroAnalytic hUconn hz hEventually
  exact hf₀ (hEverywhere hz₀)

end

end Surface.Core.Analysis
