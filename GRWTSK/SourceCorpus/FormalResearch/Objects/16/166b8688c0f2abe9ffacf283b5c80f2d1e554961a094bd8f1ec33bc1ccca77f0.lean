import NormalizedGammaBudget
import Mathlib.Topology.MetricSpace.Pseudo.Lemmas

/-! Actual J_mean relative normalization, all-real asymptotic and independent
bounded correction. No actual signed-zero lower witness, numerical F_square
budget, or Vaughan-M identification is supplied.
Direction: grwtsk contributors. Scratch proof: OpenAI Codex. -/
set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.ActualCommonMeanNormalization
open MeasureTheory Filter Set
open scoped Topology
open FormalResearch.RiemannHypothesis
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization SourcePairing SourcePrimeSquareTailWork
open ActualCommonMeanCalibration ActualCommonMeanZeroSide

/-- Exact limiting correction relative to the independent actual F_square. -/
def commonMeanCenter : ℝ := primeConstant 2 + primeConstant 3 -
  NormalizedGammaBudget.paperEndpoint/2

def normalizationBudget : ℝ := calibrationConstant + 195

/-- A diagnostic error; J_mean and F_square retain their independent definitions. -/
def normalizationError (A : ℝ) : ℝ := squareRemovedRemainder A + commonMeanCenter -
  sourceMeanOffset A

theorem normalizationBudget_nonneg : 0 ≤ normalizationBudget := by
  unfold normalizationBudget
  linarith [calibrationConstant_nonneg]

theorem normalizationError_eq_deficits (A : ℝ) :
    normalizationError A = primeDeficit A 2 + primeDeficit A 3 +
      (sourceGammaValue A-NormalizedGammaBudget.paperEndpoint)/2 := by
  unfold normalizationError sourceMeanOffset commonMeanCenter primeDeficit
  ring

/-- The actual Fourier identity gives the exact positive correction, no hG premise. -/
theorem normalizationError_eq_actual_integral {A : ℝ} (hA : 1 ≤ A) :
    normalizationError A = primeDeficit A 2 + primeDeficit A 3 +
      ∫ t : ℝ in Ioi 0,
        ArchimedeanKernel.weightedDeficit (sourceCorrelation explicitSecondDerivative A) t := by
  rw [normalizationError_eq_deficits A, NormalizedGammaBudget.sourceGammaValue_identity hA]
  ring

theorem normalizationError_bounds {A : ℝ} (hA : 1 ≤ A) :
    0 ≤ normalizationError A ∧ normalizationError A ≤ normalizationBudget/A^2 := by
  have hP := two_prime_calibration hA
  have hG := NormalizedGammaBudget.sourceGammaValue_budget hA
  rw [normalizationError_eq_deficits A]
  unfold normalizationBudget
  constructor
  · linarith [hP.1, hG.1]
  · have he : (calibrationConstant+195)/A^2 = calibrationConstant/A^2+195/A^2 := by ring
    rw [he]
    have heG : 390/A^2 = 2*(195/A^2) := by ring
    linarith [hP.2, hG.2, heG]

theorem sourceMeanOffset_bounds {A : ℝ} (hA : 1 ≤ A) :
    squareRemovedRemainder A+commonMeanCenter-normalizationBudget/A^2 ≤ sourceMeanOffset A ∧
      sourceMeanOffset A ≤ squareRemovedRemainder A+commonMeanCenter := by
  have h := normalizationError_bounds hA
  unfold normalizationError at h
  constructor <;> linarith

theorem normalizationError_uniform_tail {R A : ℝ} (hR : 1 ≤ R) (hRA : R ≤ A) :
    0 ≤ normalizationError A ∧ normalizationError A ≤ normalizationBudget/R^2 := by
  have h := normalizationError_bounds (hR.trans hRA)
  refine ⟨h.1, h.2.trans ?_⟩
  apply div_le_div_of_nonneg_left normalizationBudget_nonneg (by positivity : 0<R^2)
  nlinarith

theorem sourceMeanOffset_calibration {A : ℝ} (hA : 1 ≤ A) :
    |sourceMeanOffset A-squareRemovedRemainder A-commonMeanCenter| ≤ normalizationBudget/A^2 := by
  have h := normalizationError_bounds hA
  have he : sourceMeanOffset A-squareRemovedRemainder A-commonMeanCenter = -normalizationError A := by
    unfold normalizationError
    ring
  rw [he, abs_neg, abs_of_nonneg h.1]
  exact h.2

theorem normalizationError_tendsto_zero :
    Tendsto normalizationError atTop (𝓝 0) := by
  have hg : Tendsto (fun A : ℝ => normalizationBudget/A^2) atTop (𝓝 0) := by
    simpa only [div_eq_mul_inv, mul_zero, Pi.inv_apply] using
      (tendsto_const_nhds (x:=normalizationBudget)).mul
        ((tendsto_pow_atTop (α:=ℝ) (by norm_num : (2:ℕ) ≠ 0)).inv_tendsto_atTop)
  apply squeeze_zero' (g:=fun A : ℝ => normalizationBudget/A^2) ?_ ?_ hg
  · filter_upwards [eventually_ge_atTop (1:ℝ)] with A hA
    exact (normalizationError_bounds hA).1
  · filter_upwards [eventually_ge_atTop (1:ℝ)] with A hA
    exact (normalizationError_bounds hA).2

