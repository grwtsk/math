import SourceCutoffOneLedger
import SourceSharpDiagonalLedgerConsumer
import SourceProperPowerMertens

/-! Actual cutoff-one consumers with complete proper powers, zero lower Abel
error, exact physical tail energy, and the whole-axis sampling term at one.
Direction and conceptual origin: grwtsk contributors.
Source consumer construction and native formalization: OpenAI Codex assistance.
The independent cutoff-one baseline is not bounded by these source identities. -/
set_option autoImplicit false
noncomputable section
namespace RH16CutoffOneSharpTail
open MeasureTheory
open scoped BigOperators Interval
open RH16ProperPowerMertens RH16ProperPowerDiagonal RH16ExactTailEnergy
open RH16SharpDiagonalTail RH16SharpDiagonalLedgerConsumer RH16ExactSamplingTail
open RH16ExactOverlapSamplingConsumer
open FormalResearch.RiemannHypothesis
open SourceCutoffOneLedger SourceDiagonalPrimeAbel SourceDiagonalMainTerm
open WeightedPrimeAbel WeightedPrimeMertens SourcePairing SourceSamplingLedger
open SourceCutoffFlux SourceSamplingPointwise
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateVaughanSource EstimateBetaSourceRecombination

/-- The full cutoff-one diagonal pays the zero-error lower prime endpoint exactly. -/
def cutoffOneSharpDiagonalCost (Q : ℝ) : ℝ :=
  3 / 2 + 2 * (Real.log 4 + 4) * Real.sqrt (tailEnergyCoefficient Q)

/-- Simultaneous source diagonal and genuine sampling-at-one contributions. -/
def cutoffOneSharpLedgerCost (Q : ℝ) : ℝ :=
  cutoffOneSharpDiagonalCost Q + 96 * tailEnergyCoefficient Q / Q ^ 2

theorem cutoffOneDiagonal_sub_prime_le_three_halves (A : ℝ) (hA : 1 ≤ A) :
    |cutoffOneDiagonal A - cutoffOnePrimeDiagonal A| ≤ 3 / 2 :=
  (cutoffOneDiagonal_sub_prime_abs_le A hA).trans
    (weighted_difference_le_three_halves (sourceKernelCutoff A))

/-- Both Abel boundary errors vanish: primeLogError(0)=0 and C_A(2A)=0. -/
theorem cutoffOnePrimeDiagonal_tail_error {Q A : ℝ} (hQ : 1 ≤ Q) (hQA : Q ≤ A) :
    |cutoffOnePrimeDiagonal A + diagonalMainCoefficient A * A| ≤
      2 * (Real.log 4 + 4) * Real.sqrt (tailEnergyCoefficient Q) := by
  have hA : 1 ≤ A := hQ.trans hQA
  have hF := diagonalCorrelation_contDiff A (by linarith : 0 < A)
  have hE0 : primeLogError 0 = 0 := by simp [primeLogError, primeLogPrefix_zero]
  have he := primeLogWindow_sub_integral 0 A (by norm_num) (by linarith) (diagonalCorrelation A) hF
  rw [diagonalCorrelation_at_upper A (by linarith), hE0, zero_mul, mul_zero,
    sub_zero, zero_sub, diagonalCorrelation_integral A hA] at he
  have hi := primeLogError_mul_deriv_intervalIntegrable 0 A (by linarith) (diagonalCorrelation A) hF
  have hmajor : IntervalIntegrable
      (fun t => (Real.log 4 + 4) * |deriv (diagonalCorrelation A) t|) volume 0 A :=
    (hF.continuous_deriv_one.abs.intervalIntegrable 0 A).const_mul _
  have hm : (∫ t in 0..A, |primeLogError t * deriv (diagonalCorrelation A) t|) ≤
      ∫ t in 0..A, (Real.log 4 + 4) * |deriv (diagonalCorrelation A) t| := by
    apply intervalIntegral.integral_mono_on (by linarith) hi.abs hmajor
    intro t ht
    rw [abs_mul]
    exact mul_le_mul_of_nonneg_right (actual_primeLogError_fixed t ht.1) (abs_nonneg _)
  rw [cutoffOnePrimeDiagonal_eq_window A hA]
  have heq : -primeLogWindow 0 A (diagonalCorrelation A) + diagonalMainCoefficient A * A =
      ∫ t in 0..A, primeLogError t * deriv (diagonalCorrelation A) t := by linarith
  rw [heq]
  calc
    _ ≤ ∫ t in 0..A, |primeLogError t * deriv (diagonalCorrelation A) t| :=
      intervalIntegral.abs_integral_le_integral_abs (by linarith)
    _ ≤ _ := hm
    _ = (Real.log 4 + 4) * (∫ t in 0..A, |deriv (diagonalCorrelation A) t|) :=
      intervalIntegral.integral_const_mul _ _
    _ ≤ (Real.log 4 + 4) * (2 * Real.sqrt (tailEnergyCoefficient Q)) :=
      mul_le_mul_of_nonneg_left (diagonal_variation_le_tail hQ hQA (by norm_num) (by linarith) le_rfl)
        (by positivity)
    _ = _ := by ring

