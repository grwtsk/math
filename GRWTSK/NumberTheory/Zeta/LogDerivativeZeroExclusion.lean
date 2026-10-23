/-
Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Research direction: grwtsk contributors. Formalization assistance: ChatGPT.
Lean and Mathlib retain their original attribution and licenses.
Status: candidate proof source, NOT elaborated in the pinned environment.
-/
import GRWTSK.Analysis.Complex.AnalyticLinearODE
import GRWTSK.NumberTheory.Zeta.PoleRemovedSource

/-! # A holomorphic regularized logarithmic derivative excludes nontrivial zeros

Only the Euler half-plane is used for division by zeta. The resulting ODE is a
holomorphic identity on the full right half-plane after removing zeta's pole.
Analytic vanishing order then excludes zeros, and the completed numerator
performs reflection. No zero-free hypothesis is used in the continuation step.
-/
set_option autoImplicit false
noncomputable section
open Set Filter
open scoped Topology
namespace GRWTSK.NumberTheory.Zeta.LogDerivativeZeroExclusion
open GRWTSK.NumberTheory.Zeta.PoleRemovedSource
open GRWTSK.Analysis.Complex.AnalyticLinearODE

/-- On the Euler half-plane all cancelled factors have proved nonzero values. -/
theorem ode_on_euler_domain {F : ℂ → ℂ}
    (hF : ∀ s : ℂ, 1<s.re →
      F s=-(deriv riemannZeta s)/riemannZeta s-1/(s-1))
    {s : ℂ} (hs : 1<s.re) :
    deriv poleRemoved s=(-F s)*poleRemoved s := by
  have hs1 : s ≠ 1 := by intro h; simp [h] at hs
  have hz : riemannZeta s ≠ 0 := riemannZeta_ne_zero_of_one_lt_re hs
  rw [poleRemoved_deriv hs1, poleRemoved_eq_mul hs1, hF s hs]
  field_simp [hz, sub_ne_zero.mpr hs1]; ring

/-- Identity-theorem continuation of the denominator-free ODE, including 1. -/
theorem ode_on_halfPlane {F : ℂ → ℂ}
    (hhol : DifferentiableOn ℂ F halfPlane)
    (hEuler : ∀ s : ℂ, 1<s.re →
      F s=-(deriv riemannZeta s)/riemannZeta s-1/(s-1)) :
    ∀ s ∈ halfPlane, deriv poleRemoved s=(-F s)*poleRemoved s := by
  have hFa : AnalyticOnNhd ℂ F halfPlane := hhol.analyticOnNhd halfPlane_open
  have hd : AnalyticOnNhd ℂ (deriv poleRemoved) halfPlane := by
    intro s hs
    exact (poleRemoved_analyticOn s hs).deriv
  have hr : AnalyticOnNhd ℂ (fun s => (-F s)*poleRemoved s) halfPlane := by
    intro s hs
    exact (hFa s hs).neg.mul (poleRemoved_analyticOn s hs)
  have he : deriv poleRemoved =ᶠ[𝓝 (2 : ℂ)]
      (fun s => (-F s)*poleRemoved s) := by
    have hopen : IsOpen {s : ℂ | 1<s.re} :=
      isOpen_lt continuous_const Complex.continuous_re
    filter_upwards [hopen.mem_nhds (show 1<(2 : ℂ).re by norm_num)] with s hs
    exact ode_on_euler_domain hEuler hs
  exact hd.eqOn_of_preconnected_of_eventuallyEq hr halfPlane_preconnected
    two_mem_halfPlane he

/-- Nonvanishing uses the actual pole-removed value 1 at the anchor 1. -/
theorem poleRemoved_ne_zero_of_extension {F : ℂ → ℂ}
    (hhol : DifferentiableOn ℂ F halfPlane)
    (hEuler : ∀ s : ℂ, 1<s.re →
      F s=-(deriv riemannZeta s)/riemannZeta s-1/(s-1)) :
    ∀ s ∈ halfPlane, poleRemoved s ≠ 0 := by
  have hFa := hhol.analyticOnNhd halfPlane_open
  apply nonvanishing halfPlane_open halfPlane_preconnected poleRemoved_analyticOn
    (show AnalyticOnNhd ℂ (fun s => -F s) halfPlane from
      fun s hs => (hFa s hs).neg) one_mem_halfPlane
    (show poleRemoved 1 ≠ 0 by rw [poleRemoved_one]; exact one_ne_zero)
  exact ode_on_halfPlane hhol hEuler

/-- Explicit right-half-plane zero exclusion; 1 is excluded from zeta's reading. -/
theorem zeta_ne_zero_right_of_extension {F : ℂ → ℂ}
    (hhol : DifferentiableOn ℂ F halfPlane)
    (hEuler : ∀ s : ℂ, 1<s.re →
      F s=-(deriv riemannZeta s)/riemannZeta s-1/(s-1))
    {s : ℂ} (hs : (1/2 : ℝ)<s.re) (hs1 : s ≠ 1) : riemannZeta s ≠ 0 := by
  intro hz
  apply poleRemoved_ne_zero_of_extension hhol hEuler s hs
  rw [poleRemoved_eq_mul hs1, hz, mul_zero]

/-- Exact Mathlib RH predicate, including negative-even exclusions and s!=1.
The hypotheses supply the continuation contract, not zero-freeness or RH. -/
theorem riemannHypothesis_of_extension {F : ℂ → ℂ}
    (hhol : DifferentiableOn ℂ F halfPlane)
    (hEuler : ∀ s : ℂ, 1<s.re →
      F s=-(deriv riemannZeta s)/riemannZeta s-1/(s-1)) :
    _root_.RiemannHypothesis := by
  intro s hz htriv hs1
  have hn : numerator s=0 := numerator_zero_of_nontrivial_zeta_zero hz hs1 htriv
  have hne := poleRemoved_ne_zero_of_extension hhol hEuler
  by_contra heq
  rcases lt_or_gt_of_ne heq with hleft | hright
  · have href : 1-s ∈ halfPlane := by
      change (1/2 : ℝ)<(1-s).re
      simp only [Complex.sub_re, Complex.one_re]
      linarith
    exact hne (1-s) href (reflected_poleRemoved_zero hn)
  · apply hne s hright
    simp only [poleRemoved, hn, zero_div]

/-- A specified witness is sufficient; no choice of a substitute source is made. -/
theorem riemannHypothesis_of_exists_extension
    (h : ∃ F : ℂ → ℂ, DifferentiableOn ℂ F halfPlane ∧
      ∀ s : ℂ, 1<s.re →
        F s=-(deriv riemannZeta s)/riemannZeta s-1/(s-1)) :
    _root_.RiemannHypothesis := by
  obtain ⟨F, hF, hEq⟩ := h
  exact riemannHypothesis_of_extension hF hEq

end GRWTSK.NumberTheory.Zeta.LogDerivativeZeroExclusion
