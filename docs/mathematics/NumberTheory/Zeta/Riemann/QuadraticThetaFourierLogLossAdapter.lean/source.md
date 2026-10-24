# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaFourierLogLossAdapter

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a9553c7e01ea056d11febaeb2355b2f92a2f3eab` · SHA-256 `6dfe5386dd81137ef5d07efc891226fb92e268e9ebe0be1d739619f48713f489`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaFourierSobolevBarrier
import GRWTSK.NumberTheory.Zeta.Riemann.DyadicThetaVonKochAdapter
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

/-!
# Logarithmic-loss maximal adapter

The Sobolev route collides at the critical 1/2 regularity threshold, but this
does not make fixed logarithmic maximal losses dangerous.

The graded theta recurrence already has eta-slack.  Therefore any estimate of
the form

  |thetaError(2u)-thetaError(2X)|
    <= S * X^(Q(rho)) * (log X)^2

is enough: for every eta>0, eventually

  (log X)^2 <= X^(eta/2),

so the right side is bounded by

  S * X^(Q(rho)+eta/2),

which is exactly DyadicThetaErrorOscillationAt rho.

Thus a BV/Carleson/logarithmic endpoint theorem does not need to remove the log.
It only needs to hit the correct power exponent.

At rho=7/8, the sufficient endpoint estimate is therefore

  X^(3/4) * (log X)^2.

No such maximal estimate is proved here.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
LOGARITHMIC_MAXIMAL_LOSS_ABSORBED / POWER_EXPONENT_REMAINS_OPEN.
-/

namespace GRWTSK.RiemannHypothesis

open Filter Topology
open GRWTSK.NumberTheory.VonMangoldt.DyadicDiscrepancy

/-- A logarithmic-loss short-interval oscillation estimate at the exact
quadratic power exponent, with no eta inserted into the premise. -/
def DyadicThetaErrorLogSqOscillationAt (ρ : ℝ) : Prop :=
  ∃ S : ℝ, 0 ≤ S ∧
    ∃ j₀ : ℕ,
      ∀ j ≥ j₀, ∀ u ∈ Set.Icc
        (((dyadicScale j : ℕ) : ℝ))
        (((2 * dyadicScale j : ℕ) : ℝ)),
        |thetaError (2 * u) -
            thetaError (2 * (dyadicScale j : ℝ))| ≤
          S *
            Real.rpow (dyadicScale j : ℝ)
              (quadraticThreshold ρ) *
            (Real.log (dyadicScale j : ℝ))^2

/-- Fixed log-squared loss is absorbed by the eta-slack in the graded
oscillation target. -/
theorem logSqOscillation_to_oscillation
    {ρ : ℝ}
    (hlogosc : DyadicThetaErrorLogSqOscillationAt ρ) :
    DyadicThetaErrorOscillationAt ρ := by
  obtain ⟨S, hS, jbase, hbound⟩ := hlogosc
  intro η hη
  have hδ : 0 < η / 2 := by linarith
  obtain ⟨L, hL⟩ :
      ∃ L : ℝ, ∀ x ≥ L,
        (Real.log x)^2 ≤ Real.rpow x (η / 2) := by
    simpa only [eventually_atTop] using
      (eventually_log_sq_le_rpow hδ)
  have hscale :
      Tendsto (fun j : ℕ => (dyadicScale j : ℝ))
        atTop atTop := by
    unfold dyadicScale
    exact_mod_cast
      tendsto_pow_atTop_atTop_of_one_lt
        (by norm_num : 1 < (2 : ℕ))
  obtain ⟨jL, hjL⟩ :
      ∃ jL : ℕ, L ≤ (dyadicScale jL : ℝ) := by
    simpa only [eventually_atTop] using
      hscale.eventually_ge_atTop L
  let j₀ : ℕ := max jbase jL
  refine ⟨S, hS, j₀, ?_⟩
  intro j hj u hu
  have hjbase : jbase ≤ j := le_trans (le_max_left _ _) hj
  have hjL' : jL ≤ j := le_trans (le_max_right _ _) hj
  have hmono :
      dyadicScale jL ≤ dyadicScale j := by
    unfold dyadicScale
    exact pow_le_pow_right₀ (by norm_num : 0 ≤ (2 : ℕ))
      (Nat.add_le_add_right hjL' 1)
  have hXL :
      L ≤ (dyadicScale j : ℝ) :=
    hjL.trans (by exact_mod_cast hmono)
  have hlog :
      (Real.log (dyadicScale j : ℝ))^2 ≤
        Real.rpow (dyadicScale j : ℝ) (η / 2) :=
    hL _ hXL
  have hXpos : (0 : ℝ) < (dyadicScale j : ℝ) := by
    exact_mod_cast dyadicScale_pos j
  have hpow0 :
      0 ≤ Real.rpow (dyadicScale j : ℝ)
        (quadraticThreshold ρ) :=
    Real.rpow_nonneg hXpos.le _
  have hmul :
      S *
          Real.rpow (dyadicScale j : ℝ)
            (quadraticThreshold ρ) *
          (Real.log (dyadicScale j : ℝ))^2 ≤
        S *
          Real.rpow (dyadicScale j : ℝ)
            (quadraticThreshold ρ + η / 2) := by
    have h1 :=
      mul_le_mul_of_nonneg_left hlog
        (mul_nonneg hS hpow0)
    rw [← mul_assoc] at h1
    rw [← Real.rpow_add hXpos.le]
    simpa [mul_assoc] using h1
  exact (hbound j hjbase u hu).trans hmul

/-- A logarithmic-loss Fourier maximal readout is already sufficient for the
graded short-interval oscillation theorem. -/
def PrimeFourierLogSqMaximalReadoutAt (ρ : ℝ) : Prop :=
  AllDyadicPrimeOnlyFourierCoordinateBound →
    DyadicThetaErrorLogSqOscillationAt ρ

/-- The log-loss readout composes with endpoint cancellation to give the
nonlinear recurrence. -/
theorem primeFourierLogSqMaximalReadout_to_recurrence
    {ρ : ℝ}
    (hfourier : AllDyadicPrimeOnlyFourierCoordinateBound)
    (hmax : PrimeFourierLogSqMaximalReadoutAt ρ)
    (hendpoint : QuadraticPrimeEndpointCancellationAt ρ) :
    QuadraticThetaSourceRecurrenceAt ρ :=
  primeEndpointCancellation_oscillation_to_recurrence
    hendpoint
    (logSqOscillation_to_oscillation (hmax hfourier))

/-- At seven eighths, the exact power in the logarithmic-loss supplier is 3/4. -/
theorem sevenEighths_logSqOscillation_power :
    quadraticThreshold ((7 : ℝ) / 8) = (3 : ℝ) / 4 := by
  norm_num [quadraticThreshold]

end GRWTSK.RiemannHypothesis
```
