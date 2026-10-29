import SourceCompleteOmegaPeanoAssembly

/-!
The next exploitation of the actual Peano and complete Omega reconstruction.
The compensated four-jet model and its residual are independently defined
from the actual source. Full complementary L and the discrete baseline remain.
The stable-kernel fourth-order analytic bound and a uniform signed arithmetic
upper witness are explicit premises until separately proved.
Research direction: grwtsk contributors. Formal construction: OpenAI Codex.
-/

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceCorrectedOmegaPeanoTaylor

open MeasureTheory Set
open scoped BigOperators
open SourcePairing SourcePeanoSignedShortJet SourceCompleteOmegaPeanoAssembly
open SourceCompleteOmegaReconstruction SourceFullDivisorLogInventory SourceCubicUpperLogMoments
open ContinuousResearch.ActualIntegerInventory ContinuousResearch.ActualArithmeticCalibration
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateVaughanSource EstimateSourceMobiusKernel EstimateMertensAbel
open EstimateMertensResidual

noncomputable section

/-- The stable inverse-square Taylor coefficients, before any arithmetic summation. -/
def peanoCubicCompensation (A t : ℝ) : ℝ :=
  4 * sourceCorrelation explicitSecondDerivative A t -
    16 * deriv (sourceCorrelation explicitSecondDerivative A) t +
    48 * deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t -
    128 * deriv (deriv (deriv (sourceCorrelation explicitSecondDerivative A))) t

/-- Actual source remainder; neither Omega nor the original residual defines it. -/
def actualPeanoCubicRemainder (A t : ℝ) : ℝ :=
  actualLocalPeanoProfile A t - peanoCubicCompensation A t

/-- All four retained upper coefficients plus their local Peano compensation. -/
def correctedFourKappaJet (A t : ℝ) : ℝ :=
  peanoCubicCompensation A t + actualFourKappaJet A t

/-- Independent complete corrected expression, with all signed short rows and full L-B. -/
def correctedCompleteOmega (A : ℝ) : ℝ :=
  (∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d / Real.sqrt (d : ℝ) *
    correctedFourKappaJet A (Real.log (d : ℝ))) +
      literalOmegaComplementarySector A - plainInventory A

/-- Full actual Peano remainder inventory through the unchanged U=floor(A^2). -/
def actualPeanoCubicError (A : ℝ) : ℝ :=
  ∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d / Real.sqrt (d : ℝ) *
    actualPeanoCubicRemainder A (Real.log (d : ℝ))

/-- Exact signed reconstruction keeps the actual source error independently specified. -/
theorem completeOmega_eq_corrected_add_actualPeanoError (A : ℝ) (hA : 1 ≤ A) :
    completeOmega A = correctedCompleteOmega A + actualPeanoCubicError A := by
  rw [completeOmega_eq_actual_signed_Peano_kappa A hA]
  unfold actualSignedPeanoKappaShortSector correctedCompleteOmega actualPeanoCubicError
  have hs :
      (∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d / Real.sqrt (d : ℝ) *
        (actualLocalPeanoProfile A (Real.log (d : ℝ)) +
          actualFourKappaJet A (Real.log (d : ℝ)))) =
      (∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d / Real.sqrt (d : ℝ) *
        correctedFourKappaJet A (Real.log (d : ℝ))) +
      (∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d / Real.sqrt (d : ℝ) *
        actualPeanoCubicRemainder A (Real.log (d : ℝ))) := by
    rw [← Finset.sum_add_distrib]
    apply Finset.sum_congr rfl
    intro d _
    unfold correctedFourKappaJet actualPeanoCubicRemainder
    ring
  rw [hs]
  ring

/-- A separately proved actual row remainder bound costs exactly 640*67/A^3. -/
theorem actualPeanoCubicError_abs_le_of_actual_row_bound (A : ℝ) (hA : 1 ≤ A)
    (hrow : ∀ d ∈ Finset.Icc 1 (vaughanCutoff A),
      |actualPeanoCubicRemainder A (Real.log (d : ℝ))| ≤ 320 * 67 / A ^ 4) :
    |actualPeanoCubicError A| ≤ 640 * 67 / A ^ 3 := by
  have hc : 0 ≤ 320 * 67 / A ^ 4 := by positivity
  unfold actualPeanoCubicError
  calc
    _ ≤ ∑ d ∈ Finset.Icc 1 (vaughanCutoff A),
        |realMoebius d / Real.sqrt (d : ℝ) *
          actualPeanoCubicRemainder A (Real.log (d : ℝ))| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ d ∈ Finset.Icc 1 (vaughanCutoff A),
        (320 * 67 / A ^ 4) * (|realMoebius d| / Real.sqrt (d : ℝ)) := by
      apply Finset.sum_le_sum
      intro d hd
      rw [abs_mul, abs_div, abs_of_nonneg (Real.sqrt_nonneg _)]
      apply (mul_le_mul_of_nonneg_left (hrow d hd) (by positivity)).trans
      exact le_of_eq (by ring)
    _ = (320 * 67 / A ^ 4) *
        (∑ d ∈ Finset.Icc 1 (vaughanCutoff A), |realMoebius d| / Real.sqrt (d : ℝ)) :=
      (Finset.mul_sum _ _ _).symm
    _ ≤ (320 * 67 / A ^ 4) * (2 * A) :=
      mul_le_mul_of_nonneg_left (actualMoebiusSqrtMass_le A hA) hc
    _ = _ := by
      field_simp [show A ≠ 0 by linarith]
      ring

