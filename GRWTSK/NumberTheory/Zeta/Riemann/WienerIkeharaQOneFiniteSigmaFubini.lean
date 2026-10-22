/-
Copyright (c) 2026 R. A. Jacob Martone. All rights reserved.
Original contributions: MIT (repository LICENSE).
Analytic source adapted from PrimeNumberTheoremAnd/Wiener.lean by
Alex Kontorovich, Terry Tao and collaborators (Apache-2.0 upstream).
Maintained source: commit 127b50e33f6033e2147921167a117af96d9ba4ea,
Wiener.lean blob 59fd5069a7eca51a8bc5005b5c43e31a5cbb38ac.
Formalization assistance: OpenAI ChatGPT.
-/
import GRWTSK.NumberTheory.Zeta.Riemann.WienerIkeharaMellinFourierSource
import Mathlib.Analysis.Fourier.FourierTransform
import Mathlib.MeasureTheory.Integral.DominatedConvergence
import Mathlib.NumberTheory.LSeries.Dirichlet
import Mathlib.NumberTheory.LSeries.Basic
import Mathlib.NumberTheory.LSeries.PrimesInAP
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open Real Complex Filter MeasureTheory FourierTransform LSeries
open scoped FourierTransform ArithmeticFunction

/-!
# Finite-sigma Fourier/Fubini for the actual q=1 von Mangoldt L-series

The maintained Wiener--Ikehara proof uses a first Fourier/Fubini
identity to interchange an absolutely convergent Dirichlet series
and an integral over the entire real Fourier variable.

This file actually proves the norm-integral domination
  sum_n integral_t ||term(f,sigma,n)*phase(n,T,t)*psi(t)||
    = (sum_n ||term(f,sigma,n)||) * integral_t ||psi(t)||,
then uses pinned integral_tsum_of_summable_integral_norm to commute
the infinite sum and integral. It does NOT assume their exchange.

For sigma>1, T>0, psi continuous compactly supported, the actual
von Mangoldt series has the source equality
  sum_n term(Lambda,sigma,n)*Fourier(psi)(log(n/T)/(2*pi))
    = integral_t LSeries(Lambda,sigma+it)*psi(t)*T^(it).

The n=0 term is zero, and the Fourier convention is
  Fourier(psi)(xi)=integral exp(-2*pi*i*t*xi)*psi(t) dt.
The RHS phase is T^(+it), not T^(-it).

The pole (second Fourier) integral, sigma-downarrow-one Fourier
domination, and uniform Chebyshev-weighted logarithmic sum remain
independent OPEN suppliers. No theorem premise equal to the
desired limiting_cor_schwartz statement is introduced.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / NO_PNT_OR_RH_CLAIM.
-/

namespace GRWTSK.RiemannHypothesis

/-- Literal complexification of the actual Mathlib von Mangoldt
coefficients, retaining zero and all prime powers. -/
def wienerFubiniLambda (n : ℕ) : ℂ :=
  ((ArithmeticFunction.vonMangoldt n : ℝ) : ℂ)

/-- Absolute convergence in Re(s)>1 is an actual pinned theorem. -/
theorem wienerFubiniLambda_LSeriesSummable
    {s : ℂ} (hs : 1 < s.re) :
    LSeriesSummable wienerFubiniLambda s := by
  simpa only [wienerFubiniLambda] using
    (ArithmeticFunction.LSeriesSummable_vonMangoldt hs)

/-- Norms of L-series terms are invariant under vertical translation;
this is the precise uniform pointwise domination in the t variable. -/
theorem wienerFubini_norm_term_vertical
    (f : ℕ → ℂ) (sigma t : ℝ) (n : ℕ) :
    ‖LSeries.term f ((sigma : ℂ) + (t : ℂ) * Complex.I) n‖ =
      ‖LSeries.term f (sigma : ℂ) n‖ := by
  simp [LSeries.norm_term_eq]

/-- Actual vertical absolute summability, not a free input. -/
theorem wienerFubiniLambda_vertical_summable
    (sigma t : ℝ) (hsigma : 1 < sigma) :
    LSeriesSummable wienerFubiniLambda
      ((sigma : ℂ) + (t : ℂ) * Complex.I) := by
  have hreal :
      LSeriesSummable wienerFubiniLambda (sigma : ℂ) := by
    apply wienerFubiniLambda_LSeriesSummable
    simpa using hsigma
  apply Summable.of_norm
  have hnorm := hreal.norm
  simpa only [wienerFubini_norm_term_vertical] using hnorm

