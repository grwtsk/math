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


/-- Retain the original background and the first-window real phase pairing. -/
def dualEvenFirstOnly (χ : DirichletCharacter ℂ q) (A : ℝ) (f : ℝ → ℂ) : ℂ :=
  ((gammaConstant q (gammaParity χ) * energy f +
    (∫ r in Set.Ioi (0 : ℝ), gammaCorrectionDensity (gammaParity χ) f r) -
    2 * (∑ n ∈ firstPowers A, primeWeight n * (χ n).re *
      (correlation f (Real.log (n : ℝ))).re) : ℝ) : ℂ) + poleTerm q f

theorem dualEven_sub_firstOnly (χ : DirichletCharacter ℂ q) (A : ℝ) (f : ℝ → ℂ) :
    dualEvenValue χ A f - dualEvenFirstOnly χ A f =
      ((-2 * (∑ n ∈ laterPowers A, primeWeight n * (χ n).re *
        (correlation f (Real.log (n : ℝ))).re) : ℝ) : ℂ) := by
  unfold dualEvenValue dualEvenFirstOnly
  push_cast
  ring

/-- The omitted average uses the real character phase at each actual
later prime power, with the original localized correlation budget. -/
theorem norm_dualEven_sub_firstOnly_le_overlapGeometric
    (χ : DirichletCharacter ℂ q) (A : ℝ) {f : ℝ → ℂ}
    (hf : MemLp f 2 volume) (support : tsupport f ⊆ Icc (-A) A) :
    ‖dualEvenValue χ A f - dualEvenFirstOnly χ A f‖ ≤
      2 * ∑ n ∈ laterPowers A, primeWeight n * |(χ n).re| *
        overlapGeometric A (Real.log n) f := by
  rw [dualEven_sub_firstOnly, Complex.norm_real, Real.norm_eq_abs, abs_mul,
    show |(-2 : ℝ)| = 2 by norm_num]
  apply mul_le_mul_of_nonneg_left _ (by norm_num)
  refine (Finset.abs_sum_le_sum_abs _ _).trans (Finset.sum_le_sum ?_)
  intro n _
  rw [abs_mul, abs_mul, abs_of_nonneg (primeWeight_nonneg _)]
  apply mul_le_mul_of_nonneg_left _ (mul_nonneg (primeWeight_nonneg _) (abs_nonneg _))
  exact (Complex.abs_re_le_norm _).trans (norm_correlation_le_overlapGeometric A _ hf support)

/-- Recombine an approximate average and contrast without changing either
original source sector. -/
theorem norm_physicalValue_sub_dual_readout_le (χ : DirichletCharacter ℂ q)
    (A : ℝ) (f : ℝ → ℂ) (average contrast : ℂ) :
    ‖physicalValue χ A f - (average + contrast / 2)‖ ≤
      ‖dualEvenValue χ A f - average‖ +
        ‖physicalValue χ A f - physicalValue χ⁻¹ A f - contrast‖ / 2 := by
  have eq : physicalValue χ A f - (average + contrast / 2) =
      (dualEvenValue χ A f - average) +
        (physicalValue χ A f - physicalValue χ⁻¹ A f - contrast) / 2 := by
    linear_combination physicalValue_add_dual χ A f / 2
  rw [eq]
  refine (norm_add_le _ _).trans_eq ?_
  rw [norm_div]
  norm_num

/-- The two literal first-window channels yield an error ledger for the
original sector, while retaining the full common source background. -/
theorem norm_physicalValue_sub_dual_firstOnly_le (χ : DirichletCharacter ℂ q)
    (A : ℝ) {f : ℝ → ℂ} (hf : MemLp f 2 volume)
    (support : tsupport f ⊆ Icc (-A) A) :
    ‖physicalValue χ A f - (dualEvenFirstOnly χ A f +
      (dualPhasePart (firstPowers A) χ (fun n => correlation f (Real.log n)) : ℂ) / 2)‖ ≤
      2 * (∑ n ∈ laterPowers A, primeWeight n * |(χ n).re| * overlapGeometric A (Real.log n) f) +
      2 * (∑ n ∈ laterPowers A, primeWeight n * |(χ n).im| * overlapGeometric A (Real.log n) f) := by
  apply (norm_physicalValue_sub_dual_readout_le χ A f _ _).trans
  apply add_le_add (norm_dualEven_sub_firstOnly_le_overlapGeometric χ A hf support)
  have h := norm_dual_sub_firstPhase_le_overlapGeometric χ A hf support
  dsimp only at h
  linarith only [h]

end GRWTSK.NumberTheory.WeilQuadraticForm.FirstPrimeWindow
