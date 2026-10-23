/-
Copyright (c) 2026 grwtsk contributors. All rights reserved.
Original contributions: MIT (repository LICENSE).
Analytic source attribution: Alex Kontorovich, Terry Tao, and the
PrimeNumberTheoremAnd contributors (upstream Apache-2.0).
Pinned maintained source: AlexKontorovich/PrimeNumberTheoremAnd
127b50e33f6033e2147921167a117af96d9ba4ea,
PrimeNumberTheoremAnd/Wiener.lean
blob 59fd5069a7eca51a8bc5005b5c43e31a5cbb38ac.
Formalization assistance: OpenAI ChatGPT.
-/
import GRWTSK.NumberTheory.Zeta.Riemann.WienerIkeharaLambdaLogKernelUniformBound
import Mathlib.Analysis.Distribution.SchwartzSpace.Fourier
import Mathlib.Analysis.Distribution.SchwartzSpace.Basic
import Mathlib.Analysis.Normed.Group.Tannery
import Mathlib.NumberTheory.LSeries.Basic
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

/-!
# Actual sigma-downarrow-one dominated Fourier series for q=1 Lambda

The maintained Wiener-Ikehara PNT source derives its
limiting_fourier_lim1 by applying the genuine dominated-convergence
theorem for infinite sums to the von Mangoldt Dirichlet terms, with a
UNIFORM logarithmic kernel dominating the complex Fourier weight.

The preceding local math module authors the actual nonnegative
bound_sum_log' with no new premise:
  forall T >= 1:
  Summable (wienerLambdaLogKernel T) AND
  tsum_n wienerLambdaLogKernel(T,n)
       <= (log 4 + 4)*(1+2*pi^2).

This file consumes that result for the ACTUAL complexified von
Mangoldt L-series wienerFubiniLambda. It authors independently:

* the pointwise sigma↓1 limit of each pinned LSeries.term;
* decay of Fourier(g) as C/(1+u²) for genuine Schwartz g;
* domination of the sigma>=1 complex arithmetic Fourier term by
  C*wienerLambdaLogKernel(T,n), with the n=0 convention respected;
* an actual application of Mathlib's
  tendsto_tsum_of_dominated_convergence, NOT a structure field
  postulating convergence;
* explicit identification of the limit with the zero-safe
  Lambda(n)/n-weighted Schwartz Fourier series.

All frequencies are the PNT project's
  +log(n/T)/(2*pi),  Fourier character exp(-2*pi*i*t*xi).
The 2*pi factor and the sign are preserved. No arbitrary complex
boundary auxiliary is used; the coefficient source is pinned Lambda.

The finite-sigma first Fourier/Fubini, pole Fourier identity and q=1
closed-boundary source remain separately authored and must pass
their own Lean replay. This theorem does NOT establish the
compact-to-Schwartz Wiener limit, PNT, RH, Chowla or Goldbach.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.RiemannHypothesis

open Real Complex Filter LSeries FourierTransform SchwartzMap
open scoped FourierTransform ArithmeticFunction

/-- The literal Fourier-weighted term of the pinned complex von
Mangoldt L-series at a REAL half-plane parameter sigma.
The logarithmic frequency itself is the exact source definition. -/
def wienerSigmaFourierTerm
    (g : 𝓢(ℝ, ℂ)) (T sigma : ℝ) (n : ℕ) : ℂ :=
  LSeries.term wienerFubiniLambda (sigma : ℂ) n *
    (𝓕 (g : ℝ → ℂ)) (wienerFubiniFrequency n T)

/-- Genuine termwise convergence to the boundary source parameter
sigma=1. The n=0 term is zero on BOTH sides; positive n uses pinned
complex-power continuity rather than a formal replacement of sigma. -/
theorem wienerSigma_LSeriesTerm_tendsto_one
    (n : ℕ) :
    Tendsto
      (fun sigma : ℝ =>
        LSeries.term wienerFubiniLambda (sigma : ℂ) n)
      (𝓝[>] (1 : ℝ))
      (𝓝 (LSeries.term wienerFubiniLambda (1 : ℂ) n)) := by
  by_cases hn : n = 0
  · subst n
    simp only [LSeries.term_zero]
    exact tendsto_const_nhds
  · have hnC : (n : ℂ) ≠ 0 := by
      exact_mod_cast hn
    have hcast :
        Tendsto (fun sigma : ℝ => (sigma : ℂ))
          (𝓝[>] (1 : ℝ)) (𝓝 (1 : ℂ)) :=
      (Complex.continuous_ofReal.tendsto 1).mono_left
        nhdsWithin_le_nhds
    have hpow :
        Tendsto (fun sigma : ℝ => (n : ℂ) ^ (sigma : ℂ))
          (𝓝[>] (1 : ℝ)) (𝓝 ((n : ℂ) ^ (1 : ℂ))) :=
      hcast.const_cpow
    have hden : (n : ℂ) ^ (1 : ℂ) ≠ 0 := by
      simpa using hnC
    simpa only [LSeries.term_of_ne_zero hn] using
      (tendsto_const_nhds.div hpow hden :
        Tendsto
          (fun sigma : ℝ =>
            wienerFubiniLambda n / (n : ℂ) ^ (sigma : ℂ))
          (𝓝[>] (1 : ℝ))
          (𝓝 (wienerFubiniLambda n / (n : ℂ) ^ (1 : ℂ))))

