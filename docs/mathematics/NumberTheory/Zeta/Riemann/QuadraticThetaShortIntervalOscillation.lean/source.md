# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaShortIntervalOscillation

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2eae15ac3a4bccb8c1734ded1dcb251b0ea4d524` · SHA-256 `b8358d2a6a8aabf5e7dcd4fc88d8377c77a0517ada699579b2cb284ba75ff039`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT.
Mathlib results retain upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaShellPrimeEndpoint
import Mathlib.NumberTheory.Chebyshev
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

/-!
# Short-interval theta-error oscillation supplier

The shell identity gives

  thetaError(u) + thetaShellError(u) = thetaError(2u).

Therefore the endpoint-to-uniform problem is exactly an oscillation problem for
thetaError on the doubled octave [2X,4X].

This file isolates the sufficient short-interval estimate

  |thetaError(2u) - thetaError(2X)|
    <= S * X^(Q(rho)+eta/2)

uniformly for X <= u <= 2X.

Combined with anchor cancellation, this yields the complete shell cancellation
supplier at threshold rho.

The unconditional monotonicity of theta gives only a linear O(X) oscillation
bound across the whole octave.  At rho=7/8 the descended exponent is
3/4+eta/2, which is strictly below 1 when eta<1/2.  Thus monotonicity and the
global Chebyshev upper bound alone do not supply the required sublinear scale.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
SHORT_INTERVAL_OSCILLATION_SUFFICES / MONOTONICITY_ONLY_LINEAR.
-/

namespace GRWTSK.RiemannHypothesis

open Chebyshev
open GRWTSK.NumberTheory.VonMangoldt.DyadicDiscrepancy

/-- Exact oscillation supplier needed to upgrade dyadic-anchor cancellation to
uniform shell cancellation. -/
def DyadicThetaErrorOscillationAt (ρ : ℝ) : Prop :=
  ∀ η : ℝ, 0 < η →
    ∃ S : ℝ, 0 ≤ S ∧
    ∃ j₀ : ℕ,
      ∀ j ≥ j₀, ∀ u ∈ Set.Icc
        (((dyadicScale j : ℕ) : ℝ))
        (((2 * dyadicScale j : ℕ) : ℝ)),
        |thetaError (2 * u) -
            thetaError (2 * (dyadicScale j : ℝ))| ≤
          S * Real.rpow (dyadicScale j : ℝ)
            (quadraticThreshold ρ + η / 2)

/-- Short-interval oscillation plus anchor cancellation yields the uniform shell
cancellation theorem. -/
theorem anchorCancellation_oscillation_to_shellCancellation
    {ρ : ℝ}
    (hanchor : QuadraticThetaShellAnchorCancellationAt ρ)
    (hosc : DyadicThetaErrorOscillationAt ρ) :
    QuadraticThetaShellCancellationAt ρ := by
  intro η hη
  obtain ⟨K, hK, R, hR, ja, hanchorBound⟩ := hanchor η hη
  obtain ⟨S, hS, jo, hoscBound⟩ := hosc η hη
  let T : ℝ := R + S
  have hT : 0 ≤ T := by
    dsimp [T]
    positivity
  refine ⟨K, hK, T, hT, max ja jo, ?_⟩
  intro j hj A hA henv u hu
  have hja : ja ≤ j := le_trans (le_max_left _ _) hj
  have hjo : jo ≤ j := le_trans (le_max_right _ _) hj
  have hXmem :
      ((dyadicScale j : ℕ) : ℝ) ∈
        Set.Icc
          (((dyadicScale j : ℕ) : ℝ))
          (((2 * dyadicScale j : ℕ) : ℝ)) := by
    constructor
    · exact le_rfl
    · norm_num
  have hbase :=
    hanchorBound j hja A hA henv
  have hosc' :=
    hoscBound j hjo u hu
  have hdecomp_u :
      thetaError u + thetaShellError u =
        thetaError (2 * u) := by
    symm
    exact thetaError_two_mul u
  have hdecomp_X :
      thetaError (dyadicScale j : ℝ) +
          thetaShellError (dyadicScale j : ℝ) =
        thetaError (2 * (dyadicScale j : ℝ)) := by
    symm
    exact thetaError_two_mul (dyadicScale j : ℝ)
  have htri :
      |thetaError (2 * u)| ≤
        |thetaError (2 * (dyadicScale j : ℝ))| +
          |thetaError (2 * u) -
            thetaError (2 * (dyadicScale j : ℝ))| := by
    have :=
      abs_add
        (thetaError (2 * (dyadicScale j : ℝ)))
        (thetaError (2 * u) -
          thetaError (2 * (dyadicScale j : ℝ)))
    have hid :
        thetaError (2 * (dyadicScale j : ℝ)) +
            (thetaError (2 * u) -
              thetaError (2 * (dyadicScale j : ℝ))) =
          thetaError (2 * u) := by ring
    rw [hid] at this
    exact this
  rw [hdecomp_u]
  rw [hdecomp_X] at hbase
  have hpow :
      0 ≤ Real.rpow (dyadicScale j : ℝ)
        (quadraticThreshold ρ + η / 2) := by
    positivity
  dsimp [T]
  nlinarith

/-- A short-interval oscillation theorem is exactly the missing uniformization
input once anchor cancellation is known. -/
theorem oscillation_to_anchorUniformization
    {ρ : ℝ}
    (hosc : DyadicThetaErrorOscillationAt ρ) :
    ThetaShellAnchorUniformizationAt ρ := by
  intro hanchor
  exact anchorCancellation_oscillation_to_shellCancellation hanchor hosc

/-- Prime endpoint cancellation plus the short-interval oscillation supplier
recovers the nonlinear recurrence. -/
theorem primeEndpointCancellation_oscillation_to_recurrence
    {ρ : ℝ}
    (hprime : QuadraticPrimeEndpointCancellationAt ρ)
    (hosc : DyadicThetaErrorOscillationAt ρ) :
    QuadraticThetaSourceRecurrenceAt ρ :=
  primeEndpointCancellation_uniformization_to_recurrence hprime
    (oscillation_to_anchorUniformization hosc)

/-- Unconditional octave-scale oscillation from monotonicity and Chebyshev's
global upper bound.  This is linear in X. -/
theorem thetaError_two_mul_oscillation_le_linear
    {X : ℕ} (hX : 0 < X)
    {u : ℝ}
    (hu : u ∈ Set.Icc (X : ℝ) ((2 * X : ℕ) : ℝ)) :
    |thetaError (2 * u) - thetaError (2 * (X : ℝ))| ≤
      (4 * Real.log 4 + 2) * (X : ℝ) := by
  have hXr : (0 : ℝ) ≤ (X : ℝ) := by positivity
  have hu0 : 0 ≤ u := by
    exact hXr.trans hu.1
  have h2X_le_2u :
      2 * (X : ℝ) ≤ 2 * u := by
    linarith [hu.1]
  have h2u_le_4X :
      2 * u ≤ 4 * (X : ℝ) := by
    have hu' : u ≤ 2 * (X : ℝ) := by
      simpa using hu.2
    linarith
  have hthetaMono :
      θ (2 * (X : ℝ)) ≤ θ (2 * u) :=
    Chebyshev.theta_mono h2X_le_2u
  have hthetaDiff0 :
      0 ≤ θ (2 * u) - θ (2 * (X : ℝ)) := by
    linarith
  have hthetaUpper :
      θ (2 * u) ≤ Real.log 4 * (2 * u) := by
    exact Chebyshev.theta_le_log4_mul_x (by linarith [hu0])
  have hlog4 : 0 ≤ Real.log 4 := by positivity
  have hthetaDiffUpper :
      θ (2 * u) - θ (2 * (X : ℝ)) ≤
        4 * Real.log 4 * (X : ℝ) := by
    have hthetaNonneg :
        0 ≤ θ (2 * (X : ℝ)) := Chebyshev.theta_nonneg _
    have hmul :
        Real.log 4 * (2 * u) ≤
          Real.log 4 * (4 * (X : ℝ)) := by
      exact mul_le_mul_of_nonneg_left h2u_le_4X hlog4
    nlinarith
  have hlinearDiff :
      0 ≤ 2 * u - 2 * (X : ℝ) := by
    linarith
  have hlinearUpper :
      2 * u - 2 * (X : ℝ) ≤ 2 * (X : ℝ) := by
    have hu' : u ≤ 2 * (X : ℝ) := by
      simpa using hu.2
    linarith
  unfold thetaError
  have habs :=
    abs_sub
      (θ (2 * u) - θ (2 * (X : ℝ)))
      (2 * u - 2 * (X : ℝ))
  have hleft :
      |θ (2 * u) - θ (2 * (X : ℝ))| =
        θ (2 * u) - θ (2 * (X : ℝ)) := by
    rw [abs_of_nonneg hthetaDiff0]
  have hright :
      |2 * u - 2 * (X : ℝ)| =
        2 * u - 2 * (X : ℝ) := by
    rw [abs_of_nonneg hlinearDiff]
  rw [hleft, hright] at habs
  have hid :
      (θ (2 * u) - 2 * u) -
          (θ (2 * (X : ℝ)) - 2 * (X : ℝ)) =
        (θ (2 * u) - θ (2 * (X : ℝ))) -
          (2 * u - 2 * (X : ℝ)) := by ring
  rw [hid]
  nlinarith

/-- At rho=7/8 the required oscillation exponent is 3/4+eta/2. -/
theorem sevenEighths_oscillation_exponent
    (η : ℝ) :
    quadraticThreshold ((7 : ℝ) / 8) + η / 2 =
      (3 : ℝ) / 4 + η / 2 := by
  norm_num [quadraticThreshold]

/-- For eta<1/2 the seven-eighths oscillation target is genuinely sublinear. -/
theorem sevenEighths_oscillation_exponent_lt_one
    {η : ℝ} (hη : η < (1 : ℝ) / 2) :
    quadraticThreshold ((7 : ℝ) / 8) + η / 2 < 1 := by
  rw [sevenEighths_oscillation_exponent]
  linarith

end GRWTSK.RiemannHypothesis
```
