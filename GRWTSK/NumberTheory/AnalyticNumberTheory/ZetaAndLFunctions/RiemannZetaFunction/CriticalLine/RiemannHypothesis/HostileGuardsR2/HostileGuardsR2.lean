import FormalResearch.RiemannHypothesis.SourcePhaseSignGeometry

open MeasureTheory Set
open FormalResearch.RiemannHypothesis
open SourcePhaseSignGeometry SourcePairedTailTest SourcePairedTailQuadrature
open SourcePairedPrimeWork SourcePairedPrimeAverages SourceFirstPrimeAbel

example {A : ℝ} (hA : 1 ≤ A) :
    pairedTailTest A 0 = 0 ∧ pairedTailTest A (2 * A) = 0 ∧
      negativeMass A = positiveMass A + 1 :=
  ⟨pairedTailTest_at_zero hA, pairedTailTest_at_upper hA,
    negativeMass_eq_positive_add_one hA⟩

example : ∃ u ∈ Ioo 0 2, 0 < pairedTailTest 1 u := by
  simpa using exists_pairedTailTest_pos (A := 1) (by norm_num)

example : pairedTailTest 160 2 < 0 := by
  simpa only [show (160 : ℝ) / 80 = 2 by norm_num] using
    pairedTailTest_early_point_neg (A := 160) (by norm_num)

example : (¬ ∀ u ∈ Icc 0 320, 0 ≤ pairedTailTest 160 u) ∧
    (¬ ∀ u ∈ Icc 0 320, pairedTailTest 160 u ≤ 0) := by
  constructor
  · simpa only [show (2 : ℝ) * 160 = 320 by norm_num] using
      pairedTailTest_not_nonneg_on (A := 160) (by norm_num)
  · simpa only [show (2 : ℝ) * 160 = 320 by norm_num] using
      pairedTailTest_not_nonpos_on (A := 160) (by norm_num)

example {A : ℝ} (hA : 1 ≤ A) :
    (∫ u in 0..2 * A, pairedTailTest A u) =
      negativeTimeMean A - criticalContinuousMoment A :=
  pairedTailTest_integral_eq hA

example {A : ℝ} (hA : 1 ≤ A) :
    0 < negativeTimeMean A - criticalContinuousMoment A :=
  pairedTailTest_drift_pos hA
