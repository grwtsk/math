/- Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI. -/
import GRWTSK.NumberTheory.Chebyshev.ClassicalRieszNormalization
import GRWTSK.NumberTheory.Chebyshev.NormalizedRieszFiniteEvaluation

/-! # Certified finite approximations to the actual affine coefficients
Both coefficients remain those derived from the arithmetic source. The bounds
charge the canonical zero tails at 2 and 3. They do not identify the limits with
zeta special values or certify a numerical approximation. -/
set_option autoImplicit false
noncomputable section
open Filter
open scoped Topology
namespace GRWTSK.NumberTheory.Chebyshev.ClassicalRieszCoefficientLimits
open ClassicalRieszNormalization GlobalRieszAffineNormalization
open GRWTSK.Analysis.Real.ClassicalRieszCorrection
open GRWTSK.Analysis.Real.RationalRieszPrimitive
open GRWTSK.NumberTheory.Zeta.Riemann.FirstRieszZeroTail

def finiteSourceSlope (T : ℝ) : ℂ :=
  (Real.log 2:ℂ)-5/2 + finiteRieszZeroHead 2 T-finiteRieszZeroHead 3 T-
    (rationalRieszPrimitive 2 3:ℂ)-(slope 2:ℂ)
def finiteSourceIntercept (T : ℝ) : ℂ :=
  -2-finiteRieszZeroHead 2 T-(correction 2:ℂ)-2*finiteSourceSlope T

theorem slope_error_eq (T : ℝ) :
    sourceSlope-finiteSourceSlope T =
      (fullRieszZeroValue 2-finiteRieszZeroHead 2 T)-
      (fullRieszZeroValue 3-finiteRieszZeroHead 3 T) := by
  unfold sourceSlope finiteSourceSlope normalizationAtThree normalizationAtTwo
  rw [rationalRieszPrimitive_base]
  push_cast
  ring

theorem norm_slope_error_le (T : ℝ) (hT : 2 ≤ T) :
    ‖sourceSlope-finiteSourceSlope T‖ ≤ firstRieszTailBudget 2 T+firstRieszTailBudget 3 T := by
  rw [slope_error_eq]
  exact (norm_sub_le _ _).trans (add_le_add
    (norm_fullRieszZeroValue_sub_head 2 T (by norm_num) hT)
    (norm_fullRieszZeroValue_sub_head 3 T (by norm_num) hT))

theorem norm_intercept_error_le (T : ℝ) (hT : 2 ≤ T) :
    ‖sourceIntercept-finiteSourceIntercept T‖ ≤ 3*firstRieszTailBudget 2 T+2*firstRieszTailBudget 3 T := by
  have he : sourceIntercept-finiteSourceIntercept T =
      -(fullRieszZeroValue 2-finiteRieszZeroHead 2 T)-2*(sourceSlope-finiteSourceSlope T) := by
    unfold sourceIntercept finiteSourceIntercept normalizationAtTwo
    rw [rationalRieszPrimitive_base]
    push_cast
    ring
  rw [he]
  have htri := norm_sub_le (-(fullRieszZeroValue 2-finiteRieszZeroHead 2 T))
    (2*(sourceSlope-finiteSourceSlope T))
  simp only [norm_neg, norm_mul, Complex.norm_ofNat] at htri
  have h2 := norm_fullRieszZeroValue_sub_head 2 T (by norm_num) hT
  have hs := norm_slope_error_le T hT
  linarith

theorem finiteSourceSlope_tendsto_source : Tendsto finiteSourceSlope atTop (𝓝 sourceSlope) := by
  rw [Metric.tendsto_nhds]
  intro ε hε
  have hz := (firstRieszTailBudget_tendsto_zero 2).add (firstRieszTailBudget_tendsto_zero 3)
  have he := (show Tendsto (fun T => firstRieszTailBudget 2 T+firstRieszTailBudget 3 T) atTop (𝓝 0) from by simpa using hz).eventually (gt_mem_nhds hε)
  filter_upwards [he,eventually_ge_atTop (2:ℝ)] with T heT hT
  rw [dist_eq_norm,norm_sub_rev]
  exact (norm_slope_error_le T hT).trans_lt heT

theorem finiteSourceIntercept_tendsto_source : Tendsto finiteSourceIntercept atTop (𝓝 sourceIntercept) := by
  rw [Metric.tendsto_nhds]
  intro ε hε
  have hz := ((firstRieszTailBudget_tendsto_zero 2).const_mul 3).add
    ((firstRieszTailBudget_tendsto_zero 3).const_mul 2)
  have he := (show Tendsto (fun T => 3*firstRieszTailBudget 2 T+2*firstRieszTailBudget 3 T) atTop (𝓝 0) from by simpa using hz).eventually (gt_mem_nhds hε)
  filter_upwards [he,eventually_ge_atTop (2:ℝ)] with T heT hT
  rw [dist_eq_norm,norm_sub_rev]
  exact (norm_intercept_error_le T hT).trans_lt heT
end GRWTSK.NumberTheory.Chebyshev.ClassicalRieszCoefficientLimits
