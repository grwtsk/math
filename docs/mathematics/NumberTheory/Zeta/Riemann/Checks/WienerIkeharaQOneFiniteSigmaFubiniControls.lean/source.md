# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.WienerIkeharaQOneFiniteSigmaFubiniControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8cf39c7b33e14f4bba5cbd281b018f696e78e6e8` · SHA-256 `8d434ac12d33d47b7cf7b1a5e59c9944d7471ae56d4f5efa7e62ee5c73278b88`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. All rights reserved.
Original contributions: MIT (repository LICENSE).
Mathematical provenance: PrimeNumberTheoremAnd/Wiener.lean
(Alex Kontorovich, Terry Tao and collaborators; Apache-2.0 upstream).
Formalization assistance: OpenAI ChatGPT.
-/
import GRWTSK.NumberTheory.Zeta.Riemann.WienerIkeharaQOneFiniteSigmaFubini
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open Real Complex Filter MeasureTheory FourierTransform LSeries
open scoped FourierTransform ArithmeticFunction

namespace GRWTSK.RiemannHypothesis.Checks

open GRWTSK.RiemannHypothesis

/-- Zero-th L-series term is zero, even though the literal
Fourier frequency at n=0 is expressed with a totalized real log.
No ordinary log(0) or division by n=0 is used in the proof. -/
theorem wienerFubini_actual_lambda_zero_term
    (sigma _T : ℝ) :
    LSeries.term wienerFubiniLambda (sigma : ℂ) 0 = 0 := by
  simp [LSeries.term]

/-- The Fourier kernel at the L-series zero term is exactly zero
for all integration variables; it carries no endpoint correction. -/
theorem wienerFubini_actual_lambda_zero_integrand
    (sigma T : ℝ) (psi : ℝ → ℂ) (t : ℝ) :
    wienerFubiniIntegrand
      wienerFubiniLambda sigma T psi 0 t = 0 := by
  simp [wienerFubiniIntegrand, LSeries.term]

/-- The crucial vertical norm equality is actually sourced from
pinned norm_term_eq; an arbitrary vertical growth assumption for
the Dirichlet coefficients is not needed. -/
theorem wienerFubini_actual_lambda_vertical_norm
    (sigma t : ℝ) (n : ℕ) :
    ‖LSeries.term wienerFubiniLambda
      ((sigma : ℂ) + (t : ℂ) * Complex.I) n‖ =
      ‖LSeries.term wienerFubiniLambda (sigma : ℂ) n‖ :=
  wienerFubini_norm_term_vertical
    wienerFubiniLambda sigma t n

/-- The entire-line integrated-norm domination is genuinely
summable for the ACTUAL pinned von Mangoldt sequence at sigma>1.
This is the source theorem that justifies infinite Fubini. -/
theorem wienerFubini_actual_lambda_norm_domination
    (sigma T : ℝ) (hsigma : 1 < sigma)
    (psi : ℝ → ℂ) (hpsi : Continuous psi)
    (hcompact : HasCompactSupport psi) :
    Summable
      (fun n : ℕ =>
        ∫ t : ℝ,
          ‖wienerFubiniIntegrand
            wienerFubiniLambda sigma T psi n t‖) :=
  wienerFubini_integral_norm_summable
    wienerFubiniLambda sigma T psi
    (hpsi.integrable_of_hasCompactSupport hcompact)
    (wienerFubiniLambda_LSeriesSummable
      (by simpa using hsigma))

/-- The actual valid sum-integral exchange has BOTH analytic inputs:
term integrability and the pinned summable series of their L1 norms.
The general theorem constructs the exchange instead of assuming it. -/
theorem wienerFubini_actual_lambda_tsum_integral
    (sigma T : ℝ) (hsigma : 1 < sigma)
    (psi : ℝ → ℂ) (hpsi : Continuous psi)
    (hcompact : HasCompactSupport psi) :
    (∑' n : ℕ,
      ∫ t : ℝ,
        wienerFubiniIntegrand
          wienerFubiniLambda sigma T psi n t) =
      ∫ t : ℝ,
        (∑' n : ℕ,
          wienerFubiniIntegrand
            wienerFubiniLambda sigma T psi n t) := by
  exact wienerFubini_integral_tsum
    wienerFubiniLambda sigma T psi hpsi hcompact
    (wienerFubiniLambda_LSeriesSummable
      (by simpa using hsigma))

