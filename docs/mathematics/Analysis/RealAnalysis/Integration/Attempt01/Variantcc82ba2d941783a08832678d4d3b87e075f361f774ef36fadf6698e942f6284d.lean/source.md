# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.Attempt01.Variantcc82ba2d941783a08832678d4d3b87e075f361f774ef36fadf6698e942f6284d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a0290f12044ceda5f54a977c64980889d744ab0a` · SHA-256 `cc82ba2d941783a08832678d4d3b87e075f361f774ef36fadf6698e942f6284d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import RootActualXiTailPrimitive
import Mathlib.NumberTheory.AbelSummation

/-!
The actual anchored Xi primitive has a literal finite critical-half readout.
The prime-seven lower trace and every closed upper prime power are retained.
This does not bound its critical cancellation or the average of its absolute value.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceActualXiHalfFiniteReadout
open MeasureTheory Set ArithmeticFunction
open scoped Interval
open RootActualXiTailPrimitive SourceActualPsiInverseSquare RH16ActualPsiNegativeBlock
noncomputable section

/-- The literal closed critical-half Mangoldt window above the retained lower prime seven. -/
def actualMangoldtHalfWindowSeven (Y : ℝ) : ℝ :=
  ∑ n ∈ Finset.Ioc 7 (Nat.floor Y), (vonMangoldt n : ℝ) / Real.sqrt (n : ℝ)

private theorem power_three_halves {x : ℝ} (hx : 0 < x) :
    x ^ (3 / 2 : ℝ) = x * Real.sqrt x := by
  rw [show (3 / 2 : ℝ) = 1 + 1 / 2 by norm_num,
    Real.rpow_add hx, Real.rpow_one, ← Real.sqrt_eq_rpow]

