import FormalResearch.RiemannHypothesis.SourceCriticalDecayWork
import FormalResearch.RiemannHypothesis.SourcePairedTailQuadrature

/-!
# Actual critical-decay removal with a bounded independent correction

The literal prime error minus the independent decay retains both source phases.
The remainder is specified from source, mean, prime-square correction and higher
powers before its exact residual identity. Its boundedness and unchanged-tail
equivalence construct no signed lower witness. Complete drift, closed prime
windows, endpoint minus one and its paired plus-one compensation remain explicit.
The normalizing derivative mass is P+1, distinct from the integer cutoff. This
maintained research-branch candidate has no accepted-main or RH proof claim.

AI attribution: developed with OpenAI Codex; Lean checks the proof terms.
-/

set_option autoImplicit false
set_option backward.isDefEq.respectTransparency false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceCriticalRemovedPrimeWork

open MeasureTheory
open scoped Interval
open SourceCriticalDecayWork SourcePairedPrimeWork SourcePairedPrimeAverages
open SourceFirstPrimeAbel SourcePrimeSquareTailWork SourcePrimeSquareMainTerm
open SourceDiagonalMainTerm SourcePairedTailTest SourcePairedTailQuadrature WeightedPrimeAbel
open SourcePrimePowerPartition
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateMertensResidual

/-- Both literal source phases use the same independently specified error minus decay. -/
def criticalRemovedPairedWork (A : ℝ) : ℝ :=
  (∫ u in 0..2*A, (primeLogError u-criticalDecay u)*positiveSlope A u) -
    positiveMass A * ((∫ u in 0..2*A,
      (primeLogError u-criticalDecay u)*negativeSlope A u) / negativeMass A)

/-- Independently specified source/arithmetic corrections; no residual defines these data. -/
def criticalRemovedRemainder (A : ℝ) : ℝ :=
  criticalContinuousMoment A + negativeErrorMean A +
    (primeSquareMoment A-diagonalMainCoefficient A*A) + 1 -
      criticalDecayNegativeMean A + higherPrimePowerMoment A

/-- The new source-specific lower frontier is an open proposition, not a witness. -/
def CriticalRemovedPairedTailLowerBound : Prop :=
  ∃ D : ℝ, 0 ≤ D ∧ ∃ R : ℝ, 1 ≤ R ∧ ∀ A : ℝ, R ≤ A →
    -D ≤ criticalRemovedPairedWork A

private theorem decay_continuous : Continuous criticalDecay := by
  unfold criticalDecay
  fun_prop

private theorem decay_hasDerivAt (u : ℝ) :
    HasDerivAt criticalDecay (-criticalDecay u/2) u := by
  convert ((hasDerivAt_id u).const_mul (-1/2 : ℝ)).exp using 1
  · funext x
    simp only [criticalDecay, id_eq]
    congr 1
    ring
  · simp only [criticalDecay, id_eq]
    ring

private theorem removed_eq_contrast_work_mean {A : ℝ} (hA : 1 ≤ A) :
    criticalRemovedPairedWork A =
      pairedErrorContrast A-(criticalDecayWork A+criticalDecayNegativeMean A) := by
  have hp : 0 < A := by linarith
  have hip : IntervalIntegrable (fun u => criticalDecay u*positiveSlope A u)
      volume 0 (2*A) :=
    (decay_continuous.mul (positiveSlope_continuous hp)).intervalIntegrable
      (μ := volume) 0 (2*A)
  have hin : IntervalIntegrable (fun u => criticalDecay u*negativeSlope A u)
      volume 0 (2*A) :=
    (decay_continuous.mul (negativeSlope_continuous hp)).intervalIntegrable
      (μ := volume) 0 (2*A)
  have hw : criticalDecayWork A =
      (∫ u in 0..2*A, criticalDecay u*positiveSlope A u) -
        (∫ u in 0..2*A, criticalDecay u*negativeSlope A u) := by
    rw [← intervalIntegral.integral_sub hip hin]
    simp_rw [← mul_sub, slope_difference]
    rfl
  unfold criticalRemovedPairedWork
  simp_rw [sub_mul]
  rw [intervalIntegral.integral_sub (positiveSlopeWork_intervalIntegrable hp) hip,
    intervalIntegral.integral_sub (negativeSlopeWork_intervalIntegrable hp) hin,
    pairedErrorContrast_eq hA]
  unfold criticalDecayNegativeMean negativeErrorMean positiveSlopeWork negativeSlopeWork
  rw [hw, negativeMass_eq_positive_add_one hA]
  have hn : positiveMass A+1 ≠ 0 := by
    rw [← negativeMass_eq_positive_add_one hA]
    exact (negativeMass_pos hA).ne'
  field_simp [hn]
  ring

