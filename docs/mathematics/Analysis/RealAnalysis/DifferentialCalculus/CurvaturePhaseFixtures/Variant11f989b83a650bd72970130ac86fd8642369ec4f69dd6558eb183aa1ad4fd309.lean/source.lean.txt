import FormalResearch.RiemannHypothesis.SourceCriticalCurvaturePhase

/-! Scope fixtures only: actual phases and scalar seam/coefficient controls.
No synthetic function is identified with the actual source or used for an RH bound. -/

noncomputable section
namespace Confluence.Cycle23.CurvaturePhaseFixtures

open Set Filter
open scoped Topology
open FormalResearch.RiemannHypothesis
open SourceCriticalCurvaturePhase SourceCriticalSecondAbel SourcePairedTailTest
open SourcePairedPrimeWork SourceFirstPrimeAbel SourcePairing
open SourcePairedPrimeAverages
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity EstimateCorrelation

private theorem actual_prime_deriv_zero {A : ℝ} (hA : 1 ≤ A) :
    deriv (criticalPrimeTest A) 0 = 1 / 2 := by
  have hp : 0 < A := by linarith
  have hc := ((contDiff_one_iff_deriv.mp (sourceCorrelation_contDiff A hp)).1 0).hasDerivAt
  have hcn : HasDerivAt (SourcePairing.sourceCorrelation explicitSecondDerivative A)
      (deriv (SourcePairing.sourceCorrelation explicitSecondDerivative A) 0) (-(0 : ℝ)) := by
    simpa only [neg_zero] using hc
  have hn : HasDerivAt
      (fun u : ℝ => SourcePairing.sourceCorrelation explicitSecondDerivative A (-u))
      (-deriv (SourcePairing.sourceCorrelation explicitSecondDerivative A) 0) 0 := by
    simpa only [neg_zero, mul_neg_one, Function.comp_def] using
      hcn.comp 0 (hasDerivAt_neg (0 : ℝ))
  have he : (fun u : ℝ => SourcePairing.sourceCorrelation explicitSecondDerivative A (-u)) =
      SourcePairing.sourceCorrelation explicitSecondDerivative A :=
    funext (sourceCorrelation_even A)
  rw [he] at hn
  have hc0 : deriv (SourcePairing.sourceCorrelation explicitSecondDerivative A) 0 = 0 := by
    have hd := hc.unique hn
    linarith
  rw [criticalPrimeTest_deriv A 0 hp, hc0, actual_correlation_at_zero A hA]
  norm_num

private theorem max_not_differentiable_zero :
    ¬ DifferentiableAt ℝ (fun x : ℝ => max x 0) 0 := by
  intro h
  have hr : deriv (fun x : ℝ => max x 0) 0 = 1 :=
    (uniqueDiffOn_Ici _ _ Set.self_mem_Ici).eq_deriv _ h.hasDerivAt.hasDerivWithinAt <|
      (hasDerivWithinAt_id _ _).congr_of_mem
        (fun _ hx => max_eq_left hx) Set.self_mem_Ici
  have hl : deriv (fun x : ℝ => max x 0) 0 = 0 :=
    (uniqueDiffOn_Iic _ _ Set.self_mem_Iic).eq_deriv _ h.hasDerivAt.hasDerivWithinAt <|
      (hasDerivWithinAt_const _ _ (0 : ℝ)).congr_of_mem
        (fun _ hx => max_eq_right hx) Set.self_mem_Iic
  linarith

theorem actual_positive_phase {A u : ℝ} (hA : 1 ≤ A)
    (hu : 0 < deriv (criticalPrimeTest A) u) :
    deriv (deriv (pairedTailTest A)) u = -deriv (deriv (criticalPrimeTest A)) u :=
  pairedTailTest_second_deriv_eq_neg_of_deriv_pos hA hu

theorem actual_negative_phase {A u : ℝ} (hA : 1 ≤ A)
    (hu : deriv (criticalPrimeTest A) u < 0) :
    deriv (deriv (pairedTailTest A)) u =
      -(positiveMass A / negativeMass A) * deriv (deriv (criticalPrimeTest A)) u :=
  pairedTailTest_second_deriv_eq_neg_mass_mul_of_deriv_neg hA hu

