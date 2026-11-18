/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
-/
import Mathlib.Analysis.Complex.Exponential
import Mathlib.MeasureTheory.Integral.Bochner.Basic
import Mathlib.MeasureTheory.Measure.Lebesgue.Basic
import Mathlib.Topology.Order.Compact
import Mathlib.Topology.UniformSpace.LocallyUniformConvergence

/-!
# Weighted Fourier comparison on a closed complex substrip

In the logarithmic variable of Connes, Consani and Moscovici,
*Zeta Spectral Triples*, arXiv:2511.22755v1, Proposition 5.9 and §7,
the kernel is `exp (-I * z * t)`. The weighted error estimate below
can supply uniform convergence on each closed substrip for
`XiDeterminantStripReturn.riemannHypothesis_of_strip_limit`.
The estimate concerns the error function in the original logarithmic
coordinate, including the portion outside the finite window.
-/

set_option autoImplicit false

open Filter MeasureTheory
open scoped Topology

namespace GRWTSK.NumberTheory.Zeta.XiWeightedFourierReturn

/-- The kernel bound keeps the sign of the Fourier convention in the exact
norm identity before taking an absolute value in the strip estimate. -/
theorem norm_logFourierKernel_le {a : ℝ} {z : ℂ} (hz : |z.im| ≤ a) (t : ℝ) :
    ‖Complex.exp (-Complex.I * z * (t : ℂ))‖ ≤ Real.exp (a * |t|) := by
  rw [Complex.norm_exp]
  apply Real.exp_le_exp.mpr
  have hre : (-Complex.I * z * (t : ℂ)).re = z.im * t := by
    simp [Complex.mul_re, Complex.neg_re]
  rw [hre]
  calc
    z.im * t ≤ |z.im * t| := le_abs_self _
    _ = |z.im| * |t| := abs_mul _ _
    _ ≤ a * |t| := mul_le_mul_of_nonneg_right hz (abs_nonneg _)

/-- The Fourier transform of the error is bounded by its weighted
logarithmic integral on every point of the indicated closed substrip. -/
theorem norm_logFourierError_le {a : ℝ} (f : ℝ → ℂ)
    (hf : Integrable (fun t => Real.exp (a * |t|) * ‖f t‖))
    {z : ℂ} (hz : |z.im| ≤ a) :
    ‖∫ t : ℝ, Complex.exp (-Complex.I * z * (t : ℂ)) * f t‖ ≤
      ∫ t : ℝ, Real.exp (a * |t|) * ‖f t‖ := by
  apply norm_integral_le_of_norm_le hf
  exact Eventually.of_forall fun t => by
    rw [norm_mul]
    exact mul_le_mul_of_nonneg_right (norm_logFourierKernel_le hz t) (norm_nonneg _)

/-- A weighted error budget tending to zero gives uniform convergence on the
closed substrip once the transformed error is identified with the difference
of the two source functions. -/
theorem tendstoUniformlyOn_of_weighted_error {a : ℝ} {D : ℕ → ℂ → ℂ}
    {F : ℂ → ℂ} (err : ℕ → ℝ → ℂ)
    (hInt : ∀ n, Integrable (fun t => Real.exp (a * |t|) * ‖err n t‖))
    (hError : ∀ n z, |z.im| ≤ a →
      D n z - F z = ∫ t : ℝ, Complex.exp (-Complex.I * z * (t : ℂ)) * err n t)
    (hLimit : Tendsto (fun n => ∫ t : ℝ, Real.exp (a * |t|) * ‖err n t‖) atTop (𝓝 0)) :
    TendstoUniformlyOn D F atTop {z : ℂ | |z.im| ≤ a} := by
  rw [Metric.tendstoUniformlyOn_iff]
  intro ε hε
  filter_upwards [hLimit.eventually (gt_mem_nhds hε)] with n hn z hz
  rw [dist_comm, dist_eq_norm, hError n z hz]
  exact (norm_logFourierError_le (err n) (hInt n) hz).trans_lt hn

/-- Weighted convergence for every smaller exponent gives exactly the local
uniformity required on the open critical strip. -/
theorem tendstoLocallyUniformlyOn_of_weighted_error {D : ℕ → ℂ → ℂ}
    {F : ℂ → ℂ} (err : ℕ → ℝ → ℂ)
    (hInt : ∀ a : ℝ, 0 ≤ a → a < 1 / 2 → ∀ n,
      Integrable (fun t => Real.exp (a * |t|) * ‖err n t‖))
    (hError : ∀ n z, |z.im| < 1 / 2 →
      D n z - F z = ∫ t : ℝ, Complex.exp (-Complex.I * z * (t : ℂ)) * err n t)
    (hLimit : ∀ a : ℝ, 0 ≤ a → a < 1 / 2 →
      Tendsto (fun n => ∫ t : ℝ, Real.exp (a * |t|) * ‖err n t‖) atTop (𝓝 0)) :
    TendstoLocallyUniformlyOn D F atTop {z : ℂ | |z.im| < 1 / 2} := by
  have hopen : IsOpen {z : ℂ | |z.im| < 1 / 2} :=
    isOpen_lt Complex.continuous_im.abs continuous_const
  apply (tendstoLocallyUniformlyOn_iff_forall_isCompact hopen).2
  intro K hK hCompact
  rcases K.eq_empty_or_nonempty with rfl | hNonempty
  · rw [Metric.tendstoUniformlyOn_iff]
    exact fun _ _ => Eventually.of_forall fun _ _ hz => False.elim hz
  obtain ⟨w, hw, hMax⟩ :=
    hCompact.exists_isMaxOn hNonempty Complex.continuous_im.abs.continuousOn
  have hwStrip : |w.im| < 1 / 2 := hK hw
  have hUniform := tendstoUniformlyOn_of_weighted_error err
    (hInt |w.im| (abs_nonneg _) hwStrip)
    (fun n z hz => hError n z (hz.trans_lt hwStrip))
    (hLimit |w.im| (abs_nonneg _) hwStrip)
  exact hUniform.mono fun _ hz => hMax hz

end GRWTSK.NumberTheory.Zeta.XiWeightedFourierReturn
