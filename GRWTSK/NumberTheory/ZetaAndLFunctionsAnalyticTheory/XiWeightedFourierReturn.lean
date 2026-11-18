/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
-/
import Mathlib.Analysis.Complex.Exponential
import Mathlib.MeasureTheory.Function.L2Space
import Mathlib.MeasureTheory.Function.LocallyIntegrable
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

/-- A measurable log profile with integrable weighted norm has an
integrable Fourier integrand at each frequency in the closed substrip. -/
theorem integrable_logFourierIntegrand {a : ℝ} {f : ℝ → ℂ}
    (hf : AEStronglyMeasurable f volume)
    (hWeight : Integrable (fun t => Real.exp (a * |t|) * ‖f t‖))
    {z : ℂ} (hz : |z.im| ≤ a) :
    Integrable (fun t : ℝ => Complex.exp (-Complex.I * z * (t : ℂ)) * f t) := by
  have hKernel : Continuous (fun t : ℝ => Complex.exp (-Complex.I * z * (t : ℂ))) :=
    Complex.continuous_exp.comp (continuous_const.mul Complex.continuous_ofReal)
  apply hWeight.mono' (hKernel.aestronglyMeasurable.mul hf)
  exact Eventually.of_forall fun t => by
    rw [Pi.mul_apply, norm_mul]
    exact mul_le_mul_of_nonneg_right (norm_logFourierKernel_le hz t) (norm_nonneg _)

/-- Compare two transforms defined by their log profiles. Weighted decay
of the difference gives the strip limit without a separate assumed
transform-of-the-difference identity. -/
theorem tendstoLocallyUniformlyOn_logFourier_of_weighted_sub
    (p : ℕ → ℝ → ℂ) (q : ℝ → ℂ)
    (hp : ∀ n, AEStronglyMeasurable (p n) volume)
    (hq : AEStronglyMeasurable q volume)
    (hP : ∀ a : ℝ, 0 ≤ a → a < 1 / 2 → ∀ n,
      Integrable (fun t => Real.exp (a * |t|) * ‖p n t‖))
    (hQ : ∀ a : ℝ, 0 ≤ a → a < 1 / 2 →
      Integrable (fun t => Real.exp (a * |t|) * ‖q t‖))
    (hLimit : ∀ a : ℝ, 0 ≤ a → a < 1 / 2 →
      Tendsto (fun n => ∫ t : ℝ, Real.exp (a * |t|) * ‖p n t - q t‖) atTop (𝓝 0)) :
    TendstoLocallyUniformlyOn
      (fun n z => ∫ t : ℝ, Complex.exp (-Complex.I * z * (t : ℂ)) * p n t)
      (fun z => ∫ t : ℝ, Complex.exp (-Complex.I * z * (t : ℂ)) * q t)
      atTop {z : ℂ | |z.im| < 1 / 2} := by
  apply tendstoLocallyUniformlyOn_of_weighted_error (fun n t => p n t - q t) ?_ ?_ hLimit
  · intro a ha ha' n
    have hWeight : Continuous (fun t : ℝ => Real.exp (a * |t|)) :=
      Real.continuous_exp.comp (continuous_const.mul continuous_abs)
    apply ((hP a ha ha' n).add (hQ a ha ha')).mono'
      (hWeight.aestronglyMeasurable.mul ((hp n).sub hq).norm)
    exact Eventually.of_forall fun t => by
      change |Real.exp (a * |t|) * ‖p n t - q t‖| ≤
        Real.exp (a * |t|) * ‖p n t‖ + Real.exp (a * |t|) * ‖q t‖
      rw [abs_of_nonneg (mul_nonneg (Real.exp_nonneg _) (norm_nonneg _)), ← mul_add]
      exact mul_le_mul_of_nonneg_left (norm_sub_le _ _) (Real.exp_nonneg _)
  · intro n z hz
    have hpz := integrable_logFourierIntegrand (hp n)
      (hP |z.im| (abs_nonneg _) hz n) (z := z) le_rfl
    have hqz := integrable_logFourierIntegrand hq
      (hQ |z.im| (abs_nonneg _) hz) (z := z) le_rfl
    simp only [mul_sub, integral_sub hpz hqz]

/-- Cauchy–Schwarz on the logarithmic window with the exact exponential
weight factor used for the finite Galerkin error. The same formula covers
the unweighted real-axis case and the degenerate window. -/
theorem weighted_logWindowError_le {a A : ℝ} {f : ℝ → ℂ}
    (hf : MemLp f 2 (volume.restrict (Set.Icc (-A) A))) :
    (∫ t in Set.Icc (-A) A, Real.exp (a * |t|) * ‖f t‖) ≤
      Real.sqrt (∫ t in Set.Icc (-A) A, (Real.exp (a * |t|)) ^ (2 : ℕ)) *
      Real.sqrt (∫ t in Set.Icc (-A) A, ‖f t‖ ^ (2 : ℕ)) := by
  let w : ℝ → ℝ := fun t => Real.exp (a * |t|)
  have hContinuous : Continuous w :=
    Real.continuous_exp.comp (continuous_const.mul continuous_abs)
  have hw : MemLp w 2 (volume.restrict (Set.Icc (-A) A)) :=
    (memLp_two_iff_integrable_sq hContinuous.aestronglyMeasurable).2
      ((hContinuous.pow 2).continuousOn.integrableOn_compact isCompact_Icc)
  have hConj : Real.HolderConjugate (2 : ℝ) 2 := by
    rw [Real.holderConjugate_iff]
    norm_num
  have hHolder := integral_mul_le_Lp_mul_Lq_of_nonneg hConj
    (Eventually.of_forall fun t => Real.exp_nonneg (a * |t|))
    (Eventually.of_forall fun t => norm_nonneg (f t))
    (by simpa using hw) (by simpa using hf.norm)
  simpa only [w, Real.rpow_two, Real.sqrt_eq_rpow] using hHolder

/-- A vanishing window Cauchy–Schwarz budget supplies the weighted
integral limit on the whole line for errors extended by zero. -/
theorem weighted_logWindowError_tendsto_zero {a : ℝ} (A : ℕ → ℝ)
    (err : ℕ → ℝ → ℂ)
    (hs : ∀ n t, t ∉ Set.Icc (-A n) (A n) → err n t = 0)
    (hL2 : ∀ n, MemLp (err n) 2 (volume.restrict (Set.Icc (-A n) (A n))))
    (hBudget : Tendsto (fun n =>
      Real.sqrt (∫ t in Set.Icc (-A n) (A n), (Real.exp (a * |t|)) ^ (2 : ℕ)) *
      Real.sqrt (∫ t in Set.Icc (-A n) (A n), ‖err n t‖ ^ (2 : ℕ))) atTop (𝓝 0)) :
    Tendsto (fun n => ∫ t : ℝ, Real.exp (a * |t|) * ‖err n t‖) atTop (𝓝 0) := by
  apply squeeze_zero (fun n => integral_nonneg
    (fun t => mul_nonneg (Real.exp_nonneg _) (norm_nonneg (err n t)))) _ hBudget
  intro n
  have hWhole :
      (∫ t in Set.Icc (-A n) (A n), Real.exp (a * |t|) * ‖err n t‖) =
      ∫ t : ℝ, Real.exp (a * |t|) * ‖err n t‖ :=
    setIntegral_eq_integral_of_forall_compl_eq_zero (fun t ht => by simp [hs n t ht])
  rw [← hWhole]
  exact weighted_logWindowError_le (hL2 n)

end GRWTSK.NumberTheory.Zeta.XiWeightedFourierReturn
