# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourceActualJointMangoldtCancellation.Variant4c1103d0cccf8fa3b1c173a1c2719d2fa96f01181e2f8893991efe4574027fa7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e024daa91abac96e84c9d001051587f3d7dec8d3` · SHA-256 `4c1103d0cccf8fa3b1c173a1c2719d2fa96f01181e2f8893991efe4574027fa7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceMangoldtAbel
import Mathlib.Tactic

/-!
Joint finite Abel cancellation for the actual closed Mangoldt inventory.
Both exponentially large prefix endpoints cancel before any estimate.
No eventual uniform arithmetic witness is asserted.
Research direction: grwtsk contributors. Formal construction: OpenAI Codex.
-/
set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceActualJointMangoldtCancellation
open MeasureTheory SourceMangoldtAbel
open scoped Interval

def jointLogKernel (b t : ℝ) : ℝ :=
  Real.exp (-b / 2) * Real.exp t - Real.exp (t / 2) / 2

def actualJointMangoldtReadout (b : ℝ) : ℝ :=
  mangoldtLogSum b (fun t => Real.exp (t / 2)) -
    Real.exp (-b / 2) * mangoldtLogSum b Real.exp

theorem expHalf_contDiff : ContDiff ℝ 1 (fun t : ℝ => Real.exp (t / 2)) := by
  exact Real.contDiff_exp.comp (contDiff_id.div_const 2)

theorem expHalf_deriv (t : ℝ) :
    deriv (fun u : ℝ => Real.exp (u / 2)) t = Real.exp (t / 2) / 2 := by
  simpa only [Function.comp_def, id_eq, div_eq_mul_inv, one_mul] using
    ((Real.hasDerivAt_exp (t / 2)).comp t ((hasDerivAt_id t).div_const 2)).deriv

theorem actual_joint_endpoint_cancellation (b : ℝ) (hb : 0 ≤ b) :
    actualJointMangoldtReadout b =
      ∫ t in 0..b, mangoldtLogPrefix t * jointLogKernel b t := by
  have hhalf := mangoldtLogSum_abel b hb (fun t => Real.exp (t / 2)) expHalf_contDiff
  have hfull := mangoldtLogSum_abel b hb Real.exp Real.contDiff_exp
  simp_rw [expHalf_deriv] at hhalf
  simp_rw [Real.deriv_exp] at hfull
  have hiHalf := mangoldtLogPrefix_mul_deriv_intervalIntegrable 0 b hb
    (fun t => Real.exp (t / 2)) expHalf_contDiff
  simp_rw [expHalf_deriv] at hiHalf
  have hiFull := mangoldtLogPrefix_mul_deriv_intervalIntegrable 0 b hb
    Real.exp Real.contDiff_exp
  simp_rw [Real.deriv_exp] at hiFull
  have hsame : Real.exp (-b / 2) * Real.exp b = Real.exp (b / 2) := by
    rw [← Real.exp_add]
    congr 1
    ring
  unfold actualJointMangoldtReadout
  rw [hhalf, hfull]
  have hsplit : (∫ t in 0..b, mangoldtLogPrefix t * jointLogKernel b t) =
      Real.exp (-b / 2) * (∫ t in 0..b, mangoldtLogPrefix t * Real.exp t) -
        ∫ t in 0..b, mangoldtLogPrefix t * (Real.exp (t / 2) / 2) := by
    calc
      _ = ∫ t in 0..b,
          Real.exp (-b / 2) * (mangoldtLogPrefix t * Real.exp t) -
            mangoldtLogPrefix t * (Real.exp (t / 2) / 2) := by
        apply intervalIntegral.integral_congr
        intro t _
        unfold jointLogKernel
        ring
      _ = _ := by
        rw [intervalIntegral.integral_sub (hiFull.const_mul _) hiHalf,
          intervalIntegral.integral_const_mul]
  rw [hsplit]
  rw [mul_sub, ← mul_assoc, hsame]
  ring

theorem actual_joint_discrepancy_split (b : ℝ) (hb : 0 ≤ b) :
    actualJointMangoldtReadout b =
      (∫ t in 0..b, mangoldtLogError t * jointLogKernel b t) +
        ∫ t in 0..b, t * jointLogKernel b t := by
  have hc : ContDiff ℝ 1 (fun t : ℝ =>
      Real.exp (-b / 2) * Real.exp t - Real.exp (t / 2)) :=
    (contDiff_const.mul (Real.contDiff_exp : ContDiff ℝ 1 Real.exp)).sub expHalf_contDiff
  have hd : ∀ t : ℝ, deriv (fun u : ℝ =>
      Real.exp (-b / 2) * Real.exp u - Real.exp (u / 2)) t = jointLogKernel b t := by
    intro t
    have he := (Real.hasDerivAt_exp t).const_mul (Real.exp (-b / 2))
    have hh := (Real.hasDerivAt_exp (t / 2)).comp t ((hasDerivAt_id t).div_const 2)
    simpa only [jointLogKernel, Pi.sub_apply, Function.comp_def, id_eq, div_eq_mul_inv, one_mul]
      using (he.sub hh).deriv
  have hi := mangoldtLogError_mul_deriv_intervalIntegrable 0 b hb _ hc
  simp_rw [hd] at hi
  have hk : Continuous (jointLogKernel b) :=
    (continuous_const.mul Real.continuous_exp).sub
      ((Real.continuous_exp.comp (continuous_id.div_const 2)).div_const 2)
  rw [actual_joint_endpoint_cancellation b hb]
  calc
    _ = ∫ t in 0..b,
        mangoldtLogError t * jointLogKernel b t + t * jointLogKernel b t := by
      apply intervalIntegral.integral_congr
      intro t _
      unfold mangoldtLogError
      ring
    _ = _ := intervalIntegral.integral_add hi ((continuous_id.mul hk).intervalIntegrable _ _)