/-- This source also proves the Schwartz Fourier decay required by
the arithmetic domination without importing the separately queued
q=1 boundary-continuity source. Its constant depends on g only, not
on sigma, the arithmetic index or the scale T. -/
theorem wienerSigma_SchwartzFourier_decay
    (g : 𝓢(ℝ, ℂ)) :
    ∃ C : ℝ, 0 ≤ C ∧
      ∀ u : ℝ,
        ‖(𝓕 (g : ℝ → ℂ)) u‖ ≤ C / (1 + u ^ 2) := by
  let H : 𝓢(ℝ, ℂ) := 𝓕 g
  obtain ⟨C₀, hC₀, h₀⟩ := H.decay 0 0
  obtain ⟨C₂, hC₂, h₂⟩ := H.decay 2 0
  refine ⟨C₀ + C₂, by positivity, ?_⟩
  intro u
  have hz : ‖H u‖ ≤ C₀ := by
    simpa only [pow_zero, one_mul, norm_iteratedFDeriv_zero] using h₀ u
  have hsq : u ^ 2 * ‖H u‖ ≤ C₂ := by
    simpa only [norm_iteratedFDeriv_zero, Real.norm_eq_abs, sq_abs]
      using h₂ u
  have hbound :
      (1 + u ^ 2) * ‖H u‖ ≤ C₀ + C₂ := by
    nlinarith
  have hpositive : (0 : ℝ) < 1 + u ^ 2 := by positivity
  have hfinal : ‖H u‖ ≤ (C₀ + C₂) / (1 + u ^ 2) :=
    (le_div_iff₀ hpositive).2 (by
      simpa [mul_comm] using hbound)
  simpa only [H, SchwartzMap.fourier_coe] using hfinal

/-- At sigma=1 the L-series term norm multiplied by the exact
Fourier Cauchy weight is literally wienerLambdaLogKernel(T,n).
This handles n=0 separately instead of using log(0) as if ordinary
division by zero were defined. -/
theorem wienerSigma_normTerm_one_eq_kernel
    (T : ℝ) (n : ℕ) :
    ‖LSeries.term wienerFubiniLambda (1 : ℂ) n‖ *
      (1 + (wienerFubiniFrequency n T) ^ 2)⁻¹ =
        wienerLambdaLogKernel T n := by
  by_cases hn : n = 0
  · subst n
    simp [wienerLambdaLogKernel]
  · have hnonnegative :
        0 ≤ (ArithmeticFunction.vonMangoldt n : ℝ) :=
      ArithmeticFunction.vonMangoldt_nonneg
    have hnorm :
        ‖wienerFubiniLambda n‖ =
          (ArithmeticFunction.vonMangoldt n : ℝ) := by
      simp [wienerFubiniLambda, Real.norm_eq_abs,
        abs_of_nonneg hnonnegative]
    rw [LSeries.norm_term_eq]
    simp only [if_neg hn, Complex.one_re, pow_one]
    rw [hnorm]
    simp [wienerLambdaLogKernel, hn, wienerFubiniFrequency,
      div_eq_mul_inv, mul_comm, mul_left_comm, mul_assoc]

