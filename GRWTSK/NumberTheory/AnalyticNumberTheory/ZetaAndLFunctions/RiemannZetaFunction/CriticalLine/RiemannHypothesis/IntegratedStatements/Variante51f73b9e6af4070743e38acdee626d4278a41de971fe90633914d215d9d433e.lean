import FormalResearch.RiemannHypothesis.SourceComparison.LogarithmicResidual
import FormalResearch.RiemannHypothesis.SourceComparison.SourceWeightedMultiplier
import FormalResearch.RiemannHypothesis.SourceComparison.LogarithmicResidualTail
import FormalResearch.RiemannHypothesis.SourceComparison.CoreTailSplit
import FormalResearch.RiemannHypothesis.SourceComparison.FractionalCovarianceElementary
import FormalResearch.RiemannHypothesis.SourceComparison.SourceTailSchedule
import FormalResearch.RiemannHypothesis.SourceComparison.WeightedResidualNorm
import FormalResearch.RiemannHypothesis.SourceComparison.FilteredCoreGram



/-! Exact logarithmic Fourier residual, complete tails, and source-filtered Gram expansion. -/

namespace LogarithmicResidualLiteral
open MeasureTheory FourierTransform Set
open FormalResearch.RiemannHypothesis.SourceComparison
open MobiusFractionalResidual MobiusEndpointBudget MobiusPoleNumerator
open FormalResearch.RiemannHypothesis.SourceComparison.LogarithmicResidual
noncomputable section


example (X : ℕ) (ε u : ℝ) : FormalResearch.RiemannHypothesis.SourceComparison.LogarithmicResidual.logResidual X ε u =
    (Real.exp (-u / 2) : ℂ) * arithmeticResidual X ε (Real.exp u) := rfl

example (X : ℕ) (ε : ℝ) :
    Measurable (arithmeticResidual X ε) :=
  FormalResearch.RiemannHypothesis.SourceComparison.LogarithmicResidual.arithmeticResidual_measurable X ε

example (X : ℕ) (ε : ℝ) :
    Measurable (logResidual X ε) :=
  FormalResearch.RiemannHypothesis.SourceComparison.LogarithmicResidual.logResidual_measurable X ε

example (X : ℕ) (ε : ℝ) : Integrable (logResidual X ε) :=
  FormalResearch.RiemannHypothesis.SourceComparison.LogarithmicResidual.logResidual_integrable X ε

example (X : ℕ) (hX : 1 ≤ X) (ε t : ℝ) :
    (∫ u : ℝ, Complex.exp (-(t : ℂ) * Complex.I * (u : ℂ)) * logResidual X ε u) =
      (1 - riemannZeta (1 / 2 + (t : ℂ) * Complex.I) *
        correctedNumerator X ((ε : ℂ) + (t : ℂ) * Complex.I)) /
          (1 / 2 + (t : ℂ) * Complex.I) :=
  FormalResearch.RiemannHypothesis.SourceComparison.LogarithmicResidual.logResidual_angular_integral X hX ε t

example (X : ℕ) (hX : 1 ≤ X) (ε ξ : ℝ) :
    𝓕 (logResidual X ε) ξ =
      (1 - riemannZeta (1 / 2 + ((2 * Real.pi * ξ : ℝ) : ℂ) * Complex.I) *
        correctedNumerator X ((ε : ℂ) + ((2 * Real.pi * ξ : ℝ) : ℂ) * Complex.I)) /
          (1 / 2 + ((2 * Real.pi * ξ : ℝ) : ℂ) * Complex.I) :=
  FormalResearch.RiemannHypothesis.SourceComparison.LogarithmicResidual.logResidual_fourier X hX ε ξ

end

end LogarithmicResidualLiteral

namespace SourceWeightedMultiplierLiteral
noncomputable section
open MeasureTheory FourierTransform Complex
open FormalResearch.RiemannHypothesis.SourceComparison.SourceWeightedMultiplier
open FormalResearch.RiemannHypothesis.SourceComparison
open SourceFilterDelta HalfLineExtension

example (ε h t : ℝ) : boundaryMultiplier ε h t =
    (1 / 2 + (t : ℂ) * I) * boundaryFilter ε h t := rfl

example (ε h t : ℝ) (hε : 0 < ε) (hsmall : ε ≤ 1 / 4) (hh : 0 ≤ h) :
    ‖boundaryMultiplier ε h t‖ ≤ (4 / 3 : ℝ) * Real.exp (1 / 4) :=
  boundaryMultiplier_norm_le ε h t hε hsmall hh

