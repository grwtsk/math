/- Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI. -/
import GRWTSK.NumberTheory.Chebyshev.ClassicalRieszNormalization
import GRWTSK.NumberTheory.Chebyshev.NormalizedRieszFiniteEvaluation

/-! # Integrated raw zero-head limit with an actual arithmetic source
Finite differentiation and FTC identify each raw integral exactly. The Riesz
endpoint tails then justify the height limit of those integrals. No pointwise
exchange of the radius and height limits is asserted. The source affine slope
remains the existing boundary-derived coefficient. -/
set_option autoImplicit false
noncomputable section
open Filter MeasureTheory Set
open scoped Topology Interval
namespace GRWTSK.NumberTheory.Chebyshev.FirstRieszWeakRawLimit
open ClassicalRieszNormalization TentSource
open GRWTSK.Analysis.RealAnalysis.ClassicalRieszCorrection
open GRWTSK.NumberTheory.Zeta.Riemann.FirstRieszZeroTail
open GRWTSK.NumberTheory.Zeta.Riemann.PointwiseFiniteZeroHead

def rawClassicalHead (x T : ℝ) : ℂ :=
  (x:ℂ) + finiteHeightZeroHead x T + (slope x:ℂ) + sourceSlope

def finiteClassicalPrimitive (x T : ℝ) : ℂ :=
  (x:ℂ)^2/2 + finiteRieszZeroHead x T + (correction x:ℂ) + (x:ℂ)*sourceSlope + sourceIntercept

theorem hasDerivAt_finiteClassicalPrimitive (x T : ℝ) (hx : 1 < x) :
    HasDerivAt (fun t => finiteClassicalPrimitive t T) (rawClassicalHead x T) x := by
  have hi := (hasDerivAt_id x).ofReal_comp
  have hd := (((((hi.pow 2).div_const 2).add
    (hasDerivAt_finiteRieszZeroHead x T (by linarith))).add
      (hasDerivAt_correction x hx).ofReal_comp).add (hi.mul_const sourceSlope)).add_const sourceIntercept
  convert hd using 1 <;> first | rfl | (norm_num [rawClassicalHead, id_eq])

theorem continuousAt_rawClassicalHead (x T : ℝ) (hx : 1 < x) :
    ContinuousAt (fun t => rawClassicalHead t T) x := by
  have hl : ContinuousAt Real.log x := Real.continuousAt_log (by linarith)
  have hs := (hasDerivAt_slope x hx).ofReal_comp.continuousAt
  unfold rawClassicalHead finiteHeightZeroHead pointwiseZeroTerm
  fun_prop

theorem integral_rawClassicalHead (a b T : ℝ) (ha : 1 < a) (hb : 1 < b) :
    (∫ t in a..b, rawClassicalHead t T) = finiteClassicalPrimitive b T - finiteClassicalPrimitive a T := by
  have ht (t : ℝ) (ht : t ∈ uIcc a b) : 1 < t := (lt_min ha hb).trans_le ht.1
  apply intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun t ht' => hasDerivAt_finiteClassicalPrimitive t T (ht t ht'))
  exact (show ContinuousOn (fun t => rawClassicalHead t T) (uIcc a b) from
    fun t ht' => (continuousAt_rawClassicalHead t T (ht t ht')).continuousWithinAt).intervalIntegrable

theorem norm_primitive_error_le (N : ℕ) (x T : ℝ)
    (hN : 3 ≤ N) (hx : 1 < x) (hxN : x ≤ N) (hT : 2 ≤ T) :
    ‖(firstRieszPrefix N x:ℂ)-finiteClassicalPrimitive x T‖ ≤ firstRieszTailBudget x T := by
  rw [firstRieszPrefix_eq_classical_correction N x hN hx hxN]
  have he : (x:ℂ)^2/2 + fullRieszZeroValue x + (correction x:ℂ) +
      (x:ℂ)*sourceSlope + sourceIntercept - finiteClassicalPrimitive x T =
      fullRieszZeroValue x-finiteRieszZeroHead x T := by unfold finiteClassicalPrimitive; ring
  rw [he]
  exact norm_fullRieszZeroValue_sub_head x T hx hT

/-- A genuine raw-integral error bound, charging both actual endpoint tails. -/
theorem norm_integral_error_le (N : ℕ) (a b T : ℝ) (hN : 3 ≤ N)
    (ha : 1 < a) (hb : 1 < b) (haN : a ≤ N) (hbN : b ≤ N) (hT : 2 ≤ T) :
    ‖((firstRieszPrefix N b-firstRieszPrefix N a:ℝ):ℂ) - (∫ t in a..b, rawClassicalHead t T)‖ ≤
      firstRieszTailBudget b T + firstRieszTailBudget a T := by
  rw [integral_rawClassicalHead a b T ha hb]
  have he : ((firstRieszPrefix N b-firstRieszPrefix N a:ℝ):ℂ) -
      (finiteClassicalPrimitive b T-finiteClassicalPrimitive a T) =
      ((firstRieszPrefix N b:ℂ)-finiteClassicalPrimitive b T) -
      ((firstRieszPrefix N a:ℂ)-finiteClassicalPrimitive a T) := by push_cast; ring
  rw [he]
  exact (norm_sub_le _ _).trans (add_le_add
    (norm_primitive_error_le N b T hN hb hbN hT) (norm_primitive_error_le N a T hN ha haN hT))

theorem integral_rawClassicalHead_tendsto_source (N : ℕ) (a b : ℝ) (hN : 3 ≤ N)
    (ha : 1 < a) (hb : 1 < b) (haN : a ≤ N) (hbN : b ≤ N) :
    Tendsto (fun T => ∫ t in a..b, rawClassicalHead t T) atTop
      (𝓝 ((firstRieszPrefix N b-firstRieszPrefix N a:ℝ):ℂ)) := by
  rw [Metric.tendsto_nhds]
  intro ε hε
  have hz := (firstRieszTailBudget_tendsto_zero b).add (firstRieszTailBudget_tendsto_zero a)
  have he := (show Tendsto (fun T => firstRieszTailBudget b T+firstRieszTailBudget a T) atTop (𝓝 0) from by simpa using hz).eventually (gt_mem_nhds hε)
  filter_upwards [he, eventually_ge_atTop (2:ℝ)] with T heT hT
  rw [dist_eq_norm, norm_sub_rev]
  exact (norm_integral_error_le N a b T hN ha hb haN hbN hT).trans_lt heT
end GRWTSK.NumberTheory.Chebyshev.FirstRieszWeakRawLimit
