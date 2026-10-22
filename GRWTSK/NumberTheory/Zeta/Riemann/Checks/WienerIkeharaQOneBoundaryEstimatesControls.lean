/-
Copyright (c) 2026 R. A. Jacob Martone. All rights reserved.
Original contributions: MIT (repository LICENSE).
Analytic source attribution: PrimeNumberTheoremAnd/Wiener.lean by
Alex Kontorovich, Terry Tao and collaborators (Apache-2.0 upstream).
Formalization assistance: OpenAI ChatGPT.
-/
import GRWTSK.NumberTheory.Zeta.Riemann.WienerIkeharaQOneBoundaryEstimates
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks

open GRWTSK.RiemannHypothesis
open Real Complex Filter MeasureTheory FourierTransform SchwartzMap
open scoped FourierTransform Topology

/-- The q=1 coefficient equality holds for ALL n, not merely
primes or n≥1. No fictitious residue-class arithmetic input. -/
theorem wiener_qone_actualLambda (n : ℕ) :
    ArithmeticFunction.vonMangoldt.residueClass
      (1 : ZMod 1) n =
        (ArithmeticFunction.vonMangoldt n : ℝ) :=
  wienerPinnedQOne_residueClass_eq_lambda n

/-- The actual pole coefficient is 1, not a free constant chosen to
force a Fourier cancellation. -/
theorem wiener_qone_exact_pole
    {s : ℂ} (hs : 1 < s.re) :
    wienerPinnedQOneAux s =
      LSeries wienerPinnedLambdaComplex s - 1 / (s - 1) :=
  wienerPinnedQOneAux_poleIdentity hs

/-- The genuine pinned L-series source is absolutely summable in the
full convergence half-plane. No extra conditional convergence axiom. -/
theorem wiener_qone_absolute_LSeries
    {s : ℂ} (hs : 1 < s.re) :
    LSeriesSummable wienerPinnedLambdaComplex s :=
  wienerPinnedLambdaComplex_summable hs

/-- The complex q=1 auxiliary is continuous on the ACTUAL closed
half-plane, with no boundary analytic continuation postulate. -/
theorem wiener_qone_closed_halfplane :
    ContinuousOn wienerPinnedQOneAux
      {s : ℂ | 1 ≤ s.re} :=
  wienerPinnedQOneAux_continuousOn

/-- Compact support gives genuine boundary integrability, not merely
a measurable or locally integrable boundary function. -/
theorem wiener_qone_boundary_is_integrable
    (ψ : ℝ → ℂ) (hψ : Continuous ψ)
    (hcompact : HasCompactSupport ψ) :
    Integrable (fun t : ℝ =>
      wienerPinnedQOneAux
        (1 + (t : ℂ) * Complex.I) * ψ t) :=
  wienerPinnedQOne_boundary_integrable ψ hψ hcompact

/-- Riemann–Lebesgue kills the actual boundary oscillation with
T^(+it); its Fourier frequency is -log T/(2*pi).
A sign-reversed Fourier frequency cannot pass this control. -/
theorem wiener_qone_boundary_vanishes
    (ψ : ℝ → ℂ) (hψ : Continuous ψ)
    (hcompact : HasCompactSupport ψ) :
    Tendsto
      (fun T : ℝ =>
        ∫ t : ℝ,
          wienerPinnedQOneAux
            (1 + (t : ℂ) * Complex.I) *
              ψ t * (T : ℂ) ^ ((t : ℂ) * Complex.I))
      atTop (nhds (0 : ℂ)) :=
  wienerPinnedQOne_boundary_oscillation_vanishes
    ψ hψ hcompact

/-- This source-bound sigma↓1 result uses dominated convergence
over a compact VERTICAL rectangle. The theorem does not claim that
a boundary G times an arbitrary Schwartz function is integrable. -/
theorem wiener_qone_compact_sigma_boundary
    (ψ : ℝ → ℂ) (hψ : Continuous ψ)
    (hcompact : HasCompactSupport ψ)
    (T : ℝ) (hT : 1 ≤ T) :
    Tendsto
      (fun sigma : ℝ =>
        ∫ t : ℝ,
          wienerPinnedQOneAux
            ((sigma : ℂ) + (t : ℂ) * Complex.I) *
              ψ t * (T : ℂ) ^ ((t : ℂ) * Complex.I))
      (𝓝[>] (1 : ℝ))
      (nhds
        (∫ t : ℝ,
          wienerPinnedQOneAux
            (1 + (t : ℂ) * Complex.I) *
              ψ t * (T : ℂ) ^ ((t : ℂ) * Complex.I))) :=
  wienerPinnedQOne_boundary_integral_from_right
    ψ hψ hcompact T hT

/-- The pinned Fourier transform preserves Schwartz regularity and
the historical 1/(1+u²) decay rate. The constant is independent of
the frequency and the arithmetic scale. -/
theorem wiener_fourier_schwartz_uniform_decay
    (g : 𝓢(ℝ, ℂ)) :
    ∃ C : ℝ, 0 ≤ C ∧
      ∀ u : ℝ,
        ‖(𝓕 (g : ℝ → ℂ))
          (u / (2 * Real.pi))‖ ≤
            C / (1 + (u / (2 * Real.pi)) ^ 2) :=
  wienerSchwartzFourier_decay_two_pi g

/-- Schwartz Fourier transform is genuinely integrable after the
same 2*pi rescaling that appears in the actual Wiener tail. -/
theorem wiener_fourier_schwartz_integrable
    (g : 𝓢(ℝ, ℂ)) :
    Integrable (fun u : ℝ =>
      (𝓕 (g : ℝ → ℂ))
        (u / (2 * Real.pi))) :=
  wienerSchwartzFourier_scaled_integrable g

/-- This source packet does not supply the finite-sigma Fourier
Dirichlet-series identity or a uniform Chebyshev-Schwartz tail bound.
It therefore cannot claim the full limiting_cor_schwartz theorem.
String entries are an explicit ledger, NOT proof terms. -/
def wienerStillOpenQuantifiedSuppliers : List String :=
  ["first_fourier: justify interchange of Lambda L-series with Fourier integral for Re(sigma)>1",
   "second_fourier: justify Fubini for the pole term and the same 2*pi logarithmic kernel",
   "limiting_fourier_lim1: bound sigma-downarrow-1 arithmetic Fourier series by Chebyshev O(N) and its logarithmic derivative weight",
   "Schwartz extension: uniform-in-T Chebyshev bound for Fourier-weighted discarded tails using 1/(1+u^2)",
   "replay both new source modules and the previously assigned Mellin–Fourier blobs on pinned Lean 4.33; record exact types and axioms"]

/-- Hostile nonimplications / trust gates. -/
def wienerProhibitedPromotions : List String :=
  ["boundary continuity alone implies G(1+it)*arbitrary Schwartz test is integrable",
   "Riemann-Lebesgue decay proves the on-right finite-sigma Fourier identity",
   "Schwartz Fourier decay alone implies uniform Lambda-weighted sum control",
   "q=1 residue pole normalization may be changed to a fitted coefficient",
   "T^(+it) may be replaced by T^(-it) with the same Fourier frequency",
   "sigma-downarrow-one boundary convergence holds without compact domination",
   "source-level Lean theorem or valid GitHub commit means kernel acceptance",
   "an imported PNT theorem from Lean 4.35 automatically elaborates in Lean 4.33",
   "proof of fixed false psi capacity, RH, Chowla or Goldbach follows from this packet"]

end GRWTSK.RiemannHypothesis.Checks