variable (ε h : ℝ) (hε : 0 < ε) (hsmall : ε ≤ 1 / 4) (hh : 0 ≤ h)

example (f : FullH) :
    MemLp (fun ξ : ℝ => boundaryMultiplier ε h (2 * Real.pi * ξ) * f ξ) 2 volume :=
  frequencyProduct_memLp ε h hε hsmall hh f

example : FullH →L[ℂ] FullH := frequencyMultiplier ε h hε hsmall hh

example (f : FullH) : frequencyMultiplier ε h hε hsmall hh f =ᵐ[volume]
    (fun ξ : ℝ => boundaryMultiplier ε h (2 * Real.pi * ξ) * f ξ) :=
  frequencyMultiplier_ae ε h hε hsmall hh f

example : sourceMultiplier ε h hε hsmall hh =
    fourierInvCLM ℂ FullH ∘L frequencyMultiplier ε h hε hsmall hh ∘L fourierCLM ℂ FullH := rfl

example (f : FullH) : (𝓕 (sourceMultiplier ε h hε hsmall hh f) : FullH) =ᵐ[volume]
    (fun ξ : ℝ => boundaryMultiplier ε h (2 * Real.pi * ξ) * (𝓕 f : FullH) ξ) :=
  sourceMultiplier_fourier_ae ε h hε hsmall hh f

example (f : FullH) :
    ‖sourceMultiplier ε h hε hsmall hh f‖ ≤ ((4 / 3 : ℝ) * Real.exp (1 / 4)) * ‖f‖ :=
  sourceMultiplier_norm_le ε h hε hsmall hh f

end

end SourceWeightedMultiplierLiteral

namespace LogarithmicResidualTailLiteral
open FormalResearch.RiemannHypothesis.SourceComparison.LogarithmicResidualTail
open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourceComparison
open MobiusEndpointBudget MobiusFractionalResidual MobiusPoleNumerator LogarithmicResidual
example (X : ℕ) (ε : ℝ) (hX : 1 ≤ X) :
    (∑ d ∈ Finset.Icc 1 X, (dampedCoefficient X ε d : ℂ) / (d : ℂ)) =
      correctedNumerator X (1 / 2 + (ε : ℂ)) :=
  dampedCoefficient_reciprocal_sum X ε hX
example (X : ℕ) (ε : ℝ) (hX : 1 ≤ X) (x : ℝ) (hx : 0 ≤ x) (hx1 : x < 1) :
    arithmeticResidual X ε x = (x : ℂ) * correctedNumerator X (1 / 2 + (ε : ℂ)) :=
  arithmeticResidual_eq_below_one X ε hX x hx hx1
example (X : ℕ) (ε x : ℝ) :
    ‖arithmeticResidual X ε x‖ ≤ 1 + ∑ d ∈ Finset.Icc 1 X, |dampedCoefficient X ε d| :=
  arithmeticResidual_norm_le X ε x
example (X : ℕ) (ε : ℝ) (hX : 1 ≤ X) (u : ℝ) (hu : u < 0) :
    logResidual X ε u = (Real.exp (u / 2) : ℂ) *
      correctedNumerator X (1 / 2 + (ε : ℂ)) := logResidual_eq_of_neg X ε hX u hu
example (X : ℕ) (ε u : ℝ) :
    ‖logResidual X ε u‖ ≤
      (1 + ∑ d ∈ Finset.Icc 1 X, |dampedCoefficient X ε d|) * Real.exp (-u / 2) :=
  logResidual_norm_le X ε u
example (X : ℕ) (ε : ℝ) (hX : 1 ≤ X) : MemLp (logResidual X ε) 2 :=
  logResidual_memLp X ε hX
example (X : ℕ) (ε : ℝ) (hX : 1 ≤ X) :
    (∫ u : ℝ in Iio 0, ‖logResidual X ε u‖ ^ 2) =
      ‖correctedNumerator X (1 / 2 + (ε : ℂ))‖ ^ 2 :=
  logResidual_negative_integral X ε hX
example (X : ℕ) (ε : ℝ) (hX : 1 ≤ X) (Y : ℝ) (hY : 1 ≤ Y) :
    (∫ u : ℝ in Ioi (Real.log Y), ‖logResidual X ε u‖ ^ 2) ≤
      (1 + ∑ d ∈ Finset.Icc 1 X, |dampedCoefficient X ε d|) ^ 2 / Y :=
  logResidual_positive_integral_le X ε hX Y hY
