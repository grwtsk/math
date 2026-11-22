/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilConductorThreeKernelReturn

/-!
# Spatial approximation of the actual finite-gamma conductor-three form

The finite-gamma source is paired on the unchanged radius-four window.
Its exact sampled matrix and complete complex cell moments approximate that
pairing with only the spatial error. The complete gamma remainder is a
separate source term, so it is not included in this spatial-only budget.

The derivative restriction identifies the same form with its whole-line
pairing. A one-sided arithmetic return additionally requires a proved sign
for the omitted gamma form; this module does not assume or supply that sign.
-/

set_option autoImplicit false
noncomputable section
open Set MeasureTheory
open scoped BigOperators ComplexConjugate

namespace GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeRadiusFourScrewGreen

open GRWTSK.FunctionalAnalysis.IntegralKernelApproximation
open GRWTSK.FunctionalAnalysis.FiniteKernelEnclosure

/-- The maintained finite-gamma convolution kernel, with the original
gamma constant, character, and signed prime inventory unchanged. -/
def partialConvolutionKernel (M : ℕ) (x y : ℝ) : ℂ :=
  (partialSourceKernel M (x - y) : ℂ)

/-- The finite-gamma form on the original Lebesgue window. -/
def partialKernelForm (M : ℕ) (u : ℝ → ℂ) : ℂ :=
  kernelForm kernelWindow (partialConvolutionKernel M) u u

/-- The whole-cell spatial price only. Gamma truncation and rational
entry uncertainty retain their separate mathematical roles. -/
def spatialApproximationBudget (M N : ℕ) : ℝ :=
  8 * partialLipschitzConstant M / (N + 1 : ℕ)

theorem spatialApproximationBudget_nonneg (M N : ℕ) :
    0 ≤ spatialApproximationBudget M N := by
  exact div_nonneg (mul_nonneg (by norm_num) (partialLipschitzConstant_nonneg M))
    (Nat.cast_nonneg _)

/-- The actual finite-gamma kernel is uniformly bounded on the source
square by its proved Lipschitz constant and its zero at the origin. -/
theorem partialConvolutionKernel_bound (M : ℕ) {x y : ℝ}
    (hx : x ∈ Icc (-4 : ℝ) 4) (hy : y ∈ Icc (-4 : ℝ) 4) :
    ‖partialConvolutionKernel M x y‖ ≤ 8 * partialLipschitzConstant M := by
  have hd : |x - y| ≤ (8 : ℝ) := by
    rw [abs_le]
    constructor <;> linarith [hx.1, hx.2, hy.1, hy.2]
  have hp := abs_partialSourceKernel_sub_le M (x - y) 0
  simp only [partialSourceKernel_zero, sub_zero] at hp
  change ‖(partialSourceKernel M (x - y) : ℂ)‖ ≤ _
  rw [Complex.norm_real, Real.norm_eq_abs]
  calc
    _ ≤ partialLipschitzConstant M * |x - y| := hp
    _ ≤ partialLipschitzConstant M * 8 :=
      mul_le_mul_of_nonneg_left hd (partialLipschitzConstant_nonneg M)
    _ = 8 * partialLipschitzConstant M := mul_comm _ _

/-- The finite-gamma form has an actual integrable product for every L1
input on the source window. No sign hypothesis is used. -/
theorem integrable_partialKernelForm (M : ℕ) (u : ℝ → ℂ)
    (hu : Integrable u kernelWindow) :
    Integrable (integrand (partialConvolutionKernel M) u u)
      (kernelWindow.prod kernelWindow) := by
  apply integrable_integrand_of_bound (ε := 8 * partialLipschitzConstant M) hu hu
  · exact (Complex.continuous_ofReal.measurable.comp
      ((partialSourceKernel_lipschitz M).continuous.measurable.comp
        (measurable_fst.sub measurable_snd))).aestronglyMeasurable
  · rw [Measure.prod_restrict]
    filter_upwards [ae_restrict_mem (measurableSet_Icc.prod measurableSet_Icc)] with p hp
    exact partialConvolutionKernel_bound M hp.1 hp.2

