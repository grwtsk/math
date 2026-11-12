/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the file LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilGammaHeadIntegrability
import Mathlib.Analysis.SpecialFunctions.Integrals.Basic
import Mathlib.Tactic

/-!
# One-sided near-zero enclosures for the original Weil gamma density

MSC2020: 11M41 (primary), 26D15, 46E35.

The unchanged parity kernel has integrable second and fourth shift moments.
The second moment multiplies the genuine derivative energy. The fourth
moment controls a NONNEGATIVE tangent defect, so the tangent approximation
is an upper approximation, not a lower certificate for the Weil form.

The last theorem keeps its pointwise shift-defect premise explicit. The
complete H² variance proof supplying this premise, its sharp constants,
complex matrix polarization, and the return to the original prime/gamma/
two-pole expression are written in the adjacent analytical companion.
Those H² and matrix arguments are NOT Lean declarations in this file.

Native source: grwtsk/math@05c3158365036f6eaa025d78cf2586dbbfb81f20.
Lean v4.34.1; Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612.
SOURCE_PROOF_CANDIDATE. Elaboration, complete dependency build, fresh kernel
replay, transitive axiom audit, and independent review NOT_RUN.
Novelty UNASSESSED. Local consequences, not a new RH/GRH sign theorem.
See individual declaration provenance. Refs math#1801, scope 6831173870.
-/

set_option autoImplicit false
noncomputable section

open MeasureTheory Set

namespace GRWTSK.NumberTheory.WeilQuadraticForm.GammaNearZero

open OddRootProjection SourcePrimeCorrelation

/-- Exact second moment of the original physical-shift kernel. -/
def secondMoment (a : ℕ) (h : ℝ) : ℝ :=
  ∫ r in Ioc (0 : ℝ) h, parityKernel a r * r ^ 2

/-- Parity-uniform fourth-order defect budget; only h ≥ 0 is used. -/
def nearZeroBudget (h : ℝ) : ℝ := h ^ 4 / 96 + h ^ 5 / 60

private theorem denominator_pos {r : ℝ} (hr : 0 < r) :
    0 < 1 - Real.exp (-2 * r) := by
  have he : Real.exp (-2 * r) < Real.exp 0 :=
    Real.exp_lt_exp.mpr (by linarith)
  simpa only [Real.exp_zero] using sub_pos.mpr he

private theorem kernel_nonneg (a : ℕ) {r : ℝ} (hr : 0 < r) :
    0 ≤ parityKernel a r :=
  div_nonneg (Real.exp_nonneg _) (denominator_pos hr).le

/-- Cancellation of the kernel's first-order singularity, with explicit
lower and upper bounds on every positive physical-shift cell. -/
theorem parityKernel_mul_shift_bounds (a : ℕ) {h r : ℝ}
    (hr : 0 < r) (hrh : r ≤ h) :
    Real.exp (-((a : ℝ) + 1 / 2) * h) / 2 ≤ parityKernel a r * r ∧
      parityKernel a r * r ≤ r + 1 / 2 := by
  have hd := denominator_pos hr
  have ha : 0 ≤ (a : ℝ) + 1 / 2 := by positivity
  have he : Real.exp (-((a : ℝ) + 1 / 2) * h) ≤
      Real.exp (-((a : ℝ) + 1 / 2) * r) :=
    Real.exp_le_exp.mpr (mul_le_mul_of_nonpos_left hrh (neg_nonpos.mpr ha))
  have hd_upper : 1 - Real.exp (-2 * r) ≤ 2 * r := by
    linarith [Real.add_one_le_exp (-2 * r)]
  constructor
  · rw [parityKernel, div_mul_eq_mul_div]
    apply (le_div_iff₀ hd).2
    calc
      _ ≤ (Real.exp (-((a : ℝ) + 1 / 2) * h) / 2) * (2 * r) :=
        mul_le_mul_of_nonneg_left hd_upper (by positivity)
      _ = Real.exp (-((a : ℝ) + 1 / 2) * h) * r := by ring
      _ ≤ _ := mul_le_mul_of_nonneg_right he hr.le
  · simpa only [mul_comm] using GammaHeadIntegrability.shift_mul_parityKernel_le a hr

private theorem weighted_kernel_le (a k : ℕ) {r : ℝ} (hr : 0 < r) :
    parityKernel a r * r ^ (k + 1) ≤ r ^ (k + 1) + r ^ k / 2 := by
  have h := mul_le_mul_of_nonneg_right
    (parityKernel_mul_shift_bounds a hr (le_refl r)).2 (pow_nonneg hr.le k)
  rw [pow_succ]
  nlinarith