/-- The independently derived main term retains its exact endpoint compensation. -/
theorem criticalRemovedPairedWork_eq {A : ℝ} (hA : 1 ≤ A) :
    criticalRemovedPairedWork A = pairedErrorContrast A-diagonalMainCoefficient A*A+
      1-criticalDecayNegativeMean A := by
  rw [removed_eq_contrast_work_mean hA, criticalDecayWork_eq_main hA]
  ring

/-- Complete square baseline and both means cancel only between the two signed readouts. -/
theorem criticalRemovedPairedWork_eq_squareRemoved {A : ℝ} (hA : 1 ≤ A) :
    criticalRemovedPairedWork A =
      squareRemovedPairedWork A+squareMinusDecayPairedWork A := by
  rw [criticalRemovedPairedWork_eq hA, squareRemovedPairedWork_eq hA,
    squareTailPairedWork_eq_work_add_mean hA, squareTailWork_eq hA,
    squareMinusDecayPairedWork_eq hA]
  ring

/-- The literal unchanged residual equals the negative new readout plus independent data. -/
theorem mertensResidual_eq_criticalRemoved {A : ℝ} (hA : 1 ≤ A) :
    mertensResidual A = -criticalRemovedPairedWork A+criticalRemovedRemainder A := by
  rw [mertensResidual_eq_closedPrimeMoment A hA, closedPrimeMoment_eq_first_square_higher,
    firstPrimeMoment_eq_continuous_sub_work A hA,
    criticalSignedWork_eq_contrast_sub_mean hA, criticalRemovedPairedWork_eq hA]
  unfold criticalRemovedRemainder
  ring

/-- Only the independent correction components have a uniform budget. -/
theorem criticalRemovedRemainder_uniformly_bounded :
    ∃ C : ℝ, 0 ≤ C ∧ ∀ A : ℝ, 1 ≤ A → |criticalRemovedRemainder A| ≤ C := by
  obtain ⟨B, hB0, hB⟩ := negativeErrorMean_uniformly_bounded
  obtain ⟨C, hC0, _, hC⟩ := primeSquareMoment_uniform_main_term_error
  have hP := higherPrimePowerBudget_nonneg
  refine ⟨3+B+11*C+higherPrimePowerBudget, by linarith, ?_⟩
  intro A hA
  have hh := criticalDecayNegativeMean_mem_Icc hA
  have hhm : |1-criticalDecayNegativeMean A| ≤ 1 :=
    abs_le.mpr ⟨by linarith, by linarith⟩
  have he : criticalRemovedRemainder A =
      criticalContinuousMoment A+negativeErrorMean A+
        (primeSquareMoment A-diagonalMainCoefficient A*A)+
          (1-criticalDecayNegativeMean A)+higherPrimePowerMoment A := by
    unfold criticalRemovedRemainder
    ring
  rw [he]
  calc
    _ ≤ |criticalContinuousMoment A+negativeErrorMean A+
          (primeSquareMoment A-diagonalMainCoefficient A*A)+
            (1-criticalDecayNegativeMean A)|+|higherPrimePowerMoment A| := abs_add_le _ _
    _ ≤ |criticalContinuousMoment A+negativeErrorMean A+
          (primeSquareMoment A-diagonalMainCoefficient A*A)|+
            |1-criticalDecayNegativeMean A|+|higherPrimePowerMoment A| :=
      add_le_add (abs_add_le _ _) (le_refl _)
    _ ≤ |criticalContinuousMoment A+negativeErrorMean A|+
          |primeSquareMoment A-diagonalMainCoefficient A*A|+
            |1-criticalDecayNegativeMean A|+|higherPrimePowerMoment A| :=
      add_le_add (add_le_add (abs_add_le _ _) (le_refl _)) (le_refl _)
    _ ≤ |criticalContinuousMoment A|+|negativeErrorMean A|+
          |primeSquareMoment A-diagonalMainCoefficient A*A|+
            |1-criticalDecayNegativeMean A|+|higherPrimePowerMoment A| :=
      add_le_add (add_le_add (add_le_add (abs_add_le _ _) (le_refl _)) (le_refl _))
        (le_refl _)
    _ ≤ 2+B+11*C+1+higherPrimePowerBudget :=
      add_le_add (add_le_add (add_le_add (add_le_add
        (criticalContinuousMoment_abs_le_two A hA) (hB A hA)) (hC A hA)) hhm)
          (higherPrimePowerMoment_abs_le A hA)
    _ = _ := by ring

