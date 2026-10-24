# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Variant9307d0e9e1ae8e70f47c04956f71682b3b1990d5b1a0fa733b53e7ecddecc501

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9abaada2781c8745aae8c22d130ba7b4e5197e80` · SHA-256 `9307d0e9e1ae8e70f47c04956f71682b3b1990d5b1a0fa733b53e7ecddecc501`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.MultiplicativePhase
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateTailReduction
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationSpectralLens

/-!
# The exact strict prime-power phase defect

The inventory is the existing strict source inventory `primeIndices A`; all
prime powers retain their von Mangoldt weights. The signed multiplier splits
as `-2 W_A` plus a nonnegative phase defect. This identity does not discard the
negative budget and does not imply the all-radii estimate in Issue #16.

The generic integral adapter states every normalization, integrability, and
correlation-transport premise explicitly. The actual-source adapter discharges
these premises through the proved positive spectral lens. It introduces no
axioms and assumes no statement about the multiplicity or location of zeros.
-/

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace PrimePowerPhaseDefect

open MeasureTheory
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.RiemannHypothesis.MultiplicativePhase
open EstimateTailReduction
open CorrelationSpectralLens Realization
open scoped BigOperators

noncomputable section

/-- The actual source prime-power weight. -/
def primeWeight (n : ℕ) : ℝ := ArithmeticFunction.vonMangoldt n / Real.sqrt n

theorem primeWeight_nonneg (n : ℕ) : 0 ≤ primeWeight n :=
  div_nonneg ArithmeticFunction.vonMangoldt_nonneg (Real.sqrt_nonneg _)

theorem primeWeight_eq_zero_of_not_prime_power {n : ℕ} (hn : ¬IsPrimePow n) :
    primeWeight n = 0 := by
  simp [primeWeight, ArithmeticFunction.vonMangoldt_eq_zero_iff.mpr hn]

/-- The full finite budget over exactly the source's strict cutoff. -/
def totalWeight (A : ℝ) : ℝ := ∑ n ∈ primeIndices A, primeWeight n

/-- The signed arithmetic cosine multiplier, including its factor `-2`. -/
def cosineMultiplier (A ξ : ℝ) : ℝ :=
  -2 * ∑ n ∈ primeIndices A, primeWeight n * Real.cos (ξ * Real.log n)

/-- The exact phase defect over every source prime-power index. -/
def phaseDefect (A ξ : ℝ) : ℝ :=
  ∑ n ∈ primeIndices A, primeWeight n * Complex.normSq (1 - chi ξ n)

/-- The combined archimedean and prime-power multiplier. -/
def spectralMultiplier (A ξ : ℝ) : ℝ :=
  archimedeanMultiplier ξ + cosineMultiplier A ξ

theorem totalWeight_nonneg (A : ℝ) : 0 ≤ totalWeight A :=
  Finset.sum_nonneg (fun n _ ↦ primeWeight_nonneg n)

theorem phaseDefect_nonneg (A ξ : ℝ) : 0 ≤ phaseDefect A ξ :=
  Finset.sum_nonneg (fun n _ ↦
    mul_nonneg (primeWeight_nonneg n) (Complex.normSq_nonneg _))

theorem phaseDefect_le_four_totalWeight (A ξ : ℝ) :
    phaseDefect A ξ ≤ 4 * totalWeight A := by
  unfold phaseDefect totalWeight
  rw [Finset.mul_sum]
  apply Finset.sum_le_sum
  intro n _
  have hd : Complex.normSq (1 - chi ξ n) ≤ 4 := by
    rw [normSq_one_sub_chi]
    linarith [Real.neg_one_le_cos (ξ * Real.log n)]
  calc
    _ ≤ primeWeight n * 4 := mul_le_mul_of_nonneg_left hd (primeWeight_nonneg n)
    _ = _ := mul_comm _ _

/-- Pointwise positivity leaves the exact negative budget in place. -/
theorem cosineMultiplier_eq_budget_add_defect (A ξ : ℝ) :
    cosineMultiplier A ξ = -2 * totalWeight A + phaseDefect A ξ := by
  unfold cosineMultiplier totalWeight phaseDefect
  rw [Finset.mul_sum, Finset.mul_sum, ← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro n _
  rw [normSq_one_sub_chi]
  ring

theorem spectralMultiplier_eq_budget_add_defect (A ξ : ℝ) :
    spectralMultiplier A ξ = archimedeanMultiplier ξ - 2 * totalWeight A +
      phaseDefect A ξ := by
  rw [spectralMultiplier, cosineMultiplier_eq_budget_add_defect]
  ring

theorem phaseDefect_zero_frequency (A : ℝ) : phaseDefect A 0 = 0 := by
  simp [phaseDefect, chi]

theorem spectralMultiplier_zero_frequency (A : ℝ) :
    spectralMultiplier A 0 = archimedeanMultiplier 0 - 2 * totalWeight A := by
  rw [spectralMultiplier_eq_budget_add_defect, phaseDefect_zero_frequency, add_zero]

theorem cosineMultiplier_lower (A ξ : ℝ) :
    -2 * totalWeight A ≤ cosineMultiplier A ξ := by
  rw [cosineMultiplier_eq_budget_add_defect]
  exact le_add_of_nonneg_right (phaseDefect_nonneg A ξ)

/-- The finite cosine sum has a genuine integral whenever each cosine term
against the proposed spectral density is integrable. -/
theorem cosineMultiplier_integrable (A : ℝ) (ρ : ℝ → ℝ)
    (hcos : ∀ n ∈ primeIndices A,
      Integrable (fun ξ ↦ Real.cos (ξ * Real.log n) * ρ ξ)) :
    Integrable (fun ξ ↦ cosineMultiplier A ξ * ρ ξ) := by
  have hi := (integrable_finsetSum (primeIndices A)
    (fun n hn ↦ (hcos n hn).const_mul (primeWeight n))).const_mul (-2)
  apply hi.congr
  filter_upwards [] with ξ
  simp [cosineMultiplier, Finset.sum_mul, mul_assoc]

/-- Transport the exact source finite sum to its signed cosine integral.
The correlation identity is a premise over the actual strict inventory. -/
theorem primePowerContribution_eq_cosine_integral (g : ℝ → ℝ → ℝ) (A : ℝ)
    (ρ : ℝ → ℝ)
    (hcos : ∀ n ∈ primeIndices A,
      Integrable (fun ξ ↦ Real.cos (ξ * Real.log n) * ρ ξ))
    (hcorr : ∀ n ∈ primeIndices A,
      sourceCorrelation g A (Real.log n) =
        ∫ ξ, Real.cos (ξ * Real.log n) * ρ ξ) :
    -2 * primePowerContribution g A = ∫ ξ, cosineMultiplier A ξ * ρ ξ := by
  have hsum := integral_finsetSum (primeIndices A)
    (fun n hn ↦ (hcos n hn).const_mul (primeWeight n))
  simp_rw [integral_const_mul] at hsum
  calc
    -2 * primePowerContribution g A =
        -2 * ∑ n ∈ primeIndices A,
          primeWeight n * ∫ ξ, Real.cos (ξ * Real.log n) * ρ ξ := by
      congr 1
      apply Finset.sum_congr rfl
      intro n hn
      rw [hcorr n hn]
      rfl
    _ = ∫ ξ, -2 * ∑ n ∈ primeIndices A,
          primeWeight n * (Real.cos (ξ * Real.log n) * ρ ξ) := by
      rw [integral_const_mul, hsum]
    _ = _ := by
      apply integral_congr_ae
      filter_upwards [] with ξ
      simp [cosineMultiplier, Finset.sum_mul, mul_assoc]

theorem phaseDefect_integrable (A : ℝ) (ρ : ℝ → ℝ) (hρ : Integrable ρ)
    (hcos : ∀ n ∈ primeIndices A,
      Integrable (fun ξ ↦ Real.cos (ξ * Real.log n) * ρ ξ)) :
    Integrable (fun ξ ↦ phaseDefect A ξ * ρ ξ) := by
  have hi := (cosineMultiplier_integrable A ρ hcos).add (hρ.const_mul (2 * totalWeight A))
  apply hi.congr
  filter_upwards [] with ξ
  simp only [Pi.add_apply]
  rw [cosineMultiplier_eq_budget_add_defect]
  ring

/-- Exact integration of the defect split. Spectral mass one is explicit,
and the negative contribution remains `-2 W_A`. -/
theorem cosine_integral_eq_budget_add_defect (A : ℝ) (ρ : ℝ → ℝ)
    (hρ : Integrable ρ) (hmass : (∫ ξ, ρ ξ) = 1)
    (hcos : ∀ n ∈ primeIndices A,
      Integrable (fun ξ ↦ Real.cos (ξ * Real.log n) * ρ ξ)) :
    (∫ ξ, cosineMultiplier A ξ * ρ ξ) =
      -2 * totalWeight A + ∫ ξ, phaseDefect A ξ * ρ ξ := by
  calc
    _ = ∫ ξ, (-2 * totalWeight A) * ρ ξ + phaseDefect A ξ * ρ ξ := by
      apply integral_congr_ae
      filter_upwards [] with ξ
      rw [cosineMultiplier_eq_budget_add_defect, add_mul]
    _ = _ := by
      rw [integral_add (hρ.const_mul _) (phaseDefect_integrable A ρ hρ hcos),
        integral_const_mul, hmass, mul_one]

/-- A conditional adapter for the exact source quadratic value. The remaining
uniform compensation of `-2 W_A` is not included among the conclusions. -/
theorem sourceQuadraticValue_eq_budget_add_phase_integral
    (g : ℝ → ℝ → ℝ) (A : ℝ) (ρ : ℝ → ℝ)
    (hρ : Integrable ρ) (hmass : (∫ ξ, ρ ξ) = 1)
    (hcos : ∀ n ∈ primeIndices A,
      Integrable (fun ξ ↦ Real.cos (ξ * Real.log n) * ρ ξ))
    (hcorr : ∀ n ∈ primeIndices A,
      sourceCorrelation g A (Real.log n) =
        ∫ ξ, Real.cos (ξ * Real.log n) * ρ ξ) :
    sourceQuadraticValue g A = archimedeanValue g A - 2 * totalWeight A +
      ∫ ξ, phaseDefect A ξ * ρ ξ := by
  have hp := primePowerContribution_eq_cosine_integral g A ρ hcos hcorr
  rw [cosine_integral_eq_budget_add_defect A ρ hρ hmass hcos] at hp
  unfold sourceQuadraticValue
  linarith

theorem phase_integral_nonneg (A : ℝ) (ρ : ℝ → ℝ) (hρ : ∀ ξ, 0 ≤ ρ ξ) :
    0 ≤ ∫ ξ, phaseDefect A ξ * ρ ξ :=
  integral_nonneg (fun ξ ↦ mul_nonneg (phaseDefect_nonneg A ξ) (hρ ξ))

/-- The phase defect against the genuine source spectral probability density. -/
def phaseDefectMass (A : ℝ) : ℝ :=
  ∫ ξ, phaseDefect A ξ * spectralDensity A ξ

theorem phaseDefectMass_integrable (A : ℝ) (hA : 1 ≤ A) :
    Integrable (fun ξ ↦ phaseDefect A ξ * spectralDensity A ξ) :=
  phaseDefect_integrable A (spectralDensity A) (spectralDensity_integrable A hA)
    (fun n _ ↦ spectralDensity_cos_integrable A (Real.log n) hA)

theorem phaseDefectMass_nonneg (A : ℝ) : 0 ≤ phaseDefectMass A :=
  phase_integral_nonneg A (spectralDensity A) (spectralDensity_nonneg A)

theorem phaseDefectMass_le_four_totalWeight (A : ℝ) (hA : 1 ≤ A) :
    phaseDefectMass A ≤ 4 * totalWeight A := by
  have h := integral_mono (phaseDefectMass_integrable A hA)
    ((spectralDensity_integrable A hA).const_mul (4 * totalWeight A))
    (fun ξ ↦ mul_le_mul_of_nonneg_right (phaseDefect_le_four_totalWeight A ξ)
      (spectralDensity_nonneg A ξ))
  rw [integral_const_mul, spectralDensity_integral A hA, mul_one] at h
  exact h

/-- The exact arithmetic source term is budget minus half the true defect.
Every spectral hypothesis has been discharged for the constructed source test. -/
theorem actual_primePowerContribution_eq_budget_sub_half_defect (A : ℝ) (hA : 1 ≤ A) :
    primePowerContribution explicitSecondDerivative A =
      totalWeight A - phaseDefectMass A / 2 := by
  have hp := primePowerContribution_eq_cosine_integral explicitSecondDerivative A
    (spectralDensity A) (fun n _ ↦ spectralDensity_cos_integrable A (Real.log n) hA)
    (fun n _ ↦ sourceCorrelation_eq_integral_cos A (Real.log n) hA)
  rw [cosine_integral_eq_budget_add_defect A (spectralDensity A)
    (spectralDensity_integrable A hA) (spectralDensity_integral A hA)
    (fun n _ ↦ spectralDensity_cos_integrable A (Real.log n) hA)] at hp
  change -2 * primePowerContribution explicitSecondDerivative A =
    -2 * totalWeight A + phaseDefectMass A at hp
  linarith

/-- The unconditional exact source decomposition keeps the full negative
prime-power budget. A radius-uniform compensation estimate remains open. -/
theorem actual_sourceQuadraticValue_eq_budget_add_phaseDefectMass (A : ℝ) (hA : 1 ≤ A) :
    sourceQuadraticValue explicitSecondDerivative A =
      archimedeanValue explicitSecondDerivative A - 2 * totalWeight A +
        phaseDefectMass A := by
  unfold sourceQuadraticValue
  rw [actual_primePowerContribution_eq_budget_sub_half_defect A hA]
  ring

/-- Genuine archimedean integrability also holds against the normalized density. -/
theorem actual_archimedeanDensity_integrable (A : ℝ) (hA : 1 ≤ A) :
    Integrable (fun ξ ↦ archimedeanMultiplier ξ * spectralDensity A ξ) := by
  have hi := (AdmissionSource.archimedean_integrability A hA).div_const (2 * Real.pi)
  apply hi.congr
  filter_upwards [] with ξ
  simp only [archimedeanIntegrand, spectralDensity]
  ring

theorem actual_spectralMultiplier_integrable (A : ℝ) (hA : 1 ≤ A) :
    Integrable (fun ξ ↦ spectralMultiplier A ξ * spectralDensity A ξ) := by
  have hi := (actual_archimedeanDensity_integrable A hA).add
    (cosineMultiplier_integrable A (spectralDensity A)
      (fun n _ ↦ spectralDensity_cos_integrable A (Real.log n) hA))
  apply hi.congr
  filter_upwards [] with ξ
  simp only [Pi.add_apply, spectralMultiplier, add_mul]

/-- The full signed source quadratic form is exactly the spectral integral.
This is an identity of the genuine arithmetic form, not a positivity claim. -/
theorem actual_sourceQuadraticValue_eq_spectral_integral (A : ℝ) (hA : 1 ≤ A) :
    sourceQuadraticValue explicitSecondDerivative A =
      ∫ ξ, spectralMultiplier A ξ * spectralDensity A ξ := by
  have harch : (∫ ξ, archimedeanMultiplier ξ * spectralDensity A ξ) =
      archimedeanValue explicitSecondDerivative A := by
    unfold archimedeanValue
    rw [← integral_div]
    apply integral_congr_ae
    filter_upwards [] with ξ
    simp only [archimedeanIntegrand, spectralDensity]
    ring
  have hp := primePowerContribution_eq_cosine_integral explicitSecondDerivative A
    (spectralDensity A) (fun n _ ↦ spectralDensity_cos_integrable A (Real.log n) hA)
    (fun n _ ↦ sourceCorrelation_eq_integral_cos A (Real.log n) hA)
  calc
    sourceQuadraticValue explicitSecondDerivative A =
        (∫ ξ, archimedeanMultiplier ξ * spectralDensity A ξ) +
          ∫ ξ, cosineMultiplier A ξ * spectralDensity A ξ := by
      rw [harch, ← hp, sourceQuadraticValue]
      ring
    _ = ∫ ξ, archimedeanMultiplier ξ * spectralDensity A ξ +
        cosineMultiplier A ξ * spectralDensity A ξ := by
      rw [integral_add (actual_archimedeanDensity_integrable A hA)
        (cosineMultiplier_integrable A (spectralDensity A)
          (fun n _ ↦ spectralDensity_cos_integrable A (Real.log n) hA))]
    _ = _ := by
      apply integral_congr_ae
      filter_upwards [] with ξ
      simp only [spectralMultiplier, add_mul]

end
end PrimePowerPhaseDefect
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
```
