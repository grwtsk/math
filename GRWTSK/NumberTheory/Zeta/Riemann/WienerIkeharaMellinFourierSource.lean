/-
Copyright (c) 2026 grwtsk contributors. All rights reserved.
Released under the Apache 2.0 license as described in the repository LICENSE.
Source-level adaptation and mathematical attribution:
  Alex Kontorovich, Terry Tao, and PrimeNumberTheoremAnd contributors,
  PrimeNumberTheoremAnd/Wiener.lean, maintained commit
  127b50e33f6033e2147921167a117af96d9ba4ea.
Formalization assistance: OpenAI ChatGPT.
-/
import Mathlib.Analysis.Distribution.SchwartzSpace.Fourier
import Mathlib.Analysis.Distribution.SchwartzSpace.Basic
import Mathlib.Analysis.Fourier.Notation
import Mathlib.MeasureTheory.Integral.IntegralEqImproper
import Mathlib.Analysis.SpecialFunctions.Exp
import Mathlib.Topology.Algebra.Support
import Mathlib.Tactic

set_option autoImplicit false

noncomputable section

open Real Filter Set MeasureTheory FourierTransform SchwartzMap
open scoped FourierTransform

/-!
# An actual Mellin--Fourier normalization lemma for smooth Wiener--Ikehara

The maintained PrimeNumberTheoremAnd proof constructs a Schwartz preimage
of the positive-support test function

    H(u) = exp(2*pi*u) * Psi(exp(2*pi*u))

and uses Fourier inversion to establish

    (Fourier g)((log y)/(2*pi)) = y * Psi(y),  for y > 0.

This is a substantive analytic supplier to the smooth-test
Wiener--Ikehara theorem, not a replacement hypothesis for it.

This module ports, against PINNED Mathlib, the construction:
  * vanishing of Psi near zero from closed positive support;
  * compact support of its logarithmic pullback at BOTH infinities;
  * smoothness of the logarithmic weight and its Schwartz membership;
  * a genuine Fourier-inverse witness, using the pinned Schwartz Fourier
    inversion theorem (not an axiom or an arbitrary witness);
  * exact 1/(2*pi) logarithmic frequency normalization;
  * the n=0-safe equality of weighted Fourier and ordinary smooth
    Dirichlet coefficients;
  * the exponential change of variables for the Mellin tail integral.

The remaining major source theorem is the maintained
limiting_cor_schwartz: the Tauberian limit for Fourier-weighted
Dirichlet sums, relying on the closed Re(s)>=1 pole-subtracted
L-series auxiliary, Schwartz decay and Fourier limits.

No claim of PNT, RH, or an accepted Lean kernel proof is made here.
Source draft; exact-head Lean replay and axioms audit remain OPEN.
-/

namespace GRWTSK.RiemannHypothesis

/-- The necessary boundary condition on the test function. -/
def WienerPositiveSupport (Ψ : ℝ → ℂ) : Prop :=
  closure (Function.support Ψ) ⊆ Set.Ioi (0 : ℝ)

/-- Positive support forces the test function to vanish on an actual
neighborhood of zero, not merely at the single point zero. -/
theorem wiener_eventually_zero_near_zero
    {Ψ : ℝ → ℂ} (hplus : WienerPositiveSupport Ψ) :
    ∀ᶠ y in 𝓝 (0 : ℝ), Ψ y = 0 := by
  apply notMem_tsupport_iff_eventuallyEq.mp
  intro hzero
  exact lt_irrefl (0 : ℝ) (hplus hzero)

/-- In particular, the zero coefficient of a weighted arithmetic
smooth sum is zero even for a function f with f(0) ≠ 0. -/
theorem wiener_test_zero
    {Ψ : ℝ → ℂ} (hplus : WienerPositiveSupport Ψ) :
    Ψ 0 = 0 :=
  (wiener_eventually_zero_near_zero hplus).self_of_nhds

/-- The positive test function vanishes as exp(u) tends to zero on
the negative logarithmic half-line. -/
theorem wiener_exp_pullback_vanish_atBot
    {Ψ : ℝ → ℂ} (hplus : WienerPositiveSupport Ψ) :
    ∀ᶠ u : ℝ in atBot, Ψ (Real.exp u) = 0 :=
  Real.tendsto_exp_atBot (wiener_eventually_zero_near_zero hplus)

/-- Compactness of the test function forces its logarithmic pullback
to vanish on the positive half-line. -/
theorem wiener_exp_pullback_vanish_atTop
    {Ψ : ℝ → ℂ} (hcompact : HasCompactSupport Ψ) :
    ∀ᶠ u : ℝ in atTop, Ψ (Real.exp u) = 0 := by
  simp only [hasCompactSupport_iff_eventuallyEq,
    coclosedCompact_eq_cocompact,
    cocompact_eq_atBot_atTop] at hcompact
  exact Real.tendsto_exp_atTop hcompact.2

