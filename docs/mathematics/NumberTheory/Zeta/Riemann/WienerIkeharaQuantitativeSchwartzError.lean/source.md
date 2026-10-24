# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.WienerIkeharaQuantitativeSchwartzError

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `83f6eab7c8a1fc87bdfdc7d21b21c3b4546f077a` · SHA-256 `391f3ce9fdea8c3caced39e13e305ef966dd6de5953e4b1804f98f9ab59fa9aa`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. All rights reserved.
Original contributions: MIT (repository LICENSE).
Mathematical source: Alex Kontorovich, Terry Tao and
PrimeNumberTheoremAnd contributors (upstream Apache-2.0).
Pinned maintained primary source:
PrimeNumberTheoremAnd/Wiener.lean at
127b50e33f6033e2147921167a117af96d9ba4ea,
blob 59fd5069a7eca51a8bc5005b5c43e31a5cbb38ac.
Formalization assistance: OpenAI ChatGPT.
-/
import GRWTSK.NumberTheory.Zeta.Riemann.WienerIkeharaLambdaSigmaBoundaryTannery
import Mathlib.Analysis.Distribution.SchwartzSpace.Fourier
import Mathlib.Analysis.Distribution.SchwartzSpace.Basic
import Mathlib.Analysis.LocallyConvex.WithSeminorms
import Mathlib.Analysis.SpecialFunctions.ImproperIntegrals
import Mathlib.MeasureTheory.Integral.Bochner.Set
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

/-!
# Quantitative Schwartz seminorm controlling the actual Wiener error

The maintained PNT source's bound_main requires a test seminorm
which tends to zero under compact approximation. Merely having
for each Schwartz g some constant C_g bounding its Fourier decay
is INSUFFICIENT to control C_(g-g_R).

Here we construct an explicit CONTINUOUS control seminorm:
  P(g) = seminorm_R(0,0)(Fourier(g))
           + seminorm_R(2,0)(Fourier(g)).

This is genuine pinned Schwartz topology, not an invented bound.
The source proves, with the precise Fourier sign and scale,
  |Fourier(g)(u)| <= P(g)/(1+u^2).

For the actual q=1 von Mangoldt Fourier series and its pole tail,
  E_T(g) =
   sum_n term(Lambda,1,n)*Fourier(g)(log(n/T)/(2*pi))
    - integral_{u>=-log T} Fourier(g)(u/(2*pi))du,

we prove the quantitative estimate for EVERY T>=1:
  |E_T(g)| <= P(g) * K,
  K = (log 4 + 4)*(1+2*pi^2) + 2*pi^2.

The arithmetic bound uses the previously authored actual Lambda
uniform logarithmic-kernel proof; the integral bound uses the
pinned full-line Cauchy integral exactly equal to 2*pi².

Since P is continuous and P(0)=0, E_T(r_R)->0 UNIFORMLY for all
T>=1 whenever r_R->0 in the genuine Schwartz topology.

This is NOT a proof that there exist compactly supported
Schwartz approximants g_R->g: that remains the next mathematical
obligation. The prior uniform kernel and sigma-Tannery modules
remain SOURCE_DRAFT pending independent pinned kernel replay.
No full limiting_cor_schwartz, PNT, RH, Chowla or Goldbach claim.
-/

namespace GRWTSK.RiemannHypothesis

open Real Complex Filter Set MeasureTheory FourierTransform SchwartzMap
open scoped FourierTransform

/-- A concrete continuous seminorm on Schwartz space (the sum of two
pinned seminorms of its actual Schwartz Fourier transform). -/
def wienerFourierSchwartzControl (g : 𝓢(ℝ, ℂ)) : ℝ :=
  (SchwartzMap.seminorm ℝ 0 0) (𝓕 g) +
    (SchwartzMap.seminorm ℝ 2 0) (𝓕 g)

theorem wienerFourierSchwartzControl_nonnegative
    (g : 𝓢(ℝ, ℂ)) :
    0 ≤ wienerFourierSchwartzControl g := by
  unfold wienerFourierSchwartzControl
  positivity

theorem wienerFourierSchwartzControl_zero :
    wienerFourierSchwartzControl (0 : 𝓢(ℝ, ℂ)) = 0 := by
  simp [wienerFourierSchwartzControl]

