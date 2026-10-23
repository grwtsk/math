/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeTriangularIntegerFrequencyPartitionProof
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Complex
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis

/-- Elementary half-angle exponential identity underlying the Fejer sine
conversion. -/
theorem exp_two_mul_I_sub_one
    (x : ℝ) :
    Complex.exp (2 * (x : ℂ) * Complex.I) - 1 =
      2 * Complex.I * Complex.exp ((x : ℂ) * Complex.I) *
        Complex.sin x := by
  rw [show 2 * (x : ℂ) * Complex.I =
      (x : ℂ) * Complex.I + (x : ℂ) * Complex.I by ring]
  rw [Complex.exp_add, Complex.exp_mul_I, Complex.exp_mul_I]
  rw [← Complex.ofReal_sin]
  ring

/-- Specialization of the half-angle identity to the denominator phase. -/
theorem triangularGeometricRatio_sub_one_eq_sine
    (t : ℝ) :
    triangularGeometricRatio t - 1 =
      2 * Complex.I *
        Complex.exp ((Real.pi * t : ℝ) * Complex.I) *
        Complex.sin (Real.pi * t) := by
  unfold triangularGeometricRatio
  convert exp_two_mul_I_sub_one (Real.pi * t) using 1 <;> push_cast <;> ring

/-- Specialization to the N-th numerator phase. -/
theorem triangularGeometricRatio_pow_sub_one_eq_sine
    (N : ℕ) (t : ℝ) :
    (triangularGeometricRatio t)^N - 1 =
      2 * Complex.I *
        Complex.exp ((Real.pi * (N : ℝ) * t : ℝ) * Complex.I) *
        Complex.sin (Real.pi * (N : ℝ) * t) := by
  unfold triangularGeometricRatio
  rw [← Complex.exp_nat_mul]
  convert exp_two_mul_I_sub_one (Real.pi * (N : ℝ) * t) using 1 <;>
    push_cast <;> ring

/-- Off-boundary geometric quotient becomes a unit phase times the sine ratio. -/
theorem triangularGeometricBlock_eq_phase_mul_sineRatio
    {N : ℕ} (hN : 0 < N)
    {t : ℝ} (ht0 : 0 < |t|) (htHalf : |t| ≤ (1 : ℝ) / 2) :
    triangularGeometricBlock N t =
      Complex.exp ((Real.pi * ((N : ℝ) - 1) * t : ℝ) * Complex.I) *
        (Complex.sin (Real.pi * (N : ℝ) * t) /
          Complex.sin (Real.pi * t)) := by
  have hdenSin :
      Complex.sin (Real.pi * t) ≠ 0 :=
    sin_pi_mul_ne_zero_of_offBoundary ht0 htHalf
  have hratio :
      triangularGeometricRatio t ≠ 1 := by
    intro h
    have hz :
        triangularGeometricRatio t - 1 = 0 := sub_eq_zero.mpr h
    rw [triangularGeometricRatio_sub_one_eq_sine] at hz
    simp [hdenSin] at hz
  rw [triangularGeometricBlock_eq_geom_ratio hratio]
  rw [triangularGeometricRatio_pow_sub_one_eq_sine,
    triangularGeometricRatio_sub_one_eq_sine]
  field_simp [hdenSin]
  rw [← Complex.exp_sub]
  congr 1
  push_cast
  ring

/-- The remaining sine-norm claim is reduced to cancellation of the unit phase
against its conjugate. -/
def TriangularPhaseConjugateCancellationClaim : Prop :=
  ∀ N : ℕ, 0 < N →
    ∀ t : ℝ, 0 < |t| → |t| ≤ (1 : ℝ) / 2 →
      let phase :=
        Complex.exp
          ((Real.pi * ((N : ℝ) - 1) * t : ℝ) * Complex.I)
      phase * Complex.conj phase = 1

/-- Phase cancellation plus the quotient identity discharges the off-boundary
sine conversion. -/
theorem phaseCancellation_to_sineNorm
    (hphase : TriangularPhaseConjugateCancellationClaim) :
    TriangularGeometricBlockSineNormOffBoundaryClaim := by
  intro N hN t ht0 htHalf
  rw [triangularGeometricBlock_eq_phase_mul_sineRatio hN ht0 htHalf]
  rw [map_mul]
  let phase :=
    Complex.exp
      ((Real.pi * ((N : ℝ) - 1) * t : ℝ) * Complex.I)
  have hp : phase * Complex.conj phase = 1 :=
    hphase N hN t ht0 htHalf
  dsimp [phase] at hp ⊢
  rw [mul_assoc]
  rw [show
    Complex.exp ((Real.pi * ((N : ℝ) - 1) * t : ℝ) * Complex.I) *
        (Complex.sin (Real.pi * (N : ℝ) * t) /
          Complex.sin (Real.pi * t)) *
        (Complex.conj
          (Complex.exp ((Real.pi * ((N : ℝ) - 1) * t : ℝ) * Complex.I)) *
          Complex.conj
            (Complex.sin (Real.pi * (N : ℝ) * t) /
              Complex.sin (Real.pi * t))) =
      (Complex.exp ((Real.pi * ((N : ℝ) - 1) * t : ℝ) * Complex.I) *
        Complex.conj
          (Complex.exp ((Real.pi * ((N : ℝ) - 1) * t : ℝ) * Complex.I))) *
      ((Complex.sin (Real.pi * (N : ℝ) * t) /
          Complex.sin (Real.pi * t)) *
        Complex.conj
          (Complex.sin (Real.pi * (N : ℝ) * t) /
            Complex.sin (Real.pi * t))) by ring]
  rw [hp]
  simp only [one_mul]
  simp only [← Complex.ofReal_sin, map_div, Complex.conj_ofReal]
  ring

end GRWTSK.RiemannHypothesis