/-- Actual compact support of the logarithmic pullback: the left
boundary uses the positive-support hypothesis, and the right boundary
uses compact support. Dropping either hypothesis would be invalid. -/
theorem wiener_exp_pullback_compact
    {Ψ : ℝ → ℂ} (hcompact : HasCompactSupport Ψ)
    (hplus : WienerPositiveSupport Ψ) :
    HasCompactSupport (Ψ ∘ Real.exp) := by
  simp only [hasCompactSupport_iff_eventuallyEq,
    coclosedCompact_eq_cocompact,
    cocompact_eq_atBot_atTop]
  exact ⟨wiener_exp_pullback_vanish_atBot hplus,
    wiener_exp_pullback_vanish_atTop hcompact⟩

/-- Fourier's 2*pi-normalized logarithmic test. We deliberately use
Real.exp and an explicit inclusion ℝ→ℂ to fix the scalar convention. -/
def wienerMellinLogTest (Ψ : ℝ → ℂ) (u : ℝ) : ℂ :=
  (Real.exp (2 * Real.pi * u) : ℂ) *
    Ψ (Real.exp (2 * Real.pi * u))

theorem wienerMellinLogTest_smooth
    {Ψ : ℝ → ℂ} (hsmooth : ContDiff ℝ ∞ Ψ) :
    ContDiff ℝ ∞ (wienerMellinLogTest Ψ) := by
  have hexp :
      ContDiff ℝ ∞ (fun u : ℝ => Real.exp (2 * Real.pi * u)) :=
    (contDiff_const.mul contDiff_id).exp
  exact (contDiff_ofReal.comp hexp).mul (hsmooth.comp hexp)

/-- The logarithmic test has COMPACT support on all of ℝ, not just
one-sided decay: the exact hypothesis required to form a Schwartz
function by the pinned HasCompactSupport.toSchwartzMap theorem. -/
theorem wienerMellinLogTest_compact
    {Ψ : ℝ → ℂ} (hcompact : HasCompactSupport Ψ)
    (hplus : WienerPositiveSupport Ψ) :
    HasCompactSupport (wienerMellinLogTest Ψ) := by
  have htwoPi : (2 * Real.pi : ℝ) ≠ 0 := by
    positivity
  have hExp := wiener_exp_pullback_compact hcompact hplus
  simpa [wienerMellinLogTest, Function.comp_def, smul_eq_mul] using
    ((hExp.comp_smul htwoPi).mul_left)

/-- A genuine Schwartz function, CONSTRUCTED from pinned
smoothness/compact-support proofs, not a formal placeholder. -/
def wienerMellinSchwartz
    (Ψ : ℝ → ℂ)
    (hsmooth : ContDiff ℝ ∞ Ψ)
    (hcompact : HasCompactSupport Ψ)
    (hplus : WienerPositiveSupport Ψ) : 𝓢(ℝ, ℂ) :=
  (wienerMellinLogTest_compact hcompact hplus).toSchwartzMap
    (wienerMellinLogTest_smooth hsmooth)

/-- Pinned Fourier inversion on the Schwartz space constructs the
PREIMAGE, rather than postulating surjectivity as an external axiom. -/
theorem wienerMellinFourier_surjective
    (H : 𝓢(ℝ, ℂ)) :
    ∃ g : 𝓢(ℝ, ℂ), 𝓕 g = H := by
  exact ⟨𝓕⁻ H, FourierTransform.fourier_fourierInv_eq H⟩

/-- The EXACT Mellin/Fourier frequency coefficient identity.

No 2*pi factor, Fourier-sign reversal, or Jacobian has been dropped:
  F(g)(log(y)/(2*pi)) = y * Psi(y).

The Fourier transform is the one with character exp(-2*pi*i*t*u);
this is the normalization used by the maintained PNT+ Wiener source.
-/
theorem wienerMellin_fourier_witness
    (Ψ : ℝ → ℂ)
    (hsmooth : ContDiff ℝ ∞ Ψ)
    (hcompact : HasCompactSupport Ψ)
    (hplus : WienerPositiveSupport Ψ) :
    ∃ g : 𝓢(ℝ, ℂ),
      ∀ y : ℝ, 0 < y →
        (𝓕 g) ((1 / (2 * Real.pi)) * Real.log y) =
          (y : ℂ) * Ψ y := by
  let H : 𝓢(ℝ, ℂ) :=
    wienerMellinSchwartz Ψ hsmooth hcompact hplus
  refine ⟨𝓕⁻ H, ?_⟩
  intro y hy
  have hFourier : 𝓕 (𝓕⁻ H) = H :=
    FourierTransform.fourier_fourierInv_eq H
  rw [hFourier]
  change
    (Real.exp (2 * Real.pi *
        ((1 / (2 * Real.pi)) * Real.log y)) : ℂ) *
      Ψ (Real.exp (2 * Real.pi *
        ((1 / (2 * Real.pi)) * Real.log y))) =
        (y : ℂ) * Ψ y
  have htwoPi : (2 * Real.pi : ℝ) ≠ 0 := by positivity
  have hlogArg :
      2 * Real.pi * ((1 / (2 * Real.pi)) * Real.log y) =
        Real.log y := by
    field_simp [htwoPi]
    ring
  rw [hlogArg, Real.exp_log hy]
  rfl

