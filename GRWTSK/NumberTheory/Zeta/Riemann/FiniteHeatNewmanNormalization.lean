/-
Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib and GRWTSK sources retain their respective authorship and license.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
The Rodgers--Tao integral is NOT imported as a Lean theorem here.
-/
import GRWTSK.Geometry.Hodge.FiniteHeatRecovery
import Mathlib

/-!
# Correct time-sign and zero-ordinate normalization for finite Newman models

Rodgers--Tao, "The de Bruijn--Newman constant is non-negative"
(arXiv:1801.05914, initial preprint 2018), defines
  H_t(z) = integral_0^infty exp(t*u^2) Phi(u) cos(z*u) du.
This module DOES NOT model the actual integral, source kernel Phi,
quadrature error, zero motion, or the proof of Newman >= 0.

For arbitrary finite REAL frequencies u_j and arbitrary REAL coefficients,
the exact coefficients exp(t*u_j^2)*a_j are modeled in a finite diagonal
channel. For t=-s the coefficients equal the dissipative Hodge heat
exp(-s*lambda_j)*a_j, ONLY when lambda_j=u_j^2. At positive Newman time
the coefficients are those of the inverse Hodge heat channel. This sign
cannot be erased when talking about information loss or condition number.

The selected normalization H_0(z)=xi(1/2 + i*z/2)/8 makes the zeta
ordinate gamma=z/2. Thus |gamma|<=3/4 corresponds to |z|<=3/2.
Neither the 3/4 real-part zero-density threshold nor the proposed
arithmetic Q(7/8)=3/4 improvement is this low-height normalization.
No claim about actual zeros is inferred from these scalar identities.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.FiniteHeatNewmanNormalization

open GRWTSK.Geometry.Hodge.FiniteHeatRecovery

/-- Finite nonnegative spectral values coming from squared real frequencies. -/
def squareFrequencies {ι : Type*} (frequency : ι → ℝ) : ι → ℝ :=
  fun i => (frequency i)^2

theorem squareFrequencies_nonneg {ι : Type*} (frequency : ι → ℝ)
    (i : ι) : 0 ≤ squareFrequencies frequency i := by
  exact sq_nonneg (frequency i)

/-- Exact finite diagonal coefficient normalization from the cosine integral.
No source-kernel or quadrature theorem is attached to these coefficients. -/
def newmanFiniteCoefficients {ι : Type*} (frequency : ι → ℝ)
    (t : ℝ) (coefficient : ι → ℝ) : ι → ℝ :=
  fun i => Real.exp (t * (frequency i)^2) * coefficient i

/-- Negative Newman time is positive dissipative Hodge heat, provided that
the actual selected Laplacian eigenvalue equals the squared frequency. -/
theorem newman_negative_time_eq_forward_heat
    {ι : Type*} (frequency : ι → ℝ)
    (s : ℝ) (coefficient : ι → ℝ) :
    newmanFiniteCoefficients frequency (-s) coefficient =
      diagonalHeat (squareFrequencies frequency) s coefficient := by
  funext i
  have hsign :
      (-s) * (frequency i)^2 = -(s * (frequency i)^2) := by ring
  simp only [newmanFiniteCoefficients, diagonalHeat,
    squareFrequencies, hsign]

/-- Positive Newman time is the INVERSE coordinate Hodge heat channel,
not the forward dissipative channel. -/
theorem newman_positive_time_eq_inverse_heat
    {ι : Type*} (frequency : ι → ℝ)
    (s : ℝ) (coefficient : ι → ℝ) :
    newmanFiniteCoefficients frequency s coefficient =
      inverseDiagonalHeat (squareFrequencies frequency) s coefficient := rfl

/-- Every finite coefficient list is unchanged at zero Newman time. -/
theorem newman_zero_time {ι : Type*} (frequency : ι → ℝ)
    (coefficient : ι → ℝ) :
    newmanFiniteCoefficients frequency 0 coefficient = coefficient := by
  funext i
  simp [newmanFiniteCoefficients]

/-- The negative-time finite coefficients are exactly invertible using
the positive-time Hodge inverse; this is NOT an integral/zero theorem. -/
theorem recover_newman_negative_time
    {ι : Type*} (frequency : ι → ℝ) (s : ℝ)
    (coefficient : ι → ℝ) :
    inverseDiagonalHeat (squareFrequencies frequency) s
      (newmanFiniteCoefficients frequency (-s) coefficient) =
        coefficient := by
  rw [newman_negative_time_eq_forward_heat]
  exact inverse_after_heat (squareFrequencies frequency) s coefficient

/-- Nonnegative negative-time finite coefficient energy is contractive. -/
theorem newman_negative_time_squareEnergy_le
    {ι : Type*} [Fintype ι] (frequency : ι → ℝ)
    (coefficient : ι → ℝ) {s : ℝ} (hs : 0 ≤ s) :
    (∑ i, (newmanFiniteCoefficients frequency (-s) coefficient i)^2) ≤
      ∑ i, (coefficient i)^2 := by
  rw [newman_negative_time_eq_forward_heat]
  exact diagonalHeat_squareEnergy_le (squareFrequencies frequency)
    (squareFrequencies_nonneg frequency) hs coefficient

/-- Conversion between the Newman cosine variable and zeta's
imaginary ordinate at t=0, under the stipulated H_0 normalization. -/
def zetaOrdinateOfNewman (z : ℝ) : ℝ := z / 2

def newmanVariableOfZetaOrdinate (gamma : ℝ) : ℝ := 2 * gamma

theorem ordinate_of_newman_of_ordinate (gamma : ℝ) :
    zetaOrdinateOfNewman (newmanVariableOfZetaOrdinate gamma) = gamma := by
  unfold zetaOrdinateOfNewman newmanVariableOfZetaOrdinate
  ring

theorem newman_of_ordinate_of_newman (z : ℝ) :
    newmanVariableOfZetaOrdinate (zetaOrdinateOfNewman z) = z := by
  unfold zetaOrdinateOfNewman newmanVariableOfZetaOrdinate
  ring

/-- The zeta low-height 3/4 seed corresponds to Newman parameter height 3/2,
not 3/4. This has nothing to do with real-part zero density. -/
theorem threeQuarter_height_newman_variable :
    newmanVariableOfZetaOrdinate ((3 : ℝ) / 4) = (3 : ℝ) / 2 := by
  norm_num [newmanVariableOfZetaOrdinate]

theorem newman_height_threeHalves_is_zeta_threeQuarters :
    zetaOrdinateOfNewman ((3 : ℝ) / 2) = (3 : ℝ) / 4 := by
  norm_num [zetaOrdinateOfNewman]

end GRWTSK.RiemannHypothesis.FiniteHeatNewmanNormalization
