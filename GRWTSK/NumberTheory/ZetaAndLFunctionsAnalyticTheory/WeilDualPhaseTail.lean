/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilDualPhaseContrast
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilLaterPrimeHalfEnergy

/-!
# Omission error for the dual-sector Weil contrast

Subtracting original sector values at the same test leaves a signed imaginary
pairing. Its omission budget uses the imaginary component of each original
character value and the two physical support overlaps of the test.
-/

set_option autoImplicit false
noncomputable section
open Set MeasureTheory
open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.FirstPrimeWindow

open LowSchur OddRootProjection CharacterWindow SourcePrimeCorrelation

variable {q : ℕ}

/-- The error of retaining precisely the first-window contrast has an
overlap bound that vanishes on each real character phase. -/
theorem norm_dual_sub_firstPhase_le_overlapGeometric
    (χ : DirichletCharacter ℂ q) (A : ℝ) {f : ℝ → ℂ}
    (hf : MemLp f 2 volume) (support : tsupport f ⊆ Icc (-A) A) :
    let C := fun n : ℕ => correlation f (Real.log n)
    ‖physicalValue χ A f - physicalValue χ⁻¹ A f -
      (dualPhasePart (firstPowers A) χ C : ℂ)‖ ≤
      4 * ∑ n ∈ laterPowers A, primeWeight n * |(χ n).im| *
        overlapGeometric A (Real.log n) f := by
  intro C
  rw [physicalValue_sub_dual]
  push_cast
  rw [add_sub_cancel_left, Complex.norm_real, Real.norm_eq_abs]
  unfold dualPhasePart
  rw [abs_mul, abs_of_nonneg (by norm_num : (0 : ℝ) ≤ 4)]
  apply mul_le_mul_of_nonneg_left _ (by norm_num)
  refine (Finset.abs_sum_le_sum_abs _ _).trans (Finset.sum_le_sum ?_)
  intro n _
  rw [abs_mul, abs_mul, abs_of_nonneg (primeWeight_nonneg _)]
  apply mul_le_mul_of_nonneg_left _ (mul_nonneg (primeWeight_nonneg _) (abs_nonneg _))
  exact (Complex.abs_im_le_norm _).trans (norm_correlation_le_overlapGeometric A _ hf support)

/-- At the first omitted prime the contrast correction is exactly one
signed term, including for complex tests. -/
theorem dual_sub_firstPhase_eq_at_503
    (χ : DirichletCharacter ℂ q) (A : ℝ) (f : ℝ → ℂ)
    (lo : 503 < Real.exp (2 * A)) (hi : Real.exp (2 * A) ≤ 509) :
    let C := fun n : ℕ => correlation f (Real.log n)
    physicalValue χ A f - physicalValue χ⁻¹ A f -
      (dualPhasePart (firstPowers A) χ C : ℂ) =
      ((4 * (primeWeight 503 * (χ (503 : ℕ)).im * (C 503).im) : ℝ) : ℂ) := by
  intro C
  rw [physicalValue_sub_dual]
  push_cast
  rw [add_sub_cancel_left, laterPowers_eq_singleton_503 lo hi]
  simp only [dualPhasePart, Finset.sum_singleton, Complex.ofReal_mul, Complex.ofReal_ofNat]
  norm_num [C]

end GRWTSK.NumberTheory.WeilQuadraticForm.FirstPrimeWindow
