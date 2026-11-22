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

/-- Recombining the exact first-window readings leaves a single signed
real projection of the later complex atoms. -/
theorem physicalValue_sub_dual_firstOnly (χ : DirichletCharacter ℂ q)
    (A : ℝ) (f : ℝ → ℂ) :
    let C := fun n : ℕ => correlation f (Real.log n)
    physicalValue χ A f - (dualEvenFirstOnly χ A f +
      (dualPhasePart (firstPowers A) χ C : ℂ) / 2) =
      ((-2 * ∑ n ∈ laterPowers A, primeWeight n * (χ n * C n).re : ℝ) : ℂ) := by
  intro C
  have split :
      physicalValue χ A f - (dualEvenFirstOnly χ A f +
        (dualPhasePart (firstPowers A) χ C : ℂ) / 2) =
      (dualEvenValue χ A f - dualEvenFirstOnly χ A f) +
      (physicalValue χ A f - physicalValue χ⁻¹ A f -
        (dualPhasePart (firstPowers A) χ C : ℂ)) / 2 := by
    linear_combination physicalValue_add_dual χ A f / 2
  rw [split, dualEven_sub_firstOnly, physicalValue_sub_dual]
  change ((-2 * (∑ n ∈ laterPowers A, primeWeight n * (χ n).re * (C n).re) : ℝ) : ℂ) +
    (((dualPhasePart (firstPowers A) χ C + dualPhasePart (laterPowers A) χ C : ℝ) : ℂ) -
      (dualPhasePart (firstPowers A) χ C : ℂ)) / 2 = _
  push_cast
  rw [add_sub_cancel_left]
  unfold dualPhasePart
  simp only [Complex.mul_re]
  push_cast
  simp only [mul_sub, Finset.sum_sub_distrib, mul_assoc]
  ring

/-- A joint bound for the two exact first-window channels, using one
complex phase and one overlap budget for each original later prime power. -/
theorem norm_physicalValue_sub_dual_firstOnly_le_joint (χ : DirichletCharacter ℂ q)
    (A : ℝ) {f : ℝ → ℂ} (hf : MemLp f 2 volume)
    (support : tsupport f ⊆ Icc (-A) A) :
    ‖physicalValue χ A f - (dualEvenFirstOnly χ A f +
      (dualPhasePart (firstPowers A) χ (fun n => correlation f (Real.log n)) : ℂ) / 2)‖ ≤
      2 * ∑ n ∈ laterPowers A, primeWeight n * ‖χ n‖ * overlapGeometric A (Real.log n) f := by
  rw [physicalValue_sub_dual_firstOnly, Complex.norm_real, Real.norm_eq_abs, abs_mul,
    show |(-2 : ℝ)| = 2 by norm_num]
  apply mul_le_mul_of_nonneg_left _ (by norm_num)
  refine (Finset.abs_sum_le_sum_abs _ _).trans (Finset.sum_le_sum ?_)
  intro n _
  rw [abs_mul, abs_of_nonneg (primeWeight_nonneg _), mul_assoc]
  apply mul_le_mul_of_nonneg_left _ (primeWeight_nonneg _)
  refine (Complex.abs_re_le_norm _).trans ?_
  rw [norm_mul]
  exact mul_le_mul_of_nonneg_left (norm_correlation_le_overlapGeometric A _ hf support) (norm_nonneg _)

/-- The joint budget is bounded by the sum of the separate channel budgets. -/
theorem joint_overlap_budget_le_separate (χ : DirichletCharacter ℂ q)
    (A : ℝ) (f : ℝ → ℂ) :
    2 * (∑ n ∈ laterPowers A, primeWeight n * ‖χ n‖ * overlapGeometric A (Real.log n) f) ≤
      2 * (∑ n ∈ laterPowers A, primeWeight n * |(χ n).re| * overlapGeometric A (Real.log n) f) +
      2 * (∑ n ∈ laterPowers A, primeWeight n * |(χ n).im| * overlapGeometric A (Real.log n) f) := by
  rw [← mul_add, ← Finset.sum_add_distrib]
  apply mul_le_mul_of_nonneg_left _ (by norm_num)
  apply Finset.sum_le_sum
  intro n _
  rw [← add_mul, ← mul_add]
  have geom : 0 ≤ overlapGeometric A (Real.log n) f := by
    unfold overlapGeometric
    positivity
  exact mul_le_mul_of_nonneg_right
    (mul_le_mul_of_nonneg_left (Complex.norm_le_abs_re_add_abs_im _) (primeWeight_nonneg _)) geom