private theorem weighted_kernel_integrable (a k : ℕ) (h : ℝ) :
    IntegrableOn (fun r : ℝ => parityKernel a r * r ^ (k + 1)) (Ioc 0 h) := by
  have hc : Continuous (fun r : ℝ => r ^ (k + 1) + r ^ k / 2) := by fun_prop
  have hm : Measurable (fun r : ℝ => parityKernel a r * r ^ (k + 1)) := by
    unfold parityKernel
    fun_prop
  apply (hc.intervalIntegrable 0 h).1.mono' hm.aestronglyMeasurable
  filter_upwards [ae_restrict_mem measurableSet_Ioc] with r hr
  rw [Real.norm_eq_abs, abs_of_nonneg (mul_nonneg (kernel_nonneg a hr.1)
    (pow_nonneg hr.1.le _))]
  exact weighted_kernel_le a k hr.1

private theorem polynomial_integral (k : ℕ) {h : ℝ} (hh : 0 ≤ h) :
    (∫ r in Ioc (0 : ℝ) h, r ^ (k + 1) + r ^ k / 2) =
      h ^ (k + 2) / ((k : ℝ) + 2) + h ^ (k + 1) / (2 * ((k : ℝ) + 1)) := by
  have hc1 : Continuous (fun r : ℝ => r ^ (k + 1)) := by fun_prop
  have hc2 : Continuous (fun r : ℝ => r ^ k / 2) := by fun_prop
  rw [← intervalIntegral.integral_of_le hh,
    intervalIntegral.integral_add (hc1.intervalIntegrable 0 h) (hc2.intervalIntegrable 0 h),
    intervalIntegral.integral_div, integral_pow, integral_pow]
  simp only [Nat.cast_add, Nat.cast_one, Nat.add_assoc, zero_pow (by omega : k + 1 ≠ 0),
    zero_pow (by omega : k + (1 + 1) ≠ 0), sub_zero]
  norm_num <;> ring

/-- Genuine moment integrability and outward enclosures. The constants are
uniform over both physical parities and, more generally, every natural a. -/
theorem kernel_moment_bounds (a : ℕ) {h : ℝ} (hh : 0 ≤ h) :
    IntegrableOn (fun r : ℝ => parityKernel a r * r ^ 2) (Ioc 0 h) ∧
    IntegrableOn (fun r : ℝ => parityKernel a r * r ^ 4) (Ioc 0 h) ∧
    Real.exp (-((a : ℝ) + 1 / 2) * h) * h ^ 2 / 4 ≤ secondMoment a h ∧
    secondMoment a h ≤ h ^ 2 / 4 + h ^ 3 / 3 ∧
    (∫ r in Ioc (0 : ℝ) h, parityKernel a r * r ^ 4) ≤ h ^ 4 / 8 + h ^ 5 / 5 := by
  have hi2 : IntegrableOn (fun r : ℝ => parityKernel a r * r ^ 2) (Ioc 0 h) := by
    simpa using weighted_kernel_integrable a 1 h
  have hi4 : IntegrableOn (fun r : ℝ => parityKernel a r * r ^ 4) (Ioc 0 h) := by
    simpa using weighted_kernel_integrable a 3 h
  have hu (k : ℕ) :
      (∫ r in Ioc (0 : ℝ) h, parityKernel a r * r ^ (k + 1)) ≤
        h ^ (k + 2) / ((k : ℝ) + 2) + h ^ (k + 1) / (2 * ((k : ℝ) + 1)) := by
    rw [← polynomial_integral k hh]
    have hc : Continuous (fun r : ℝ => r ^ (k + 1) + r ^ k / 2) := by fun_prop
    apply integral_mono_ae (weighted_kernel_integrable a k h) (hc.intervalIntegrable 0 h).1
    filter_upwards [ae_restrict_mem measurableSet_Ioc] with r hr
    exact weighted_kernel_le a k hr.1
  refine ⟨hi2, hi4, ?_, ?_, ?_⟩
  · let c : ℝ := Real.exp (-((a : ℝ) + 1 / 2) * h) / 2
    have hc : Continuous (fun r : ℝ => c * r) := by fun_prop
    have hl : (∫ r in Ioc (0 : ℝ) h, c * r) ≤ secondMoment a h := by
      apply integral_mono_ae (hc.intervalIntegrable 0 h).1 hi2
      filter_upwards [ae_restrict_mem measurableSet_Ioc] with r hr
      have hb := mul_le_mul_of_nonneg_right
        (parityKernel_mul_shift_bounds a hr.1 hr.2).1 hr.1.le
      dsimp only [c]
      nlinarith
    have he : (∫ r in Ioc (0 : ℝ) h, c * r) =
        Real.exp (-((a : ℝ) + 1 / 2) * h) * h ^ 2 / 4 := by
      rw [integral_const_mul, ← intervalIntegral.integral_of_le hh, integral_id]
      dsimp [c]
      norm_num <;> ring
    rwa [he] at hl
  · simpa [secondMoment, add_comm] using hu 1
  · simpa [add_comm] using hu 3

