/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NewtonHankelInertia
import Mathlib.Topology.Algebra.InfiniteSum.Order
import Mathlib.Tactic

/-! Localization and stability of negative squares for unbounded heat-weighted nodes. -/
namespace GRWTSK.XiHeatMomentNegativeIndex
open Complex
noncomputable section

theorem prescribe_negative {c s q : ℂ} (hs : s^2=2*c) (h : s*q ≠ 0) (a : ℝ) :
    2*(c*(q*(I*a/(s*q)))^2).re = -a^2 := by
  rw [GRWTSK.NumberTheory.NewtonHankelInertia.conjugate_pair_squares c s _ hs]
  have he : s*(q*(I*a/(s*q)))=I*a := by
    calc
      _ = (I*a)*(s*q)/(s*q) := by ring
      _ = _ := mul_div_cancel_right₀ _ h
  rw [he]; simp

theorem weighted_square_error (c x y : ℂ) :
    |(c*x^2).re-(c*y^2).re| ≤ ‖c‖*‖x-y‖*(‖x‖+‖y‖) := by
  have he : c*x^2-c*y^2=c*(x-y)*(x+y) := by ring
  rw [←Complex.sub_re,he]
  calc
    _ ≤ ‖c*(x-y)*(x+y)‖ := Complex.abs_re_le_norm _
    _ ≤ _ := by rw [norm_mul,norm_mul]; gcongr; exact norm_add_le _ _

theorem strict_negative_near {E error target m : ℝ} (hm : 0<m)
    (ht : target ≤ -m) (he : |E-target| ≤ error) (hsmall : error<m) :
    E < 0 := by have := (abs_le.mp he).2; linarith

theorem finite_matrix_stability {ι : Type*} (S : Finset ι) (v : ι → ℝ)
    (err : ι → ι → ℝ) {ε : ℝ} (hε : 0 ≤ ε)
    (herr : ∀ i ∈ S, ∀ j ∈ S, |err i j| ≤ ε) :
    |∑ i ∈ S, ∑ j ∈ S, v i*err i j*v j| ≤ ε*(∑ i ∈ S, |v i|)^2 := by
  calc
    _ ≤ ∑ i ∈ S, ∑ j ∈ S, |v i*err i j*v j| := by
      apply (Finset.abs_sum_le_sum_abs ..).trans
      exact Finset.sum_le_sum fun i hi => Finset.abs_sum_le_sum_abs ..
    _ ≤ ∑ i ∈ S, ∑ j ∈ S, |v i| *ε*|v j| := by
      apply Finset.sum_le_sum; intro i hi
      apply Finset.sum_le_sum; intro j hj
      simp only [abs_mul]
      gcongr; exact herr i hi j hj
    _ = _ := by simp_rw [←Finset.mul_sum]; rw [←Finset.sum_mul,←Finset.sum_mul]; ring

end
end GRWTSK.XiHeatMomentNegativeIndex