theorem actual_product {A u : ℝ} (hA : 0 < A) :
    deriv (deriv (criticalPrimeTest A)) u = Real.exp (u / 2) *
      (SourcePairing.sourceCorrelation explicitSecondDerivative A u / 4 +
        deriv (SourcePairing.sourceCorrelation explicitSecondDerivative A) u +
        deriv (deriv (SourcePairing.sourceCorrelation explicitSecondDerivative A)) u) :=
  criticalPrimeTest_second_deriv_eq_correlation hA

theorem actual_origin_is_strict_positive {A : ℝ} (hA : 1 ≤ A) :
    0 < deriv (criticalPrimeTest A) 0 := by
  rw [actual_prime_deriv_zero hA]
  norm_num

theorem actual_origin_curvature {A : ℝ} (hA : 1 ≤ A) :
    deriv (deriv (pairedTailTest A)) 0 = -deriv (deriv (criticalPrimeTest A)) 0 :=
  pairedTailTest_second_deriv_eq_neg_of_deriv_pos hA (actual_origin_is_strict_positive hA)

theorem actual_upper_product {A : ℝ} (hA : 0 < A) :
    deriv (deriv (criticalPrimeTest A)) (2 * A) = Real.exp A *
      (SourcePairing.sourceCorrelation explicitSecondDerivative A (2 * A) / 4 +
        deriv (SourcePairing.sourceCorrelation explicitSecondDerivative A) (2 * A) +
        deriv (deriv (SourcePairing.sourceCorrelation explicitSecondDerivative A)) (2 * A)) := by
  simpa using (criticalPrimeTest_second_deriv_eq_correlation (u := 2 * A) hA)

theorem actual_mass_ratio_lt_one {A : ℝ} (hA : 1 ≤ A) :
    positiveMass A / negativeMass A < 1 := by
  apply (div_lt_one (negativeMass_pos hA)).mpr
  rw [negativeMass_eq_positive_add_one hA]
  linarith

theorem actual_mass_ratio_ne_one {A : ℝ} (hA : 1 ≤ A) :
    positiveMass A / negativeMass A ≠ 1 :=
  ne_of_lt (actual_mass_ratio_lt_one hA)

theorem actual_zero_phase_guards {A u : ℝ} (hu : deriv (criticalPrimeTest A) u = 0) :
    ¬ 0 < deriv (criticalPrimeTest A) u ∧ ¬ deriv (criticalPrimeTest A) u < 0 := by
  simp [hu]

theorem actual_zero_slopes {A u : ℝ} (hu : deriv (criticalPrimeTest A) u = 0) :
    positiveSlope A u = 0 ∧ negativeSlope A u = 0 := by
  simp [positiveSlope, negativeSlope, hu]

theorem scalar_nonstrict_guard_is_insufficient :
    (0 : ℝ) ≤ 0 ∧ ¬ (0 : ℝ) < 0 := by norm_num

theorem scalar_zero_max_seam :
    ¬ DifferentiableAt ℝ (fun x : ℝ => max x 0) 0 :=
  max_not_differentiable_zero

theorem scalar_totalized_derivative_is_not_branch_derivative :
    deriv (fun x : ℝ => max x 0) 0 = 0 ∧
      deriv (fun x : ℝ => max x 0) 0 ≠ 1 := by
  have hd := deriv_zero_of_not_differentiableAt max_not_differentiable_zero
  exact ⟨hd, by rw [hd]; norm_num⟩

theorem scalar_product_and_ratio_coefficients :
    (1 / 4 : ℝ) + 1 + 1 = 9 / 4 ∧
      (1 / 4 : ℝ) + 1 + 1 ≠ 1 / 4 + 1 / 2 + 1 ∧
      -(1 / 3 : ℝ) * 2 ≠ -(2 : ℝ) := by norm_num

end Confluence.Cycle23.CurvaturePhaseFixtures
