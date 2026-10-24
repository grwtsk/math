# Complete source: GRWTSK.Analysis.SourceActualXiSqrtPrimitiveReadout.Variantd4101e53002787908785c7ffcad65f9242afaa778b02563cef2c794a4aa4fc14

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `56c9c4e2b14790aa03efc4d1aa4ba762a1d3e565` · SHA-256 `d4101e53002787908785c7ffcad65f9242afaa778b02563cef2c794a4aa4fc14`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceActualXiPrimitiveTransport
import SourceActualPsiInverseSquare
import Mathlib.Analysis.SpecialFunctions.Pow.Deriv
import Mathlib.Tactic

/-!
Exact physical-variable readout and closed prime-power inverse-square-root
Abel identity for the actual anchored Xi primitive. No uniform H or J is supplied.
Research direction: grwtsk contributors. Formal construction: OpenAI Codex.
-/
set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceActualXiSqrtPrimitiveReadout
open MeasureTheory Set ArithmeticFunction
open scoped Interval BigOperators
open SourceActualXiPrimitiveTransport SourceActualPsiInverseSquare
open RH16ActualPsiNegativeBlock

theorem actualXiLogPrimitive_log_eq_physical (Y : ℝ) (hY : 2 ≤ Y) :
    actualXiLogPrimitive (Real.log Y) =
      ∫ x in 2..Y, shiftedActualChebyshev x / x ^ (3 / 2 : ℝ) := by
  have hp : 0 < Y := by linarith
  have hs := intervalIntegral.integral_comp_mul_deriv_of_deriv_nonneg
    (f := Real.exp) (f' := Real.exp)
    (g := fun x => shiftedActualChebyshev x / x ^ (3 / 2 : ℝ))
    (a := Real.log 2) (b := Real.log Y) Real.continuous_exp.continuousOn
    (fun t _ => Real.hasDerivAt_exp t) (fun t _ => (Real.exp_pos t).le)
  rw [Real.exp_log (by norm_num : (0 : ℝ) < 2), Real.exp_log hp] at hs
  unfold actualXiLogPrimitive
  rw [← hs]
  apply intervalIntegral.integral_congr
  intro t _
  dsimp only [Function.comp_apply]
  unfold actualXiLogDensity
  have he : Real.exp t / (Real.exp t) ^ (3 / 2 : ℝ) = Real.exp (-t / 2) := by
    rw [← Real.exp_mul, ← Real.exp_sub]
    congr 1
    ring
  rw [← he]
  ring

def halfAtomPrimitive (x : ℝ) : ℝ := -2 * x ^ (-1 / 2 : ℝ)

theorem halfAtomPrimitive_hasDerivAt (x : ℝ) (hx : 0 < x) :
    HasDerivAt halfAtomPrimitive (1 / x ^ (3 / 2 : ℝ)) x := by
  have hd := (Real.hasDerivAt_rpow_const (x := x) (p := (-1 / 2 : ℝ))
    (Or.inl hx.ne')).const_mul (-2)
  exact hd.congr_deriv (by
    rw [show (-1 / 2 - 1 : ℝ) = -(3 / 2) by ring, Real.rpow_neg hx.le]
    ring)

theorem inverseThreeHalf_continuousOn (Y : ℝ) :
    ContinuousOn (fun x : ℝ => 1 / x ^ (3 / 2 : ℝ)) (Icc 2 Y) := by
  intro x hx
  have hp : 0 < x := by linarith [hx.1]
  exact (continuousAt_const.div (continuousAt_id.rpow_const (Or.inl hp.ne'))
    (Real.rpow_pos_of_pos hp _).ne').continuousWithinAt

theorem psi_inverseThreeHalf_intervalIntegrable (Y : ℝ) (hY : 2 ≤ Y) :
    IntervalIntegrable (fun x => Chebyshev.psi x / x ^ (3 / 2 : ℝ)) volume 2 Y := by
  rw [intervalIntegrable_iff_integrableOn_Icc_of_le hY]
  apply (integrableOn_mul_sum_Icc (m := 0) (vonMangoldt : ℕ → ℝ)
    (by norm_num : (0 : ℝ) ≤ 2)
    (inverseThreeHalf_continuousOn Y).integrableOn_Icc).congr_fun
  · intro x _
    dsimp only
    rw [← Chebyshev.psi_eq_sum_Icc]
    ring
  · exact measurableSet_Icc

/-- All closed atoms through the literal real floor remain in the finite readout. -/
theorem actual_psi_inverseThreeHalf (Y : ℝ) (hY : 2 ≤ Y) :
    (∫ x in 2..Y, Chebyshev.psi x / x ^ (3 / 2 : ℝ)) =
      2 * ∑ n ∈ Finset.Icc 0 ⌊Y⌋₊, vonMangoldt n * (n : ℝ) ^ (-1 / 2 : ℝ) -
        2 * Y ^ (-1 / 2 : ℝ) * Chebyshev.psi Y := by
  have hd : ∀ x ∈ Icc (2 : ℝ) Y, DifferentiableAt ℝ halfAtomPrimitive x := by
    intro x hx
    exact (halfAtomPrimitive_hasDerivAt x (by linarith [hx.1])).differentiableAt
  have hi : IntegrableOn (deriv halfAtomPrimitive) (Icc 2 Y) := by
    apply (inverseThreeHalf_continuousOn Y).integrableOn_Icc.congr_fun
    · intro x hx
      exact (halfAtomPrimitive_hasDerivAt x (by linarith [hx.1])).deriv.symm
    · exact measurableSet_Icc
  have ha := sum_mul_eq_sub_integral_mul₁ (vonMangoldt : ℕ → ℝ)
    (by simp) (by simp) Y hd hi
  have hj : (∫ x in Ioc (2 : ℝ) Y,
      deriv halfAtomPrimitive x * ∑ n ∈ Finset.Icc 0 ⌊x⌋₊, vonMangoldt n) =
      ∫ x in 2..Y, Chebyshev.psi x / x ^ (3 / 2 : ℝ) := by
    rw [intervalIntegral.integral_of_le hY]
    apply setIntegral_congr_fun measurableSet_Ioc
    intro x hx
    dsimp only
    rw [(halfAtomPrimitive_hasDerivAt x (by linarith [hx.1])).deriv,
      ← Chebyshev.psi_eq_sum_Icc]
    ring
  rw [hj, ← Chebyshev.psi_eq_sum_Icc] at ha
  have hsum : (∑ n ∈ Finset.Icc 0 ⌊Y⌋₊, halfAtomPrimitive n * vonMangoldt n) =
      -2 * ∑ n ∈ Finset.Icc 0 ⌊Y⌋₊, vonMangoldt n * (n : ℝ) ^ (-1 / 2 : ℝ) := by
    rw [Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro n _
    unfold halfAtomPrimitive
    ring
  rw [hsum] at ha
  unfold halfAtomPrimitive at ha
  linarith

end FormalResearch.RiemannHypothesis.SourceActualXiSqrtPrimitiveReadout
```