theorem jointLogKernel_continuous (b : ℝ) : Continuous (jointLogKernel b) :=
  (continuous_const.mul Real.continuous_exp).sub
    ((Real.continuous_exp.comp (continuous_id.div_const 2)).div_const 2)

theorem jointLogKernel_mass (b : ℝ) :
    (∫ t in 0..b, jointLogKernel b t) = 1 - Real.exp (-b / 2) := by
  have hd : ∀ t : ℝ, HasDerivAt
      (fun u => Real.exp (-b / 2) * Real.exp u - Real.exp (u / 2)) (jointLogKernel b t) t := by
    intro t
    convert ((Real.hasDerivAt_exp t).const_mul (Real.exp (-b / 2))).sub
      ((Real.hasDerivAt_exp (t / 2)).comp t ((hasDerivAt_id t).div_const 2)) using 1 <;>
      simp only [jointLogKernel, Function.comp_def, id_eq, Pi.sub_apply, div_eq_mul_inv, one_mul]
  have hi := intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun t _ => hd t) ((jointLogKernel_continuous b).intervalIntegrable 0 b)
  have he : Real.exp (-b / 2) * Real.exp b = Real.exp (b / 2) := by
    rw [← Real.exp_add]
    congr 1
    ring
  rw [hi]
  simp only [zero_div, Real.exp_zero, mul_one, he]
  ring

theorem jointLogKernel_first_moment (b : ℝ) :
    (∫ t in 0..b, t * jointLogKernel b t) =
      Real.exp (b / 2) + Real.exp (-b / 2) - 2 := by
  let P : ℝ → ℝ := fun t =>
    Real.exp (-b / 2) * ((t - 1) * Real.exp t) - (t - 2) * Real.exp (t / 2)
  have hd : ∀ t : ℝ, HasDerivAt P (t * jointLogKernel b t) t := by
    intro t
    have hf := (((hasDerivAt_id t).sub_const 1).mul (Real.hasDerivAt_exp t)).const_mul
      (Real.exp (-b / 2))
    have hg := ((hasDerivAt_id t).sub_const 2).mul
      ((Real.hasDerivAt_exp (t / 2)).comp t ((hasDerivAt_id t).div_const 2))
    exact (hf.sub hg).congr_deriv (by dsimp only [jointLogKernel]; ring)
  have hi := intervalIntegral.integral_eq_sub_of_hasDerivAt (fun t _ => hd t)
    ((continuous_id.mul (jointLogKernel_continuous b)).intervalIntegrable 0 b)
  have he : Real.exp (-b / 2) * Real.exp b = Real.exp (b / 2) := by
    rw [← Real.exp_add]
    congr 1
    ring
  rw [hi]
  dsimp only [P]
  simp only [zero_div, Real.exp_zero, mul_one, zero_sub]
  calc
    _ = (b - 1) * (Real.exp (-b / 2) * Real.exp b) -
        (b - 2) * Real.exp (b / 2) + Real.exp (-b / 2) - 2 := by ring
    _ = _ := by rw [he]; ring

/-- The constant gamma is compensated jointly; its kernel mass is bounded. -/
theorem actual_joint_gamma_centering (b : ℝ) (hb : 0 ≤ b) :
    actualJointMangoldtReadout b - Real.exp (b / 2) =
      (∫ t in 0..b,
        (mangoldtLogError t + Real.eulerMascheroniConstant) * jointLogKernel b t) -
      Real.eulerMascheroniConstant - 2 +
        (Real.eulerMascheroniConstant + 1) * Real.exp (-b / 2) := by
  have hc : ContDiff ℝ 1 (fun t : ℝ =>
      Real.exp (-b / 2) * Real.exp t - Real.exp (t / 2)) :=
    (contDiff_const.mul (Real.contDiff_exp : ContDiff ℝ 1 Real.exp)).sub expHalf_contDiff
  have hd : ∀ t : ℝ, deriv (fun u : ℝ =>
      Real.exp (-b / 2) * Real.exp u - Real.exp (u / 2)) t = jointLogKernel b t := by
    intro t
    simpa only [jointLogKernel, Pi.sub_apply, Function.comp_def, id_eq, div_eq_mul_inv, one_mul]
      using (((Real.hasDerivAt_exp t).const_mul (Real.exp (-b / 2))).sub
        ((Real.hasDerivAt_exp (t / 2)).comp t ((hasDerivAt_id t).div_const 2))).deriv
  have hi := mangoldtLogError_mul_deriv_intervalIntegrable 0 b hb _ hc
  simp_rw [hd] at hi
  have he : (∫ t in 0..b,
      (mangoldtLogError t + Real.eulerMascheroniConstant) * jointLogKernel b t) =
        (∫ t in 0..b, mangoldtLogError t * jointLogKernel b t) +
          Real.eulerMascheroniConstant * (1 - Real.exp (-b / 2)) := by
    simp_rw [add_mul]
    rw [intervalIntegral.integral_add hi
      (((jointLogKernel_continuous b).const_mul _).intervalIntegrable 0 b),
      intervalIntegral.integral_const_mul, jointLogKernel_mass]
  rw [he, actual_joint_discrepancy_split b hb, jointLogKernel_first_moment]
  ring

end FormalResearch.RiemannHypothesis.SourceActualJointMangoldtCancellation
```
