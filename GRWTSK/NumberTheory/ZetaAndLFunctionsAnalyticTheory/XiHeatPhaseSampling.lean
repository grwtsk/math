/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Bounds
import Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus
import Mathlib.Tactic

/-! Cell estimates for the square-root sampling of prime frequencies by heat derivative orders. -/
namespace GRWTSK.XiHeatPhaseSampling
open Real MeasureTheory
noncomputable section

theorem phase_cell {a l r x : ℝ} (hl : l ≤ x) (hr : x ≤ r) :
    |cos (a*x)-cos (a*l)| ≤ |a| *(r-l) := by
  calc
    _ ≤ |a*x-a*l| := abs_cos_sub_cos_le _ _
    _ = |a| *(x-l) := by rw [← mul_sub,abs_mul,abs_of_nonneg (sub_nonneg.mpr hl)]
    _ ≤ _ := mul_le_mul_of_nonneg_left (by linarith) (abs_nonneg _)

def primitive (a x : ℝ) := 2*x*sin (a*x)/a+2*cos (a*x)/a^2

theorem primitive_deriv {a : ℝ} (ha : a ≠ 0) (x : ℝ) :
    HasDerivAt (primitive a) (2*x*cos (a*x)) x := by
  unfold primitive
  have hs := ((hasDerivAt_id x).const_mul a).sin
  have hc := ((hasDerivAt_id x).const_mul a).cos
  convert (((((hasDerivAt_id x).const_mul 2).mul hs).div_const a).add
    ((hc.const_mul 2).div_const (a^2))) using 1
  · rfl
  · simp; field_simp; ring

theorem primitive_integral {a : ℝ} (ha : a ≠ 0) (l r : ℝ) :
    (∫ x in l..r, 2*x*cos (a*x)) = primitive a r - primitive a l := by
  apply intervalIntegral.integral_eq_sub_of_hasDerivAt
  · intro x _; exact primitive_deriv ha x
  · exact Continuous.intervalIntegrable (by fun_prop) _ _

theorem sqrt_cell_mass (j : ℕ) :
    (∫ x in sqrt (j:ℝ)..sqrt (j+1:ℝ), 2*x) = 1 := by
  have h : (∫ x in sqrt (j:ℝ)..sqrt (j+1:ℝ), 2*x) =
      (sqrt (j+1:ℝ))^2-(sqrt (j:ℝ))^2 := by
    apply intervalIntegral.integral_eq_sub_of_hasDerivAt (f := fun x : ℝ => x^2)
    · intro x _
      simpa using (hasDerivAt_pow 2 x)
    · exact Continuous.intervalIntegrable (by fun_prop) _ _
  rw [h,Real.sq_sqrt (by positivity),Real.sq_sqrt (by positivity)]
  ring

theorem sum_cell_errors (e : ℕ → ℝ) (a : ℝ) (N : ℕ)
    (h : ∀ j < N, |e j| ≤ |a| *(sqrt ((j:ℝ)+1)-sqrt j)) :
    |∑ j ∈ Finset.range N, e j| ≤ |a| *sqrt N := by
  induction N with
  | zero => simp
  | succ n ih =>
    rw [Finset.sum_range_succ]
    calc
      _ ≤ |∑ j ∈ Finset.range n, e j|+|e n| := abs_add_le _ _
      _ ≤ |a| *sqrt n+|a| *(sqrt ((n:ℝ)+1)-sqrt n) :=
        add_le_add (ih fun j hj => h j (Nat.lt_succ_of_lt hj)) (h n (Nat.lt_succ_self n))
      _ = _ := by push_cast; ring

end
end GRWTSK.XiHeatPhaseSampling
