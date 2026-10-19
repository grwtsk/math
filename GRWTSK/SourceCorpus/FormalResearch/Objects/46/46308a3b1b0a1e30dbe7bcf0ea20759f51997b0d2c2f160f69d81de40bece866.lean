import SourceCutoffFlux
import FormalResearch.RiemannHypothesis.SourceDiagonalPrimeAbel
import FormalResearch.RiemannHypothesis.SourceDiagonalMainTerm

/-!
# Literal cutoff-one ledger and independent baseline

UNCOMPILED preparation. The finite Vaughan theorem is specialized at U=V=1,
while the upper cutoff remains floor(exp(2*A)). The independently defined
mainTermAt is retained. Only the complete signed cumulative cutoff flux is
bounded; no eventwise absolute estimate or baseline upper bound is supplied.

AI attribution: developed with OpenAI Codex from the recorded source APIs.
-/

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceCutoffOneLedger

open ArithmeticFunction MeasureTheory
open scoped BigOperators Interval
open SourcePairing SourceCutoffFlux SourceSamplingLedger SourceSamplingPointwise
open SourceShortSamplingPointwise SourceDiagonalPrimeAbel SourceDiagonalMainTerm
open WeightedPrimeAbel WeightedPrimeMertens
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity EstimatePlainKernel EstimateSourceMobiusKernel
open EstimateVaughanIdentity EstimateVaughanSource EstimateBetaCentering EstimateMertensAbel
open EstimateBetaSourceRecombination EstimateVaughanTranslationGate EstimateMertensResidual

noncomputable section

/-- The actual deleted equality-of-indices term on both strict cutoff-one axes. -/
def cutoffOneDiagonal (A : ℝ) : ℝ :=
  diagonal (Finset.Ioc 1 (sourceKernelCutoff A)) (sourceKernel A) (beta 1)

/-- The prime sector retains the literal upper inventory before support reduction. -/
def cutoffOnePrimeDiagonal (A : ℝ) : ℝ :=
  -∑ p ∈ (Finset.Ioc 1 (sourceKernelCutoff A)).filter Nat.Prime,
    Real.log (p : ℝ) / (p : ℝ) * diagonalCorrelation A (Real.log p)

/-- The original logarithmic short row at one minus its independent sampling row. -/
def cutoffOneSamplingError (A : ℝ) : ℝ :=
  sourceMobiusKernel A 1 - sourceLogSamplingMainTerm A 1

/-- This ledger error is defined from the diagonal and sampling data, before any residual. -/
def cutoffOneLedgerError (A : ℝ) : ℝ :=
  cutoffOneDiagonal A + diagonalMainCoefficient A * A + cutoffOneSamplingError A

/-- The raw row at every long cutoff-one index is minus one, including composite indices. -/
theorem beta_one_of_one_lt (n : ℕ) (hn : 1 < n) : beta 1 n = -1 := by
  rw [beta_eq_delta_sub_short, if_neg (by omega), zero_sub,
    short_divisor_sum_eq_indicator 1 n (by omega)]
  norm_num

/-- The square-product kernel gives 2 log m and division by m, rather than a norm diagonal. -/
theorem cutoffOneDiagonal_eq_mangoldt_sum (A : ℝ) :
    cutoffOneDiagonal A =
      -∑ m ∈ Finset.Ioc 1 (sourceKernelCutoff A),
        vonMangoldt m / (m : ℝ) * diagonalCorrelation A (Real.log m) := by
  unfold cutoffOneDiagonal diagonal
  rw [← Finset.sum_neg_distrib]
  apply Finset.sum_congr rfl
  intro m hm
  have hm1 : 1 < m := (Finset.mem_Ioc.mp hm).1
  have hmpos : 0 < (m : ℝ) := by exact_mod_cast (by omega : 0 < m)
  rw [beta_one_of_one_lt m hm1]
  unfold sourceKernel sourcePlainWeight diagonalCorrelation
  rw [Nat.cast_mul, Real.log_mul hmpos.ne' hmpos.ne', ← pow_two,
    Real.sqrt_sq hmpos.le]
  rw [show Real.log (m : ℝ) + Real.log (m : ℝ) = 2 * Real.log m by ring]
  ring

