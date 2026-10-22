/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license.
Source-specific CCC continuation; local conditional candidate, RH remains open. -/
import GRWTSK.Analysis.Moebius.LaplaceTransform
import GRWTSK.NumberTheory.Zeta.Riemann.ZeroSymmetry
import GRWTSK.NumberTheory.Zeta.Riemann.Regularized

/-!
# Conditional signed-pickup Laplace return to literal RH

Human mathematical direction and theorem selection: R.A. Jacob Martone.
Implementation: OpenAI Codex. The actual signed pickup transform is fixed below.
Its holomorphy and initial source identity are explicit inputs, not arithmetic
assertions proved by this module. Entire regularization handles the zeta pole;
exact functional-equation zero transport supplies the left-half return.
-/

set_option autoImplicit false

noncomputable section
namespace GRWTSK.RiemannHypothesis.CCC

open Complex Set Filter MeasureTheory
open scoped Topology

open GRWTSK.RiemannHypothesis

/-- The entire zeta product continues across the shifted zeta pole. -/
theorem regularized_laplace_identity (L : ℂ → ℂ)
    (hhol : DifferentiableOn ℂ L pickupLaplaceDomain)
    (hinit : ∀ z : ℂ, 1 / 2 < z.re →
      z * regularizedZeta (z + 1 / 2) * L z = z - 1 / 2) :
    ∀ z : ℂ, 0 < z.re →
      z * regularizedZeta (z + 1 / 2) * L z = z - 1 / 2 := by
  let U : Set ℂ := pickupLaplaceDomain
  have hU : IsOpen U := isOpen_lt continuous_const continuous_re
  have hleft : AnalyticOnNhd ℂ
      (fun z ↦ z * regularizedZeta (z + 1 / 2) * L z) U := by
    apply DifferentiableOn.analyticOnNhd _ hU
    intro z hz
    have hreg : DifferentiableAt ℂ (fun w : ℂ ↦ regularizedZeta (w + 1 / 2)) z :=
      differentiable_regularizedZeta.differentiableAt.comp z
        (differentiableAt_id.add_const (1 / 2 : ℂ))
    exact ((differentiableAt_id.mul hreg).mul
      (hhol.differentiableAt (hU.mem_nhds hz))).differentiableWithinAt
  have hright : AnalyticOnNhd ℂ (fun z : ℂ ↦ z - 1 / 2) U := by
    have hd : Differentiable ℂ (fun z : ℂ ↦ z - 1 / 2) :=
      differentiable_id.sub_const (1 / 2 : ℂ)
    exact fun z _ ↦ hd.analyticAt z
  have hnear : (fun z ↦ z * regularizedZeta (z + 1 / 2) * L z)
      =ᶠ[𝓝 (1 : ℂ)] (fun z ↦ z - 1 / 2) := by
    have hV : {z : ℂ | 1 / 2 < z.re} ∈ 𝓝 (1 : ℂ) :=
      (isOpen_lt continuous_const continuous_re).mem_nhds (by norm_num)
    filter_upwards [hV] with z hz
    exact hinit z hz
  have heq := hleft.eqOn_of_preconnected_of_eventuallyEq hright
    (convex_halfSpace_re_gt 0).isPreconnected
    (show (1 : ℂ) ∈ U by norm_num [U, pickupLaplaceDomain]) hnear
  exact fun z hz ↦ heq hz