private theorem energy_nonneg (g : ℝ → ℂ) : 0 ≤ energy g :=
  integral_nonneg (fun _ => sq_nonneg _)

/-- Source-exact near-zero enclosure, CONDITIONAL on the displayed shift
variance estimate. The companion proves that estimate for H² sources, but
its Lean formalization is still open. No derivative or spectral hypothesis
is silently manufactured by this integral comparison. -/
theorem gamma_near_zero_enclosure_of_shift_defect (a : ℕ) {h : ℝ} (hh : 0 ≤ h)
    (f : ℝ → ℂ) (hf : Continuous f)
    (hshift : ∀ r ∈ Ioc (0 : ℝ) h,
      0 ≤ r ^ 2 * energy (deriv f) - energy (fun t => f (t + r) - f t) ∧
      r ^ 2 * energy (deriv f) - energy (fun t => f (t + r) - f t) ≤
        r ^ 4 * energy (deriv (deriv f)) / 12) :
    IntegrableOn (gammaCorrectionDensity a f) (Ioc 0 h) ∧
    0 ≤ secondMoment a h * energy (deriv f) -
      (∫ r in Ioc (0 : ℝ) h, gammaCorrectionDensity a f r) ∧
    secondMoment a h * energy (deriv f) -
      (∫ r in Ioc (0 : ℝ) h, gammaCorrectionDensity a f r) ≤
        nearZeroBudget h * energy (deriv (deriv f)) := by
  obtain ⟨hi2, hi4, _, _, hfour⟩ := kernel_moment_bounds a hh
  have hD1 := energy_nonneg (deriv f)
  have hD2 := energy_nonneg (deriv (deriv f))
  have hm : Measurable (gammaCorrectionDensity a f) :=
    GammaHeadIntegrability.gammaCorrectionDensity_measurable a hf
  have hG : IntegrableOn (gammaCorrectionDensity a f) (Ioc 0 h) := by
    apply (hi2.mul_const (energy (deriv f))).mono' hm.aestronglyMeasurable
    filter_upwards [ae_restrict_mem measurableSet_Ioc] with r hr
    have hk := kernel_nonneg a hr.1
    have he := energy_nonneg (fun t => f (t + r) - f t)
    rw [gammaCorrectionDensity, Real.norm_eq_abs, abs_of_nonneg (mul_nonneg hk he)]
    have hb := mul_le_mul_of_nonneg_left (hshift r hr).1 hk
    nlinarith
  let R : ℝ → ℝ := fun r => parityKernel a r * r ^ 2 * energy (deriv f) -
    gammaCorrectionDensity a f r
  have hR : IntegrableOn R (Ioc 0 h) :=
    (hi2.mul_const (energy (deriv f))).sub hG
  have hp : ∀ᵐ r ∂volume.restrict (Ioc (0 : ℝ) h), 0 ≤ R r := by
    filter_upwards [ae_restrict_mem measurableSet_Ioc] with r hr
    have hb := mul_le_mul_of_nonneg_left (hshift r hr).1 (kernel_nonneg a hr.1)
    dsimp [R, gammaCorrectionDensity]
    nlinarith
  have hupper : (∫ r in Ioc (0 : ℝ) h, R r) ≤
      (∫ r in Ioc (0 : ℝ) h, parityKernel a r * r ^ 4) *
        (energy (deriv (deriv f)) / 12) := by
    rw [← integral_mul_const]
    apply integral_mono_ae hR (hi4.mul_const _)
    filter_upwards [ae_restrict_mem measurableSet_Ioc] with r hr
    have hb := mul_le_mul_of_nonneg_left (hshift r hr).2 (kernel_nonneg a hr.1)
    dsimp [R, gammaCorrectionDensity]
    nlinarith
  have heq : (∫ r in Ioc (0 : ℝ) h, R r) =
      secondMoment a h * energy (deriv f) -
        (∫ r in Ioc (0 : ℝ) h, gammaCorrectionDensity a f r) := by
    dsimp only [R]
    rw [integral_sub (hi2.mul_const _) hG, integral_mul_const]
    rfl
  refine ⟨hG, ?_, ?_⟩
  · rw [← heq]
    exact integral_nonneg_of_ae hp
  · rw [← heq]
    apply hupper.trans
    calc
      _ ≤ (h ^ 4 / 8 + h ^ 5 / 5) * (energy (deriv (deriv f)) / 12) :=
        mul_le_mul_of_nonneg_right hfour (div_nonneg hD2 (by norm_num))
      _ = nearZeroBudget h * energy (deriv (deriv f)) := by
        unfold nearZeroBudget
        ring

end GRWTSK.NumberTheory.WeilQuadraticForm.GammaNearZero