private theorem inv_sqrt_hasDerivAt {x : ℝ} (hx : 0 < x) :
    HasDerivAt (fun x : ℝ => 1 / Real.sqrt x) (-1 / (2 * x * Real.sqrt x)) x := by
  have hs : Real.sqrt x ≠ 0 := (Real.sqrt_pos.2 hx).ne'
  simp only [one_div]
  apply ((Real.hasDerivAt_sqrt hx.ne').inv hs).congr_deriv
  have hss := Real.sq_sqrt hx.le
  field_simp
  nlinarith

private theorem inv_sqrt_deriv_integrable {Y : ℝ} :
    IntegrableOn (deriv (fun x : ℝ => 1 / Real.sqrt x)) (Icc (2 : ℝ) Y) := by
  have hc : ContinuousOn (fun x : ℝ => -1 / (2 * x * Real.sqrt x)) (Icc (2 : ℝ) Y) := by
    intro x hx
    have hp : 0 < x := by linarith [hx.1]
    have hd : ContinuousAt (fun x : ℝ => 2 * x * Real.sqrt x) x := by fun_prop
    exact (continuousAt_const.div hd
      (ne_of_gt (by positivity : 0 < 2 * x * Real.sqrt x))).continuousWithinAt
  apply hc.integrableOn_Icc.congr_fun
  · intro x hx
    exact (inv_sqrt_hasDerivAt (by linarith [hx.1])).deriv.symm
  · exact measurableSet_Icc

private theorem psi_half_integrable {Y : ℝ} (hY : 2 ≤ Y) :
    IntervalIntegrable (fun x => Chebyshev.psi x / x ^ (3 / 2 : ℝ)) volume 2 Y := by
  have hc : ContinuousOn (fun x : ℝ => 1 / x ^ (3 / 2 : ℝ)) (Icc (2 : ℝ) Y) := by
    intro x hx
    have hp : 0 < x := by linarith [hx.1]
    exact (continuousAt_const.div (continuousAt_id.rpow_const (Or.inl hp.ne'))
      (Real.rpow_pos_of_pos hp _).ne').continuousWithinAt
  have hi := integrableOn_mul_sum_Icc (m := 0) (vonMangoldt : ℕ → ℝ)
    (by norm_num : (0 : ℝ) ≤ 2) hc.integrableOn_Icc
  rw [intervalIntegrable_iff_integrableOn_Icc_of_le hY]
  apply hi.congr_fun
  · intro x _
    rw [← Chebyshev.psi_eq_sum_Icc]
    ring
  · exact measurableSet_Icc

private theorem psi_half_abel {Y : ℝ} (hY : 2 ≤ Y) :
    (∫ x in 2..Y, Chebyshev.psi x / x ^ (3 / 2 : ℝ)) =
      2 * ((∑ n ∈ Finset.Icc 0 (Nat.floor Y),
        (vonMangoldt n : ℝ) / Real.sqrt (n : ℝ)) - Chebyshev.psi Y / Real.sqrt Y) := by
  have ha := sum_mul_eq_sub_integral_mul₁ (vonMangoldt : ℕ → ℝ)
    (by simp) (by simp) Y
    (fun x hx => (inv_sqrt_hasDerivAt (by linarith [hx.1])).differentiableAt)
    inv_sqrt_deriv_integrable
  have hj : (∫ x in Ioc (2 : ℝ) Y,
      deriv (fun x : ℝ => 1 / Real.sqrt x) x *
        ∑ n ∈ Finset.Icc 0 (Nat.floor x), (vonMangoldt n : ℝ)) =
      -(1 / 2 : ℝ) * (∫ x in 2..Y, Chebyshev.psi x / x ^ (3 / 2 : ℝ)) := by
    rw [intervalIntegral.integral_of_le hY, ← integral_const_mul]
    apply setIntegral_congr_fun measurableSet_Ioc
    intro x hx
    have hp : 0 < x := by linarith [hx.1]
    rw [(inv_sqrt_hasDerivAt hp).deriv, ← Chebyshev.psi_eq_sum_Icc,
      power_three_halves hp]
    ring
  rw [hj] at ha
  have hs : (∑ n ∈ Finset.Icc 0 (Nat.floor Y),
      (1 / Real.sqrt (n : ℝ)) * (vonMangoldt n : ℝ)) =
      ∑ n ∈ Finset.Icc 0 (Nat.floor Y),
        (vonMangoldt n : ℝ) / Real.sqrt (n : ℝ) := by
    apply Finset.sum_congr rfl
    intro n _
    ring
  rw [hs, ← Chebyshev.psi_eq_sum_Icc] at ha
  linarith

private theorem continuous_integrals {Y : ℝ} (hY : 2 ≤ Y) :
    (∫ x in 2..Y, 1 / Real.sqrt x) = 2 * (Real.sqrt Y - Real.sqrt 2) ∧
      (∫ x in 2..Y, 1 / x ^ (3 / 2 : ℝ)) =
        2 * (1 / Real.sqrt 2 - 1 / Real.sqrt Y) := by
  have hx (x : ℝ) (hx : x ∈ uIcc (2 : ℝ) Y) : 0 < x := by
    rw [uIcc_of_le hY] at hx
    linarith [hx.1]
  have hi : IntervalIntegrable (fun x : ℝ => 1 / Real.sqrt x) volume 2 Y := by
    apply ContinuousOn.intervalIntegrable_of_Icc hY
    intro x hx
    exact (continuousAt_const.div (Real.continuous_sqrt.continuousAt)
      (Real.sqrt_pos.2 (by linarith [hx.1])).ne').continuousWithinAt
  have hj : IntervalIntegrable (fun x : ℝ => 1 / x ^ (3 / 2 : ℝ)) volume 2 Y := by
    apply ContinuousOn.intervalIntegrable_of_Icc hY
    intro x hx
    have hp : 0 < x := by linarith [hx.1]
    exact (continuousAt_const.div (continuousAt_id.rpow_const (Or.inl hp.ne'))
      (Real.rpow_pos_of_pos hp _).ne').continuousWithinAt
  constructor
  · have hd (x : ℝ) (hm : x ∈ uIcc (2 : ℝ) Y) :
        HasDerivAt (fun x : ℝ => 2 * Real.sqrt x) (1 / Real.sqrt x) x := by
      convert (Real.hasDerivAt_sqrt (hx x hm).ne').const_mul 2 using 1 <;> try rfl
      ring
    rw [intervalIntegral.integral_eq_sub_of_hasDerivAt hd hi]
    ring
  · have hd (x : ℝ) (hm : x ∈ uIcc (2 : ℝ) Y) :
        HasDerivAt (fun x : ℝ => -2 * (1 / Real.sqrt x))
          (1 / x ^ (3 / 2 : ℝ)) x := by
      convert (inv_sqrt_hasDerivAt (hx x hm)).const_mul (-2) using 1 <;> try rfl
      rw [power_three_halves (hx x hm)]
      ring
    rw [intervalIntegral.integral_eq_sub_of_hasDerivAt hd hj]
    ring

private theorem shifted_half_abel {Y : ℝ} (hY : 2 ≤ Y) :
    (∫ x in 2..Y, shiftedActualChebyshev x / x ^ (3 / 2 : ℝ)) =
      2 * ((∑ n ∈ Finset.Icc 0 (Nat.floor Y),
        (vonMangoldt n : ℝ) / Real.sqrt (n : ℝ)) - Chebyshev.psi Y / Real.sqrt Y -
        Real.sqrt Y + Real.sqrt 2 +
          2 * (Real.eulerMascheroniConstant + 1 - Real.log 2) *
            (1 / Real.sqrt 2 - 1 / Real.sqrt Y)) := by
  let c : ℝ := 2 * (Real.eulerMascheroniConstant + 1 - Real.log 2)
  have h1 : IntervalIntegrable (fun x : ℝ => 1 / Real.sqrt x) volume 2 Y := by
    apply ContinuousOn.intervalIntegrable_of_Icc hY
    intro x hx
    exact (continuousAt_const.div Real.continuous_sqrt.continuousAt
      (Real.sqrt_pos.2 (by linarith [hx.1])).ne').continuousWithinAt
  have h2 : IntervalIntegrable (fun x : ℝ => 1 / x ^ (3 / 2 : ℝ)) volume 2 Y := by
    apply ContinuousOn.intervalIntegrable_of_Icc hY
    intro x hx
    have hp : 0 < x := by linarith [hx.1]
    exact (continuousAt_const.div (continuousAt_id.rpow_const (Or.inl hp.ne'))
      (Real.rpow_pos_of_pos hp _).ne').continuousWithinAt
  have he : (∫ x in 2..Y, shiftedActualChebyshev x / x ^ (3 / 2 : ℝ)) =
      (∫ x in 2..Y, Chebyshev.psi x / x ^ (3 / 2 : ℝ)) -
        (∫ x in 2..Y, 1 / Real.sqrt x) + c * (∫ x in 2..Y, 1 / x ^ (3 / 2 : ℝ)) := by
    calc
      _ = ∫ x in 2..Y, Chebyshev.psi x / x ^ (3 / 2 : ℝ) -
          1 / Real.sqrt x + c * (1 / x ^ (3 / 2 : ℝ)) := by
        apply intervalIntegral.integral_congr
        intro x hx
        rw [uIcc_of_le hY] at hx
        have hp : 0 < x := by linarith [hx.1]
        rw [power_three_halves hp]
        dsimp only [shiftedActualChebyshev, c]
        field_simp
      _ = _ := by
        rw [intervalIntegral.integral_add ((psi_half_integrable hY).sub h1) (h2.const_mul c),
          intervalIntegral.integral_sub (psi_half_integrable hY) h1,
          intervalIntegral.integral_const_mul]
  rw [he, psi_half_abel hY, (continuous_integrals hY).1, (continuous_integrals hY).2]
  dsimp only [c]
  ring

/-- Finite closed Abel keeps the seven atom in its lower psi trace and every later prime power. -/
theorem actualXi_half_window_eq_finite {Y : ℝ} (hY : 7 ≤ Y) :
    (∫ x in (7 : ℝ)..Y, shiftedActualChebyshev x / x ^ (3 / 2 : ℝ)) =
      2 * actualMangoldtHalfWindowSeven Y -
        2 * (Chebyshev.psi Y + Y +
          2 * (Real.eulerMascheroniConstant + 1 - Real.log 2)) / Real.sqrt Y +
        2 * (Chebyshev.psi 7 + 7 +
          2 * (Real.eulerMascheroniConstant + 1 - Real.log 2)) / Real.sqrt 7 := by
  have hY2 : 2 ≤ Y := by linarith
  have hIY := shiftedActualChebyshev_mul_intervalIntegrable Y hY2
    (fun x : ℝ => 1 / x ^ (3 / 2 : ℝ)) (by
      intro x hx
      have hp : 0 < x := by linarith [hx.1]
      exact (continuousAt_const.div (continuousAt_id.rpow_const (Or.inl hp.ne'))
        (Real.rpow_pos_of_pos hp _).ne').continuousWithinAt)
  have hI7 := shiftedActualChebyshev_mul_intervalIntegrable 7 (by norm_num)
    (fun x : ℝ => 1 / x ^ (3 / 2 : ℝ)) (by
      intro x hx
      have hp : 0 < x := by linarith [hx.1]
      exact (continuousAt_const.div (continuousAt_id.rpow_const (Or.inl hp.ne'))
        (Real.rpow_pos_of_pos hp _).ne').continuousWithinAt)
  simp only [mul_one_div] at hIY hI7
  have he := intervalIntegral.integral_interval_sub_left hIY hI7
  have hs : (∑ n ∈ Finset.Icc 0 (Nat.floor Y),
      (vonMangoldt n : ℝ) / Real.sqrt (n : ℝ)) =
      (∑ n ∈ Finset.Icc 0 7, (vonMangoldt n : ℝ) / Real.sqrt (n : ℝ)) +
        actualMangoldtHalfWindowSeven Y := by
    have hu : Finset.Icc 0 (Nat.floor Y) = Finset.Icc 0 7 ∪ Finset.Ioc 7 (Nat.floor Y) := by
      ext n
      simp only [Finset.mem_Icc, Finset.mem_union, Finset.mem_Ioc]
      have hf : 7 ≤ Nat.floor Y := (Nat.le_floor hY)
      omega
    have hd : Disjoint (Finset.Icc 0 7) (Finset.Ioc 7 (Nat.floor Y)) := by
      rw [Finset.disjoint_left]
      intro n hn hm
      simp only [Finset.mem_Icc, Finset.mem_Ioc] at hn hm
      omega
    rw [hu, Finset.sum_union hd]
    rfl
  have hp : 0 < Y := by linarith
  have hsY := Real.sq_sqrt hp.le
  have hs7 := Real.sq_sqrt (by norm_num : (0 : ℝ) ≤ 7)
  rw [shifted_half_abel hY2, shifted_half_abel (by norm_num : (2 : ℝ) ≤ 7)] at he
  simp only [Nat.floor_ofNat] at he
  rw [hs] at he
  rw [← he]
  field_simp
  nlinarith

/-- The anchored time primitive has the same literal closed-half finite arithmetic readout. -/
theorem actualAnchoredXiTailPrimitive_eq_finite {t : ℝ} (ht : Real.log 7 ≤ t) :
    actualAnchoredXiTailPrimitive t =
      2 * actualMangoldtHalfWindowSeven (Real.exp t) -
        2 * (Chebyshev.psi (Real.exp t) + Real.exp t +
          2 * (Real.eulerMascheroniConstant + 1 - Real.log 2)) / Real.sqrt (Real.exp t) +
        2 * (Chebyshev.psi 7 + 7 +
          2 * (Real.eulerMascheroniConstant + 1 - Real.log 2)) / Real.sqrt 7 := by
  rw [actualAnchoredXiTailPrimitive_eq_physical]
  apply actualXi_half_window_eq_finite
  simpa only [Real.exp_log (by norm_num : (0 : ℝ) < 7)] using Real.exp_le_exp.mpr ht

end
end FormalResearch.RiemannHypothesis.SourceActualXiHalfFiniteReadout
```