/-- Exact equivalence transports the original target but proves neither signed witness. -/
theorem criticalRemoved_tail_iff_residual_tail :
    CriticalRemovedPairedTailLowerBound ↔ MertensResidualTailUpperBound := by
  obtain ⟨C, hC0, hC⟩ := criticalRemovedRemainder_uniformly_bounded
  constructor
  · rintro ⟨D, hD0, R, hR, h⟩
    refine ⟨D+C, by linarith, R, hR, ?_⟩
    intro A hRA
    have hA : 1 ≤ A := hR.trans hRA
    rw [mertensResidual_eq_criticalRemoved hA]
    have hF := (abs_le.mp (hC A hA)).2
    linarith [h A hRA]
  · rintro ⟨D, hD0, R, hR, h⟩
    refine ⟨D+C, by linarith, R, hR, ?_⟩
    intro A hRA
    have hA : 1 ≤ A := hR.trans hRA
    have hF := (abs_le.mp (hC A hA)).1
    have hr := h A hRA
    rw [mertensResidual_eq_criticalRemoved hA] at hr
    linarith

/-- The full time-mean minus continuous-half drift precedes all source correction terms. -/
theorem criticalRemovedPairedWork_eq_prime_quadrature {A : ℝ} (hA : 1 ≤ A) :
    criticalRemovedPairedWork A = primeLogSum (2*A) (pairedTailTest A) -
      (negativeTimeMean A-criticalContinuousMoment A)-diagonalMainCoefficient A*A+
        1-criticalDecayNegativeMean A := by
  rw [criticalRemovedPairedWork_eq hA, pairedErrorContrast_eq_prime_quadrature hA]

/-- Exact oriented intervals retain the closed-prefix prime window and independent density. -/
theorem criticalRemoved_error_window (s t : ℝ) :
    (primeLogError s-criticalDecay s)-(primeLogError t-criticalDecay t) =
      primeLogWindow t s (fun _ => 1)-∫ u in t..s, (1-criticalDecay u/2) := by
  have hd (u : ℝ) : HasDerivAt (fun x => x+criticalDecay x) (1-criticalDecay u/2) u := by
    convert (hasDerivAt_id u).add (decay_hasDerivAt u) using 1 <;>
      first | rfl | ring
  have hi : IntervalIntegrable (fun u => 1-criticalDecay u/2) volume t s :=
    (continuous_const.sub (decay_continuous.div_const 2)).intervalIntegrable (μ := volume) t s
  have hf := intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun u _ => hd u) hi
  rw [hf]
  have he := primeError_difference_window s t
  linarith

end FormalResearch.RiemannHypothesis.SourceCriticalRemovedPrimeWork