/-- Historical positive logarithmic Fourier frequency. -/
def wienerFubiniFrequency (n : ℕ) (T : ℝ) : ℝ :=
  (1 / (2 * Real.pi)) * Real.log ((n : ℝ) / T)

/-- The exact Fourier character kernel, with its unit-modulus Circle
action. Its n=0 factor is the zero L-series term. -/
def wienerFubiniIntegrand
    (f : ℕ → ℂ) (sigma T : ℝ) (psi : ℝ → ℂ)
    (n : ℕ) (t : ℝ) : ℂ :=
  LSeries.term f (sigma : ℂ) n *
    (𝐞 (-(t * wienerFubiniFrequency n T)) • psi t)

/-- Exact norm of the integrand (character modulus one). -/
theorem wienerFubiniIntegrand_norm
    (f : ℕ → ℂ) (sigma T : ℝ)
    (psi : ℝ → ℂ) (n : ℕ) (t : ℝ) :
    ‖wienerFubiniIntegrand f sigma T psi n t‖ =
      ‖LSeries.term f (sigma : ℂ) n‖ * ‖psi t‖ := by
  simp only [wienerFubiniIntegrand, norm_mul,
    Circle.norm_smul]

/-- Each term is integrable because it is continuous and supported
inside the SAME compact support as the test. -/
theorem wienerFubiniIntegrand_integrable
    (f : ℕ → ℂ) (sigma T : ℝ)
    (psi : ℝ → ℂ)
    (hpsi : Continuous psi) (hcompact : HasCompactSupport psi)
    (n : ℕ) :
    Integrable (wienerFubiniIntegrand f sigma T psi n) := by
  have hphase :
      Continuous (fun t : ℝ =>
        𝐞 (-(t * wienerFubiniFrequency n T))) :=
    Real.continuous_fourierChar.comp
      ((continuous_id.mul continuous_const).neg)
  have hcont :
      Continuous (wienerFubiniIntegrand f sigma T psi n) :=
    continuous_const.mul (hphase.smul hpsi)
  have hsupp :
      HasCompactSupport
        (wienerFubiniIntegrand f sigma T psi n) := by
    change HasCompactSupport
      ((fun _ : ℝ => LSeries.term f (sigma : ℂ) n) *
        ((fun t : ℝ =>
            𝐞 (-(t * wienerFubiniFrequency n T))) • psi))
    exact hcompact.smul_left.mul_left
  exact hcont.integrable_of_hasCompactSupport hsupp

/-- The actual domination certificate: sum of ENTIRE-line L1
integrals is summable. Summability is derived from the absolute
Dirichlet series, not a made-up exchange premise. -/
theorem wienerFubini_integral_norm_summable
    (f : ℕ → ℂ) (sigma T : ℝ)
    (psi : ℝ → ℂ)
    (hpsiInt : Integrable psi)
    (hL : LSeriesSummable f (sigma : ℂ)) :
    Summable
      (fun n : ℕ =>
        ∫ t : ℝ,
          ‖wienerFubiniIntegrand f sigma T psi n t‖) := by
  have heq (n : ℕ) :
      (∫ t : ℝ,
          ‖wienerFubiniIntegrand f sigma T psi n t‖) =
        ‖LSeries.term f (sigma : ℂ) n‖ *
          (∫ t : ℝ, ‖psi t‖) := by
    simp_rw [wienerFubiniIntegrand_norm]
    rw [integral_const_mul]
  have hpsiNorm : Integrable (fun t : ℝ => ‖psi t‖) := hpsiInt.norm
  simp_rw [heq]
  exact hL.norm.mul_const _

/-- Actual Lebesgue tsum-integral exchange, justified by term
integrability AND a summable sequence of integrated norms. -/
theorem wienerFubini_integral_tsum
    (f : ℕ → ℂ) (sigma T : ℝ)
    (psi : ℝ → ℂ)
    (hpsi : Continuous psi) (hcompact : HasCompactSupport psi)
    (hL : LSeriesSummable f (sigma : ℂ)) :
    (∑' n : ℕ,
      ∫ t : ℝ,
        wienerFubiniIntegrand f sigma T psi n t) =
      ∫ t : ℝ,
        (∑' n : ℕ,
          wienerFubiniIntegrand f sigma T psi n t) := by
  exact integral_tsum_of_summable_integral_norm
    (fun n => wienerFubiniIntegrand_integrable
      f sigma T psi hpsi hcompact n)
    (wienerFubini_integral_norm_summable
      f sigma T psi (hpsi.integrable_of_hasCompactSupport hcompact) hL)

