# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceActualPsiInverseSquareAttempt06.Variantac9a954740cd49d6cc56ba4d27f4dd6cedd8f749cc8d9f92b20e289cd5ec3bf6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `21a225dcbb1336cea4cc278e84ecf80346fd26c8` · SHA-256 `ac9a954740cd49d6cc56ba4d27f4dd6cedd8f749cc8d9f92b20e289cd5ec3bf6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceActualPsiNegativeBlock
import FormalResearch.RiemannHypothesis.SourceMangoldtAbel
import Mathlib.NumberTheory.AbelSummation
import Mathlib.Analysis.SpecialFunctions.Integrals.Basic

/-!
Exact finite real inverse-square integration of the literal closed Mangoldt
source and the independently prescribed shifted Xi. All prime powers, natural
floor cutoffs and closed endpoint atoms are retained. No arithmetic bound is
asserted. Research direction: grwtsk contributors. Construction: OpenAI Codex.
-/

set_option autoImplicit false

noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceActualPsiInverseSquare

open MeasureTheory Set ArithmeticFunction
open scoped BigOperators Interval
open SourceMangoldtAbel WeightedPrimeMertens RH16ActualPsiNegativeBlock

private theorem psi_inverseSquare_intervalIntegrable (X : ℝ) (hX : 2 ≤ X) :
    IntervalIntegrable (fun y => Chebyshev.psi y / y ^ 2) volume 2 X := by
  have hc : ContinuousOn (fun y : ℝ => -(y ^ 2)⁻¹) (Icc 2 X) := by
    intro y hy
    have hy0 : y ≠ 0 := by linarith [hy.1]
    exact ((continuousAt_id.pow 2).inv₀ (pow_ne_zero 2 hy0)).neg.continuousWithinAt
  have hi := integrableOn_mul_sum_Icc (m := 0) (vonMangoldt : ℕ → ℝ)
    (by norm_num : (0 : ℝ) ≤ 2) hc.integrableOn_Icc
  rw [intervalIntegrable_iff_integrableOn_Icc_of_le hX]
  apply hi.neg.congr_fun
  · intro y _
    change -(-(y ^ 2)⁻¹ * ∑ n ∈ Finset.Icc 0 ⌊y⌋₊, vonMangoldt n) = _
    rw [← Chebyshev.psi_eq_sum_Icc]
    ring
  · exact measurableSet_Icc