private theorem max_abs_channels (a b : ℝ) :
    max |a + b| |a - b| = |a| + |b| := by
  apply le_antisymm
  · exact max_le (abs_add_le _ _) (by simpa only [sub_eq_add_neg, abs_neg] using abs_add_le a (-b))
  · have plus := le_max_left |a + b| |a - b|
    have minus := le_max_right |a + b| |a - b|
    rcases le_total 0 a with ha | ha <;> rcases le_total 0 b with hb | hb
    · rw [abs_of_nonneg ha, abs_of_nonneg hb]
      exact le_trans (abs_of_nonneg (add_nonneg ha hb)).symm.le plus
    · rw [abs_of_nonneg ha, abs_of_nonpos hb, ← sub_eq_add_neg]
      exact le_trans (abs_of_nonneg (sub_nonneg.mpr (hb.trans ha))).symm.le minus
    · rw [abs_of_nonpos ha, abs_of_nonneg hb]
      exact (show -a + b ≤ |a - b| by linarith [neg_abs_le (a - b)]).trans minus
    · rw [abs_of_nonpos ha, abs_of_nonpos hb]
      exact (show -a + -b ≤ |a + b| by linarith [neg_abs_le (a + b)]).trans plus

/-- For one test and a shared pair of real channel errors, the larger
of the two original-sector errors is exactly the sum of the average
error magnitude and half the contrast error magnitude. -/
theorem max_dual_readout_error_eq (χ : DirichletCharacter ℂ q)
    (A : ℝ) (f : ℝ → ℂ) (average : ℂ) (contrast a b : ℝ)
    (avgError : dualEvenValue χ A f - average = (a : ℂ))
    (phaseError : physicalValue χ A f - physicalValue χ⁻¹ A f - (contrast : ℂ) = (b : ℂ)) :
    max ‖physicalValue χ A f - (average + (contrast : ℂ) / 2)‖
      ‖physicalValue χ⁻¹ A f - (average - (contrast : ℂ) / 2)‖ =
      |a| + |b| / 2 := by
  have first : physicalValue χ A f - (average + (contrast : ℂ) / 2) =
      ((a + b / 2 : ℝ) : ℂ) := by
    push_cast
    linear_combination physicalValue_add_dual χ A f / 2 + avgError + phaseError / 2
  have dual : physicalValue χ⁻¹ A f - (average - (contrast : ℂ) / 2) =
      ((a - b / 2 : ℝ) : ℂ) := by
    push_cast
    linear_combination physicalValue_add_dual χ A f / 2 + avgError - phaseError / 2
  rw [first, dual, Complex.norm_real, Complex.norm_real, Real.norm_eq_abs, Real.norm_eq_abs,
    max_abs_channels, abs_div, abs_of_nonneg (by norm_num : (0 : ℝ) ≤ 2)]

/-- Use the literal first-window channels to identify the worst omitted
prime error across the original pair, with their common background kept. -/
theorem max_dual_firstOnly_error_eq (χ : DirichletCharacter ℂ q) (A : ℝ) (f : ℝ → ℂ) :
    let C := fun n : ℕ => correlation f (Real.log n)
    let average := dualEvenFirstOnly χ A f
    let contrast := dualPhasePart (firstPowers A) χ C
    max ‖physicalValue χ A f - (average + (contrast : ℂ) / 2)‖
      ‖physicalValue χ⁻¹ A f - (average - (contrast : ℂ) / 2)‖ =
      2 * |∑ n ∈ laterPowers A, primeWeight n * (χ n).re * (C n).re| +
        |dualPhasePart (laterPowers A) χ C| / 2 := by
  intro C average contrast
  have avgError := dualEven_sub_firstOnly χ A f
  have phaseError : physicalValue χ A f - physicalValue χ⁻¹ A f - (contrast : ℂ) =
      (dualPhasePart (laterPowers A) χ C : ℂ) := by
    rw [physicalValue_sub_dual]
    change ((contrast + dualPhasePart (laterPowers A) χ C : ℝ) : ℂ) - (contrast : ℂ) = _
    push_cast
    ring
  rw [max_dual_readout_error_eq χ A f average contrast _ _ avgError phaseError, abs_mul]
  norm_num [C]

end GRWTSK.NumberTheory.WeilQuadraticForm.FirstPrimeWindow
