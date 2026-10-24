/-
Copyright (c) 2026 grwtsk contributors. All rights reserved.
Original contributions: MIT (repository LICENSE).
Mathematical provenance: PrimeNumberTheoremAnd/Wiener.lean,
Alex Kontorovich, Terry Tao and contributors (Apache-2.0 upstream).
Formalization assistance: OpenAI ChatGPT.
-/
import GRWTSK.NumberTheory.Zeta.Riemann.WienerIkeharaLambdaSigmaBoundaryTannery
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks

open GRWTSK.RiemannHypothesis
open Real Complex Filter LSeries FourierTransform SchwartzMap
open scoped FourierTransform ArithmeticFunction

/-- At n=0 the ACTUAL pinned L-series term is zero for every
sigma, regardless of how real log(0/T) is totalized in the frequency. -/
theorem wienerSigma_zero_arithmetic_term
    (g : 𝓢(ℝ, ℂ)) (T sigma : ℝ) :
    wienerSigmaFourierTerm g T sigma 0 = 0 := by
  simp [wienerSigmaFourierTerm, LSeries.term_zero]

/-- The real boundary Lambda/n coefficient is zero at n=0.
No use of an ordinary 0/0 quotient is made. -/
theorem wienerSigma_boundary_zero_term
    (g : 𝓢(ℝ, ℂ)) (T : ℝ) :
    wienerSigmaBoundaryFourierTerm g T 0 = 0 := by
  simp [wienerSigmaBoundaryFourierTerm]

/-- The true unit-index von Mangoldt coefficient is zero, so the
boundary source retains that exact term even though the Fourier
transform need not vanish at frequency 0. -/
theorem wienerSigma_boundary_one_term
    (g : 𝓢(ℝ, ℂ)) (T : ℝ) :
    wienerSigmaBoundaryFourierTerm g T 1 = 0 := by
  simp [wienerSigmaBoundaryFourierTerm, wienerFubiniLambda,
    ArithmeticFunction.vonMangoldt_apply_one]

/-- The Fourier frequency is +log(n/T)/(2*pi): for positive n and
T=n it is zero. This checks the normalized sign and 2*pi factor. -/
theorem wienerSigma_unit_frequency_at_n
    {n : ℕ} (hn : 0 < n) :
    wienerFubiniFrequency n (n : ℝ) = 0 := by
  have hnR : (n : ℝ) ≠ 0 := by
    exact_mod_cast (Nat.ne_of_gt hn)
  simp [wienerFubiniFrequency, div_self hnR, Real.log_one]

/-- A true proof for the exact one-line boundary coefficient:
LSeries.term evaluated at 1 is the n≠0 Lambda/n term, not an
arbitrary new analytically continued Dirichlet coefficient. -/
theorem wienerSigma_boundary_source_exact
    (g : 𝓢(ℝ, ℂ)) (T : ℝ) (n : ℕ) :
    wienerSigmaFourierTerm g T 1 n =
      wienerSigmaBoundaryFourierTerm g T n :=
  wienerSigmaTerm_one_eq_boundary g T n

/-- Pointwise sigma-to-one limit consumes only the PINNED complex
power term's continuity, including the n=0 totalization. -/
theorem wienerSigma_pointwise_source_limit (n : ℕ) :
    Tendsto
      (fun sigma : ℝ =>
        LSeries.term wienerFubiniLambda (sigma : ℂ) n)
      (𝓝[>] (1 : ℝ))
      (𝓝 (LSeries.term wienerFubiniLambda (1 : ℂ) n)) :=
  wienerSigma_LSeriesTerm_tendsto_one n

/-- Schwartz decay is a quantified analytic lemma proved from
pinned Fourier-Schwartz seminorms; no new Fourier decay hypothesis
is supplied by the test. -/
theorem wienerSigma_schwartz_decay_source
    (g : 𝓢(ℝ, ℂ)) :
    ∃ C : ℝ, 0 ≤ C ∧
      ∀ u : ℝ,
        ‖(𝓕 (g : ℝ → ℂ)) u‖ ≤ C / (1 + u ^ 2) :=
  wienerSigma_SchwartzFourier_decay g

/-- For every sigma>=1, the norm of the ACTUAL L-series term
against its logarithmic Cauchy frequency is dominated by the
single previously source-proved Lambda logarithmic kernel. -/
theorem wienerSigma_arithmetic_kernel_domination
    (T sigma : ℝ) (hsigma : 1 ≤ sigma) (n : ℕ) :
    ‖LSeries.term wienerFubiniLambda (sigma : ℂ) n‖ *
      (1 + (wienerFubiniFrequency n T) ^ 2)⁻¹ ≤
        wienerLambdaLogKernel T n :=
  wienerSigma_normTerm_le_kernel T sigma hsigma n

