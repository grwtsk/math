import SourceOneSidedMeanAudit
import SourceOneSidedPowerDiagonal

/-!
Native application of the actual-correlation clipping theorem to the original
full-minus-first physical diagonal, with actual Vaughan cutoffs and source main.
Direction: grwtsk contributors. Additive source application: OpenAI Codex assistance.
-/
set_option autoImplicit false
noncomputable section
namespace RH16OneSidedActualApplication
open scoped BigOperators
open ArithmeticFunction
open RH16OneSidedMeanAudit RH16OneSidedPowerDiagonal
open FormalResearch.RiemannHypothesis
open SourcePairing SourceDiagonalPrimeAbel SourceSamplingLedger SourceShortSamplingInventory
open SourceSamplingPointwise SourceSamplingCoefficients
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateVaughanSource EstimateVaughanTranslationGate EstimateSourceMobiusKernel

/-- Extra non-prime-power indices in the exact original diagonal have zero Mangoldt weight. -/
theorem original_proper_diagonal_eq_finite_rows (A : ℝ) (hA : 1 ≤ A) :
    typeTwoDiagonal A - retainedPrimeDiagonal A =
      properLargePowerDiagonal A (vaughanCutoff A) (sourceKernelCutoff A) := by
  classical
  let U := vaughanCutoff A
  let N := sourceKernelCutoff A
  let w := fun n : ℕ => vonMangoldt n / (n : ℝ) *
    sourceCorrelation explicitSecondDerivative A (2 * Real.log (n : ℝ))
  have hsub : properLargePowerInventory U N ⊆ actualProperDiagonalInventory A := by
    intro n hn
    rcases Finset.mem_filter.mp hn with ⟨hi, _, hmin, hnp⟩
    exact Finset.mem_filter.mpr ⟨Finset.mem_filter.mpr ⟨hi, hmin⟩, hnp⟩
  have hz (n : ℕ) (hn : n ∈ actualProperDiagonalInventory A)
      (hnot : n ∉ properLargePowerInventory U N) : w n = 0 := by
    rcases Finset.mem_filter.mp hn with ⟨hbase, hnp⟩
    rcases Finset.mem_filter.mp hbase with ⟨hi, hmin⟩
    have hp : ¬IsPrimePow n := by
      intro hp
      exact hnot (Finset.mem_filter.mpr ⟨hi, hp, hmin, hnp⟩)
    simp only [w, vonMangoldt_eq_zero_iff.mpr hp, zero_div, zero_mul]
  have hs := Finset.sum_subset hsub hz
  rw [actual_proper_diagonal_eq A hA]
  unfold properLargePowerDiagonal
  congr 1
  exact hs.symm

/-- Actual source application: keep favorable core terms and charge only the clipped finite tail. -/
theorem original_proper_diagonal_upper (A : ℝ) (hA : 91 ≤ A) :
    typeTwoDiagonal A - retainedPrimeDiagonal A ≤
      properLargePowerUpperBudget A (vaughanCutoff A) (sourceKernelCutoff A) := by
  rw [original_proper_diagonal_eq_finite_rows A (by linarith)]
  exact actual_proper_power_diagonal_upper A (vaughanCutoff A) (sourceKernelCutoff A)
    hA (vaughanCutoff_pos A (by linarith))

/-- Quantitative clipped-tail bounds feed the original all-real estimate through the new source leaf. -/
theorem estimate_of_original_clipped_diagonal
    (D rho Elog Eplain Q : ℝ) (hQ : 91 ≤ Q)
    (hreadout : ∀ A : ℝ, Q ≤ A →
      VaughanOperatorReview.covarianceOperatorValue A / 2 - independentMainTerm A ≤ D)
    (hbudget : ∀ A : ℝ, Q ≤ A →
      properLargePowerUpperBudget A (vaughanCutoff A) (sourceKernelCutoff A) ≤ rho)
    (hlog : ∀ A : ℝ, Q ≤ A → shortLogSource A - shortLogMainTerm A
      (logLinearMain A samplingAlpha1 samplingAlpha2) ≤ Elog)
    (hplain : ∀ A : ℝ, Q ≤ A → -Eplain ≤ shortPlainSource A - shortPlainMainTerm A
      (plainLinearMain A samplingAlpha0 samplingAlpha1)) :
    CorrelationAssembly.EstimateObligation := by
  apply estimate_of_one_sided_diagonal D rho Elog Eplain Q (by linarith) hreadout _ hlog hplain
  intro A hQA
  exact (original_proper_diagonal_upper A (hQ.trans hQA)).trans (hbudget A hQA)

end RH16OneSidedActualApplication