/-- Prime support reduces the original N_A inventory to exactly the window [0,A]. -/
theorem cutoffOnePrimeDiagonal_eq_window (A : ℝ) (hA : 1 ≤ A) :
    cutoffOnePrimeDiagonal A = -primeLogWindow 0 A (diagonalCorrelation A) := by
  classical
  have hMN : ⌊Real.exp A⌋₊ ≤ sourceKernelCutoff A := by
    unfold sourceKernelCutoff sourceUpper
    exact Nat.floor_le_floor (Real.exp_le_exp.mpr (by linarith : A ≤ 2 * A))
  have hsub : (Finset.Ioc 1 ⌊Real.exp A⌋₊).filter Nat.Prime ⊆
      (Finset.Ioc 1 (sourceKernelCutoff A)).filter Nat.Prime := by
    intro p hp
    have hp' := Finset.mem_filter.mp hp
    exact Finset.mem_filter.mpr ⟨Finset.mem_Ioc.mpr
      ⟨(Finset.mem_Ioc.mp hp'.1).1, (Finset.mem_Ioc.mp hp'.1).2.trans hMN⟩, hp'.2⟩
  have hs := Finset.sum_subset hsub
    (f := fun p : ℕ ↦ Real.log (p : ℝ) / (p : ℝ) * diagonalCorrelation A (Real.log p))
    (by
      intro p hp hpnot
      have hp' := Finset.mem_filter.mp hp
      have hpR : 0 < (p : ℝ) := by exact_mod_cast hp'.2.pos
      have hMp : ⌊Real.exp A⌋₊ < p := by
        by_contra h
        exact hpnot (Finset.mem_filter.mpr ⟨Finset.mem_Ioc.mpr
          ⟨(Finset.mem_Ioc.mp hp'.1).1, Nat.not_lt.mp h⟩, hp'.2⟩)
      have hlog : A < Real.log (p : ℝ) :=
        (Real.lt_log_iff_exp_lt hpR).mpr ((Nat.floor_lt (Real.exp_pos A).le).mp hMp)
      have hzero : diagonalCorrelation A (Real.log p) = 0 := by
        apply sourceCorrelation_eq_zero_of_two_mul_le_abs A (2 * Real.log p) (by linarith)
        rw [abs_of_pos (by linarith : 0 < 2 * Real.log (p : ℝ))]
        linarith
      rw [hzero, mul_zero])
  rw [primeLogWindow_eq_interval_sum 0 A (by linarith)]
  simp only [Real.exp_zero, Nat.floor_one]
  unfold cutoffOnePrimeDiagonal
  rw [← hs]

/-- Proper prime powers remain as a signed correlation sum; they are not discarded. -/
theorem cutoffOneDiagonal_sub_prime_eq (A : ℝ) :
    cutoffOneDiagonal A - cutoffOnePrimeDiagonal A =
      -∑ m ∈ Finset.Ioc 1 (sourceKernelCutoff A),
        properPowerCoefficient m / (m : ℝ) * diagonalCorrelation A (Real.log m) := by
  classical
  rw [cutoffOneDiagonal_eq_mangoldt_sum]
  unfold cutoffOnePrimeDiagonal
  rw [Finset.sum_filter]
  have hp : (∑ m ∈ Finset.Ioc 1 (sourceKernelCutoff A),
      if m.Prime then Real.log (m : ℝ) / (m : ℝ) *
        diagonalCorrelation A (Real.log m) else 0) =
      ∑ m ∈ Finset.Ioc 1 (sourceKernelCutoff A),
        primeCoefficient m / (m : ℝ) * diagonalCorrelation A (Real.log m) := by
    apply Finset.sum_congr rfl
    intro m _
    by_cases hm : m.Prime <;> simp [primeCoefficient, hm]
  rw [hp]
  simp only [properPowerCoefficient, sub_div, sub_mul, Finset.sum_sub_distrib]
  ring

/-- The complete proper-power mass controls this replacement after its exact signed separation. -/
theorem cutoffOneDiagonal_sub_prime_abs_le (A : ℝ) (hA : 1 ≤ A) :
    |cutoffOneDiagonal A - cutoffOnePrimeDiagonal A| ≤
      weightedMangoldt (sourceKernelCutoff A) - weightedPrime (sourceKernelCutoff A) := by
  rw [cutoffOneDiagonal_sub_prime_eq, abs_neg, weighted_difference]
  calc
    _ ≤ ∑ m ∈ Finset.Ioc 1 (sourceKernelCutoff A),
        |properPowerCoefficient m / (m : ℝ) * diagonalCorrelation A (Real.log m)| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ m ∈ Finset.Ioc 1 (sourceKernelCutoff A),
        properPowerCoefficient m / (m : ℝ) := by
      apply Finset.sum_le_sum
      intro m _
      have hc : 0 ≤ properPowerCoefficient m / (m : ℝ) :=
        div_nonneg (properPowerCoefficient_nonneg m) (by positivity)
      rw [abs_mul, abs_of_nonneg hc]
      exact mul_le_of_le_one_right hc (diagonalCorrelation_abs_le_one A (Real.log m) hA)
    _ ≤ _ := by
      apply Finset.sum_le_sum_of_subset_of_nonneg
      · intro m hm
        exact Finset.mem_Ioc.mpr ⟨by have := (Finset.mem_Ioc.mp hm).1; omega,
          (Finset.mem_Ioc.mp hm).2⟩
      · intro m _ _
        exact div_nonneg (properPowerCoefficient_nonneg m) (by positivity)

/-- The cutoff-one prime main term has the smaller 11 CM budget, without a short-log window. -/
theorem cutoffOnePrimeDiagonal_main_term_error :
    ∃ CM : ℝ, 0 ≤ CM ∧ ∀ A : ℝ, 1 ≤ A →
      |cutoffOnePrimeDiagonal A + diagonalMainCoefficient A * A| ≤ 11 * CM := by
  obtain ⟨CM, hCM0, hCM⟩ := primeLogWindow_uniform_error_le
  refine ⟨CM, hCM0, ?_⟩
  intro A hA
  have he := hCM 0 A (by norm_num) (by linarith) (diagonalCorrelation A)
    (diagonalCorrelation_contDiff A (by linarith))
  have hv := diagonalCorrelation_variation_le A 0 A hA (by norm_num) (by linarith) le_rfl
  rw [diagonalCorrelation_at_zero A hA, diagonalCorrelation_at_upper A (by linarith),
    abs_one, abs_zero, add_zero, diagonalCorrelation_integral A hA] at he
  rw [cutoffOnePrimeDiagonal_eq_window A hA]
  have hh : |-primeLogWindow 0 A (diagonalCorrelation A) + diagonalMainCoefficient A * A| =
      |primeLogWindow 0 A (diagonalCorrelation A) - diagonalMainCoefficient A * A| := by
    rw [← abs_neg]
    congr 1
    ring
  rw [hh]
  nlinarith

/-- The diagonal has independently supplied proper-power and prime-Abel budgets. -/
theorem cutoffOneDiagonal_main_term_error :
    ∃ Cpp CM : ℝ, 0 ≤ Cpp ∧ 0 ≤ CM ∧ ∀ A : ℝ, 1 ≤ A →
      |cutoffOneDiagonal A + diagonalMainCoefficient A * A| ≤ Cpp + 11 * CM := by
  obtain ⟨Cpp, hCpp0, hCpp⟩ := weighted_difference_uniformly_bounded
  obtain ⟨CM, hCM0, hCM⟩ := cutoffOnePrimeDiagonal_main_term_error
  refine ⟨Cpp, CM, hCpp0, hCM0, ?_⟩
  intro A hA
  have hN : 1 ≤ sourceKernelCutoff A :=
    (vaughanCutoff_pos A hA).trans (vaughanCutoff_le_sourceKernelCutoff A hA)
  have hd := (cutoffOneDiagonal_sub_prime_abs_le A hA).trans (hCpp _ hN).2
  calc
    _ = |(cutoffOneDiagonal A - cutoffOnePrimeDiagonal A) +
        (cutoffOnePrimeDiagonal A + diagonalMainCoefficient A * A)| := by congr 1; ring
    _ ≤ _ := abs_add_le _ _
    _ ≤ _ := add_le_add hd (hCM A hA)

/-- Sampling at one keeps the entire interval below one and its signed coefficients in the owner. -/
theorem cutoffOneSamplingError_abs_le (A : ℝ) (hA : 1 ≤ A) :
    |cutoffOneSamplingError A| ≤ samplingInventoryError := by
  have he := sourceMobiusKernel_sub_mainTerm_abs_le hA (le_refl (1 : ℝ))
  simp only [Real.sqrt_one, mul_one] at he
  have hsq : 1 ≤ A ^ 2 := by nlinarith
  exact he.trans (div_le_self samplingInventoryError_nonneg hsq)

/-- The ledger error is bounded; its independently defined baseline is separate. -/
theorem cutoffOneLedgerError_uniform_bound :
    ∃ Cpp CM : ℝ, 0 ≤ Cpp ∧ 0 ≤ CM ∧ ∀ A : ℝ, 1 ≤ A →
      |cutoffOneLedgerError A| ≤ Cpp + 11 * CM + samplingInventoryError := by
  obtain ⟨Cpp, CM, hCpp0, hCM0, hD⟩ := cutoffOneDiagonal_main_term_error
  refine ⟨Cpp, CM, hCpp0, hCM0, ?_⟩
  intro A hA
  exact (abs_add_le _ _).trans (add_le_add (hD A hA) (cutoffOneSamplingError_abs_le A hA))

/-- Only the explicit inventories specialize in the pre-existing independent main term. -/
theorem mainTermAt_one_formula (A : ℝ) (N : ℕ) :
    mainTermAt A 1 N = plainOffAt A 1 N + diagonalMainCoefficient A * A -
      sourceLogSamplingMainTerm A 1 := by
  simp [mainTermAt, alpha, shortMangoldtAt, shortLogSamplingAt, shortPlainSamplingAt,
    realMoebius]

/-- At cutoff one the raw off-diagonal row is the negative coefficient-one interaction. -/
theorem uncenteredOffAt_one (A : ℝ) (N : ℕ) :
    uncenteredOffAt A 1 N = -plainOffAt A 1 N := by
  have hc := centeredOffAt_eq_uncentered_add_mean A 1 N
  have hz : centeredOffAt A 1 N = 0 := by
    have hj := jointAt_one A N
    unfold jointAt at hj
    linarith
  norm_num [alpha] at hc
  rw [hz] at hc
  linarith

/-- The arbitrary finite Vaughan theorem retains both strict axes at U=V=1. -/
theorem residual_eq_cutoffOne_rectangle (A : ℝ) (hA : 1 ≤ A) :
    mertensResidual A = sourceMobiusKernel A 1 +
      rectangle (Finset.Ioc 1 (sourceKernelCutoff A)) (sourceKernel A) (beta 1) := by
  have hN : 1 ≤ sourceKernelCutoff A :=
    (vaughanCutoff_pos A hA).trans (vaughanCutoff_le_sourceKernelCutoff A hA)
  have hv := finite_vaughan_sum (sourceKernelCutoff A) 1 1 hN hN
    (fun n ↦ sourcePlainWeight A n) (sourcePlainWeight_zero_of_cutoff_lt A hA)
  simp only [Finset.Icc_self, Finset.sum_singleton, vonMangoldt_apply_one,
    moebius_apply_one, Int.cast_one, one_mul, zero_mul, sub_zero, zero_add] at hv
  have ht := sourceMobiusKernel_eq_plainWeight A 1 (by norm_num)
  simp only [Nat.one_mul, Nat.cast_one] at ht
  rw [← ht] at hv
  rw [mertensResidual_eq_plainWeight_sum A hA]
  rw [hv]
  congr 1
  unfold rectangle sourceKernel
  apply Finset.sum_congr rfl
  intro m _
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro n _
  ring

/-- The residual retains the unchanged independent baseline plus bounded ledger error. -/
theorem residual_eq_cutoffOne_joint_add_error (A : ℝ) (hA : 1 ≤ A) :
    mertensResidual A = jointAt A 1 (sourceKernelCutoff A) + cutoffOneLedgerError A := by
  have hr := residual_eq_cutoffOne_rectangle A hA
  have ho := uncenteredOffAt_one A (sourceKernelCutoff A)
  have hj := jointAt_one A (sourceKernelCutoff A)
  rw [mainTermAt_one_formula] at hj
  unfold uncenteredOffAt offDiagonal at ho
  change rectangle (Finset.Ioc 1 (sourceKernelCutoff A)) (sourceKernel A) (beta 1) -
    cutoffOneDiagonal A = -plainOffAt A 1 (sourceKernelCutoff A) at ho
  unfold cutoffOneLedgerError cutoffOneSamplingError
  linarith

/-- All cutoff events reconstruct one signed difference of independently bounded ledgers. -/
theorem actual_cumulative_jointFlux_eq (A : ℝ) (hA : 1 ≤ A) :
    (∑ j ∈ Finset.Ico 1 (vaughanCutoff A), jointFlux A j (sourceKernelCutoff A)) =
      cutoffOneLedgerError A - (betaMainLedger A + independentMainTerm A) := by
  have h1 := residual_eq_cutoffOne_joint_add_error A hA
  rw [jointAt_one] at h1
  have ha := actual_residual_decomposition A hA
  rw [actual_joint_eq_baseline_add_flux A hA] at ha
  linarith

/-- The whole signed cumulative flux is bounded; individual absolute event costs are absent. -/
theorem actual_cumulative_jointFlux_uniform_bound :
    ∃ C : ℝ, 0 ≤ C ∧ ∀ A : ℝ, 1 ≤ A →
      |∑ j ∈ Finset.Ico 1 (vaughanCutoff A), jointFlux A j (sourceKernelCutoff A)| ≤ C := by
  obtain ⟨Cpp, CM, hCpp0, hCM0, h1⟩ := cutoffOneLedgerError_uniform_bound
  obtain ⟨CF, hCF0, hF⟩ := actual_ledger_uniform_error
  refine ⟨Cpp + 11 * CM + samplingInventoryError + CF, by
    have := samplingInventoryError_nonneg
    positivity, ?_⟩
  intro A hA
  rw [actual_cumulative_jointFlux_eq A hA]
  exact (abs_sub _ _).trans (add_le_add (h1 A hA) (hF A hA))

/-- The exact open baseline upper target is equivalent to the original residual-tail target. -/
theorem cutoffOne_baseline_tail_iff_residualTail :
    (∃ D : ℝ, 0 ≤ D ∧ ∃ R : ℝ, 1 ≤ R ∧ ∀ A : ℝ, R ≤ A →
      -mainTermAt A 1 (sourceKernelCutoff A) ≤ D) ↔ MertensResidualTailUpperBound := by
  obtain ⟨Cpp, CM, hCpp0, hCM0, hF⟩ := cutoffOneLedgerError_uniform_bound
  let C := Cpp + 11 * CM + samplingInventoryError
  have hC0 : 0 ≤ C := by dsimp [C]; have := samplingInventoryError_nonneg; positivity
  constructor
  · rintro ⟨D, hD0, R, hR1, hD⟩
    refine ⟨D + C, add_nonneg hD0 hC0, R, hR1, ?_⟩
    intro A hA
    have hA1 := hR1.trans hA
    have he := residual_eq_cutoffOne_joint_add_error A hA1
    rw [jointAt_one] at he
    have hb := (abs_le.mp (hF A hA1)).2
    have := hD A hA
    dsimp [C]
    linarith
  · rintro ⟨D, hD0, R, hR1, hD⟩
    refine ⟨D + C, add_nonneg hD0 hC0, R, hR1, ?_⟩
    intro A hA
    have hA1 := hR1.trans hA
    have he := residual_eq_cutoffOne_joint_add_error A hA1
    rw [jointAt_one] at he
    have hb := (abs_le.mp (hF A hA1)).1
    have := hD A hA
    dsimp [C]
    linarith

end
end FormalResearch.RiemannHypothesis.SourceCutoffOneLedger