example (X : ℕ) (ε : ℝ) (hX : 1 ≤ X) :
    ‖((logResidual_memLp X ε hX).indicator measurableSet_Iio).toLp
      ((Iio (0 : ℝ)).indicator (logResidual X ε))‖ =
      ‖correctedNumerator X (1 / 2 + (ε : ℂ))‖ :=
  logResidual_negative_norm X ε hX
example (X : ℕ) (ε : ℝ) (hX : 1 ≤ X) (Y : ℝ) (hY : 1 ≤ Y) :
    ‖((logResidual_memLp X ε hX).indicator measurableSet_Ioi).toLp
      ((Ioi (Real.log Y)).indicator (logResidual X ε))‖ ≤
      (1 + ∑ d ∈ Finset.Icc 1 X, |dampedCoefficient X ε d|) / Real.sqrt Y :=
  logResidual_positive_norm_le X ε hX Y hY

end LogarithmicResidualTailLiteral

namespace CoreTailSplitLiteral
noncomputable section
open MeasureTheory Set Complex
open FormalResearch.RiemannHypothesis.SourceComparison.CoreTailSplit
open FormalResearch.RiemannHypothesis.SourceComparison
open LogarithmicResidual LogarithmicResidualTail SourceWeightedMultiplier
open HalfLineExtension MobiusEndpointBudget MobiusPoleNumerator

variable (X : ℕ) (ε : ℝ) (hX : 1 ≤ X)

example : fullResidualVector X ε hX =
    ((logResidual_memLp X ε hX).toLp (logResidual X ε) : FullH) := rfl

example (Y : ℝ) : coreResidualVector X ε hX Y =
    (((logResidual_memLp X ε hX).indicator measurableSet_Icc).toLp
      ((Icc (0 : ℝ) (Real.log Y)).indicator (logResidual X ε)) : FullH) := rfl

example : fullResidualVector X ε hX =ᵐ[volume] logResidual X ε :=
  fullResidualVector_ae X ε hX

example (Y : ℝ) : coreResidualVector X ε hX Y =ᵐ[volume]
    (Icc (0 : ℝ) (Real.log Y)).indicator (logResidual X ε) :=
  coreResidualVector_ae X ε hX Y

example (Y : ℝ) (hY : 1 ≤ Y) : fullResidualVector X ε hX =
    ((logResidual_memLp X ε hX).indicator measurableSet_Iio).toLp
      ((Iio (0 : ℝ)).indicator (logResidual X ε)) + coreResidualVector X ε hX Y +
    ((logResidual_memLp X ε hX).indicator measurableSet_Ioi).toLp
      ((Ioi (Real.log Y)).indicator (logResidual X ε)) :=
  fullResidualVector_decomposition X ε hX Y hY

example (h : ℝ) (hε : 0 < ε) (hsmall : ε ≤ 1 / 4) (hh : 0 ≤ h)
    (Y : ℝ) (hY : 1 ≤ Y) :
    ‖sourceMultiplier ε h hε hsmall hh (fullResidualVector X ε hX)‖ ≤
      ‖sourceMultiplier ε h hε hsmall hh (coreResidualVector X ε hX Y)‖ +
        ((4 / 3 : ℝ) * Real.exp (1 / 4)) *
          ‖correctedNumerator X (1 / 2 + (ε : ℂ))‖ +
        ((4 / 3 : ℝ) * Real.exp (1 / 4)) *
          (1 + ∑ d ∈ Finset.Icc 1 X, |dampedCoefficient X ε d|) / Real.sqrt Y :=
  filtered_full_norm_le_core_tails X ε hX h hε hsmall hh Y hY
end

end CoreTailSplitLiteral

namespace FractionalCovarianceElementaryLiteral

open MeasureTheory Set Finset
open FormalResearch.RiemannHypothesis.SourceComparison
open MobiusEndpointBudget MobiusPoleNumerator FiniteMobiusController
noncomputable section
example (d e : ℝ) (hd : 0 < d) (he : 0 < e) :
    IntegrableOn (fun x : ℝ => Int.fract (x / d) * Int.fract (x / e) / x ^ 2)
      (Ioi (0 : ℝ)) := by
  exact FormalResearch.RiemannHypothesis.SourceComparison.FractionalCovarianceElementary.fractional_product_integrable d e hd he

