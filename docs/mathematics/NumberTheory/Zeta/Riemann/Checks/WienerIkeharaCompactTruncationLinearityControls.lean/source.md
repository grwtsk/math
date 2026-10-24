# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.WienerIkeharaCompactTruncationLinearityControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `352c8f5c0f4b8fc09e7ffae61592f403c8a2f42b` · SHA-256 `01cbd1a750ff244c7a883cda0014836b0df16eb2201cf7955311ec8a6ab08763`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. All rights reserved.
Original contributions: MIT (repository LICENSE).
Mathematical attribution: Alex Kontorovich, Terry Tao and the
PrimeNumberTheoremAnd contributors (upstream Apache-2.0).
Formalization assistance: OpenAI ChatGPT.
-/
import GRWTSK.NumberTheory.Zeta.Riemann.WienerIkeharaRemainderLinearity
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks

open GRWTSK.RiemannHypothesis
open Real Complex Filter Set MeasureTheory FourierTransform SchwartzMap
open scoped FourierTransform

/-- An ACTUAL smooth cutoff exists, with core and outer support
proved from pinned Mathlib's smooth Urysohn theorem. -/
theorem wiener_cutoff_actual_exists :
    ∃ c : ℝ → ℝ,
      ContDiff ℝ ∞ c ∧
      HasCompactSupport c ∧
      (∀ x : ℝ, 0 ≤ c x ∧ c x ≤ 1) ∧
      (∀ x ∈ Set.Icc (-1 : ℝ) 1, c x = 1) ∧
      Function.support c = Set.Ioo (-2 : ℝ) 2 :=
  wienerBaseSchwartzCutoff_exists

/-- R=0 is an actual valid truncation, scaled by denominator 1.
No division by the zero radius is permitted. -/
theorem wiener_cutoff_radius_zero (x : ℝ) :
    wienerScaledSchwartzCutoff 0 x =
      wienerBaseSchwartzCutoff x := by
  simp [wienerScaledSchwartzCutoff]

/-- The cutoff is exactly 1 on the original closed core. -/
theorem wiener_cutoff_core_unit
    {x : ℝ} (hx : x ∈ Set.Icc (-1 : ℝ) 1) :
    wienerScaledSchwartzCutoff 0 x = 1 := by
  rw [wiener_cutoff_radius_zero]
  exact wienerBaseSchwartzCutoff_core hx

/-- At EVERY radius and Schwartz test, the multiplication remains
in the pinned Schwartz space and has literal compact support. -/
theorem wiener_cutoff_actual_compact
    (g : 𝓢(ℝ, ℂ)) (R : ℕ) :
    HasCompactSupport
      (wienerCompactSchwartzTruncation g R : ℝ → ℂ) :=
  wienerCompactSchwartzTruncation_compact g R

/-- An actual rescaled smooth multiplier satisfies the precise
pinned temperate-growth hypothesis used to define smulLeftCLM. -/
theorem wiener_cutoff_actual_temperate (R : ℕ) :
    Function.HasTemperateGrowth (wienerScaledSchwartzCutoff R) :=
  wienerScaledSchwartzCutoff_temperate R

/-- Arbitrarily large radii eventually agree with any fixed x
exactly, not merely in an approximate numerical sense. -/
theorem wiener_cutoff_eventually_exact
    (g : 𝓢(ℝ, ℂ)) (x : ℝ) :
    ∀ᶠ R : ℕ in atTop,
      wienerCompactSchwartzTruncation g R x = g x :=
  wienerCompactSchwartzTruncation_eventually_pointwise g x

/-- Pointwise convergence is valid; the stronger Schwartz seminorm
convergence is not silently inferred from this control. -/
theorem wiener_cutoff_pointwise_limit
    (g : 𝓢(ℝ, ℂ)) (x : ℝ) :
    Tendsto
      (fun R : ℕ =>
        wienerCompactSchwartzTruncation g R x)
      atTop (𝓝 (g x)) :=
  wienerCompactSchwartzTruncation_tendsto_pointwise g x

/-- Every arithmetic Fourier coefficient is additive in the TEST.
The actual Lambda coefficient and +log(n/T)/(2*pi) frequency are
unchanged. -/
theorem wiener_actual_fourier_term_add
    (g h : 𝓢(ℝ, ℂ)) (T sigma : ℝ) (n : ℕ) :
    wienerSigmaFourierTerm (g + h) T sigma n =
      wienerSigmaFourierTerm g T sigma n +
      wienerSigmaFourierTerm h T sigma n :=
  wienerSigmaFourierTerm_add g h T sigma n

/-- The true von Mangoldt Fourier sum uses actual absolute
summability, not an informal interchange of infinite series. -/
theorem wiener_actual_arithmetic_add
    (g h : 𝓢(ℝ, ℂ)) {T : ℝ} (hT : 1 ≤ T) :
    wienerSchwartzBoundaryArithmetic (g + h) T =
      wienerSchwartzBoundaryArithmetic g T +
      wienerSchwartzBoundaryArithmetic h T :=
  wienerSchwartzBoundaryArithmetic_add g h hT

/-- The separately integrable pole Fourier integral is additive
even before imposing T>=1. -/
theorem wiener_actual_tail_add
    (g h : 𝓢(ℝ, ℂ)) (T : ℝ) :
    wienerSchwartzBoundaryTail (g + h) T =
      wienerSchwartzBoundaryTail g T +
      wienerSchwartzBoundaryTail h T :=
  wienerSchwartzBoundaryTail_add g h T

/-- The remainder is genuinely additive on Schwartz tests. -/
theorem wiener_actual_remainder_add
    (g h : 𝓢(ℝ, ℂ)) {T : ℝ} (hT : 1 ≤ T) :
    wienerSchwartzBoundaryRemainder (g + h) T =
      wienerSchwartzBoundaryRemainder g T +
        wienerSchwartzBoundaryRemainder h T :=
  wienerSchwartzBoundaryRemainder_add g h hT

/-- The ACTUAL generated smooth compact truncation consumes the
remainder's subtraction identity. -/
theorem wiener_actual_truncation_decomposition
    (g : 𝓢(ℝ, ℂ)) (R : ℕ)
    {T : ℝ} (hT : 1 ≤ T) :
    wienerSchwartzBoundaryRemainder g T =
      wienerSchwartzBoundaryRemainder
        (wienerCompactSchwartzTruncation g R) T +
      wienerSchwartzBoundaryRemainder
        (g - wienerCompactSchwartzTruncation g R) T :=
  wienerSchwartzBoundaryRemainder_truncation_split g R hT

/-- Next mathematical work is the actual rapid-decay cutoff error,
not an existential field equated to limiting_cor_schwartz. -/
def wienerCutoffStillOpen : List String :=
  ["prove for every weighted derivative order k,n the uniform Schwartz seminorm of g - cutoff_R*g tends to zero",
   "justify all Leibniz and inverse-radius derivative bounds for cutoff_R(x) = c(x/(R+1))",
   "obtain exact-head Lean 4.33 --wfail/trust0 axioms receipts for cutoff and remainder-linearity source",
   "combine checked compact-test Wiener limit with the quantitative continuous-seminorm error",
   "do not infer full Schwartz convergence from pointwise eventual equality alone",
   "maintain PR #965 interval squeeze as an independently unverified downstream route"]

end GRWTSK.RiemannHypothesis.Checks
```
