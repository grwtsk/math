/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Primes.GoldbachRationalArcSeparation
import GRWTSK.NumberTheory.Primes.GoldbachCircleIntegral
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Exact local coordinates on the Goldbach rational arcs

This module recenters the canonical unit-period characters and the exact
prime-log Goldbach exponential sum at a rational center. Integral period lifts
are removed by the inherited `AddCircle 1` normalization.

Everything here is an identity. No approximation to primes in progressions,
major-arc asymptotic, minor-arc estimate, singular-series convergence, or
Goldbach theorem is supplied.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.Primes.GoldbachRationalArcCoordinates

open scoped BigOperators Real
open GRWTSK.Analysis.Fourier.UnitIntervalCharacters
open GRWTSK.NumberTheory.Primes.GoldbachWeighted
open GRWTSK.NumberTheory.Primes.GoldbachCircleIntegral
open GRWTSK.NumberTheory.Primes.GoldbachRationalArcs
open GRWTSK.NumberTheory.Primes.GoldbachRationalArcSeparation

noncomputable section

/-- The central local coordinate relative to the reduced rational center. -/
def goldbachRationalArcOffset (a q : ℕ) (x : ℝ) : ℝ :=
  x - goldbachRationalArcCenter a q

/-- The local coordinate relative to a specified integral period lift. -/
def goldbachLiftedRationalArcOffset
    (a q : ℕ) (k : ℤ) (x : ℝ) : ℝ :=
  x - goldbachLiftedRationalArcCenter a q k

/-- Central recentering is an exact affine identity. -/
theorem goldbachRationalArcCenter_add_offset
    (a q : ℕ) (x : ℝ) :
    goldbachRationalArcCenter a q +
        goldbachRationalArcOffset a q x = x := by
  unfold goldbachRationalArcOffset
  ring

/-- Recentring at any selected integral period lift is exact. -/
theorem goldbachLiftedRationalArcCenter_add_offset
    (a q : ℕ) (k : ℤ) (x : ℝ) :
    goldbachLiftedRationalArcCenter a q k +
        goldbachLiftedRationalArcOffset a q k x = x := by
  unfold goldbachLiftedRationalArcOffset
  ring

/-- The canonical integer characters are multiplicative in their real
argument. -/
theorem unitCharacter_add_argument
    (m : ℤ) (x y : ℝ) :
    unitCharacter m (x + y) =
      unitCharacter m x * unitCharacter m y := by
  simp only [unitCharacter, fourier_coe_apply, Complex.ofReal_one, div_one]
  rw [show
      2 * (Real.pi : ℂ) * Complex.I * (m : ℂ) *
          ((x + y : ℝ) : ℂ) =
        2 * (Real.pi : ℂ) * Complex.I * (m : ℂ) * (x : ℂ) +
          2 * (Real.pi : ℂ) * Complex.I * (m : ℂ) * (y : ℂ) by
      push_cast
      ring,
    Complex.exp_add]

/-- Adding an integral period to the real argument leaves every canonical
integer character unchanged. -/
theorem unitCharacter_add_int
    (m k : ℤ) (x : ℝ) :
    unitCharacter m (x + (k : ℝ)) = unitCharacter m x := by
  simp only [unitCharacter, fourier_coe_apply, Complex.ofReal_one, div_one]
  rw [show
      2 * (Real.pi : ℂ) * Complex.I * (m : ℂ) *
          ((x + (k : ℝ) : ℝ) : ℂ) =
        2 * (Real.pi : ℂ) * Complex.I * (m : ℂ) * (x : ℂ) +
          ((m * k : ℤ) : ℂ) *
            (2 * (Real.pi : ℂ) * Complex.I) by
      push_cast
      ring,
    Complex.exp_add,
    Complex.exp_int_mul_two_pi_mul_I,
    mul_one]

/-- The character value at a lifted center is independent of the chosen
integral lift. -/
theorem unitCharacter_lifted_center
    (m : ℤ) (a q : ℕ) (k : ℤ) :
    unitCharacter m (goldbachLiftedRationalArcCenter a q k) =
      unitCharacter m (goldbachRationalArcCenter a q) := by
  unfold goldbachLiftedRationalArcCenter
  exact unitCharacter_add_int m k (goldbachRationalArcCenter a q)

/-- Exact character recentering at the central rational representative. -/
theorem unitCharacter_recenter
    (m : ℤ) (a q : ℕ) (x : ℝ) :
    unitCharacter m x =
      unitCharacter m (goldbachRationalArcCenter a q) *
        unitCharacter m (goldbachRationalArcOffset a q x) := by
  calc
    unitCharacter m x = unitCharacter m
        (goldbachRationalArcCenter a q + goldbachRationalArcOffset a q x) :=
      congrArg (unitCharacter m) (goldbachRationalArcCenter_add_offset a q x).symm
    _ = _ := unitCharacter_add_argument m
      (goldbachRationalArcCenter a q)
      (goldbachRationalArcOffset a q x)