example (d e : ℝ) (hd : 0 < d) (he : 0 < e) :
    (∫ x : ℝ in Ioi (0 : ℝ), Int.fract (x / d) * Int.fract (x / e) / x ^ 2) =
      d⁻¹ * ∫ y : ℝ in Ioi (0 : ℝ), Int.fract y * Int.fract ((d / e) * y) / y ^ 2 := by
  exact FormalResearch.RiemannHypothesis.SourceComparison.FractionalCovarianceElementary.fractional_product_rescale d e hd he

example (X : ℕ) (hX : 1 ≤ X) :
    (∑ d ∈ Icc 1 X, dampedCoefficient X 0 d / (d : ℝ)) = 0 := by
  exact FormalResearch.RiemannHypothesis.SourceComparison.FractionalCovarianceElementary.corrected_reciprocal_moment_zero X hX

example (X : ℕ) (hX : 1 ≤ X) :
    (∑ d ∈ Icc 1 X, dampedCoefficient X 0 d / (d : ℝ) * Real.log (d : ℝ)) =
      -logNormalization X := by
  exact FormalResearch.RiemannHypothesis.SourceComparison.FractionalCovarianceElementary.corrected_log_reciprocal_moment X hX

example (X : ℕ) (hX : 1 ≤ X) :
    (∑ d ∈ Icc 1 X, dampedCoefficient X 0 d) =
      (∑ d ∈ Icc 1 X, (ArithmeticFunction.moebius d : ℝ)) -
        (X : ℝ) * mobiusReciprocalSum X := by
  exact FormalResearch.RiemannHypothesis.SourceComparison.FractionalCovarianceElementary.corrected_total_mass X hX

example (X : ℕ) (hX : 1 ≤ X) (C : ℝ) :
    (∑ d ∈ Icc 1 X, ∑ e ∈ Icc 1 X, dampedCoefficient X 0 d * dampedCoefficient X 0 e *
      (C / 2 * ((d : ℝ)⁻¹ + (e : ℝ)⁻¹) +
        ((d : ℝ)⁻¹ - (e : ℝ)⁻¹) * (Real.log (d : ℝ) - Real.log (e : ℝ)) / 2)) =
      -((∑ d ∈ Icc 1 X, (ArithmeticFunction.moebius d : ℝ)) -
        (X : ℝ) * mobiusReciprocalSum X) * logNormalization X := by
  exact FormalResearch.RiemannHypothesis.SourceComparison.FractionalCovarianceElementary.corrected_elementary_covariance X hX C

end

end FractionalCovarianceElementaryLiteral

namespace SourceTailScheduleLiteral
open FormalResearch.RiemannHypothesis.SourceComparison.SourceTailSchedule Filter
open scoped Topology
open FormalResearch.RiemannHypothesis.SourceComparison
open MobiusEndpointBudget MobiusPoleNumerator
example (X : ℕ) : logScale X = 1 + Real.log (X : ℝ) := rfl
example (X : ℕ) : epsilonSchedule X = 1 / (4 * (1 + Real.log (X : ℝ)) ^ 3) := rfl
example (X : ℕ) : cutoffSchedule X = (X : ℝ) ^ 3 * (1 + Real.log (X : ℝ)) ^ 2 := rfl
example (X : ℕ) (hX : 2 ≤ X) :
    0 < epsilonSchedule X ∧ epsilonSchedule X ≤ 1 / 4 ∧ 1 ≤ cutoffSchedule X :=
  schedule_admissible X hX
example (X : ℕ) (hX : 2 ≤ X) :
    ‖correctedNumerator X (1 / 2 + (epsilonSchedule X : ℂ))‖ ≤
      1 / (4 * (1 + Real.log (X : ℝ))) ∧
      (1 + ∑ d ∈ Finset.Icc 1 X, |dampedCoefficient X (epsilonSchedule X) d|) /
        Real.sqrt (cutoffSchedule X) ≤ 3 / Real.sqrt (X : ℝ) :=
  scheduled_endpoint_bounds X hX
example :
    Tendsto (fun X : ℕ => 1 / (4 * (1 + Real.log (X : ℝ)))) atTop (nhds 0) ∧
      Tendsto (fun X : ℕ => 3 / Real.sqrt (X : ℝ)) atTop (nhds 0) :=
  explicit_tail_bounds_tendsto
example :
    Tendsto (fun X : ℕ => ‖correctedNumerator X (1 / 2 + (epsilonSchedule X : ℂ))‖)
      atTop (nhds 0) ∧
    Tendsto (fun X : ℕ =>
      (1 + ∑ d ∈ Finset.Icc 1 X, |dampedCoefficient X (epsilonSchedule X) d|) /
        Real.sqrt (cutoffSchedule X)) atTop (nhds 0) :=
  scheduled_actual_tails_tendsto