/-- The actual PINNED norm-term monotonicity is the source of
uniform domination for sigma>=1. This is NOT a bound on Lambda(n)
individually and does not use PNT. -/
theorem wienerSigma_normTerm_le_kernel
    (T sigma : ℝ) (hsigma : 1 ≤ sigma) (n : ℕ) :
    ‖LSeries.term wienerFubiniLambda (sigma : ℂ) n‖ *
      (1 + (wienerFubiniFrequency n T) ^ 2)⁻¹ ≤
        wienerLambdaLogKernel T n := by
  have hterm :
      ‖LSeries.term wienerFubiniLambda (sigma : ℂ) n‖ ≤
        ‖LSeries.term wienerFubiniLambda (1 : ℂ) n‖ :=
    LSeries.norm_term_le_of_re_le_re
      wienerFubiniLambda (by simpa using hsigma) n
  have hw :
      0 ≤ (1 + (wienerFubiniFrequency n T) ^ 2)⁻¹ := by
    positivity
  calc
    _ ≤ ‖LSeries.term wienerFubiniLambda (1 : ℂ) n‖ *
          (1 + (wienerFubiniFrequency n T) ^ 2)⁻¹ :=
      mul_le_mul_of_nonneg_right hterm hw
    _ = wienerLambdaLogKernel T n :=
      wienerSigma_normTerm_one_eq_kernel T n

/-- A FULL quantitative norm domination for the actual arithmetic
Schwartz Fourier integrand. The scale-independent C depends only on
the Schwartz test; the arithmetic source is the previously authored
and summable von Mangoldt logarithmic kernel. -/
theorem wienerSigmaFourierTerm_norm_le
    (g : 𝓢(ℝ, ℂ)) (T sigma : ℝ)
    (hsigma : 1 ≤ sigma)
    (C : ℝ) (hC : 0 ≤ C)
    (hdecay :
      ∀ u : ℝ, ‖(𝓕 (g : ℝ → ℂ)) u‖ ≤
        C / (1 + u ^ 2))
    (n : ℕ) :
    ‖wienerSigmaFourierTerm g T sigma n‖ ≤
      C * wienerLambdaLogKernel T n := by
  have htermpos :
      0 ≤ ‖LSeries.term wienerFubiniLambda (sigma : ℂ) n‖ :=
    norm_nonneg _
  calc
    ‖wienerSigmaFourierTerm g T sigma n‖ =
        ‖LSeries.term wienerFubiniLambda (sigma : ℂ) n‖ *
          ‖(𝓕 (g : ℝ → ℂ)) (wienerFubiniFrequency n T)‖ := by
      simp [wienerSigmaFourierTerm, norm_mul]
    _ ≤ ‖LSeries.term wienerFubiniLambda (sigma : ℂ) n‖ *
          (C / (1 + (wienerFubiniFrequency n T) ^ 2)) :=
      mul_le_mul_of_nonneg_left
        (hdecay (wienerFubiniFrequency n T)) htermpos
    _ = C *
          (‖LSeries.term wienerFubiniLambda (sigma : ℂ) n‖ *
            (1 + (wienerFubiniFrequency n T) ^ 2)⁻¹) := by
      ring
    _ ≤ C * wienerLambdaLogKernel T n :=
      mul_le_mul_of_nonneg_left
        (wienerSigma_normTerm_le_kernel T sigma hsigma n) hC

/-- Actual boundary Fourier coefficient with its source-level
zero index and ordinary Lambda(n)/n ratio only when n≠0. -/
def wienerSigmaBoundaryFourierTerm
    (g : 𝓢(ℝ, ℂ)) (T : ℝ) (n : ℕ) : ℂ :=
  if n = 0 then 0 else
    (wienerFubiniLambda n / (n : ℂ)) *
      (𝓕 (g : ℝ → ℂ)) (wienerFubiniFrequency n T)

/-- The L-series term evaluated at sigma=1 agrees with the literal
source boundary Lambda(n)/n coefficient at EVERY n, including zero. -/
theorem wienerSigmaTerm_one_eq_boundary
    (g : 𝓢(ℝ, ℂ)) (T : ℝ) (n : ℕ) :
    wienerSigmaFourierTerm g T 1 n =
      wienerSigmaBoundaryFourierTerm g T n := by
  by_cases hn : n = 0
  · subst n
    simp [wienerSigmaFourierTerm, wienerSigmaBoundaryFourierTerm]
  · simp [wienerSigmaFourierTerm, wienerSigmaBoundaryFourierTerm,
      LSeries.term_of_ne_zero hn, hn, cpow_one]

/-- The ACTUAL dominated sigma-downarrow-one arithmetic Fourier
series theorem. Its only analytic input is the true pinned Schwartz
condition on g; the summable majorant follows from the genuine
wienerLambdaLogKernel_uniform_bound theorem.

