import Mathlib.Analysis.SpecialFunctions.Gaussian.GaussianIntegral
import Mathlib.Analysis.Calculus.ParametricIntegral

open MeasureTheory Set Filter
open scoped Topology

namespace LaplaceScratch

noncomputable section

def kernelIntegrand (k : ℕ) (w : ℂ) (A : ℝ) : ℂ :=
  (A : ℂ) ^ k * Complex.exp (-w * A)

lemma norm_kernelIntegrand (k : ℕ) (w : ℂ) (A : ℝ) (hA : 0 ≤ A) :
    ‖kernelIntegrand k w A‖ = A ^ k * Real.exp (-w.re * A) := by
  simp [kernelIntegrand, norm_pow, Complex.norm_real, Real.norm_eq_abs,
    abs_of_nonneg hA, Complex.norm_exp]

lemma kernelIntegrand_integrable (k : ℕ) (w : ℂ) (hw : 0 < w.re) :
    IntegrableOn (kernelIntegrand k w) (Ioi 1) := by
  have hr := integrableOn_rpow_mul_exp_neg_mul_rpow
    (s := (k : ℝ)) (p := (1 : ℝ)) (by have := Nat.cast_nonneg (α := ℝ) k; linarith) zero_lt_one hw
  simp only [Real.rpow_natCast, Real.rpow_one] at hr
  refine (integrable_norm_iff ?_).mp ?_
  · exact (by unfold kernelIntegrand; fun_prop : Continuous (kernelIntegrand k w)).aestronglyMeasurable
  · exact (hr.mono_set (Ioi_subset_Ioi (by norm_num))).congr_fun
      (fun A hA ↦ (norm_kernelIntegrand k w A (by exact (zero_lt_one.trans hA).le)).symm) measurableSet_Ioi

lemma kernelIntegrand_tendsto (k : ℕ) (w : ℂ) (hw : 0 < w.re) :
    Tendsto (kernelIntegrand k w) atTop (𝓝 0) := by
  rw [tendsto_zero_iff_norm_tendsto_zero]
  have hr := tendsto_rpow_mul_exp_neg_mul_atTop_nhds_zero (k : ℝ) w.re hw
  simp only [Real.rpow_natCast] at hr
  apply hr.congr'
  filter_upwards [eventually_ge_atTop (0 : ℝ)] with A hA
  exact (norm_kernelIntegrand k w A hA).symm

lemma kernelIntegrand_deriv (k : ℕ) (w : ℂ) (A : ℝ) :
    HasDerivAt (kernelIntegrand (k+1) w)
      (((k+1 : ℕ) : ℂ) * kernelIntegrand k w A - w * kernelIntegrand (k+1) w A) A := by
  have hd := ((Complex.ofRealCLM.hasDerivAt (x := A)).pow (k+1)).mul
    (((Complex.ofRealCLM.hasDerivAt (x := A)).const_mul (-w)).cexp)
  apply hd.congr_deriv
  simp only [kernelIntegrand, Nat.add_sub_cancel, Complex.ofRealCLM_apply,
    Complex.ofReal_one, mul_one, Pi.pow_apply]
  ring

lemma integral_recurrence (k : ℕ) (w : ℂ) (hw : 0 < w.re) :
    (∫ A in Ioi (1 : ℝ), kernelIntegrand (k+1) w A) =
      (Complex.exp (-w) + ((k+1 : ℕ) : ℂ) * ∫ A in Ioi (1 : ℝ), kernelIntegrand k w A) / w := by
  have h := integral_Ioi_of_hasDerivAt_of_tendsto'
    (a := (1 : ℝ)) (fun A _ ↦ kernelIntegrand_deriv k w A)
    (((kernelIntegrand_integrable k w hw).const_mul _).sub
      ((kernelIntegrand_integrable (k+1) w hw).const_mul _))
    (kernelIntegrand_tendsto (k+1) w hw)
  rw [integral_sub ((kernelIntegrand_integrable k w hw).const_mul _)
    ((kernelIntegrand_integrable (k+1) w hw).const_mul _), integral_const_mul,
    integral_const_mul] at h
  have hw0 : w ≠ 0 := by intro he; simp [he] at hw
  simp only [kernelIntegrand, Complex.ofReal_one, one_pow, mul_one, one_mul, zero_sub] at h
  apply (eq_div_iff hw0).mpr
  dsimp only [kernelIntegrand]
  linear_combination -h

/-- Polynomial numerator of the exact tail kernel. -/
def kernelNumerator : ℕ → ℂ → ℂ
  | 0, _ => 1
  | k+1, w => w ^ (k+1) + (k+1 : ℕ) * kernelNumerator k w

def laplaceKernel (k : ℕ) (w : ℂ) : ℂ :=
  Complex.exp (-w) * kernelNumerator k w / w ^ (k+1)

lemma laplaceKernel_zero (w : ℂ) : laplaceKernel 0 w = Complex.exp (-w) / w := by
  simp [laplaceKernel, kernelNumerator]

