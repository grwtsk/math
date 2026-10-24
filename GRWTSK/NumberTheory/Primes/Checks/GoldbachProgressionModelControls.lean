/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Primes.GoldbachProgressionArcBoundary
import Mathlib.Tactic.NormNum

set_option autoImplicit false

/-!
# Controls for the Goldbach progression model

These source controls preserve reduced-residue support, nonzero progression
discrepancies, the coarse arc-measure budget, exact model-plus-residual
bookkeeping, and the strict terminal margin. They have not been executed in
Lean.
-/

namespace GRWTSK.NumberTheory.Primes.Checks.GoldbachProgressionModelControls

open scoped Real
open GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.UnitIntervalCharacters
open GRWTSK.NumberTheory.Primes.ConfigurationCounts
open GRWTSK.NumberTheory.Primes.GoldbachWeighted
open GRWTSK.NumberTheory.Primes.GoldbachRationalArcs
open GRWTSK.NumberTheory.Primes.GoldbachRationalArcExpansion
open GRWTSK.NumberTheory.Primes.GoldbachResidueClassDecomposition
open GRWTSK.NumberTheory.Primes.GoldbachProgressionMainModel
open GRWTSK.NumberTheory.Primes.GoldbachProgressionErrorTransfer
open GRWTSK.NumberTheory.Primes.GoldbachProgressionArcBoundary

/-- The zero-cutoff integer kernel contains its frequency-zero term. -/
theorem integer_kernel_zero (β : ℝ) :
    goldbachIntegerExponentialKernel 0 β = 1 := by
  simp [goldbachIntegerExponentialKernel, unitCharacter_zero]

/-- A non-reduced residue class receives no canonical progression main term. -/
theorem noncoprime_residue_main_zero (N : ℕ) (β : ℝ) :
    goldbachCoprimeResidueMain N 4 2 β = 0 := by
  norm_num [goldbachCoprimeResidueMain]

/-- At denominator one, the normalized finite Ramanujan coefficient is one. -/
theorem normalized_coefficient_denominator_one :
    goldbachNormalizedRamanujanCoefficient 0 1 = 1 := by
  norm_num [goldbachNormalizedRamanujanCoefficient,
    goldbachCoprimePhaseSum, goldbachRationalPhase,
    goldbachRationalArcCenter, unitCharacter_zero]

/-- The canonical progression main is not definitionally the exact prime sum:
the non-reduced even class at `N=2` retains the prime two as discrepancy. -/
theorem even_residue_discrepancy_at_two :
    goldbachResidueProgressionDiscrepancy 2 2 0 0 =
      (Real.log 2 : ℂ) := by
  norm_num [goldbachResidueProgressionDiscrepancy,
    goldbachResidueClassPrimeSum,
    goldbachCoprimeResidueMain,
    primeLogWeight, unitCharacter, fourier_eval_zero,
    Finset.sum_filter, Finset.sum_range_succ]

/-- Consequently a zero residue-error budget cannot pass at this finite input. -/
theorem zero_residue_error_rejected :
    ¬ ‖goldbachResidueProgressionDiscrepancy 2 2 0 0‖ ≤ 0 := by
  rw [even_residue_discrepancy_at_two]
  simp only [Complex.norm_real, Real.norm_eq_abs]
  have hlog : 0 < Real.log (2 : ℝ) :=
    Real.log_pos (by norm_num)
  rw [abs_of_pos hlog]
  exact not_le_of_gt hlog

/-- Exact model-plus-discrepancy reconstruction remains an identity at a small
positive denominator. -/
theorem exact_progression_reconstruction_control (β : ℝ) :
    goldbachResidueClassExponentialKernel 5 1 3 β =
      goldbachProgressionExponentialModel 5 1 3 β +
        goldbachProgressionExponentialDiscrepancy 5 1 3 β :=
  goldbachResidueClassExponentialKernel_eq_progression_add_discrepancy
    5 1 3 β

/-- The normalized coefficient bound specializes correctly at denominator one. -/
theorem normalized_coefficient_norm_control :
    ‖goldbachNormalizedRamanujanCoefficient 0 1‖ ≤ 1 := by
  exact norm_goldbachNormalizedRamanujanCoefficient_le_one
    (a := 0) (q := 1) (by norm_num)

/-- The six-radius bound is deliberately coarse and can exceed the unit-domain
measure even in a safe geometric regime. -/
theorem coarse_six_radius_control :
    6 * goldbachRationalArcRadius 2 8 1 = (4 / 3 : ℝ) := by
  norm_num [goldbachRationalArcRadius]

/-- The exact finite major sum still decomposes into model and residual at an
input with zero Goldbach count. -/
theorem progression_bookkeeping_not_goldbach_witness :
    goldbachCount 2 = 0 ∧
      (∑ aq ∈ goldbachRationalArcIndices 1,
          goldbachSingleRationalArcContribution 1 2 aq) =
        goldbachProgressionArcModelMajorSum 1 2 +
          ∑ aq ∈ goldbachRationalArcIndices 1,
            goldbachProgressionArcResidual 1 2 aq := by
  exact ⟨by decide,
    goldbachRationalArcSum_eq_progressionModel_add_residual 1 2⟩

/-- Equality of the combined error and model lower bound cannot satisfy the
strict terminal criterion. -/
theorem zero_margin_rejected :
    ¬ ((1 : ℝ) + 2 < 3) := by
  norm_num

/-- A positive pointwise budget is not itself a lower bound for the model major
sum or for the exact Goldbach count. -/
theorem pointwise_budget_not_count :
    0 ≤ goldbachProgressionPointwiseErrorBudget
        2 (0, 1) (fun _ _ => 0) ∧
      goldbachCount 2 = 0 := by
  constructor
  · exact goldbachProgressionPointwiseErrorBudget_nonneg
      (N := 2) (aq := (0, 1))
      (residueError := fun _ _ => 0)
      (by intro r hr; norm_num)
  · decide

end GRWTSK.NumberTheory.Primes.Checks.GoldbachProgressionModelControls
