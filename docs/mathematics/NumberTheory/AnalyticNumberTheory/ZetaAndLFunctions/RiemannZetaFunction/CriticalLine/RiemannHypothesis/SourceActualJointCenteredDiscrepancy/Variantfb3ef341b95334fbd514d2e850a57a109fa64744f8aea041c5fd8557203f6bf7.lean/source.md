# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceActualJointCenteredDiscrepancy.Variantfb3ef341b95334fbd514d2e850a57a109fa64744f8aea041c5fd8557203f6bf7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `77ab386da8f7855fc450c231f0785db9107a1262` · SHA-256 `fb3ef341b95334fbd514d2e850a57a109fa64744f8aea041c5fd8557203f6bf7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceActualJointMangoldtCancellation
import Mathlib.NumberTheory.Harmonic.EulerMascheroni

/-!
Actual second centering of the complete finite joint Mangoldt readout.
The endpoint companion is bounded by proved arithmetic input; the signed
centered integral remains an explicit open arithmetic quantity.
Research direction: grwtsk contributors. Formal construction: OpenAI Codex.
-/
set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceActualJointCenteredDiscrepancy
open MeasureTheory SourceMangoldtAbel SourceActualJointMangoldtCancellation
open scoped Interval

def actualCenteredLogDiscrepancy (t : ℝ) : ℝ :=
  mangoldtLogError t + Real.eulerMascheroniConstant

def actualJointCenteredIntegral (b : ℝ) : ℝ :=
  ∫ t in 0..b,
    (actualCenteredLogDiscrepancy t - actualCenteredLogDiscrepancy b) * jointLogKernel b t

theorem actual_centered_discrepancy_abs_le (b : ℝ) (hb : 0 ≤ b) :
    |actualCenteredLogDiscrepancy b| ≤ Real.log 4 + 4 + Real.log 2 + 2 / 3 := by
  have hg0 : 0 ≤ Real.eulerMascheroniConstant := by
    linarith [Real.one_half_lt_eulerMascheroniConstant]
  unfold actualCenteredLogDiscrepancy
  calc
    _ ≤ |mangoldtLogError b| + |Real.eulerMascheroniConstant| := abs_add_le _ _
    _ ≤ _ := by
      rw [abs_of_nonneg hg0]
      linarith [mangoldtLogError_abs_le b hb, Real.eulerMascheroniConstant_lt_two_thirds]

theorem actual_endpoint_companion_abs_le (b : ℝ) (hb : 0 ≤ b) :
    |actualCenteredLogDiscrepancy b * (1 - Real.exp (-b / 2))| ≤
      Real.log 4 + 4 + Real.log 2 + 2 / 3 := by
  have he : Real.exp (-b / 2) ≤ 1 := Real.exp_le_one_iff.mpr (by linarith)
  have hm : 0 ≤ 1 - Real.exp (-b / 2) := by linarith
  have hm1 : 1 - Real.exp (-b / 2) ≤ 1 := by linarith [Real.exp_pos (-b / 2)]
  rw [abs_mul, abs_of_nonneg hm]
  calc
    _ ≤ |actualCenteredLogDiscrepancy b| * 1 :=
      mul_le_mul_of_nonneg_left hm1 (abs_nonneg _)
    _ ≤ _ := by rw [mul_one]; exact actual_centered_discrepancy_abs_le b hb

theorem actual_joint_centered_identity (b : ℝ) (hb : 0 ≤ b) :
    actualJointMangoldtReadout b - Real.exp (b / 2) =
      actualJointCenteredIntegral b +
        actualCenteredLogDiscrepancy b * (1 - Real.exp (-b / 2)) -
          Real.eulerMascheroniConstant - 2 +
            (Real.eulerMascheroniConstant + 1) * Real.exp (-b / 2) := by
  let P : ℝ → ℝ := fun t => Real.exp (-b / 2) * Real.exp t - Real.exp (t / 2)
  have hc : ContDiff ℝ 1 P :=
    (contDiff_const.mul (Real.contDiff_exp : ContDiff ℝ 1 Real.exp)).sub expHalf_contDiff
  have hd : ∀ t : ℝ, deriv P t = jointLogKernel b t := by
    intro t
    simpa only [P, jointLogKernel, Pi.sub_def, Function.comp_def, id_eq,
      div_eq_mul_inv, one_mul] using
      (((Real.hasDerivAt_exp t).const_mul (Real.exp (-b / 2))).sub
        ((Real.hasDerivAt_exp (t / 2)).comp t ((hasDerivAt_id t).div_const 2))).deriv
  have hi := mangoldtLogError_mul_deriv_intervalIntegrable 0 b hb P hc
  simp_rw [hd] at hi
  have hB : IntervalIntegrable (fun t => actualCenteredLogDiscrepancy t * jointLogKernel b t)
      volume 0 b := by
    have hs := hi.add (((jointLogKernel_continuous b).const_mul
      Real.eulerMascheroniConstant).intervalIntegrable 0 b)
    apply hs.congr
    intro t _
    dsimp only [actualCenteredLogDiscrepancy]
    ring
  have hsub : IntervalIntegrable (fun t =>
      (actualCenteredLogDiscrepancy t - actualCenteredLogDiscrepancy b) * jointLogKernel b t)
      volume 0 b := by
    have hs := hB.sub (((jointLogKernel_continuous b).const_mul
      (actualCenteredLogDiscrepancy b)).intervalIntegrable 0 b)
    apply hs.congr
    intro t _
    ring
  have hs : (∫ t in 0..b, actualCenteredLogDiscrepancy t * jointLogKernel b t) =
      actualJointCenteredIntegral b +
        actualCenteredLogDiscrepancy b * (1 - Real.exp (-b / 2)) := by
    unfold actualJointCenteredIntegral
    calc
      _ = ∫ t in 0..b,
          (actualCenteredLogDiscrepancy t - actualCenteredLogDiscrepancy b) * jointLogKernel b t +
            actualCenteredLogDiscrepancy b * jointLogKernel b t := by
        apply intervalIntegral.integral_congr
        intro t _
        ring
      _ = _ := by
        rw [intervalIntegral.integral_add hsub
          (((jointLogKernel_continuous b).const_mul _).intervalIntegrable 0 b),
          intervalIntegral.integral_const_mul, jointLogKernel_mass]
  rw [actual_joint_gamma_centering b hb, ← hs]
  rfl

end FormalResearch.RiemannHypothesis.SourceActualJointCenteredDiscrepancy
```