theorem cutoffOneDiagonal_tail_error {Q A : ℝ} (hQ : 1 ≤ Q) (hQA : Q ≤ A) :
    |cutoffOneDiagonal A + diagonalMainCoefficient A * A| ≤ cutoffOneSharpDiagonalCost Q := by
  have hproper := cutoffOneDiagonal_sub_prime_le_three_halves A (hQ.trans hQA)
  have hprime := cutoffOnePrimeDiagonal_tail_error hQ hQA
  have htri := abs_add_le (cutoffOneDiagonal A - cutoffOnePrimeDiagonal A)
    (cutoffOnePrimeDiagonal A + diagonalMainCoefficient A * A)
  unfold cutoffOneSharpDiagonalCost
  convert htri.trans (add_le_add hproper hprime) using 1 <;> ring

theorem cutoffOneSamplingError_tail {Q A : ℝ} (hQ : 1 ≤ Q) (hQA : Q ≤ A) :
    |cutoffOneSamplingError A| ≤ 96 * tailEnergyCoefficient Q / A ^ 2 := by
  simpa [cutoffOneSamplingError] using sourceMobiusKernel_sub_mainTerm_abs_le_tail
    hQ hQA (show (1 : ℝ) ≤ 1 by norm_num)

theorem cutoffOneLedgerError_tail {Q A : ℝ} (hQ : 1 ≤ Q) (hQA : Q ≤ A) :
    |cutoffOneLedgerError A| ≤ cutoffOneSharpLedgerCost Q := by
  have hd := cutoffOneDiagonal_tail_error hQ hQA
  have hs := cutoffOneSamplingError_tail hQ hQA
  have hm : 96 * tailEnergyCoefficient Q / A ^ 2 ≤
      96 * tailEnergyCoefficient Q / Q ^ 2 :=
    div_le_div_of_nonneg_left (by positivity) (by positivity) (by nlinarith)
  unfold cutoffOneLedgerError cutoffOneSharpLedgerCost
  exact (abs_add_le _ _).trans (add_le_add hd (hs.trans hm))

theorem actual_cumulative_jointFlux_tail {Q A : ℝ} (hQ : 91 ≤ Q) (hQA : Q ≤ A) :
    |∑ j ∈ Finset.Ico 1 (vaughanCutoff A), jointFlux A j (sourceKernelCutoff A)| ≤
      cutoffOneSharpLedgerCost Q + exactSamplingLedgerCost (sharpDiagonalCost Q) Q := by
  have hQ1 : (1 : ℝ) ≤ Q := by linarith
  rw [actual_cumulative_jointFlux_eq A (hQ1.trans hQA)]
  exact (abs_sub _ _).trans (add_le_add (cutoffOneLedgerError_tail hQ1 hQA)
    (actual_ledger_error_tail Q hQ A hQA))

theorem cutoffOneSharpDiagonalCost_ninety_one_lt_26 : cutoffOneSharpDiagonalCost 91 < 26 := by
  have hC : Real.log 4 + 4 < (27 / 5 : ℝ) := by
    have hp := Real.log_pow (2 : ℝ) 2
    norm_num at hp
    linarith [Real.log_two_lt_d9]
  have hs : Real.sqrt (tailEnergyCoefficient 91) < (56 / 25 : ℝ) := by
    apply (Real.sqrt_lt' (by norm_num : (0 : ℝ) < 56 / 25)).mpr
    exact tailEnergyCoefficient_ninety_one_lt_five.trans (by norm_num)
  have hm := mul_le_mul hC.le hs.le (Real.sqrt_nonneg _) (by norm_num : (0 : ℝ) ≤ 27 / 5)
  unfold cutoffOneSharpDiagonalCost
  nlinarith

end RH16CutoffOneSharpTail
