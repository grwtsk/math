# Complete source: GRWTSK.NumberTheory.Attempt01.Variant3eb63564978106c18f099915fa51d40e10ccb4baf80cb3647e4e2f71d2f4bd9b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `989357ff2ca68938060b7b18b80a418586276859` · SHA-256 `3eb63564978106c18f099915fa51d40e10ccb4baf80cb3647e4e2f71d2f4bd9b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import NormalizedGammaBudget
import FiniteRationalCertificate
import Mathlib.NumberTheory.Harmonic.EulerMascheroni
import Mathlib.Analysis.Real.Pi.Bounds
import Mathlib.Analysis.Complex.ExponentialBounds

/-! Exact actual common-mean constants; no F_square budget or RH premise.
Direction: grwtsk contributors. Scratch construction: OpenAI Codex. -/
set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.NumericMeanBounds
open ContinuousResearch.NormalizedGammaBudget
open ContinuousResearch.ActualCommonMeanCalibration

theorem log_pi_lower : Real.log 3 + 1/25 < Real.log Real.pi := by
  have hp : 0 < Real.pi := Real.pi_pos
  have h := Real.one_sub_inv_le_log_of_pos (div_pos hp (by norm_num : (0:ℝ)<3))
  rw [Real.log_div hp.ne' (by norm_num : (3:ℝ)≠0)] at h
  have hir : 3 / Real.pi < (24/25:ℝ) := by
    apply (div_lt_iff₀ hp).mpr
    linarith [Real.pi_gt_d2]
  have he : (Real.pi/3)⁻¹ = 3/Real.pi := by simp [div_eq_mul_inv, mul_comm]
  rw [he] at h
  linarith

theorem actual_endpoint_lt : paperEndpoint < -(21/4:ℝ) := by
  unfold paperEndpoint
  have h2 : (69/100:ℝ) < Real.log 2 := by linarith [Real.log_two_gt_d9]
  have h3 : (109/100:ℝ) < Real.log 3 := by linarith [Real.log_three_gt_d9]
  linarith [Real.one_half_lt_eulerMascheroniConstant, Real.pi_gt_d2, log_pi_lower]

theorem sqrt_two_bounds : (7/5:ℝ) ≤ Real.sqrt 2 ∧ Real.sqrt 2 ≤ 143/100 := by
  have h := Real.sq_sqrt (by norm_num : (0:ℝ)≤2)
  have hn := Real.sqrt_nonneg 2
  constructor <;> nlinarith

theorem sqrt_three_bounds : (173/100:ℝ) ≤ Real.sqrt 3 ∧ Real.sqrt 3 ≤ 174/100 := by
  have h := Real.sq_sqrt (by norm_num : (0:ℝ)≤3)
  have hn := Real.sqrt_nonneg 3
  constructor <;> nlinarith

theorem fixed_prime_sum_gt : (11/10:ℝ) < primeConstant 2 + primeConstant 3 := by
  unfold primeConstant
  norm_num only [Nat.cast_ofNat]
  have h2 : (69/100:ℝ) ≤ Real.log 2 := by linarith [Real.log_two_gt_d9]
  have h3 : (109/100:ℝ) ≤ Real.log 3 := by linarith [Real.log_three_gt_d9]
  have hs2 : 0 < Real.sqrt 2 := by positivity
  have hs3 : 0 < Real.sqrt 3 := by positivity
  have hd2 : (69/143:ℝ) ≤ Real.log 2 / Real.sqrt 2 := by
    apply (le_div_iff₀ hs2).mpr
    nlinarith only [sqrt_two_bounds.2, h2]
  have hd3 : (109/174:ℝ) ≤ Real.log 3 / Real.sqrt 3 := by
    apply (le_div_iff₀ hs3).mpr
    nlinarith only [sqrt_three_bounds.2, h3]
  linarith

theorem actual_coarse_calibration_lt :
    (65/6:ℝ)*((Real.log 2)^3/Real.sqrt 2+(Real.log 3)^3/Real.sqrt 3) < 11 := by
  have hl2 : 0 ≤ Real.log 2 := by positivity
  have hl3 : 0 ≤ Real.log 3 := by positivity
  have hu2 : Real.log 2 ≤ (7/10:ℝ) := by linarith [Real.log_two_lt_d9]
  have hu3 : Real.log 3 ≤ (11/10:ℝ) := by linarith [Real.log_three_lt_d9]
  have hp2 : (Real.log 2)^3 ≤ (7/10:ℝ)^3 := by gcongr
  have hp3 : (Real.log 3)^3 ≤ (11/10:ℝ)^3 := by gcongr
  have hd2 : (Real.log 2)^3/Real.sqrt 2 ≤ (7/10:ℝ)^3/(7/5) := by
    apply (div_le_iff₀ (by positivity : 0<Real.sqrt 2)).mpr
    nlinarith only [hp2, sqrt_two_bounds.1]
  have hd3 : (Real.log 3)^3/Real.sqrt 3 ≤ (11/10:ℝ)^3/(173/100) := by
    apply (div_le_iff₀ (by positivity : 0<Real.sqrt 3)).mpr
    nlinarith only [hp3, sqrt_three_bounds.1]
  have hr : (65/6:ℝ)*((7/10)^3/(7/5)+(11/10)^3/(173/100)) < 11 := by
    exact_mod_cast ContinuousResearch.FiniteRationalCertificate.fixed_prime_coarse_lt_eleven
  nlinarith

theorem actual_sharp_calibration_lt : calibrationConstant < 11 := by
  have hs : (162826/7623:ℝ)/2 ≤ 65/6 := by norm_num
  have hn : 0 ≤ (Real.log 2)^3/Real.sqrt 2+(Real.log 3)^3/Real.sqrt 3 := by positivity
  unfold calibrationConstant
  exact (mul_le_mul_of_nonneg_right hs hn).trans_lt actual_coarse_calibration_lt

#print axioms log_pi_lower
#print axioms actual_endpoint_lt
#print axioms sqrt_two_bounds
#print axioms sqrt_three_bounds
#print axioms fixed_prime_sum_gt
#print axioms actual_coarse_calibration_lt
#print axioms actual_sharp_calibration_lt
end ContinuousResearch.NumericMeanBounds
```
