/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerFiniteDistanceRegrouping
import GRWTSK.NumberTheory.Zeta.Riemann.GradedDyadicEnergyHalfPlane
import GRWTSK.NumberTheory.Zeta.Riemann.DyadicPrimeOnlyCoordinateCriterion
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis

open GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.VonMangoldtFunction.DyadicDiscrepancy

/-- Threshold-parameterized prime-only coordinate premise.  At rho=1/2 this
is exactly the existing critical prime-only Fourier criterion. -/
def AllDyadicPrimeOnlyFourierCoordinateBoundAt (ρ : ℝ) : Prop :=
  ∀ η : ℝ, 0 < η →
    ∃ C : ℝ, 0 ≤ C ∧ ∃ j₀ : ℕ,
      ∀ j ≥ j₀, ∀ N : ℕ,
        fullGreenPrimeOnlyCoordinateStage
            (dyadicScale j) N ≤
          C * Real.rpow (dyadicScale j : ℝ)
            (-2 * (1 - ρ) + η)

/-- The graded prime-only premise specializes exactly to the old critical
prime-only coordinate criterion at rho=1/2. -/
theorem allDyadicPrimeOnlyFourierCoordinateBoundAt_half_iff :
    AllDyadicPrimeOnlyFourierCoordinateBoundAt (1 / 2 : ℝ) ↔
      AllDyadicPrimeOnlyFourierCoordinateBound := by
  constructor
  · intro h η hη
    obtain ⟨C, hC, j₀, hb⟩ := h η hη
    refine ⟨C, hC, j₀, ?_⟩
    intro j hj N
    have hexp :
        -2 * (1 - (1 / 2 : ℝ)) + η = -1 + η := by
      ring
    simpa [hexp] using hb j hj N
  · intro h η hη
    obtain ⟨C, hC, j₀, hb⟩ := h η hη
    refine ⟨C, hC, j₀, ?_⟩
    intro j hj N
    have hexp :
        -2 * (1 - (1 / 2 : ℝ)) + η = -1 + η := by
      ring
    simpa [hexp] using hb j hj N

/-- The old prime-only Fourier premise is exactly critical threshold energy,
hence it is not a weaker seven-eighths input. -/
theorem criticalPrimeOnlyFourier_iff_halfEnergy :
    AllDyadicPrimeOnlyFourierCoordinateBound ↔
      AllDyadicEnergyAtThreshold (1 / 2 : ℝ) := by
  rw [allDyadicPrimeOnlyFourierCoordinateBound_iff_energy,
    ← allDyadicEnergyAtThreshold_half_iff]

/-- Consequently the old prime-only coordinate premise already implies RH via
the existing critical energy return. -/
theorem criticalPrimeOnlyFourier_implies_RH
    (hP : AllDyadicPrimeOnlyFourierCoordinateBound) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_primeOnlyFourierCoordinateBound hP

/-- Naive Cauchy--Schwarz reconstruction exponent under a graded threshold-rho
energy premise and effective bandwidth exponent beta. -/
def gradedFourierMaximalExponent (ρ β : ℝ) : ℝ :=
  ρ + β / 2

/-- The graded exponent reduces to the previously recorded critical formula
when rho=1/2. -/
theorem gradedFourierMaximalExponent_half
    (β : ℝ) :
    gradedFourierMaximalExponent (1 / 2 : ℝ) β =
      fourierMaximalExponent β := by
  unfold gradedFourierMaximalExponent fourierMaximalExponent
  ring

/-- Hitting the quadratic target Q(rho)=2rho-1 by naive graded Fourier
reconstruction forces a negative bandwidth exponent whenever rho<1. -/
theorem gradedFourierMaximal_le_quadratic_iff
    {ρ β : ℝ} :
    gradedFourierMaximalExponent ρ β ≤ quadraticThreshold ρ ↔
      β ≤ 2 * (ρ - 1) := by
  unfold gradedFourierMaximalExponent quadraticThreshold
  constructor <;> intro h <;> linarith

/-- Therefore for any genuine subunit threshold and any nonnegative bandwidth
exponent, naive graded Cauchy--Schwarz reconstruction cannot reach the
quadratic descent exponent. -/
theorem quadraticThreshold_lt_gradedFourierMaximal
    {ρ β : ℝ}
    (hρ : ρ < 1)
    (hβ : 0 ≤ β) :
    quadraticThreshold ρ <
      gradedFourierMaximalExponent ρ β := by
  unfold gradedFourierMaximalExponent quadraticThreshold
  linarith

/-- In particular, at rho=7/8 every nonnegative bandwidth exponent remains
strictly above the desired 3/4 target. -/
theorem sevenEighths_gradedFourier_no_threeQuarter_descent
    {β : ℝ}
    (hβ : 0 ≤ β) :
    (3 : ℝ) / 4 <
      gradedFourierMaximalExponent ((7 : ℝ) / 8) β := by
  simpa [quadraticThreshold_sevenEighths] using
    quadraticThreshold_lt_gradedFourierMaximal
      (ρ := (7 : ℝ) / 8) (β := β) (by norm_num) hβ

/-- Corrected seven-eighths Fourier supplier must start from the graded
seven-eighths premise, not the critical-line prime-only premise. -/
def SevenEighthsGradedPrimeFourierReadout : Prop :=
  AllDyadicPrimeOnlyFourierCoordinateBoundAt ((7 : ℝ) / 8) →
    SevenEighthsPrimePartialDiscrepancy

/-- The previously used readout premise is explicitly classified as critical
rather than seven-eighths strength. -/
def CriticalPrimeFourierReadoutPremiseClassification : Prop :=
  AllDyadicPrimeOnlyFourierCoordinateBound ↔
    AllDyadicEnergyAtThreshold (1 / 2 : ℝ)

theorem criticalPrimeFourierReadoutPremiseClassification :
    CriticalPrimeFourierReadoutPremiseClassification :=
  criticalPrimeOnlyFourier_iff_halfEnergy

end GRWTSK.RiemannHypothesis