/-- Relative asymptotic; no convergence or numerical budget for F_square is assumed. -/
theorem sourceMeanOffset_relative_tendsto :
    Tendsto (fun A : ℝ => sourceMeanOffset A-squareRemovedRemainder A) atTop
      (𝓝 commonMeanCenter) := by
  have h := (tendsto_const_nhds (x:=commonMeanCenter)).sub normalizationError_tendsto_zero
  convert h using 1
  · funext A
    unfold normalizationError
    ring
  · simp

/-- The complete ordinary-complex-square sum stays in the exact mean correction. -/
theorem sourceMean_normalization_error {A : ℝ} (hA : 1 ≤ A) :
    squareRemovedRemainder A+commonMeanCenter+(normalizedZeroSquare A).re/2-sourceMean A =
      normalizationError A := by
  rw [sourceMean_eq_offset_zero hA]
  unfold normalizationError
  ring

theorem sourceMean_relative_calibration {A : ℝ} (hA : 1 ≤ A) :
    |sourceMean A-squareRemovedRemainder A-(normalizedZeroSquare A).re/2-commonMeanCenter| ≤
      normalizationBudget/A^2 := by
  rw [sourceMean_eq_offset_zero hA]
  convert sourceMeanOffset_calibration hA using 1
  congr 1
  ring

theorem sourceMean_relative_tendsto :
    Tendsto (fun A : ℝ => sourceMean A-squareRemovedRemainder A-(normalizedZeroSquare A).re/2)
      atTop (𝓝 commonMeanCenter) := by
  apply sourceMeanOffset_relative_tendsto.congr'
  filter_upwards [eventually_ge_atTop (1:ℝ)] with A hA
  rw [sourceMean_eq_offset_zero hA]
  ring

theorem sourceMeanOffset_abs_le {A C : ℝ} (hA : 1 ≤ A)
    (hF : |squareRemovedRemainder A| ≤ C) :
    |sourceMeanOffset A| ≤ C+|commonMeanCenter|+normalizationBudget := by
  have h := normalizationError_bounds hA
  have hE : |normalizationError A| ≤ normalizationBudget := by
    rw [abs_of_nonneg h.1]
    apply h.2.trans
    apply (div_le_iff₀ (by positivity : 0<A^2)).mpr
    have hs : (1:ℝ) ≤ A^2 := by nlinarith
    nlinarith [normalizationBudget_nonneg]
  have he : sourceMeanOffset A = squareRemovedRemainder A+commonMeanCenter-normalizationError A := by
    unfold normalizationError
    ring
  rw [he]
  calc
    |squareRemovedRemainder A+commonMeanCenter-normalizationError A| ≤
        |squareRemovedRemainder A+commonMeanCenter|+|normalizationError A| := abs_sub _ _
    _ ≤ |squareRemovedRemainder A|+|commonMeanCenter|+|normalizationError A| :=
      add_le_add (abs_add_le _ _) le_rfl
    _ ≤ C+|commonMeanCenter|+normalizationBudget := by gcongr

/-- A genuine independent uniform J_mean correction budget, not an arithmetic witness. -/
theorem sourceMeanOffset_uniformly_bounded :
    ∃ B : ℝ, 0 ≤ B ∧ ∀ A : ℝ, 1 ≤ A → |sourceMeanOffset A| ≤ B := by
  obtain ⟨C,hC,hF⟩ := squareRemovedRemainder_uniformly_bounded
  refine ⟨C+|commonMeanCenter|+normalizationBudget,
    by linarith [abs_nonneg commonMeanCenter, normalizationBudget_nonneg], ?_⟩
  intro A hA
  exact sourceMeanOffset_abs_le hA (hF A hA)

#print axioms commonMeanCenter
#print axioms normalizationBudget
#print axioms normalizationError
#print axioms normalizationBudget_nonneg
#print axioms normalizationError_eq_deficits
#print axioms normalizationError_eq_actual_integral
#print axioms normalizationError_bounds
#print axioms sourceMeanOffset_bounds
#print axioms normalizationError_uniform_tail
#print axioms sourceMeanOffset_calibration
#print axioms normalizationError_tendsto_zero
#print axioms sourceMeanOffset_relative_tendsto
#print axioms sourceMean_normalization_error
#print axioms sourceMean_relative_calibration
#print axioms sourceMean_relative_tendsto
#print axioms sourceMeanOffset_abs_le
#print axioms sourceMeanOffset_uniformly_bounded
end ContinuousResearch.ActualCommonMeanNormalization