/-- This theorem applies true dominated convergence for TSUM to
the genuine pinned von Mangoldt coefficients, with no assumed
boundedness of an entire vertical boundary L-function. -/
theorem wienerSigma_actualLambda_tendsto_boundary
    (g : 𝓢(ℝ, ℂ)) {T : ℝ} (hT : 1 ≤ T) :
    Tendsto
      (fun sigma : ℝ =>
        ∑' n : ℕ, wienerSigmaFourierTerm g T sigma n)
      (𝓝[>] (1 : ℝ))
      (𝓝 (∑' n : ℕ, wienerSigmaBoundaryFourierTerm g T n)) :=
  wienerSigmaFourier_tendsto_boundary g hT

/-- The boundary Fourier arithmetic series is itself genuinely
summable, even though the *unweighted* von Mangoldt L-series need
not be summable at sigma=1. The Fourier Schwartz factor and
Chebyshev kernel are essential. -/
theorem wienerSigma_boundary_fourier_summable
    (g : 𝓢(ℝ, ℂ)) {T : ℝ} (hT : 1 ≤ T) :
    Summable (wienerSigmaBoundaryFourierTerm g T) := by
  obtain ⟨C, hC, h⟩ := wienerSigmaFourier_uniform_norm_tsum g
  have hnorm :
      Summable
        (fun n : ℕ => ‖wienerSigmaFourierTerm g T 1 n‖) :=
    (h T 1 hT (le_refl _)).1
  have hactual :
      Summable (wienerSigmaFourierTerm g T 1) :=
    hnorm.of_norm
  simpa only [wienerSigmaTerm_one_eq_boundary] using hactual

/-- Explicit UNIFORM-IN-T and sigma>=1 bound on the ACTUAL
absolute Fourier-weighted Lambda series. Unlike an abstract
boundedness claim, the constant is constructed from Schwartz
seminorm decay and the proved-in-source Chebyshev kernel bound. -/
theorem wienerSigma_actualLambda_uniform_absolute_bound
    (g : 𝓢(ℝ, ℂ)) :
    ∃ C : ℝ, 0 ≤ C ∧
      ∀ T sigma : ℝ, 1 ≤ T → 1 ≤ sigma →
        Summable
          (fun n : ℕ => ‖wienerSigmaFourierTerm g T sigma n‖) ∧
        (∑' n : ℕ, ‖wienerSigmaFourierTerm g T sigma n‖) ≤
          C * ((Real.log 4 + 4) * (1 + 2 * Real.pi ^ 2)) :=
  wienerSigmaFourier_uniform_norm_tsum g

/-- Trust and mathematical obligations left explicitly open.
This ledger contains no mathematical premise that can supply a
missing theorem. -/
def wienerSigma_nextProofObligations : List String :=
  ["exact-commit pinned Lean --wfail and trust=0 replay of the uniform bound and its full transitive dependencies",
   "compose the separately checked first and second Fourier/Fubini identities with the actual q=1 residue-one pole identity",
   "audit the right-boundary dominated integral and Riemann-Lebesgue proofs separately from this arithmetic sigma limit",
   "derive a quantitative Schwartz seminorm or W21 bound for the Fourier Cauchy-decay constant",
   "construct compact smooth truncations converging in the SAME controlling seminorm",
   "prove uniform-in-T discarded Schwartz tail estimates and complete genuine limiting_cor_schwartz",
   "then and only then replay downstream PR 965 smooth-to-interval and the Tauberian de-windowing source"]

/-- The strings are hostile controls, not source-level axioms. -/
def wienerSigma_prohibitedPromotions : List String :=
  ["nonnegative Lambda kernel plus arbitrary pointwise convergence implies sum convergence without summability",
   "continuity of G on Re(s)>=1 implies global vertical growth for arbitrary Schwartz tests",
   "a bound valid for sigma>1 has no boundary sigma=1 without checking each n",
   "LSeries f at s=1 unweighted is absolutely convergent merely because the Fourier weighted series is",
   "positive versus negative logarithmic Fourier frequency can be exchanged without flipping the phase",
   "the first or second Fourier identity is kernel accepted just because this limit source imports the kernel",
   "a GitHub commit with no sorry is an accepted Lean kernel proof",
   "the separate unverified PR 965 interval squeeze proves limiting_cor_schwartz or RH",
   "the previously rejected all-target integer-psi quadratic capacity is resurrected by this analysis"]

end GRWTSK.RiemannHypothesis.Checks