/-- The exact prime-log exponential sum is one-periodic. -/
theorem goldbachExponentialSum_add_int
    (N : ℕ) (k : ℤ) (x : ℝ) :
    goldbachExponentialSum N (x + (k : ℝ)) =
      goldbachExponentialSum N x := by
  unfold goldbachExponentialSum
  apply Finset.sum_congr rfl
  intro n hn
  rw [unitCharacter_add_int]

/-- The exact Goldbach circle integrand is one-periodic. -/
theorem goldbachCircleIntegrand_add_int
    (N : ℕ) (k : ℤ) (x : ℝ) :
    goldbachCircleIntegrand N (x + (k : ℝ)) =
      goldbachCircleIntegrand N x := by
  unfold goldbachCircleIntegrand
  rw [goldbachExponentialSum_add_int,
    unitCharacter_add_int]

/-- The exact exponential sum expressed in the central local coordinate. -/
def goldbachCenteredExponentialSum
    (N a q : ℕ) (β : ℝ) : ℂ :=
  goldbachExponentialSum N
    (goldbachRationalArcCenter a q + β)

/-- The exact circle integrand expressed in the central local coordinate. -/
def goldbachCenteredCircleIntegrand
    (N a q : ℕ) (β : ℝ) : ℂ :=
  goldbachCenteredExponentialSum N a q β *
    goldbachCenteredExponentialSum N a q β *
      unitCharacter (-(N : ℤ))
        (goldbachRationalArcCenter a q) *
      unitCharacter (-(N : ℤ)) β

/-- Recentring the exponential sum at the central representative changes no
value. -/
theorem goldbachExponentialSum_recenter
    (N a q : ℕ) (x : ℝ) :
    goldbachExponentialSum N x =
      goldbachCenteredExponentialSum N a q
        (goldbachRationalArcOffset a q x) := by
  unfold goldbachCenteredExponentialSum
  rw [goldbachRationalArcCenter_add_offset]

/-- The centered exponential sum is independent of the chosen integral lift. -/
theorem goldbachExponentialSum_at_lift
    (N a q : ℕ) (k : ℤ) (β : ℝ) :
    goldbachExponentialSum N
        (goldbachLiftedRationalArcCenter a q k + β) =
      goldbachCenteredExponentialSum N a q β := by
  unfold goldbachLiftedRationalArcCenter
    goldbachCenteredExponentialSum
  rw [show
      goldbachRationalArcCenter a q + (k : ℝ) + β =
        (goldbachRationalArcCenter a q + β) + (k : ℝ) by ring,
    goldbachExponentialSum_add_int]

/-- The exact circle integrand equals its centered local-coordinate form. -/
theorem goldbachCircleIntegrand_recenter
    (N a q : ℕ) (x : ℝ) :
    goldbachCircleIntegrand N x =
      goldbachCenteredCircleIntegrand N a q
        (goldbachRationalArcOffset a q x) := by
  have hx := goldbachRationalArcCenter_add_offset a q x
  calc
    goldbachCircleIntegrand N x =
        goldbachCircleIntegrand N
          (goldbachRationalArcCenter a q +
            goldbachRationalArcOffset a q x) := by rw [hx]
    _ = goldbachCenteredCircleIntegrand N a q
          (goldbachRationalArcOffset a q x) := by
      unfold goldbachCircleIntegrand
        goldbachCenteredCircleIntegrand
        goldbachCenteredExponentialSum
      rw [unitCharacter_add_argument]
      ring

/-- The local-coordinate integrand is also independent of the selected
integral lift. -/
theorem goldbachCircleIntegrand_at_lift
    (N a q : ℕ) (k : ℤ) (β : ℝ) :
    goldbachCircleIntegrand N
        (goldbachLiftedRationalArcCenter a q k + β) =
      goldbachCenteredCircleIntegrand N a q β := by
  unfold goldbachLiftedRationalArcCenter
  rw [show
      goldbachRationalArcCenter a q + (k : ℝ) + β =
        (goldbachRationalArcCenter a q + β) + (k : ℝ) by ring,
    goldbachCircleIntegrand_add_int]
  unfold goldbachCenteredCircleIntegrand
    goldbachCenteredExponentialSum
    goldbachCircleIntegrand
  rw [unitCharacter_add_argument]
  ring

end
end GRWTSK.NumberTheory.Primes.GoldbachRationalArcCoordinates