example : Tendsto epsilonSchedule atTop (nhds 0) := epsilonSchedule_tendsto_zero
example : Tendsto cutoffSchedule atTop atTop := cutoffSchedule_tendsto_atTop

end SourceTailScheduleLiteral

namespace WeightedResidualNormLiteral
open MeasureTheory FourierTransform
open FormalResearch.RiemannHypothesis.SourceComparison
open LogarithmicResidual LogarithmicResidualTail CoreTailSplit SourceWeightedMultiplier
open HalfLineExtension CorrectedCutoffIncrement ArithmeticErrorIntegrability
open FullLinePlancherel MobiusEndpointBudget MobiusPoleNumerator
open FormalResearch.RiemannHypothesis.SourceComparison.WeightedResidualNorm
noncomputable section

private theorem l2_angular_square (f : FullH) (G : ℝ → ℂ)
    (hF : (𝓕 f : FullH) =ᵐ[volume] (fun ξ : ℝ => G (2 * Real.pi * ξ))) :
    Integrable (fun t : ℝ => ‖G t‖ ^ 2) ∧
      ‖f‖ ^ 2 = (1 / (2 * Real.pi)) * ∫ t : ℝ, ‖G t‖ ^ 2 := by
  have hπ : 0 < 2 * Real.pi := by positivity
  have hm : MemLp (fun ξ : ℝ => G (2 * Real.pi * ξ)) 2 volume :=
    MemLp.ae_eq hF (Lp.memLp _)
  have hi := (memLp_two_iff_integrable_sq_norm hm.aestronglyMeasurable).mp hm
  have he (t : ℝ) : G (2 * Real.pi * ((2 * Real.pi)⁻¹ * t)) = G t := by
    congr 1
    field_simp
  have hGi : Integrable (fun t : ℝ => ‖G t‖ ^ 2) := by
    simpa only [he] using hi.comp_mul_left' (inv_ne_zero hπ.ne')
  refine ⟨hGi, ?_⟩
  calc
    ‖f‖ ^ 2 = ‖(𝓕 f : FullH)‖ ^ 2 := by rw [Lp.norm_fourier_eq]
    _ = ∫ ξ : ℝ, ‖(𝓕 f : FullH) ξ‖ ^ 2 := by
      simpa only [Lp.toLp_coeFn] using norm_sq_toLp _ (Lp.memLp (𝓕 f : FullH))
    _ = ∫ ξ : ℝ, ‖G (2 * Real.pi * ξ)‖ ^ 2 :=
      integral_congr_ae (hF.fun_comp (fun z : ℂ => ‖z‖ ^ 2))
    _ = _ := by
      simpa only [smul_eq_mul, one_div, abs_of_pos (inv_pos.mpr hπ)] using
        Measure.integral_comp_mul_left (fun t : ℝ => ‖G t‖ ^ 2) (2 * Real.pi)


example (X : ℕ) (ε : ℝ) (hX : 1 ≤ X) (h : ℝ)
    (hε : 0 < ε) (hsmall : ε ≤ 1 / 4) (hh : 0 ≤ h) :
    (𝓕 (sourceMultiplier ε h hε hsmall hh (fullResidualVector X ε hX)) : FullH) =ᵐ[volume]
      (fun ξ : ℝ => boundaryResidual X ε h (2 * Real.pi * ξ)) :=
  FormalResearch.RiemannHypothesis.SourceComparison.WeightedResidualNorm.weightedResidual_fourier_ae X ε hX h hε hsmall hh

example (X : ℕ) (ε : ℝ) (hX : 1 ≤ X) (h : ℝ)
    (hε : 0 < ε) (hsmall : ε ≤ 1 / 4) (hh : 0 ≤ h) :
    Integrable (fun t : ℝ => ‖boundaryResidual X ε h t‖ ^ 2) ∧
      ‖sourceMultiplier ε h hε hsmall hh (fullResidualVector X ε hX)‖ ^ 2 =
        arithmeticErrorSq X ε h :=
  FormalResearch.RiemannHypothesis.SourceComparison.WeightedResidualNorm.weightedResidual_norm_sq X ε hX h hε hsmall hh