/-- Whole-square error for the existing exact source samples. It compares
the same finite-gamma source at every point of every cell. -/
theorem partialKernel_sample_error (M N : ℕ) {x y : ℝ}
    (hx : x ∈ Icc (-4 : ℝ) 4) (hy : y ∈ Icc (-4 : ℝ) 4) :
    ‖partialConvolutionKernel M x y -
      finiteKernel (cellFeature (gridCell N)) (complexSampleMatrix M N) x y‖ ≤
      spatialApproximationBudget M N := by
  rw [finiteKernel_cellFeature]
  change ‖(partialSourceKernel M (x - y) : ℂ) -
    (sampleMatrix M N (gridCell N x) (gridCell N y) : ℂ)‖ ≤ _
  rw [← Complex.ofReal_sub, Complex.norm_real, Real.norm_eq_abs]
  exact sampleMatrix_error M N hx hy

/-- Complete complex cell moments approximate the actual finite-gamma
form. The factor eight is the measure of the original source window. -/
theorem partialKernelForm_finite_error (M N : ℕ) (u : ℝ → ℂ)
    (hu : Integrable u kernelWindow)
    (hu2 : Integrable (fun x => ‖u x‖ ^ 2) kernelWindow) :
    ‖partialKernelForm M u -
      (∑ i, ∑ j,
        conj (featureMoment kernelWindow (cellFeature (gridCell N)) u i) *
          complexSampleMatrix M N i j *
          featureMoment kernelWindow (cellFeature (gridCell N)) u j)‖ ≤
      (8 * spatialApproximationBudget M N) * ∫ x, ‖u x‖ ^ 2 ∂kernelWindow := by
  have hφ := integrable_cellFeature (gridCell N) u (gridCell_measurableSet N) hu
  have h := interval_kernelForm_error (A := (4 : ℝ)) (by norm_num)
    (spatialApproximationBudget_nonneg M N) hu hu2
    (integrable_partialKernelForm M u hu)
    (integrable_finiteKernel (cellFeature (gridCell N)) (complexSampleMatrix M N) u hφ)
    (fun _ hx _ hy => partialKernel_sample_error M N hx hy)
  rw [kernelForm_finiteKernel (cellFeature (gridCell N)) (complexSampleMatrix M N) u hφ] at h
  norm_num only [show (2 : ℝ) * 4 = 8 by norm_num] at h
  exact h

/-- The interval pairing of the derivative is the whole-line pairing of
the same finite-gamma kernel. Its source support removes both exterior
variables; no boundary term or changed test is introduced. -/
theorem partialKernelForm_deriv_eq_wholeline (M : ℕ) {f : ℝ → ℂ}
    (hs : tsupport f ⊆ Icc (-4 : ℝ) 4) :
    partialKernelForm M (deriv f) =
      kernelForm volume (partialConvolutionKernel M) (deriv f) (deriv f) := by
  unfold partialKernelForm kernelForm
  change (∫ p, integrand (partialConvolutionKernel M) (deriv f) (deriv f) p
    ∂(volume.restrict (Icc (-4 : ℝ) 4)).prod
      (volume.restrict (Icc (-4 : ℝ) 4))) = _
  rw [Measure.prod_restrict]
  apply setIntegral_eq_integral_of_forall_compl_eq_zero
  intro p hp
  by_cases hx : p.1 ∈ Icc (-4 : ℝ) 4
  · have hy : p.2 ∉ Icc (-4 : ℝ) 4 := fun hy => hp ⟨hx, hy⟩
    simp [integrand, deriv_eq_zero_outside_window hs hy]
  · simp [integrand, deriv_eq_zero_outside_window hs hx]

end GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeRadiusFourScrewGreen
