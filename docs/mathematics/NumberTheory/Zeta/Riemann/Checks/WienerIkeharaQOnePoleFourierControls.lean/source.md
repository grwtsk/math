# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.WienerIkeharaQOnePoleFourierControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e250b7193b4e84d2ed349b280c472a5d035c18af` · SHA-256 `4d323587af1ab294d4e007cdc3e51d3a4fcd742c65912d72fc5260aaf71791c0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. All rights reserved.
Original contributions: MIT (repository LICENSE).
Source provenance: Alex Kontorovich, Terry Tao and contributors of
PrimeNumberTheoremAnd/Wiener.lean (upstream Apache-2.0 license).
Formalization assistance: OpenAI ChatGPT.
-/
import GRWTSK.NumberTheory.Zeta.Riemann.WienerIkeharaQOnePoleFourier
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks

open GRWTSK.RiemannHypothesis
open Real Complex Filter Set MeasureTheory FourierTransform
open scoped FourierTransform

/-- Replay the TRUE product-measure Fubini domination with the original
complex integrand, not merely the two separated factors. -/
theorem wienerPole_actual_integrable_product
    (sigma T : ℝ) (hsigma : 1 < sigma)
    (psi : ℝ → ℂ) (hpsi : Continuous psi)
    (hcompact : HasCompactSupport psi) :
    Integrable
      (Function.uncurry (wienerPoleProduct sigma psi))
      ((volume.restrict (Set.Ici (-Real.log T))).prod volume) :=
  wienerPoleProduct_integrable sigma T hsigma psi
    (hpsi.integrable_of_hasCompactSupport hcompact)

/-- The Fourier frequency is u/(2*pi): the unit-circle phase has
norm one, so the absolute majorant is precisely the exponential
factor times |psi(t)|. -/
theorem wienerPole_exact_product_norm
    (sigma : ℝ) (psi : ℝ → ℂ) (u t : ℝ) :
    ‖wienerPoleProduct sigma psi u t‖ =
      Real.exp (-u * (sigma - 1)) * ‖psi t‖ := by
  simp [wienerPoleProduct, norm_mul, Circle.norm_smul]

/-- A hostile sign control. At u=0 the Fourier oscillatory phase
equals 1 for ALL t; a mismatched derivative or an incorrect sign
cannot hide in the lower Laplace endpoint calculation. -/
theorem wienerPole_zero_frequency
    (sigma : ℝ) (psi : ℝ → ℂ) (t : ℝ) :
    wienerPoleProduct sigma psi 0 t = psi t := by
  simp [wienerPoleProduct]

/-- This complex Laplace evaluation is the genuine pinned analytic
result; the pole denominator is (sigma+i*t-1), never
(sigma-i*t-1), and requires sigma>1. -/
theorem wienerPole_actual_Laplace_tail
    (sigma t T : ℝ) (hsigma : 1 < sigma) (hT : 0 < T) :
    (∫ u in Set.Ici (-Real.log T),
      Complex.exp
        (((1 : ℂ) - (sigma : ℂ) - (t : ℂ) * Complex.I) *
          (u : ℂ))) =
      (T ^ (sigma - 1) : ℝ) *
        (((sigma : ℂ) + (t : ℂ) * Complex.I - 1)⁻¹) *
          (T : ℂ) ^ ((t : ℂ) * Complex.I) :=
  wienerPole_complexExp_integral sigma t T hsigma hT

/-- The genuine SECOND Fourier/Fubini identity consumes no unproved
pole-equality hypothesis. Its product integrability and Laplace
evaluation have been sourced independently in the imported module. -/
theorem wienerPole_actual_secondFourier
    (sigma T : ℝ) (hsigma : 1 < sigma) (hT : 0 < T)
    (psi : ℝ → ℂ) (hpsi : Continuous psi)
    (hcompact : HasCompactSupport psi) :
    (∫ u in Set.Ici (-Real.log T),
      (Real.exp (-u * (sigma - 1)) : ℂ) *
        (𝓕 psi) (u / (2 * Real.pi))) =
      (T ^ (sigma - 1) : ℝ) *
        ∫ t : ℝ,
          ((1 : ℂ) /
            ((sigma : ℂ) + (t : ℂ) * Complex.I - 1)) *
            psi t * (T : ℂ) ^ ((t : ℂ) * Complex.I) :=
  wienerPole_secondFourier sigma T hsigma hT psi hpsi hcompact

/-- The exact pole identity at T=1 is a substantive normalisation
check: the exponential factor and T^(i*t) must both be one. -/
theorem wienerPole_at_unit_scale
    (sigma : ℝ) (hsigma : 1 < sigma)
    (psi : ℝ → ℂ) (hpsi : Continuous psi)
    (hcompact : HasCompactSupport psi) :
    (∫ u in Set.Ici (0 : ℝ),
      (Real.exp (-u * (sigma - 1)) : ℂ) *
        (𝓕 psi) (u / (2 * Real.pi))) =
      ∫ t : ℝ,
        ((1 : ℂ) /
          ((sigma : ℂ) + (t : ℂ) * Complex.I - 1)) *
          psi t := by
  have h := wienerPole_secondFourier sigma 1 hsigma (by norm_num)
    psi hpsi hcompact
  simpa using h

/-- Proof and trust status is kept separate from source theorems.
This string list cannot discharge a mathematical hypothesis. -/
def wienerPole_nextObligations : List String :=
  ["source-bound Lean 4.33 elaboration and axiom audit of the second Fourier identity",
   "combine separately checked first/second Fourier identities with actual q=1 pole identity",
   "prove uniform-in-T Abel logarithmic-kernel bound_sum_log' for actual Lambda",
   "justify the arithmetic Fourier series limit as sigma decreases to 1",
   "prove compact-to-Schwartz approximation with uniform Chebyshev tail control",
   "do not import unverified PR 965 interval squeeze as evidence of Fourier limits"]

end GRWTSK.RiemannHypothesis.Checks
```
