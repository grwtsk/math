/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.FiniteAbelTransfer
import GRWTSK.NumberTheory.Primes.GoldbachProgressionMainModel
import Mathlib.Tactic

/-!
# Finite Abel bound for the exact Goldbach residue discrepancy

Finite, conditional-free algebra only. No prime-distribution estimate.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachAbelDiscrepancy

open scoped BigOperators
open GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.UnitIntervalCharacters
open GRWTSK.NumberTheory.Primes.GoldbachWeighted
open GRWTSK.NumberTheory.Primes.GoldbachResidueClassDecomposition
open GRWTSK.NumberTheory.Primes.GoldbachProgressionMainModel
open GRWTSK.NumberTheory.Primes.FiniteAbelTransfer

noncomputable section

/-- The coefficient of the exact residue-class discrepancy. The model
coefficient occurs at every integer, not just integers in the residue class. -/
def residueCoefficient (q r n : ℕ) : ℂ :=
  (if n % q = r then (primeLogWeight n : ℂ) else 0) -
    (if q.Coprime r then ((Nat.totient q : ℂ)⁻¹) else 0)

/-- The exact discrepancy is a finite Fourier sum of its coefficients. -/
theorem discrepancy_eq_sum_coefficients
    (N q r : ℕ) (β : ℝ) :
    goldbachResidueProgressionDiscrepancy N q r β =
      ∑ n ∈ Finset.range (N + 1),
        residueCoefficient q r n * unitCharacter (n : ℤ) β := by
  unfold goldbachResidueProgressionDiscrepancy
    goldbachResidueClassPrimeSum goldbachCoprimeResidueMain
    goldbachIntegerExponentialKernel residueCoefficient
  classical
  -- Normalize the filtered prime sum to the same inclusive range as the model.
  -- Only then distribute subtraction across the common finite sum.
  simp only [Finset.sum_ite]
  rw [← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro n hn
  split_ifs <;> ring

/-- The finite prefix-variation budget for the existing discrepancy.
This is not an arithmetic-progression bound until prefix sums are estimated. -/
theorem norm_discrepancy_le_prefix_variation
    (N q r : ℕ) (β : ℝ) :
    ‖goldbachResidueProgressionDiscrepancy N q r β‖ ≤
      ‖prefix (residueCoefficient q r) N‖ *
        ‖unitCharacter (N : ℤ) β‖ +
      ∑ n ∈ Finset.range N,
        ‖prefix (residueCoefficient q r) n‖ *
          ‖unitCharacter (n : ℤ) β -
            unitCharacter ((n + 1 : ℕ) : ℤ) β‖ := by
  rw [discrepancy_eq_sum_coefficients]
  exact norm_sum_mul_le_prefix_variation
    (residueCoefficient q r)
    (fun n => unitCharacter (n : ℤ) β) N

end
end GRWTSK.NumberTheory.Primes.GoldbachAbelDiscrepancy