/-- The combined actual short Peano and cubic errors retain both inventories. -/
theorem integerJ_sub_corrected_abs_le_of_actual_row_bound (A : ℝ) (hA : 91 ≤ A)
    (hrow : ∀ d ∈ Finset.Icc 1 (vaughanCutoff A),
      |actualPeanoCubicRemainder A (Real.log (d : ℝ))| ≤ 320 * 67 / A ^ 4) :
    |integerJ A - correctedCompleteOmega A| ≤ 960 * 67 / A ^ 3 := by
  rw [integerJ_eq_completeOmega_add_error A hA,
    completeOmega_eq_corrected_add_actualPeanoError A (by linarith)]
  have hid : correctedCompleteOmega A + actualPeanoCubicError A + completeOmegaError A -
      correctedCompleteOmega A = actualPeanoCubicError A + completeOmegaError A := by ring
  rw [hid]
  have ht := abs_add_le (actualPeanoCubicError A) (completeOmegaError A)
  have hp := actualPeanoCubicError_abs_le_of_actual_row_bound A (by linarith) hrow
  have he := completeOmegaError_abs_le A hA
  have hs : 640 * 67 / A ^ 3 + 320 * 67 / A ^ 3 = 960 * 67 / A ^ 3 := by ring
  rw [← hs]
  exact ht.trans (add_le_add hp he)

/-- The new combined numerical cost requires the real-scale cutoff 117. -/
theorem combined_corrected_calibration_budget_lt (A : ℝ) (hA : 117 ≤ A) :
    260 / A ^ 2 + 960 * 67 / A ^ 3 < 3 / 50 := by
  have hAp : 0 < A := by linarith
  have hA2 : (117 : ℝ) ^ 2 ≤ A ^ 2 := by nlinarith
  have hA3 : (117 : ℝ) ^ 3 ≤ A ^ 3 := by nlinarith [sq_nonneg (A - 117)]
  have h1 : 260 / A ^ 2 ≤ 260 / (117 : ℝ) ^ 2 :=
    div_le_div_of_nonneg_left (by norm_num) (by norm_num) hA2
  have h2 : 960 * 67 / A ^ 3 ≤ 960 * 67 / (117 : ℝ) ^ 3 :=
    div_le_div_of_nonneg_left (by norm_num) (by norm_num) hA3
  have hn : 260 / (117 : ℝ) ^ 2 + 960 * 67 / (117 : ℝ) ^ 3 < 3 / 50 := by norm_num
  linarith

/-- Corrected complete calibration is conditional only on the explicit actual analytic row bound. -/
theorem residual_sub_corrected_sub_zeta_abs_lt_of_actual_row_bound
    (A : ℝ) (hA : 117 ≤ A)
    (hrow : ∀ d ∈ Finset.Icc 1 (vaughanCutoff A),
      |actualPeanoCubicRemainder A (Real.log (d : ℝ))| ≤ 320 * 67 / A ^ 4) :
    |mertensResidual A - correctedCompleteOmega A - (riemannZeta (1 / 2)).re| < 3 / 50 := by
  have hc := actual_calibration_260 (by linarith : 1 ≤ A)
  have he := integerJ_sub_corrected_abs_le_of_actual_row_bound A (by linarith) hrow
  have hb := combined_corrected_calibration_budget_lt A hA
  have ht := abs_add_le
    (mertensResidual A - integerJ A - (riemannZeta (1 / 2)).re)
    (integerJ A - correctedCompleteOmega A)
  have hid : mertensResidual A - correctedCompleteOmega A - (riemannZeta (1 / 2)).re =
      (mertensResidual A - integerJ A - (riemannZeta (1 / 2)).re) +
        (integerJ A - correctedCompleteOmega A) := by ring
  rw [← hid] at ht
  linarith

/-- The unchanged original target needs both actual analytic control and a uniform signed witness. -/
theorem estimate_of_corrected_completeOmega_tail_at_radius {K R : ℝ} (hR : 117 ≤ R)
    (hrow : ∀ A : ℝ, R ≤ A → ∀ d ∈ Finset.Icc 1 (vaughanCutoff A),
      |actualPeanoCubicRemainder A (Real.log (d : ℝ))| ≤ 320 * 67 / A ^ 4)
    (hOmega : ∀ A : ℝ, R ≤ A → correctedCompleteOmega A ≤ K) :
    CorrelationAssembly.EstimateObligation := by
  apply estimate_of_mertens_residual_tail
  refine ⟨max 0 (K + (riemannZeta (1 / 2)).re + 3 / 50), le_max_left _ _,
    R, (by linarith), ?_⟩
  intro A hRA
  have hc := (abs_lt.mp (residual_sub_corrected_sub_zeta_abs_lt_of_actual_row_bound
    A (hR.trans hRA) (hrow A hRA))).2
  have ho := hOmega A hRA
  have hm := le_max_right 0 (K + (riemannZeta (1 / 2)).re + 3 / 50)
  linarith

end
end FormalResearch.RiemannHypothesis.SourceCorrectedOmegaPeanoTaylor