/-- Unlike an arbitrary existential decay constant, this control
actually varies continuously in the Schwartz topology. -/
theorem wienerFourierSchwartzControl_continuous :
    Continuous wienerFourierSchwartzControl := by
  have hF :
      Continuous (𝓕 : 𝓢(ℝ, ℂ) → 𝓢(ℝ, ℂ)) :=
    FourierTransform.continuous_fourier
  have h00 :
      Continuous (SchwartzMap.seminorm ℝ 0 0 :
        𝓢(ℝ, ℂ) → ℝ) := by
    simpa only [schwartzSeminormFamily_apply] using
      ((schwartz_withSeminorms ℝ ℝ ℂ).continuous_seminorm (0, 0))
  have h20 :
      Continuous (SchwartzMap.seminorm ℝ 2 0 :
        𝓢(ℝ, ℂ) → ℝ) := by
    simpa only [schwartzSeminormFamily_apply] using
      ((schwartz_withSeminorms ℝ ℝ ℂ).continuous_seminorm (2, 0))
  exact (h00.comp hF).add (h20.comp hF)

/-- The exact quantitative 1/(1+u²) bound, with its constant
EXPLICITLY P(g), not a fitted constant inferred afterward. -/
theorem wienerFourierSchwartzControl_decay
    (g : 𝓢(ℝ, ℂ)) (u : ℝ) :
    ‖(𝓕 (g : ℝ → ℂ)) u‖ ≤
      wienerFourierSchwartzControl g / (1 + u ^ 2) := by
  let H : 𝓢(ℝ, ℂ) := 𝓕 g
  have h0 :
      ‖H u‖ ≤ (SchwartzMap.seminorm ℝ 0 0) H :=
    SchwartzMap.norm_le_seminorm ℝ H u
  have h2 :
      u ^ 2 * ‖H u‖ ≤
        (SchwartzMap.seminorm ℝ 2 0) H := by
    simpa only [Real.norm_eq_abs, sq_abs] using
      (SchwartzMap.norm_pow_mul_le_seminorm ℝ H 2 u)
  have hSum :
      (1 + u ^ 2) * ‖H u‖ ≤
        wienerFourierSchwartzControl g := by
    change (1 + u ^ 2) * ‖H u‖ ≤
      (SchwartzMap.seminorm ℝ 0 0) H +
      (SchwartzMap.seminorm ℝ 2 0) H
    nlinarith
  have hPos : (0 : ℝ) < 1 + u ^ 2 := by positivity
  have h := (le_div_iff₀ hPos).mpr hSum
  simpa only [H, SchwartzMap.fourier_coe] using h

/-- The actual von Mangoldt Fourier series at its critical
coefficient Lambda(n)/n. It is NOT the unweighted LSeries(Lambda,1).
The n=0 term is the pinned LSeries zero term. -/
def wienerSchwartzBoundaryArithmetic
    (g : 𝓢(ℝ, ℂ)) (T : ℝ) : ℂ :=
  ∑' n : ℕ, wienerSigmaFourierTerm g T 1 n

/-- Source-normalized rescaled Fourier pole-tail integral. -/
def wienerSchwartzBoundaryTail
    (g : 𝓢(ℝ, ℂ)) (T : ℝ) : ℂ :=
  ∫ u in Set.Ici (-Real.log T),
    (𝓕 (g : ℝ → ℂ)) (u / (2 * Real.pi))

def wienerSchwartzBoundaryRemainder
    (g : 𝓢(ℝ, ℂ)) (T : ℝ) : ℂ :=
  wienerSchwartzBoundaryArithmetic g T -
    wienerSchwartzBoundaryTail g T

