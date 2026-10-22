/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT.
Mathlib results retain upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.DyadicGreenFourierFrame
import GRWTSK.NumberTheory.VonMangoldt.ComplexReadout
import Mathlib.Analysis.Fourier.AddCircle
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

/-!
# Fourier modes as admissible centered source readouts

For every nonzero integer frequency k, Mathlib supplies an explicit periodic
antiderivative of the Fourier monomial on the unit additive circle.

Subtract its value at zero. The derivative is unchanged, while both endpoint
values at 0 and 1 vanish. The resulting function is therefore a valid
ComplexTest with slope(t) = fourier(-k,t).

The exact centered integration-by-parts identity then removes both endpoint
moment terms and gives

  action_X(test_k) = - FourierCoeff_X(k).

Hence the nonzero Parseval modes are not external coordinates: each is an
actual admissible readout of the unchanged arithmetic source.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
FOURIER_MODES_ADMISSIBLE_COMPLEX_TESTS_DEFINED.
-/

namespace GRWTSK.RiemannHypothesis

open MeasureTheory Set
open GRWTSK.Analysis.GreenKernel.UnitInterval
open GRWTSK.NumberTheory.VonMangoldt.DyadicDiscrepancy
open GRWTSK.NumberTheory.VonMangoldt.ComplexReadout

def fourierModePrimitive (k : ℤ) (t : ℝ) : ℂ :=
  (1 : ℂ) / (-2 * π * Complex.I * k) *
    fourier (-k) (t : AddCircle (1 : ℝ))

def fourierModeValue (k : ℤ) (t : ℝ) : ℂ :=
  fourierModePrimitive k t - fourierModePrimitive k 0

def fourierModeSlope (k : ℤ) (t : ℝ) : ℂ :=
  fourier (-k) (t : AddCircle (1 : ℝ))

theorem fourierModePrimitive_hasDerivAt
    {k : ℤ} (hk : k ≠ 0) (t : ℝ) :
    HasDerivAt (fourierModePrimitive k)
      (fourierModeSlope k t) t := by
  simpa [fourierModePrimitive, fourierModeSlope] using
    (has_antideriv_at_fourier_neg
      (T := (1 : ℝ)) (Fact.mk zero_lt_one) hk t)

theorem fourierModeValue_hasDerivAt
    {k : ℤ} (hk : k ≠ 0) (t : ℝ) :
    HasDerivAt (fourierModeValue k)
      (fourierModeSlope k t) t := by
  exact (fourierModePrimitive_hasDerivAt hk t).sub_const
    (fourierModePrimitive k 0)

theorem fourierModeSlope_continuous (k : ℤ) :
    Continuous (fourierModeSlope k) := by
  unfold fourierModeSlope
  fun_prop

@[simp]
theorem fourierModeValue_zero (k : ℤ) :
    fourierModeValue k 0 = 0 := by
  simp [fourierModeValue]

@[simp]
theorem fourierModeValue_one (k : ℤ) :
    fourierModeValue k 1 = 0 := by
  unfold fourierModeValue fourierModePrimitive
  have hperiod :
      ((1 : ℝ) : AddCircle (1 : ℝ)) = 0 := by
    simpa using (AddCircle.coe_period (p := (1 : ℝ)))
  rw [hperiod]
  simp

def fourierModeComplexTest (k : ℤ) (hk : k ≠ 0) : ComplexTest where
  value := fourierModeValue k
  slope := fourierModeSlope k
  slope_continuous := (fourierModeSlope_continuous k).continuousOn
  hasDeriv := fun t ht => fourierModeValue_hasDerivAt hk t

@[simp]
theorem fourierModeComplexTest_value_zero
    (k : ℤ) (hk : k ≠ 0) :
    (fourierModeComplexTest k hk).value 0 = 0 :=
  fourierModeValue_zero k

@[simp]
theorem fourierModeComplexTest_value_one
    (k : ℤ) (hk : k ≠ 0) :
    (fourierModeComplexTest k hk).value 1 = 0 :=
  fourierModeValue_one k

theorem greenResidualFourierCoeff_eq_unit_pairing
    (X : ℕ) (k : ℤ) :
    greenResidualFourierCoeff X k =
      ∫ t,
        greenResidualComplex X t * fourierModeSlope k t
        ∂unitVolume := by
  rw [greenResidualFourierCoeff, fourierCoeffOn_eq_integral]
  norm_num
  rw [← GRWTSK.NumberTheory.VonMangoldt.ComplexReadout.unit_integral_eq_interval]
  apply integral_congr_ae
  filter_upwards with t
  simp [greenResidualComplex, fourierModeSlope, mul_comm, smul_eq_mul]

theorem action_fourierModeComplexTest_eq_neg_fourierCoeff
    {X : ℕ} (hX : 0 < X)
    {k : ℤ} (hk : k ≠ 0) :
    action X (fourierModeComplexTest k hk).value =
      -greenResidualFourierCoeff X k := by
  rw [ComplexReadout.centered_ibp
    (fourierModeComplexTest k hk) hX]
  simp only [fourierModeComplexTest_value_zero,
    fourierModeComplexTest_value_one, zero_mul, sub_zero]
  rw [greenResidualFourierCoeff_eq_unit_pairing]
  congr 1
  apply integral_congr_ae
  filter_upwards with t
  simp [greenResidualComplex, greenSourceFrameValue_eq_centeredResidual,
    fourierModeComplexTest, fourierModeSlope, mul_comm]

theorem action_fourierModeComplexTest_norm_sq
    {X : ℕ} (hX : 0 < X)
    {k : ℤ} (hk : k ≠ 0) :
    ‖action X (fourierModeComplexTest k hk).value‖^2 =
      ‖greenResidualFourierCoeff X k‖^2 := by
  rw [action_fourierModeComplexTest_eq_neg_fourierCoeff hX hk, norm_neg]

end GRWTSK.RiemannHypothesis
