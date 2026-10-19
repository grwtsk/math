import SourceActualShiftedXiDerivativeAdapter
import SourceFullXiSignedPrimitiveCost
import Mathlib.MeasureTheory.Integral.IntervalIntegral.AbsolutelyContinuousFun
import Mathlib.MeasureTheory.Integral.IntervalIntegral.IntegrationByParts

/-!
Actual closed-Chebyshev logarithmic density and its anchored absolutely
continuous primitive. No derivative of psi at prime-power jumps and no uniform
arithmetic bound are assumed. Direction: grwtsk contributors.
Formal source transport: OpenAI Codex.
-/

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceActualXiPrimitiveTransport
open MeasureTheory Set
open RH16ActualPsiNegativeBlock RH16ShiftedXiAdapter
open SourceFullXiCellBudgetObstruction SourceFullXiSignedPrimitiveCost
open SourcePositiveSampling SourcePairing SourceCorrelationCurvature
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity

def actualXiLogDensity (t : ℝ) : ℝ :=
  Real.exp (-t / 2) * shiftedActualChebyshev (Real.exp t)

def actualXiLogPrimitive (u : ℝ) : ℝ :=
  ∫ t in Real.log 2..u, actualXiLogDensity t

theorem actualXiLogDensity_intervalIntegrable (a b : ℝ) :
    IntervalIntegrable actualXiLogDensity volume a b := by
  have hpsi : IntervalIntegrable (fun t => Chebyshev.psi (Real.exp t)) volume a b :=
    (Chebyshev.psi_mono.comp Real.exp_monotone).intervalIntegrable
  have hxi := (hpsi.sub (Real.continuous_exp.intervalIntegrable a b)).add
    ((continuous_const : Continuous (fun _ : ℝ =>
      2 * (Real.eulerMascheroniConstant + 1 - Real.log 2))).intervalIntegrable a b)
  have he : Continuous (fun t : ℝ => Real.exp (-t / 2)) :=
    Real.continuous_exp.comp ((continuous_id : Continuous (fun t : ℝ => t)).neg.div_const 2)
  change IntervalIntegrable (fun t => Real.exp (-t / 2) *
    (Chebyshev.psi (Real.exp t) - Real.exp t +
      2 * (Real.eulerMascheroniConstant + 1 - Real.log 2))) volume a b
  exact hxi.continuousOn_mul he.continuousOn

theorem actualXiLogPrimitive_at_anchor : actualXiLogPrimitive (Real.log 2) = 0 := by
  simp [actualXiLogPrimitive]

theorem actualXiLogPrimitive_absolutelyContinuous (b : ℝ) :
    AbsolutelyContinuousOnInterval actualXiLogPrimitive (Real.log 2) b := by
  have hi := actualXiLogDensity_intervalIntegrable (Real.log 2) b
  exact hi.absolutelyContinuousOnInterval_intervalIntegral (by simp)

theorem actualXiLogPrimitive_ae_hasDerivAt (b : ℝ) :
    ∀ᵐ t : ℝ, t ∈ uIcc (Real.log 2) b →
      HasDerivAt actualXiLogPrimitive (actualXiLogDensity t) t := by
  have hi := actualXiLogDensity_intervalIntegrable (Real.log 2) b
  filter_upwards [hi.ae_hasDerivAt_integral] with t ht
  intro hmem
  exact ht hmem (Real.log 2) (by simp)

theorem actual_logarithmic_substitution (A : ℝ) (hA : 1 ≤ A) :
    (∫ y in 2..Real.exp (2 * A),
      shiftedActualChebyshev y * deriv (plainProfile A 1) y) =
      ∫ t in Real.log 2..2 * A, actualXiLogDensity t * fullXiLogWeight A t := by
  have hs := intervalIntegral.integral_comp_mul_deriv_of_deriv_nonneg
    (f := Real.exp) (f' := Real.exp)
    (g := fun y => shiftedActualChebyshev y * deriv (plainProfile A 1) y)
    (a := Real.log 2) (b := 2 * A) Real.continuous_exp.continuousOn
    (fun t _ => Real.hasDerivAt_exp t) (fun t _ => (Real.exp_pos t).le)
  rw [Real.exp_log (by norm_num : (0 : ℝ) < 2)] at hs
  rw [← hs]
  apply intervalIntegral.integral_congr
  intro t _
  dsimp only [Function.comp_apply]
  rw [(plainProfile_hasDerivAt (by linarith : 0 < A) 1 (Real.exp_pos t)).deriv]
  simp only [Real.log_one, zero_add, Real.log_exp]
  unfold actualXiLogDensity fullXiLogWeight
  field_simp

theorem actual_log_weight_absolutelyContinuous (A a b : ℝ) (hA : 0 < A) :
    AbsolutelyContinuousOnInterval (fullXiLogWeight A) a b := by
  have hc : ContDiff ℝ 1 (fullXiLogWeight A) :=
    (sourceCorrelation_deriv_contDiff hA).sub
      ((sourceCorrelation_contDiff A hA).div_const 2)
  exact hc.contDiffOn.absolutelyContinuousOnInterval

theorem actual_log_weight_at_upper (A : ℝ) (hA : 0 < A) :
    fullXiLogWeight A (2 * A) = 0 := by
  unfold fullXiLogWeight
  rw [(RH16CesaroKernel.actual_correlation_three_upper_traces A hA).1,
    sourceCorrelation_upper_endpoint A hA]
  norm_num

theorem actual_contracted_pairing_eq_primitive_IBP (A : ℝ) (hA : 1 ≤ A) :
    (∫ y in 2..Real.exp (2 * A),
      shiftedActualChebyshev y * deriv (plainProfile A 1) y) =
      -(∫ t in Real.log 2..2 * A,
        actualXiLogPrimitive t * deriv (fullXiLogWeight A) t) := by
  have hp : 0 < A := by linarith
  have hf := actualXiLogPrimitive_absolutelyContinuous (2 * A)
  have hw := actual_log_weight_absolutelyContinuous A (Real.log 2) (2 * A) hp
  have hibp := hf.integral_mul_deriv_eq_deriv_mul hw
  rw [actual_log_weight_at_upper A hp, actualXiLogPrimitive_at_anchor,
    mul_zero, zero_mul, sub_zero, zero_sub] at hibp
  have he : (∫ t in Real.log 2..2 * A,
      deriv actualXiLogPrimitive t * fullXiLogWeight A t) =
      ∫ t in Real.log 2..2 * A, actualXiLogDensity t * fullXiLogWeight A t := by
    apply intervalIntegral.integral_congr_ae
    filter_upwards [actualXiLogPrimitive_ae_hasDerivAt (2 * A)] with t ht
    intro hmem
    rw [(ht (uIoc_subset_uIcc hmem)).deriv]
  rw [he] at hibp
  rw [actual_logarithmic_substitution A hA]
  linarith

end FormalResearch.RiemannHypothesis.SourceActualXiPrimitiveTransport