/-- Bound the actual arithmetic Fourier tsum by P(g) times the
previous genuine uniform von Mangoldt logarithmic kernel. -/
theorem wienerSchwartzBoundaryArithmetic_norm_le
    (g : 𝓢(ℝ, ℂ)) {T : ℝ} (hT : 1 ≤ T) :
    ‖wienerSchwartzBoundaryArithmetic g T‖ ≤
      wienerFourierSchwartzControl g *
        ((Real.log 4 + 4) * (1 + 2 * Real.pi ^ 2)) := by
  let P : ℝ := wienerFourierSchwartzControl g
  have hP : 0 ≤ P :=
    wienerFourierSchwartzControl_nonnegative g
  obtain ⟨hK, hKB⟩ :=
    wienerLambdaLogKernel_uniform_bound hT
  have hEach (n : ℕ) :
      ‖wienerSigmaFourierTerm g T 1 n‖ ≤
        P * wienerLambdaLogKernel T n :=
    wienerSigmaFourierTerm_norm_le
      g T 1 (le_refl _) P hP
      (wienerFourierSchwartzControl_decay g) n
  have hMajor :
      Summable (fun n : ℕ => P * wienerLambdaLogKernel T n) :=
    hK.mul_left P
  have hNorm :
      Summable (fun n : ℕ =>
        ‖wienerSigmaFourierTerm g T 1 n‖) :=
    hMajor.of_norm_bounded
      (fun n => by simpa only [norm_norm] using hEach n)
  calc
    ‖wienerSchwartzBoundaryArithmetic g T‖ ≤
        ∑' n : ℕ, ‖wienerSigmaFourierTerm g T 1 n‖ :=
      norm_tsum_le_tsum_norm hNorm
    _ ≤ ∑' n : ℕ, P * wienerLambdaLogKernel T n :=
      hNorm.tsum_le_tsum hEach hMajor
    _ = P * (∑' n : ℕ, wienerLambdaLogKernel T n) :=
      hK.tsum_mul_left P
    _ ≤ P * ((Real.log 4 + 4) * (1 + 2 * Real.pi ^ 2)) :=
      mul_le_mul_of_nonneg_left hKB hP

/-- Exact full-line Cauchy integral used to bound the pole tail.
It retains the u/(2*pi) rescaling of the original Wiener source. -/
theorem wienerSchwartzCauchy_twoPi_integral :
    (∫ u : ℝ, (1 + (u / (2 * Real.pi)) ^ 2)⁻¹) =
      2 * Real.pi ^ 2 := by
  simpa only [wienerShiftedCauchy, Real.log_one,
    sub_zero, wienerLogKernelC] using
    wienerShiftedCauchy_integral 1

/-- A proper half-line Fourier pole tail is bounded by the
ENTIRE-line Cauchy mass. No global boundary growth assumption. -/
theorem wienerSchwartzBoundaryTail_norm_le
    (g : 𝓢(ℝ, ℂ)) (T : ℝ) :
    ‖wienerSchwartzBoundaryTail g T‖ ≤
      wienerFourierSchwartzControl g * (2 * Real.pi ^ 2) := by
  let P : ℝ := wienerFourierSchwartzControl g
  have hP : 0 ≤ P :=
    wienerFourierSchwartzControl_nonnegative g
  have h2pi : (2 * Real.pi : ℝ) ≠ 0 := by positivity
  let K (u : ℝ) : ℝ := (1 + (u / (2 * Real.pi)) ^ 2)⁻¹
  have hKint : Integrable K := by
    simpa [K, wienerShiftedCauchy, Real.log_one,
      wienerLogKernelC] using wienerShiftedCauchy_integrable 1
  have hFint :
      Integrable (fun u : ℝ =>
        (𝓕 (g : ℝ → ℂ)) (u / (2 * Real.pi))) := by
    simpa only [SchwartzMap.fourier_coe] using
      (𝓕 g : 𝓢(ℝ, ℂ)).integrable.comp_div h2pi
  have hPoint (u : ℝ) :
      ‖(𝓕 (g : ℝ → ℂ)) (u / (2 * Real.pi))‖ ≤
        P * K u := by
    have h := wienerFourierSchwartzControl_decay
      g (u / (2 * Real.pi))
    simpa [P, K, div_eq_mul_inv] using h
  have hM :
      (∫ u in Set.Ici (-Real.log T),
        ‖(𝓕 (g : ℝ → ℂ)) (u / (2 * Real.pi))‖) ≤
      ∫ u in Set.Ici (-Real.log T), P * K u :=
    setIntegral_mono hFint.norm.integrableOn
      (hKint.const_mul P).integrableOn hPoint
  have hKall :
      (∫ u in Set.Ici (-Real.log T), K u) ≤
        ∫ u : ℝ, K u :=
    setIntegral_le_integral hKint
      (Filter.Eventually.of_forall
        (fun u => by dsimp [K]; positivity))
  calc
    ‖wienerSchwartzBoundaryTail g T‖ ≤
        ∫ u in Set.Ici (-Real.log T),
          ‖(𝓕 (g : ℝ → ℂ)) (u / (2 * Real.pi))‖ :=
      norm_integral_le_integral_norm _
    _ ≤ ∫ u in Set.Ici (-Real.log T), P * K u := hM
    _ = P * (∫ u in Set.Ici (-Real.log T), K u) := by
      rw [integral_const_mul]
    _ ≤ P * (∫ u : ℝ, K u) :=
      mul_le_mul_of_nonneg_left hKall hP
    _ = P * (2 * Real.pi ^ 2) := by
      rw [show (∫ u : ℝ, K u) =
        2 * Real.pi ^ 2 from
          wienerSchwartzCauchy_twoPi_integral]

/-- The exact uniform error constant, independent of T and g. -/
def wienerSchwartzErrorConstant : ℝ :=
  (Real.log 4 + 4) * (1 + 2 * Real.pi ^ 2) +
    2 * Real.pi ^ 2

theorem wienerSchwartzErrorConstant_nonnegative :
    0 ≤ wienerSchwartzErrorConstant := by
  unfold wienerSchwartzErrorConstant
  exact add_nonneg
    (mul_nonneg wienerChebyConstant_nonnegative (by positivity))
    (by positivity)

/-- A genuine bound_main-type supplier: the exact q=1 Fourier
arithmetic remainder is controlled by a CONTINUOUS Schwartz
seminorm, uniformly in all T>=1. -/
theorem wienerSchwartzBoundaryRemainder_uniform_norm_le
    (g : 𝓢(ℝ, ℂ)) {T : ℝ} (hT : 1 ≤ T) :
    ‖wienerSchwartzBoundaryRemainder g T‖ ≤
      wienerFourierSchwartzControl g *
        wienerSchwartzErrorConstant := by
  have ha := wienerSchwartzBoundaryArithmetic_norm_le g hT
  have hb := wienerSchwartzBoundaryTail_norm_le g T
  calc
    ‖wienerSchwartzBoundaryRemainder g T‖ ≤
        ‖wienerSchwartzBoundaryArithmetic g T‖ +
          ‖wienerSchwartzBoundaryTail g T‖ := norm_sub_le _ _
    _ ≤ wienerFourierSchwartzControl g *
          ((Real.log 4 + 4) * (1 + 2 * Real.pi ^ 2)) +
          wienerFourierSchwartzControl g * (2 * Real.pi ^ 2) :=
      add_le_add ha hb
    _ = wienerFourierSchwartzControl g *
          wienerSchwartzErrorConstant := by
      unfold wienerSchwartzErrorConstant
      ring

/-- Actual Schwartz-topological convergence implies convergence
of the explicit P, unlike an existential constant depending on g. -/
theorem wienerFourierSchwartzControl_tendsto_zero
    {ι : Type*} {F : Filter ι} {r : ι → 𝓢(ℝ, ℂ)}
    (hr : Tendsto r F (𝓝 (0 : 𝓢(ℝ, ℂ)))) :
    Tendsto (fun i => wienerFourierSchwartzControl (r i))
      F (𝓝 (0 : ℝ)) := by
  simpa only [wienerFourierSchwartzControl_zero] using
    (wienerFourierSchwartzControl_continuous.tendsto
      (0 : 𝓢(ℝ, ℂ))).comp hr

/-- Quantitative error result: ONE eventual bound works for ALL
real scales T>=1. This consumes a genuine Schwartz-convergent
error family, not a new equivalent premise for Wiener convergence. -/
theorem wienerSchwartzRemainder_uniform_vanishes
    {ι : Type*} {F : Filter ι}
    {r : ι → 𝓢(ℝ, ℂ)}
    (hr : Tendsto r F (𝓝 (0 : 𝓢(ℝ, ℂ))))
    {ε : ℝ} (hε : 0 < ε) :
    ∀ᶠ i in F,
      ∀ T : ℝ, 1 ≤ T →
        ‖wienerSchwartzBoundaryRemainder (r i) T‖ < ε := by
  have hP := wienerFourierSchwartzControl_tendsto_zero hr
  have hProduct :
      Tendsto
        (fun i =>
          wienerFourierSchwartzControl (r i) *
            wienerSchwartzErrorConstant)
        F (𝓝 (0 : ℝ)) := by
    simpa using hP.mul_const wienerSchwartzErrorConstant
  filter_upwards [hProduct.eventually (eventually_lt_nhds hε)]
    with i hi T hT
  exact (wienerSchwartzBoundaryRemainder_uniform_norm_le
    (r i) hT).trans_lt hi

/-- For any ACTUAL approximants gR->g in the Schwartz topology,
the Fourier remainder of g-gR tends to zero uniformly in scale.
The construction of compactly supported gR is still OPEN. -/
theorem wienerSchwartzRemainder_approximation_error
    (g : 𝓢(ℝ, ℂ)) (gR : ℕ → 𝓢(ℝ, ℂ))
    (hApprox : Tendsto gR atTop (𝓝 g))
    {ε : ℝ} (hε : 0 < ε) :
    ∀ᶠ R : ℕ in atTop,
      ∀ T : ℝ, 1 ≤ T →
        ‖wienerSchwartzBoundaryRemainder (g - gR R) T‖ <
          ε := by
  have hError :
      Tendsto (fun R : ℕ => g - gR R)
        atTop (𝓝 (0 : 𝓢(ℝ, ℂ))) := by
    simpa using (tendsto_const_nhds.sub hApprox)
  exact wienerSchwartzRemainder_uniform_vanishes hError hε

end GRWTSK.RiemannHypothesis
```