example (X : ℕ) (ε : ℝ) (hX : 1 ≤ X) (h : ℝ)
    (hε : 0 < ε) (hsmall : ε ≤ 1 / 4) (hh : 0 ≤ h) (Y : ℝ) (hY : 1 ≤ Y) :
    Real.sqrt (arithmeticErrorSq X ε h) ≤
      ‖sourceMultiplier ε h hε hsmall hh (coreResidualVector X ε hX Y)‖ +
        ((4 / 3 : ℝ) * Real.exp (1 / 4)) *
          ‖correctedNumerator X (1 / 2 + (ε : ℂ))‖ +
        ((4 / 3 : ℝ) * Real.exp (1 / 4)) *
          (1 + ∑ d ∈ Finset.Icc 1 X, |dampedCoefficient X ε d|) / Real.sqrt Y :=
  FormalResearch.RiemannHypothesis.SourceComparison.WeightedResidualNorm.arithmeticError_le_core_tails X ε hX h hε hsmall hh Y hY

example (X : ℕ) (hX : 2 ≤ X) (h : ℝ) (hh : 0 ≤ h) :
    Real.sqrt (arithmeticErrorSq X (SourceTailSchedule.epsilonSchedule X) h) ≤
      ‖sourceMultiplier (SourceTailSchedule.epsilonSchedule X) h
        (SourceTailSchedule.schedule_admissible X hX).1
        (SourceTailSchedule.schedule_admissible X hX).2.1 hh
        (coreResidualVector X (SourceTailSchedule.epsilonSchedule X) (by omega)
          (SourceTailSchedule.cutoffSchedule X))‖ +
        ((4 / 3 : ℝ) * Real.exp (1 / 4)) / (4 * SourceTailSchedule.logScale X) +
        3 * ((4 / 3 : ℝ) * Real.exp (1 / 4)) / Real.sqrt (X : ℝ) :=
  FormalResearch.RiemannHypothesis.SourceComparison.WeightedResidualNorm.arithmeticError_le_scheduled_core X hX h hh

end

end WeightedResidualNormLiteral

namespace FilteredCoreGramLiteral
noncomputable section
open MeasureTheory Set Complex
open FormalResearch.RiemannHypothesis.SourceComparison
open FormalResearch.RiemannHypothesis.SourceComparison.FilteredCoreGram CoreTailSplit SourceWeightedMultiplier
open HalfLineExtension MobiusEndpointBudget

example (Y : ℝ) (d : ℕ) : coreBasisFunction Y d =
    (Icc (0 : ℝ) (Real.log Y)).indicator (fun u => (Real.exp (-u / 2) : ℂ) *
      (if d = 0 then (if 1 ≤ Real.exp u then 1 else 0)
      else ((Int.fract (Real.exp u / (d : ℝ)) : ℝ) : ℂ))) := rfl

example (Y : ℝ) (d : ℕ) : MemLp (coreBasisFunction Y d) 2 volume :=
  coreBasisFunction_memLp Y d

example (Y : ℝ) (d : ℕ) : coreBasisVector Y d =
    ((coreBasisFunction_memLp Y d).toLp (coreBasisFunction Y d) : FullH) := rfl

example (Y : ℝ) (d : ℕ) : coreBasisVector Y d =ᵐ[volume] coreBasisFunction Y d :=
  coreBasisVector_ae Y d

example (X : ℕ) (ε : ℝ) (hX : 1 ≤ X) (Y : ℝ) : coreResidualVector X ε hX Y =
    ∑ d ∈ insert 0 (Finset.Icc 1 X),
      (if d = 0 then (1 : ℂ) else (dampedCoefficient X ε d : ℂ)) • coreBasisVector Y d :=
  coreResidualVector_eq_basis_sum X ε hX Y

example (X : ℕ) (ε : ℝ) (hX : 1 ≤ X) (Y h : ℝ)
    (hε : 0 < ε) (hsmall : ε ≤ 1 / 4) (hh : 0 ≤ h) :
    ‖sourceMultiplier ε h hε hsmall hh (coreResidualVector X ε hX Y)‖ ^ 2 =
      (∑ i ∈ insert 0 (Finset.Icc 1 X), ∑ j ∈ insert 0 (Finset.Icc 1 X),
        star (if i = 0 then (1 : ℂ) else (dampedCoefficient X ε i : ℂ)) *
          (if j = 0 then (1 : ℂ) else (dampedCoefficient X ε j : ℂ)) *
          inner ℂ (sourceMultiplier ε h hε hsmall hh (coreBasisVector Y i))
            (sourceMultiplier ε h hε hsmall hh (coreBasisVector Y j))).re :=
  filtered_core_norm_sq_gram X ε hX Y h hε hsmall hh
end

end FilteredCoreGramLiteral