/-- Raw psi retains its exact closed weighted prefix, with no invented gamma shift. -/
theorem actual_psi_inverse_square (X : ℝ) (hX : 2 ≤ X) :
    (∫ y in 2..X, Chebyshev.psi y / y ^ 2) =
      mangoldtLogPrefix (Real.log X) - Chebyshev.psi X / X := by
  have hX0 : 0 < X := by linarith
  have hdiff : ∀ y ∈ Icc (2 : ℝ) X,
      DifferentiableAt ℝ (fun y : ℝ => y⁻¹) y := by
    intro y hy
    exact (hasDerivAt_inv (show y ≠ 0 by linarith [hy.1])).differentiableAt
  have hc : ContinuousOn (fun y : ℝ => -(y ^ 2)⁻¹) (Icc 2 X) := by
    intro y hy
    have hy0 : y ≠ 0 := by linarith [hy.1]
    exact ((continuousAt_id.pow 2).inv₀ (pow_ne_zero 2 hy0)).neg.continuousWithinAt
  have hi : IntegrableOn (deriv (fun y : ℝ => y⁻¹)) (Icc 2 X) := by
    simpa only [deriv_inv'] using hc.integrableOn_Icc
  have ha := sum_mul_eq_sub_integral_mul₁ (vonMangoldt : ℕ → ℝ)
    (by simp) (by simp) X hdiff hi
  have hs : (∑ n ∈ Finset.Icc 0 ⌊X⌋₊, (n : ℝ)⁻¹ * vonMangoldt n) =
      mangoldtLogPrefix (Real.log X) := by
    unfold mangoldtLogPrefix weightedMangoldt
    rw [Real.exp_log hX0, Finset.Icc_eq_cons_Ioc (Nat.zero_le _), Finset.sum_cons]
    simp only [Nat.cast_zero, inv_zero, zero_mul, zero_add, div_eq_mul_inv, mul_comm]
  have hj : (∫ y in Ioc (2 : ℝ) X,
      deriv (fun y : ℝ => y⁻¹) y * ∑ n ∈ Finset.Icc 0 ⌊y⌋₊, vonMangoldt n) =
      -(∫ y in 2..X, Chebyshev.psi y / y ^ 2) := by
    rw [intervalIntegral.integral_of_le hX, ← integral_neg]
    apply setIntegral_congr_fun measurableSet_Ioc
    intro y _
    dsimp only
    rw [deriv_inv, ← Chebyshev.psi_eq_sum_Icc]
    ring
  rw [hs, ← Chebyshev.psi_eq_sum_Icc, hj] at ha
  rw [show Chebyshev.psi X / X = X⁻¹ * Chebyshev.psi X by ring]
  linarith

private theorem reciprocal_intervalIntegrable (X : ℝ) (hX : 2 ≤ X) :
    IntervalIntegrable (fun y : ℝ => 1 / y) volume 2 X := by
  apply ContinuousOn.intervalIntegrable_of_Icc hX
  intro y hy
  exact (continuousAt_const.div continuousAt_id
    (show y ≠ 0 by linarith [hy.1])).continuousWithinAt

private theorem inverseSquare_intervalIntegrable (X : ℝ) (hX : 2 ≤ X) :
    IntervalIntegrable (fun y : ℝ => 1 / y ^ 2) volume 2 X := by
  apply ContinuousOn.intervalIntegrable_of_Icc hX
  intro y hy
  have hy0 : y ≠ 0 := by linarith [hy.1]
  exact (continuousAt_const.div (continuousAt_id.pow 2)
    (pow_ne_zero 2 hy0)).continuousWithinAt

private theorem inverseSquare_integral (X : ℝ) (hX : 2 ≤ X) :
    (∫ y in 2..X, (1 : ℝ) / y ^ 2) = 1 / 2 - 1 / X := by
  have hd (y : ℝ) (hy : y ∈ uIcc (2 : ℝ) X) :
      HasDerivAt (fun y : ℝ => -y⁻¹) (1 / y ^ 2) y := by
    rw [uIcc_of_le hX] at hy
    have h := (hasDerivAt_const y (-1 : ℝ)).div (hasDerivAt_id y)
      (show y ≠ 0 by linarith [hy.1])
    convert h using 1
    · funext z
      simp [div_eq_mul_inv]
    · simp
  have hi := intervalIntegral.integral_eq_sub_of_hasDerivAt hd
    (inverseSquare_intervalIntegrable X hX)
  exact hi.trans (by norm_num [one_div] <;> ring)

/-- The independently supplied Xi has an integrable inverse-square finite density. -/
theorem shiftedActualChebyshev_inverseSquare_intervalIntegrable (X : ℝ) (hX : 2 ≤ X) :
    IntervalIntegrable (fun y => shiftedActualChebyshev y / y ^ 2) volume 2 X := by
  let c := 2 * (Real.eulerMascheroniConstant + 1 - Real.log 2)
  apply ((psi_inverseSquare_intervalIntegrable X hX).sub
    (reciprocal_intervalIntegrable X hX)).add
      ((inverseSquare_intervalIntegrable X hX).const_mul c) |>.congr
  intro y hy
  have hy0 : y ≠ 0 := by
    have h := (uIoc_of_le hX ▸ hy).1
    linarith
  dsimp only [shiftedActualChebyshev, c]
  field_simp

/-- Exact requested identity for EVERY real X >= 2, with closed prime powers and its true gamma. -/
theorem shiftedActualChebyshev_inverse_square (X : ℝ) (hX : 2 ≤ X) :
    (∫ y in 2..X, shiftedActualChebyshev y / y ^ 2) =
      mangoldtLogError (Real.log X) + Real.eulerMascheroniConstant -
        shiftedActualChebyshev X / X := by
  have hX0 : 0 < X := by linarith
  let c := 2 * (Real.eulerMascheroniConstant + 1 - Real.log 2)
  have he : (∫ y in 2..X, shiftedActualChebyshev y / y ^ 2) =
      (∫ y in 2..X, Chebyshev.psi y / y ^ 2) -
      (∫ y in 2..X, (1 : ℝ) / y) + c * (∫ y in 2..X, (1 : ℝ) / y ^ 2) := by
    calc
      _ = ∫ y in 2..X, Chebyshev.psi y / y ^ 2 - 1 / y + c * (1 / y ^ 2) := by
        apply intervalIntegral.integral_congr
        intro y hy
        have hy0 : y ≠ 0 := by
          rw [uIcc_of_le hX] at hy
          linarith [hy.1]
        dsimp only [shiftedActualChebyshev, c]
        field_simp
      _ = _ := by
        rw [intervalIntegral.integral_add
          ((psi_inverseSquare_intervalIntegrable X hX).sub
            (reciprocal_intervalIntegrable X hX))
          ((inverseSquare_intervalIntegrable X hX).const_mul c),
          intervalIntegral.integral_sub (psi_inverseSquare_intervalIntegrable X hX)
            (reciprocal_intervalIntegrable X hX), intervalIntegral.integral_const_mul]
  rw [he, actual_psi_inverse_square X hX, inverseSquare_integral X hX,
    integral_one_div_of_pos (by norm_num) hX0,
    Real.log_div hX0.ne' (by norm_num)]
  unfold mangoldtLogError shiftedActualChebyshev
  dsimp only [c]
  field_simp
  ring

end FormalResearch.RiemannHypothesis.SourceActualPsiInverseSquare
```
