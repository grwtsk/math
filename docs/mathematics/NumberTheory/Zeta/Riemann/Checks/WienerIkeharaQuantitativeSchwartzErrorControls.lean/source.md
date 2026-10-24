# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.WienerIkeharaQuantitativeSchwartzErrorControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `272d642cb2b4cb07f7b5d6b46c98ab767ffa1735` · SHA-256 `de82ae8c09b4273476ffc23084a36e47a4e6dbd53b74d32c0708165b5a34b8ad`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. All rights reserved.
Original contributions: MIT (repository LICENSE).
Source attribution: Kontorovich, Tao, PrimeNumberTheoremAnd
maintained Wiener.lean (upstream Apache-2.0 license).
Formalization assistance: OpenAI ChatGPT.
-/
import GRWTSK.NumberTheory.Zeta.Riemann.WienerIkeharaQuantitativeSchwartzError
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks

open GRWTSK.RiemannHypothesis
open Real Complex Filter Set MeasureTheory FourierTransform SchwartzMap
open scoped FourierTransform

/-- The control is a real continuous Schwartz seminorm,
not an unquantified C_g depending arbitrarily on a test. -/
theorem wienerSchwartz_control_continuous :
    Continuous wienerFourierSchwartzControl :=
  wienerFourierSchwartzControl_continuous

/-- Zero test gives an actual zero control. -/
theorem wienerSchwartz_control_zero :
    wienerFourierSchwartzControl (0 : 𝓢(ℝ, ℂ)) = 0 :=
  wienerFourierSchwartzControl_zero

/-- The Fourier decay inequality holds at ALL frequencies and keeps
the denominator 1+u². -/
theorem wienerSchwartz_actual_Fourier_decay
    (g : 𝓢(ℝ, ℂ)) (u : ℝ) :
    ‖(𝓕 (g : ℝ → ℂ)) u‖ ≤
      wienerFourierSchwartzControl g / (1 + u ^ 2) :=
  wienerFourierSchwartzControl_decay g u

/-- In particular frequency zero costs only P(g), not a factor
depending on a Fourier sign convention. -/
theorem wienerSchwartz_decay_at_zero
    (g : 𝓢(ℝ, ℂ)) :
    ‖(𝓕 (g : ℝ → ℂ)) 0‖ ≤
      wienerFourierSchwartzControl g := by
  simpa using wienerFourierSchwartzControl_decay g 0

/-- The actual zero-safe q=1 von Mangoldt arithmetic Fourier tsum
has a uniform bound depending only on P(g). -/
theorem wienerSchwartz_actual_Lambda_arithmetic_uniform
    (g : 𝓢(ℝ, ℂ)) {T : ℝ} (hT : 1 ≤ T) :
    ‖wienerSchwartzBoundaryArithmetic g T‖ ≤
      wienerFourierSchwartzControl g *
        ((Real.log 4 + 4) * (1 + 2 * Real.pi ^ 2)) :=
  wienerSchwartzBoundaryArithmetic_norm_le g hT

/-- The source-normalized tail domain is Ici(-log T), and its
bound is precisely 2*pi² times the SAME P(g). -/
theorem wienerSchwartz_actual_pole_tail_uniform
    (g : 𝓢(ℝ, ℂ)) (T : ℝ) :
    ‖wienerSchwartzBoundaryTail g T‖ ≤
      wienerFourierSchwartzControl g * (2 * Real.pi ^ 2) :=
  wienerSchwartzBoundaryTail_norm_le g T

/-- The all-real Cauchy integral retains u/(2*pi) exactly, which
would fail for an accidentally rescaled Fourier angle. -/
theorem wienerSchwartz_actual_twopi_mass :
    (∫ u : ℝ, (1 + (u / (2 * Real.pi)) ^ 2)⁻¹) =
      2 * Real.pi ^ 2 :=
  wienerSchwartzCauchy_twoPi_integral

/-- Actual q=1 Wiener remainder, bounded UNIFORMLY for all T>=1
by one g-dependent continuous seminorm and one universal constant. -/
theorem wienerSchwartz_actual_remainder_uniform
    (g : 𝓢(ℝ, ℂ)) {T : ℝ} (hT : 1 ≤ T) :
    ‖wienerSchwartzBoundaryRemainder g T‖ ≤
      wienerFourierSchwartzControl g *
        wienerSchwartzErrorConstant :=
  wienerSchwartzBoundaryRemainder_uniform_norm_le g hT

/-- For any Schwartz error sequence r_R->0, a SINGLE eventual
threshold works for EVERY T>=1. This is the source-meaning of
the uniformity required in the historical truncation argument. -/
theorem wienerSchwartz_actual_uniform_error_family
    (r : ℕ → 𝓢(ℝ, ℂ))
    (hr : Tendsto r atTop (𝓝 (0 : 𝓢(ℝ, ℂ))))
    {ε : ℝ} (hε : 0 < ε) :
    ∀ᶠ R : ℕ in atTop,
      ∀ T : ℝ, 1 ≤ T →
        ‖wienerSchwartzBoundaryRemainder (r R) T‖ <
          ε :=
  wienerSchwartzRemainder_uniform_vanishes hr hε

/-- If an actual cutoff sequence g_R tends to g in the pinned
Schwartz topology, the error remainder tends to zero uniformly.
This control does NOT postulate the existence of g_R. -/
theorem wienerSchwartz_actual_truncation_error
    (g : 𝓢(ℝ, ℂ)) (gR : ℕ → 𝓢(ℝ, ℂ))
    (hApprox : Tendsto gR atTop (𝓝 g))
    {ε : ℝ} (hε : 0 < ε) :
    ∀ᶠ R : ℕ in atTop,
      ∀ T : ℝ, 1 ≤ T →
        ‖wienerSchwartzBoundaryRemainder (g - gR R) T‖ <
          ε :=
  wienerSchwartzRemainder_approximation_error g gR hApprox hε

/-- Remaining mathematics, not new theorem assumptions. -/
def wienerSchwartzQuantitative_nextObligations : List String :=
  ["construct an actual sequence of smooth compactly supported Schwartz maps g_R converging to g in the pinned Schwartz topology",
   "prove the required compact-test Wiener Fourier limit for each g_R using checked finite-sigma and q=1 boundary inputs",
   "prove linearity of the actual Wiener arithmetic plus pole error functional to combine g_R and g-g_R",
   "apply the uniform seminorm estimate to the actual cutoff errors and close limiting_cor_schwartz",
   "replay the entire imported q=1 Lambda kernel and sigma-Tannery closure under pinned Lean --wfail and --trust=0"]

/-- Hostile nonimplications kept as inert audit data. -/
def wienerSchwartzQuantitative_prohibitedPromotions : List String :=
  ["existence of some C_g for each Schwartz g implies C_(g-g_R)->0 without a continuous seminorm",
   "a uniform error bound and an arbitrary sequence g_R imply compact approximation without a topology limit",
   "boundary auxiliary continuity on Re(s)>=1 yields whole-line Schwartz boundary integrability without growth bounds",
   "finite-sigma or sigma-to-one source drafts inherit the old 19-header kernel receipt without exact replay",
   "Schwartz approximation of test functions proves the missing compact-test Wiener limit",
   "positive Fourier frequency log(n/T)/(2*pi) can be replaced by its negative without conjugating the phase",
   "a GitHub commit or static no-sorry check is a Lean kernel proof",
   "the separate unverified PR 965 interval squeeze establishes limiting_cor_schwartz or RH"]

end GRWTSK.RiemannHypothesis.Checks
```