/-- Source-safe Fourier-weighted coefficient: the zero term is
defined separately because the logarithm of 0/T is inadmissible. -/
def wienerFourierCoefficient
    (f : ℕ → ℂ) (g : 𝓢(ℝ, ℂ)) (T : ℝ) (n : ℕ) : ℂ :=
  if n = 0 then 0
  else
    f n / (n : ℂ) *
      (𝓕 g) ((1 / (2 * Real.pi)) *
        Real.log ((n : ℝ) / T))

/-- The exact coefficient bridge to a smooth arithmetic sum.
No global asymptotic limit is used. The n=0 case is handled using
the actual positive-support vanishing of Psi at zero. -/
theorem wienerFourierCoefficient_eq_smoothCoefficient
    (f : ℕ → ℂ) (Ψ : ℝ → ℂ) (g : 𝓢(ℝ, ℂ))
    (hplus : WienerPositiveSupport Ψ)
    (hFourier :
      ∀ y : ℝ, 0 < y →
        (𝓕 g) ((1 / (2 * Real.pi)) * Real.log y) =
          (y : ℂ) * Ψ y)
    {T : ℝ} (hT : 0 < T) (n : ℕ) :
    wienerFourierCoefficient f g T n =
      f n * Ψ ((n : ℝ) / T) / (T : ℂ) := by
  by_cases hn : n = 0
  · subst n
    simp [wienerFourierCoefficient, wiener_test_zero hplus]
  · have hnr : 0 < (n : ℝ) := by
      exact_mod_cast Nat.pos_of_ne_zero hn
    have hy : 0 < (n : ℝ) / T := div_pos hnr hT
    have hnC : (n : ℂ) ≠ 0 := by
      exact_mod_cast hn
    have hTC : (T : ℂ) ≠ 0 := by
      exact_mod_cast hT.ne'
    simp only [wienerFourierCoefficient, if_neg hn]
    rw [hFourier _ hy]
    simp only [Complex.ofReal_div, Complex.ofReal_natCast]
    field_simp [hnC, hTC]
    ring

/-- The analytic Mellin tail change of variables y=exp(u), with
the *same* lower endpoint 1/T as in the historical Wiener source.

This uses the actual pinned change-of-variables theorem for vector
integrals over unbounded intervals, not a formal coordinate renaming.
-/
theorem wienerMellin_exp_tail_integral
    {Ψ : ℝ → ℂ}
    (hsmooth : ContDiff ℝ ∞ Ψ)
    (hcompact : HasCompactSupport Ψ)
    (hplus : WienerPositiveSupport Ψ)
    {T : ℝ} (hT : 0 < T) :
    (∫ u in Set.Ioi (-Real.log T),
      (Real.exp u : ℂ) * Ψ (Real.exp u)) =
        ∫ y in Set.Ioi (T⁻¹), Ψ y := by
  have hf :
      ContinuousOn Real.exp (Set.Ici (-Real.log T)) := by
    fun_prop
  have hft : Tendsto Real.exp atTop atTop :=
    Real.tendsto_exp_atTop
  have hderiv (u : ℝ) (_hu : u ∈ Set.Ioi (-Real.log T)) :
      HasDerivWithinAt Real.exp (Real.exp u)
        (Set.Ioi u) u :=
    (Real.hasDerivAt_exp u).hasDerivWithinAt
  have hΨcont :
      ContinuousOn Ψ (Real.exp '' Set.Ioi (-Real.log T)) := by
    fun_prop
  have hΨint :
      IntegrableOn Ψ (Real.exp '' Set.Ici (-Real.log T))
        volume :=
    (hsmooth.continuous.integrable_of_hasCompactSupport
      hcompact).integrableOn
  have hcompInt :
      IntegrableOn
        (fun u : ℝ => Real.exp u • (Ψ ∘ Real.exp) u)
        (Set.Ici (-Real.log T)) volume := by
    refine (Continuous.integrable_of_hasCompactSupport
      (by fun_prop) ?_).integrableOn
    change HasCompactSupport (Real.exp • (Ψ ∘ Real.exp))
    exact (wiener_exp_pullback_compact hcompact hplus).smul_left
  have h := MeasureTheory.integral_deriv_smul_comp_Ioi
    hf hft hderiv hΨcont hΨint hcompInt
  simpa [Real.exp_neg, Real.exp_log hT] using h

end GRWTSK.RiemannHypothesis