This is NOT a conditional wrapper for the desired limit. It applies
Mathlib's tendsto_tsum_of_dominated_convergence to actual proof
terms for pointwise limit, summability and ALL-index domination. -/
theorem wienerSigmaFourier_tendsto_boundary
    (g : 𝓢(ℝ, ℂ)) {T : ℝ} (hT : 1 ≤ T) :
    Tendsto
      (fun sigma : ℝ =>
        ∑' n : ℕ, wienerSigmaFourierTerm g T sigma n)
      (𝓝[>] (1 : ℝ))
      (𝓝 (∑' n : ℕ, wienerSigmaBoundaryFourierTerm g T n)) := by
  obtain ⟨C, hC, hdecay⟩ := wienerSigma_SchwartzFourier_decay g
  have hkernel : Summable (wienerLambdaLogKernel T) :=
    (wienerLambdaLogKernel_uniform_bound hT).1
  have hdom :
      Summable (fun n : ℕ => C * wienerLambdaLogKernel T n) := by
    simpa only [mul_comm] using hkernel.mul_const C
  have hlimit :
      Tendsto
        (fun sigma : ℝ =>
          ∑' n : ℕ, wienerSigmaFourierTerm g T sigma n)
        (𝓝[>] (1 : ℝ))
        (𝓝 (∑' n : ℕ, wienerSigmaFourierTerm g T 1 n)) := by
    apply tendsto_tsum_of_dominated_convergence hdom
    · intro n
      exact (wienerSigma_LSeriesTerm_tendsto_one n).mul_const
        ((𝓕 (g : ℝ → ℂ)) (wienerFubiniFrequency n T))
    · rw [eventually_nhdsWithin_iff]
      apply Eventually.of_forall
      intro sigma hsigma n
      exact wienerSigmaFourierTerm_norm_le
        g T sigma hsigma.le C hC hdecay n
  convert hlimit using 1
  congr 1
  apply tsum_congr
  intro n
  exact wienerSigmaTerm_one_eq_boundary g T n

/-- The quantitative domination is uniform in BOTH sigma>=1 and
T>=1. In particular the normed Fourier-weighted series is summable
and bounded independently of the arithmetic scale, while its test
constant C depends only on g. This supplies the real input needed
for the subsequent compact-to-Schwartz tail comparison. -/
theorem wienerSigmaFourier_uniform_norm_tsum
    (g : 𝓢(ℝ, ℂ)) :
    ∃ C : ℝ, 0 ≤ C ∧
      ∀ T sigma : ℝ, 1 ≤ T → 1 ≤ sigma →
        Summable
          (fun n : ℕ => ‖wienerSigmaFourierTerm g T sigma n‖) ∧
        (∑' n : ℕ, ‖wienerSigmaFourierTerm g T sigma n‖) ≤
          C * ((Real.log 4 + 4) * (1 + 2 * Real.pi ^ 2)) := by
  obtain ⟨C, hC, hdecay⟩ := wienerSigma_SchwartzFourier_decay g
  refine ⟨C, hC, ?_⟩
  intro T sigma hT hsigma
  obtain ⟨hkernel, hkernelBound⟩ :=
    wienerLambdaLogKernel_uniform_bound hT
  have hdom :
      Summable (fun n : ℕ => C * wienerLambdaLogKernel T n) := by
    simpa only [mul_comm] using hkernel.mul_const C
  have hterm (n : ℕ) :
      ‖wienerSigmaFourierTerm g T sigma n‖ ≤
        C * wienerLambdaLogKernel T n :=
    wienerSigmaFourierTerm_norm_le
      g T sigma hsigma C hC hdecay n
  have htermSum :
      Summable (fun n : ℕ => ‖wienerSigmaFourierTerm g T sigma n‖) := by
    apply hdom.of_norm_bounded
    intro n
    simpa only [norm_norm] using hterm n
  refine ⟨htermSum, ?_⟩
  calc
    (∑' n : ℕ, ‖wienerSigmaFourierTerm g T sigma n‖) ≤
        ∑' n : ℕ, C * wienerLambdaLogKernel T n :=
      htermSum.tsum_le_tsum hterm hdom
    _ = C * (∑' n : ℕ, wienerLambdaLogKernel T n) := by
      simp only [mul_comm]
      rw [tsum_mul_left]
    _ ≤ C * ((Real.log 4 + 4) * (1 + 2 * Real.pi ^ 2)) :=
      mul_le_mul_of_nonneg_left hkernelBound hC

end GRWTSK.RiemannHypothesis
