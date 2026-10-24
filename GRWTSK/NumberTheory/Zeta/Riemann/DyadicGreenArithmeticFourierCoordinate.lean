/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.DyadicFourierFrameEnergyEquivalence
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Explicit arithmetic Fourier coordinates of the dyadic Green frame

Every admissible nonzero Fourier mode already equals an exact source action.
Unfold that action into its literal arithmetic and continuum pieces.

For one octave X and one integer frequency k define

  primeCoordinate_X(k)
    = sum_{X<n<=2X} (Lambda(n)/n) * phi_k(location(X,n)),

  backgroundCoordinate(k)
    = integral_0^1 phi_k(t)/(1+t) dt,

where phi_k is the zero-endpoint Fourier primitive.

The arithmetic Fourier coordinate is

  coordinate_X(k) = backgroundCoordinate(k) - primeCoordinate_X(k).

For every k, including k=0, this is exactly the Green residual Fourier
coefficient.  Thus every positive Fourier-frame energy is the squared norm of
an explicit finite von Mangoldt exponential coordinate minus its fixed
background coordinate.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
ARITHMETIC_FOURIER_COORDINATES_EXPOSED.
-/

namespace GRWTSK.RiemannHypothesis

open _root_.MeasureTheory Real Filter Topology Set
open GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.VonMangoldtFunction.DyadicDiscrepancy