/-- Exact complex-frequency identity for each coefficient. The
n=0 source term is handled separately, without interpreting log 0
as a valid ordinary logarithm. -/
theorem wienerFubini_term_phase
    (f : ℕ → ℂ) (sigma t T : ℝ) (hT : 0 < T)
    (psi : ℝ → ℂ) (n : ℕ) :
    wienerFubiniIntegrand f sigma T psi n t =
      LSeries.term f ((sigma : ℂ) + (t : ℂ) * Complex.I) n *
        (psi t * (T : ℂ) ^ ((t : ℂ) * Complex.I)) := by
  by_cases hn : n = 0
  · subst n
    simp [wienerFubiniIntegrand, LSeries.term]
  · have hnR : (0 : ℝ) < (n : ℝ) := by
      exact_mod_cast Nat.pos_of_ne_zero hn
    have hTC : (T : ℂ) ≠ 0 := by
      exact_mod_cast hT.ne'
    have hnC : (n : ℂ) ≠ 0 := by
      exact_mod_cast hn
    simp only [wienerFubiniIntegrand, LSeries.term,
      hn, ↓reduceIte]
    calc
      _ = (f n *
            (Complex.exp
                ((2 * Real.pi *
                  -(t * wienerFubiniFrequency n T) : ℝ) *
                    Complex.I)) /
              (↑((n : ℝ) ^ sigma) : ℂ)) • psi t := by
        rw [Circle.smul_def, Real.fourierChar_apply,
          Complex.ofReal_cpow (by norm_num)]
        simp [wienerFubiniFrequency, one_div, mul_inv_rev,
          mul_neg, ofReal_neg, ofReal_mul, ofReal_ofNat, ofReal_inv]
        ring
      _ = (f n *
            (((T : ℂ) ^ ((t : ℂ) * Complex.I)) /
              (n : ℂ) ^ ((sigma : ℂ) +
                (t : ℂ) * Complex.I))) • psi t := by
        congr 2
        rw [Real.rpow_def_of_pos hnR,
          Complex.cpow_def_of_ne_zero hTC,
          Complex.cpow_def_of_ne_zero hnC]
        push_cast
        simp_rw [← Complex.exp_sub]
        congr 1
        have hfrequency :
            (2 * Real.pi : ℂ) *
                (-(t : ℂ) *
                  ((1 / (2 * Real.pi) : ℝ) *
                    Real.log ((n : ℝ) / T))) =
              -((t : ℂ) * Real.log ((n : ℝ) / T)) := by
          push_cast
          field_simp [by positivity :
            (2 * Real.pi : ℂ) ≠ 0]
          ring
        rw [hfrequency, Real.log_div hnR.ne' hT.ne']
        push_cast
        rw [Complex.ofReal_log hT.le]
        ring
      _ = _ := by
        simp only [smul_eq_mul]
        group

/-- The Fourier transform here is Mathlib's actual exp(-2*pi*i*t*xi)
transform, not a redefined signed version. -/
theorem wienerFubini_integral_eq_Fourier
    (f : ℕ → ℂ) (sigma T : ℝ)
    (psi : ℝ → ℂ) (n : ℕ) :
    (∫ t : ℝ,
      wienerFubiniIntegrand f sigma T psi n t) =
      LSeries.term f (sigma : ℂ) n *
        ((𝓕 psi) (wienerFubiniFrequency n T)) := by
  rw [Real.fourier_real_eq]
  simp only [wienerFubiniIntegrand, wienerFubiniFrequency]
  rw [integral_const_mul]