/-- Source-bound final q=1 statement, with no free L-series
summability assumption: the arithmetic coefficients really are
Mathlib's von Mangoldt values. -/
theorem wienerFubini_actual_lambda_firstFourier
    (sigma T : ℝ) (hsigma : 1 < sigma) (hT : 0 < T)
    (psi : ℝ → ℂ) (hpsi : Continuous psi)
    (hcompact : HasCompactSupport psi) :
    (∑' n : ℕ,
      LSeries.term wienerFubiniLambda (sigma : ℂ) n *
        (𝓕 psi) (wienerFubiniFrequency n T)) =
      ∫ t : ℝ,
        LSeries wienerFubiniLambda
          ((sigma : ℂ) + (t : ℂ) * Complex.I) *
          psi t * (T : ℂ) ^ ((t : ℂ) * Complex.I) :=
  wienerFubini_qoneLambda_firstFourier
    sigma T hsigma hT psi hpsi hcompact

/-- For a positive natural n the source frequency is precisely the
positive logarithmic quotient divided by 2*pi, not its negative. -/
theorem wienerFubini_frequency_at_scale (n : ℕ)
    (hn : 0 < n) :
    wienerFubiniFrequency n (n : ℝ) = 0 := by
  have hnR : (0 : ℝ) < (n : ℝ) := by exact_mod_cast hn
  simp [wienerFubiniFrequency, div_self hnR.ne']

/-- The residual uniform logarithmic-kernel source is positive
termwise; its denominator is 1+square, with exactly log(n/T)/(2*pi).
No summable majorant is inferred from termwise positivity alone. -/
theorem wienerFubini_log_kernel_positive
    (T : ℝ) (n : ℕ) :
    0 ≤ wienerLambdaLogKernel T n :=
  wienerLambdaLogKernel_nonnegative T n

/-- Finite summation preserves the source positivity; this is not
the uniform bound_sum_log' theorem on all scales. -/
theorem wienerFubini_log_kernel_finite_sum_positive
    (T : ℝ) (s : Finset ℕ) :
    0 ≤ ∑ n ∈ s, wienerLambdaLogKernel T n := by
  exact Finset.sum_nonneg (fun n _ => wienerLambdaLogKernel_nonnegative T n)

/-- Adversarial audit: these names describe OPEN mathematics rather
than fields purporting to prove that mathematics. -/
def wienerFubini_stillOpen : List String :=
  ["second Fourier pole integral at sigma>1: prove Fubini and exponential integration with identical frequency",
   "dominated sigma-downarrow-one arithmetic Fourier series: use actual Chebyshev O(N) and a uniform logarithmic kernel",
   "uniform bound_sum_log': for all T>=1, tsum Lambda(n)/n /(1+(log(n/T)/(2*pi))^2) <= (log 4+4)*(1+2*pi^2)",
   "Schwartz approximation: prove a uniform-in-T Fourier-weighted discarded-tail bound using the previous arithmetic estimate",
   "complete actual limiting_cor_schwartz and only then compose with checked Mellin and separately audited interval squeeze",
   "local exact-head Lean4.33 --wfail/trust0 and transitive axiom inspection for this new source"]

/-- Hostile nonimplications. The description strings carry NO proof. -/
def wienerFubini_prohibitedPromotions : List String :=
  ["pointwise convergence of LSeries terms justifies integral_tsum with no L1 domination",
   "complex LSeries term norm depends on its imaginary parameter when n>=1",
   "the sign of the Fourier frequency can be negated without reversing the complex-power phase",
   "the n=0 LSeries term is treated as ordinary log(0) or division by zero",
   "a positive logarithmic kernel automatically has a uniformly bounded tsum",
   "finite sigma first Fourier identity already includes the pole second Fourier integral",
   "q=1 residue pole continuity proves arbitrary Schwartz boundary integrability",
   "source-draft theorem means compiled Lean or passed --trust=0",
   "the unverified PR #965 smooth interval squeeze proves the missing Fourier limit",
   "false fixed uniform psi capacity, RH, Chowla or Goldbach proved from Fubini"]

end GRWTSK.RiemannHypothesis.Checks
```
