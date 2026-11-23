import Mathlib.Analysis.SpecialFunctions.Trigonometric.Sinc
import Mathlib.Analysis.SpecificLimits.Basic
import Mathlib.MeasureTheory.Integral.DominatedConvergence
import Mathlib.Tactic

/-! Squared Hilbert–Schmidt convergence of the symmetric time-average
kernel to the diagonal for every finite Borel measure on the frequency plane. -/

namespace GRWTSK.XiTimeAveragedSpectrum

open Filter MeasureTheory
open scoped Topology

noncomputable section

def diagonal (p : ℝ × ℝ) : ℝ := if p.1 = p.2 then 1 else 0

def kernel (n : ℕ) (p : ℝ × ℝ) : ℝ := Real.sinc ((n : ℝ)*(p.1-p.2))

theorem sinc_ray {a : ℝ} (ha : a ≠ 0) :
    Tendsto (fun n : ℕ => Real.sinc ((n : ℝ)*a)) atTop (𝓝 0) := by
  apply squeeze_zero_norm' _ (tendsto_const_div_atTop_nhds_zero_nat (1/|a|))
  filter_upwards [eventually_gt_atTop 0] with n hn
  have hn' : 0 < (n:ℝ) := by exact_mod_cast hn
  rw [Real.sinc_of_ne_zero (mul_ne_zero hn'.ne' ha), Real.norm_eq_abs, abs_div, abs_mul,
    abs_of_pos hn']
  calc |Real.sin ((n:ℝ)*a)| / ((n:ℝ)*|a|) ≤ 1 / ((n:ℝ)*|a|) :=
         div_le_div_of_nonneg_right (abs_le.mpr ⟨Real.neg_one_le_sin _,Real.sin_le_one _⟩)
           (by positivity)
       _ = (1/|a|)/(n:ℝ) := by ring

theorem kernel_limit (p : ℝ × ℝ) : Tendsto (fun n => kernel n p) atTop (𝓝 (diagonal p)) := by
  by_cases h : p.1=p.2
  · simp [kernel, diagonal, h]
  · simpa [kernel, diagonal, h] using sinc_ray (sub_ne_zero.mpr h)

/-- In the operator model ν is the product of two copies of the finite
cyclic spectral measure. This proof allows atoms and singular measures. -/
theorem integrated_diagonal_limit (ν : Measure (ℝ × ℝ)) [IsFiniteMeasure ν] :
    Tendsto (fun n => ∫ p, (kernel n p-diagonal p)^2 ∂ν) atTop (𝓝 0) := by
  have hm : Measurable diagonal := by
    exact Measurable.ite (measurableSet_eq_fun measurable_fst measurable_snd) measurable_const measurable_const
  have hk (n : ℕ) : Measurable (kernel n) :=
    Real.continuous_sinc.measurable.comp (measurable_const.mul (measurable_fst.sub measurable_snd))
  have hc := tendsto_integral_of_dominated_convergence (μ := ν)
    (F := fun n p => (kernel n p-diagonal p)^2) (f := fun _ => (0:ℝ)) (fun _ => (1:ℝ))
    (fun n => (((hk n).sub hm).pow_const _).aestronglyMeasurable)
    (integrable_const _) (fun n => Filter.Eventually.of_forall (fun p => by
      by_cases h : p.1=p.2
      · simp [kernel, diagonal, h]
      · rw [diagonal, if_neg h, sub_zero, Real.norm_eq_abs, abs_of_nonneg (sq_nonneg _)]
        have hle := Real.sinc_le_one ((n:ℝ)*(p.1-p.2))
        have hge := Real.neg_one_le_sinc ((n:ℝ)*(p.1-p.2))
        unfold kernel
        nlinarith [mul_nonneg (sub_nonneg.mpr hle) (by linarith : 0 ≤ 1+Real.sinc ((n:ℝ)*(p.1-p.2)))]))
    (Filter.Eventually.of_forall (fun p => by
      simpa using ((kernel_limit p).sub (tendsto_const_nhds (x := diagonal p))).pow 2))
  simpa using hc

end
end GRWTSK.XiTimeAveragedSpectrum