/-- General first Fourier theorem, proved from genuine domination and
an exact term-by-term phase identity. -/
theorem wienerFubini_firstFourier
    (f : ℕ → ℂ) (sigma T : ℝ) (hT : 0 < T)
    (psi : ℝ → ℂ)
    (hpsi : Continuous psi) (hcompact : HasCompactSupport psi)
    (hL : LSeriesSummable f (sigma : ℂ)) :
    (∑' n : ℕ,
      LSeries.term f (sigma : ℂ) n *
        (𝓕 psi) (wienerFubiniFrequency n T)) =
      ∫ t : ℝ,
        LSeries f ((sigma : ℂ) + (t : ℂ) * Complex.I) *
          psi t * (T : ℂ) ^ ((t : ℂ) * Complex.I) := by
  have hswap := wienerFubini_integral_tsum
    f sigma T psi hpsi hcompact hL
  have hVertical (t : ℝ) :
      LSeriesSummable f
        ((sigma : ℂ) + (t : ℂ) * Complex.I) := by
    apply Summable.of_norm
    have hrealNorm := hL.norm
    simpa only [wienerFubini_norm_term_vertical] using hrealNorm
  calc
    (∑' n : ℕ,
      LSeries.term f (sigma : ℂ) n *
        (𝓕 psi) (wienerFubiniFrequency n T)) =
      ∑' n : ℕ,
        ∫ t : ℝ,
          wienerFubiniIntegrand f sigma T psi n t := by
      apply tsum_congr
      intro n
      exact (wienerFubini_integral_eq_Fourier
        f sigma T psi n).symm
    _ = ∫ t : ℝ,
      (∑' n : ℕ,
        wienerFubiniIntegrand f sigma T psi n t) := hswap
    _ = ∫ t : ℝ,
        LSeries f ((sigma : ℂ) + (t : ℂ) * Complex.I) *
          psi t * (T : ℂ) ^ ((t : ℂ) * Complex.I) := by
      apply integral_congr_ae
      apply Eventually.of_forall
      intro t
      calc
        (∑' n : ℕ, wienerFubiniIntegrand
          f sigma T psi n t) =
          (∑' n : ℕ,
            LSeries.term f
              ((sigma : ℂ) + (t : ℂ) * Complex.I) n *
              (psi t * (T : ℂ) ^ ((t : ℂ) * Complex.I))) := by
          apply tsum_congr
          intro n
          exact wienerFubini_term_phase f sigma t T hT psi n
        _ = LSeries f
              ((sigma : ℂ) + (t : ℂ) * Complex.I) *
              (psi t * (T : ℂ) ^ ((t : ℂ) * Complex.I)) := by
          exact Summable.tsum_mul_right
            (psi t * (T : ℂ) ^ ((t : ℂ) * Complex.I))
            (hVertical t)
        _ = _ := by ring

/-- The actual q=1 Lambda first Fourier identity. In particular,
there is NO unsupplied summability premise in this theorem. -/
theorem wienerFubini_qoneLambda_firstFourier
    (sigma T : ℝ) (hsigma : 1 < sigma) (hT : 0 < T)
    (psi : ℝ → ℂ)
    (hpsi : Continuous psi) (hcompact : HasCompactSupport psi) :
    (∑' n : ℕ,
      LSeries.term wienerFubiniLambda (sigma : ℂ) n *
        (𝓕 psi) (wienerFubiniFrequency n T)) =
      ∫ t : ℝ,
        LSeries wienerFubiniLambda
          ((sigma : ℂ) + (t : ℂ) * Complex.I) *
          psi t * (T : ℂ) ^ ((t : ℂ) * Complex.I) := by
  exact wienerFubini_firstFourier
    wienerFubiniLambda sigma T hT psi hpsi hcompact
    (wienerFubiniLambda_LSeriesSummable
      (by simpa using hsigma))

/-- The exact positive logarithmic Chebyshev kernel, retaining
the 1/(2*pi) frequency and the n=0 zero-term convention. -/
def wienerLambdaLogKernel (T : ℝ) (n : ℕ) : ℝ :=
  if n = 0 then 0
  else
    (ArithmeticFunction.vonMangoldt n : ℝ) / (n : ℝ) *
      (1 + (Real.log ((n : ℝ) / T) /
        (2 * Real.pi)) ^ 2)⁻¹

/-- Actual termwise positivity of the historical logarithmic kernel. -/
theorem wienerLambdaLogKernel_nonnegative (T : ℝ) (n : ℕ) :
    0 ≤ wienerLambdaLogKernel T n := by
  by_cases hn : n = 0
  · simp [wienerLambdaLogKernel, hn]
  · simp only [wienerLambdaLogKernel, hn, ↓reduceIte]
    apply mul_nonneg
    · exact div_nonneg
        (ArithmeticFunction.vonMangoldt_nonneg (n := n))
        (Nat.cast_nonneg _)
    · positivity

/-- Exact zero endpoint, rather than an unproved division convention. -/
theorem wienerLambdaLogKernel_zero (T : ℝ) :
    wienerLambdaLogKernel T 0 = 0 := by
  simp [wienerLambdaLogKernel]

/-
Remaining independent arithmetic theorem: maintained Wiener.lean
bound_sum_log' proves, for ALL T >= 1, the UNIFORM inequality

  tsum_n wienerLambdaLogKernel T n
    <= (Real.log 4 + 4) * (1 + 2 * Real.pi^2).

This is not proved by the first Fourier/Fubini identity or merely by
Schwartz pointwise decay. Its proof requires a genuine summation-by-parts
bound using the Chebyshev O(N) norm-cumsum plus a summable logarithmic
difference kernel. No axiom or structure field is created for it here.
-/

end GRWTSK.RiemannHypothesis