/-- The exact inverse transform identity pays the regularized initial product. -/
theorem regularized_initial_identity_of_inverse (L : ℂ → ℂ)
    (hinit : ∀ z : ℂ, 1 / 2 < z.re →
      L z = 1 / (z * (z + 1 / 2) * riemannZeta (z + 1 / 2))) :
    ∀ z : ℂ, 1 / 2 < z.re →
      z * regularizedZeta (z + 1 / 2) * L z = z - 1 / 2 := by
  intro z hz
  have hz0 : z ≠ 0 := ne_zero_of_re_pos (by linarith)
  have hsre : 1 < (z + 1 / 2).re := by
    norm_num [Complex.add_re]
    linarith
  have hs0 : z + 1 / 2 ≠ 0 := ne_zero_of_re_pos (by linarith)
  have hs1 : z + 1 / 2 ≠ 1 := by
    intro h
    have := congrArg Complex.re h
    simp only [one_re] at this
    linarith
  have hsζ : riemannZeta (z + 1 / 2) ≠ 0 :=
    riemannZeta_ne_zero_of_one_le_re hsre.le
  rw [regularizedZeta_eq hs0 hs1, hinit z hz]
  have hden : z * (z + 1 / 2) * riemannZeta (z + 1 / 2) ≠ 0 :=
    mul_ne_zero (mul_ne_zero hz0 hs0) hsζ
  have hnum : z * ((z + 1 / 2) * (z + 1 / 2 - 1) * riemannZeta (z + 1 / 2)) =
      (z - 1 / 2) * (z * (z + 1 / 2) * riemannZeta (z + 1 / 2)) := by ring
  rw [hnum, mul_one_div]
  exact mul_div_cancel_right₀ _ hden

/-- Holomorphy and the initial product exclude every zero strictly to the right. -/
theorem zeta_ne_zero_of_holomorphic_laplace (L : ℂ → ℂ)
    (hhol : DifferentiableOn ℂ L pickupLaplaceDomain)
    (hinit : ∀ z : ℂ, 1 / 2 < z.re →
      z * regularizedZeta (z + 1 / 2) * L z = z - 1 / 2)
    (s : ℂ) (hs : 1 / 2 < s.re) (hs1 : s ≠ 1) :
    riemannZeta s ≠ 0 := by
  intro hsζ
  have hs0 : s ≠ 0 := ne_zero_of_re_pos (by linarith)
  have hzr : 0 < (s - 1 / 2).re := by
    norm_num [Complex.sub_re]
    linarith
  have h := regularized_laplace_identity L hhol hinit (s - 1 / 2) hzr
  have hadd : s - 1 / 2 + 1 / 2 = s := by ring
  rw [hadd, regularizedZeta_eq hs0 hs1, hsζ] at h
  simp only [mul_zero, zero_mul] at h
  apply hs1
  linear_combination -h

/-- Exact functional-equation transport returns to Mathlib's literal RH target. -/
theorem riemannHypothesis_of_holomorphic_laplace (L : ℂ → ℂ)
    (hhol : DifferentiableOn ℂ L pickupLaplaceDomain)
    (hinit : ∀ z : ℂ, 1 / 2 < z.re →
      z * regularizedZeta (z + 1 / 2) * L z = z - 1 / 2) :
    _root_.RiemannHypothesis := by
  intro s hsζ hstrivial hs1
  have hs : NontrivialZetaZero s := ⟨hsζ, hstrivial, hs1⟩
  have hright : s.re ≤ 1 / 2 := le_of_not_gt fun h ↦
    zeta_ne_zero_of_holomorphic_laplace L hhol hinit s h hs1 hsζ
  have hreflect : (zeroReflect s).re ≤ 1 / 2 := le_of_not_gt fun h ↦
    zeta_ne_zero_of_holomorphic_laplace L hhol hinit (zeroReflect s)
      h hs.reflect.2.2 hs.reflect.1
  simp only [zeroReflect, sub_re, one_re] at hreflect
  linarith

/-- The exact fixed signed pickup can consume this terminal conditional adapter. -/
theorem riemannHypothesis_of_holomorphic_signedPickupLaplace
    (hhol : DifferentiableOn ℂ signedPickupLaplace pickupLaplaceDomain)
    (hinit : ∀ z : ℂ, 1 / 2 < z.re →
      signedPickupLaplace z =
        1 / (z * (z + 1 / 2) * riemannZeta (z + 1 / 2))) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_holomorphic_laplace signedPickupLaplace hhol
    (regularized_initial_identity_of_inverse signedPickupLaplace hinit)

end GRWTSK.RiemannHypothesis.CCC
