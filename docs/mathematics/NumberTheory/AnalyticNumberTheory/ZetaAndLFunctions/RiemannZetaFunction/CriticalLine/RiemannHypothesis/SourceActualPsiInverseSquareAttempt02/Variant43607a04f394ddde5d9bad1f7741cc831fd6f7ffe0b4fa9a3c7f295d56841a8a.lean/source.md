# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceActualPsiInverseSquareAttempt02.Variant43607a04f394ddde5d9bad1f7741cc831fd6f7ffe0b4fa9a3c7f295d56841a8a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d4d7387a3e293067a67364034aebb3516d8d4b78` · SHA-256 `43607a04f394ddde5d9bad1f7741cc831fd6f7ffe0b4fa9a3c7f295d56841a8a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

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
    dsimp only
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

end FormalResearch.RiemannHypothesis.SourceActualPsiInverseSquare
```