lemma laplaceKernel_succ (k : ℕ) (w : ℂ) (hw : w ≠ 0) :
    laplaceKernel (k+1) w =
      (Complex.exp (-w) + (k+1 : ℕ) * laplaceKernel k w) / w := by
  simp only [laplaceKernel, kernelNumerator]
  rw [pow_succ w (k+1)]
  field_simp

lemma integral_eq_laplaceKernel (k : ℕ) (w : ℂ) (hw : 0 < w.re) :
    (∫ A in Ioi (1 : ℝ), kernelIntegrand k w A) = laplaceKernel k w := by
  have hw0 : w ≠ 0 := by intro he; simp [he] at hw
  induction k with
  | zero =>
    simp only [laplaceKernel_zero, kernelIntegrand, pow_zero, one_mul]
    simpa only [mul_one, Complex.ofReal_one, neg_div_neg_eq, neg_neg] using
      integral_exp_mul_complex_Ioi (a := -w) (by simpa using hw) 1
  | succ k ih => rw [integral_recurrence k w hw, ih, laplaceKernel_succ k w hw0]

lemma kernelNumerator_analytic (k : ℕ) (w : ℂ) :
    AnalyticAt ℂ (kernelNumerator k) w := by
  induction k with
  | zero => exact analyticAt_const
  | succ k ih => exact (analyticAt_id.pow _).add (analyticAt_const.mul ih)

lemma laplaceKernel_analytic (k : ℕ) (w : ℂ) (hw : w ≠ 0) :
    AnalyticAt ℂ (laplaceKernel k) w := by
  exact ((analyticAt_id.neg.cexp).mul
    (kernelNumerator_analytic k w)).div (analyticAt_id.pow _) (pow_ne_zero _ hw)

lemma kernelNumerator_at_zero (k : ℕ) : kernelNumerator k 0 = k.factorial := by
  induction k with
  | zero => simp [kernelNumerator]
  | succ k ih => simp [kernelNumerator, ih, Nat.factorial_succ]

lemma laplaceKernel_cleared (k : ℕ) (w : ℂ) (hw : w ≠ 0) :
    w ^ (k+1) * laplaceKernel k w = Complex.exp (-w) * kernelNumerator k w := by
  dsimp only [laplaceKernel]
  field_simp

lemma laplaceKernel_cleared_tendsto (k : ℕ) :
    Tendsto (fun w : ℂ ↦ w ^ (k+1) * laplaceKernel k w) (𝓝[≠] 0) (𝓝 k.factorial) := by
  have hc : ContinuousAt (fun w : ℂ ↦ Complex.exp (-w) * kernelNumerator k w) 0 :=
    (Complex.continuous_exp.continuousAt.comp continuousAt_id.neg).mul
      (kernelNumerator_analytic k 0).continuousAt
  have h := hc.tendsto.mono_left (nhdsWithin_le_nhds (s := {0}ᶜ))
  simp only [neg_zero, Complex.exp_zero, one_mul, kernelNumerator_at_zero] at h
  apply h.congr'
  filter_upwards [self_mem_nhdsWithin] with w hw
  exact (laplaceKernel_cleared k w hw).symm

lemma laplaceKernel_lower_cleared_tendsto (k n : ℕ) (hkn : k < n) :
    Tendsto (fun w : ℂ ↦ w ^ (n+1) * laplaceKernel k w) (𝓝[≠] 0) (𝓝 0) := by
  have hp : Tendsto (fun w : ℂ ↦ w ^ (n-k)) (𝓝[≠] 0) (𝓝 0) := by
    have hid : Tendsto (fun w : ℂ ↦ w) (𝓝[≠] 0) (𝓝 0) :=
      continuousAt_id.tendsto.mono_left nhdsWithin_le_nhds
    simpa only [zero_pow (Nat.sub_ne_zero_of_lt hkn)] using hid.pow (n-k)
  have h := hp.mul (laplaceKernel_cleared_tendsto k)
  simp only [zero_mul] at h
  convert h using 1
  funext w
  rw [← mul_assoc, ← pow_add]
  congr 2
  omega

lemma laplaceKernel_sum_cleared_tendsto (c : ℕ → ℂ) (n : ℕ) :
    Tendsto (fun w : ℂ ↦ w ^ (n+1) *
      ∑ k ∈ Finset.range (n+1), c k * laplaceKernel k w)
      (𝓝[≠] 0) (𝓝 (c n * n.factorial)) := by
  have hl : ∀ k ∈ Finset.range n,
      Tendsto (fun w : ℂ ↦ c k * (w ^ (n+1) * laplaceKernel k w))
        (𝓝[≠] 0) (𝓝 0) := by
    intro k hk
    simpa only [mul_zero] using
      (laplaceKernel_lower_cleared_tendsto k n (Finset.mem_range.mp hk)).const_mul (c k)
  have hsum := tendsto_finsetSum (Finset.range n) hl
  simp only [Finset.sum_const_zero] at hsum
  have ht := hsum.add ((laplaceKernel_cleared_tendsto n).const_mul (c n))
  simp only [zero_add] at ht
  convert ht using 1
  funext w
  rw [Finset.sum_range_succ, mul_add, Finset.mul_sum]
  congr 1
  · apply Finset.sum_congr rfl
    intro k _
    ring
  · ring

end
end LaplaceScratch