/-- The zero-endpoint Fourier primitive written directly as a phase difference. -/
theorem fourierModeValue_eq_phase_difference
    {k : ℤ} (hk : k ≠ 0) (t : ℝ) :
    fourierModeValue k t =
      (fourier (-k) (t : AddCircle (1 : ℝ)) - 1) /
        (-2 * π * Complex.I * k) := by
  unfold fourierModeValue fourierModePrimitive
  rw [AddCircle.coe_zero, fourier_eval_zero]
  field_simp [hk, Real.pi_pos.ne']
  ring

/-- Literal finite arithmetic coordinate in one dyadic source window. -/
def greenFourierPrimeCoordinate
    (X : ℕ) (k : ℤ) : ℂ :=
  ∑ n ∈ window X,
    (coefficient n : ℂ) * fourierModeValue k (location X n)

/-- Fixed continuum-background coordinate for one Fourier mode. -/
def greenFourierBackgroundCoordinate
    (k : ℤ) : ℂ :=
  ∫ t in (0 : ℝ)..1,
    fourierModeValue k t / (1 + (t : ℂ))

/-- Exact arithmetic-minus-background coordinate, with the sign chosen to match
the centered Green residual Fourier coefficient. -/
def greenArithmeticFourierCoordinate
    (X : ℕ) (k : ℤ) : ℂ :=
  greenFourierBackgroundCoordinate k -
    greenFourierPrimeCoordinate X k

/-- The coordinate is the negative of the literal unchanged source action. -/
theorem greenArithmeticFourierCoordinate_eq_neg_action
    (X : ℕ) (k : ℤ) :
    greenArithmeticFourierCoordinate X k =
      - action X (fourierModeValue k) := by
  unfold greenArithmeticFourierCoordinate
    greenFourierBackgroundCoordinate
    greenFourierPrimeCoordinate
    action
  ring

/-- At zero frequency the primitive itself is identically zero. -/
theorem fourierModeValue_zero_frequency (t : ℝ) :
    fourierModeValue 0 t = 0 := by
  simp [fourierModeValue, fourierModePrimitive]

@[simp]
theorem greenFourierPrimeCoordinate_zero (X : ℕ) :
    greenFourierPrimeCoordinate X 0 = 0 := by
  unfold greenFourierPrimeCoordinate
  simp [fourierModeValue_zero_frequency]

@[simp]
theorem greenFourierBackgroundCoordinate_zero :
    greenFourierBackgroundCoordinate 0 = 0 := by
  unfold greenFourierBackgroundCoordinate
  simp [fourierModeValue_zero_frequency]

@[simp]
theorem greenArithmeticFourierCoordinate_zero (X : ℕ) :
    greenArithmeticFourierCoordinate X 0 = 0 := by
  simp [greenArithmeticFourierCoordinate]

/-- Every nonzero arithmetic coordinate equals the corresponding exact Green
Fourier coefficient. -/
theorem greenArithmeticFourierCoordinate_eq_coeff_of_ne_zero
    {X : ℕ} (hX : 0 < X)
    {k : ℤ} (hk : k ≠ 0) :
    greenArithmeticFourierCoordinate X k =
      greenResidualFourierCoeff X k := by
  rw [greenArithmeticFourierCoordinate_eq_neg_action]
  change
    - action X (fourierModeComplexTest k hk).value =
      greenResidualFourierCoeff X k
  rw [action_fourierModeComplexTest_eq_neg_fourierCoeff hX hk]
  simp

/-- The zero mode agrees too, by exact centering. -/
theorem greenArithmeticFourierCoordinate_eq_coeff
    {X : ℕ} (hX : 0 < X)
    (k : ℤ) :
    greenArithmeticFourierCoordinate X k =
      greenResidualFourierCoeff X k := by
  by_cases hk : k = 0
  · subst k
    rw [greenArithmeticFourierCoordinate_zero,
      greenResidualFourierCoeff_zero hX]
  · exact greenArithmeticFourierCoordinate_eq_coeff_of_ne_zero hX hk

/-- Every admissible mode energy is the squared norm of the explicit arithmetic
coordinate. -/
theorem greenAdmissibleFourierModeEnergy_eq_arithmeticCoordinate
    {X : ℕ} (hX : 0 < X)
    (k : ℤ) :
    greenAdmissibleFourierModeEnergy X k =
      ‖greenArithmeticFourierCoordinate X k‖^2 := by
  rw [greenAdmissibleFourierModeEnergy_eq_coeff hX k,
    greenArithmeticFourierCoordinate_eq_coeff hX k]

/-- Purely arithmetic shell energy. -/
def greenArithmeticFourierShellEnergy
    (X : ℕ) (n : ℕ) : ℝ :=
  ‖greenArithmeticFourierCoordinate X (n : ℤ)‖^2 +
    ‖greenArithmeticFourierCoordinate X (-((n : ℤ) + 1))‖^2

theorem greenArithmeticFourierShellEnergy_eq_admissible
    {X : ℕ} (hX : 0 < X)
    (n : ℕ) :
    greenArithmeticFourierShellEnergy X n =
      greenAdmissibleFourierShellEnergy X n := by
  unfold greenArithmeticFourierShellEnergy
    greenAdmissibleFourierShellEnergy
  rw [greenAdmissibleFourierModeEnergy_eq_arithmeticCoordinate hX,
    greenAdmissibleFourierModeEnergy_eq_arithmeticCoordinate hX]

/-- Pure arithmetic finite head. -/
def greenArithmeticFourierHead
    (X N : ℕ) : ℝ :=
  ∑ n ∈ Finset.range N,
    greenArithmeticFourierShellEnergy X n

theorem greenArithmeticFourierHead_eq_admissible
    {X : ℕ} (hX : 0 < X)
    (N : ℕ) :
    greenArithmeticFourierHead X N =
      greenAdmissibleFourierActionHead X N := by
  unfold greenArithmeticFourierHead
    greenAdmissibleFourierActionHead
  apply Finset.sum_congr rfl
  intro n hn
  exact greenArithmeticFourierShellEnergy_eq_admissible hX n

/-- Parseval expressed solely through the explicit finite arithmetic coordinates. -/
theorem greenArithmeticFourierHead_tendsto
    {X : ℕ} (hX : 0 < X) :
    Tendsto (greenArithmeticFourierHead X)
      Filter.atTop (𝓝 (greenEnergy X)) := by
  convert! greenAdmissibleFourierActionHead_tendsto hX using 1
  funext N
  exact greenArithmeticFourierHead_eq_admissible hX N

end GRWTSK.RiemannHypothesis
