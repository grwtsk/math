/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import Mathlib.Analysis.Calculus.ParametricIntervalIntegral
import Mathlib.Analysis.Calculus.MeanValue
import Mathlib.Analysis.SpecialFunctions.ExpDeriv
import Mathlib.Analysis.SpecialFunctions.Log.Deriv
import Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus
import Mathlib.Tactic.FunProp
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Ring
import Lean.Elab.Tactic.NormCast

/-!
# The coupled compact-interval Mellin kernel

The kernel is independently defined by an integral on the positive real axis,
not by totalized division at zero. Integrability, the logarithmic derivative
under the integral, and a half-plane Lipschitz estimate are derived here.
This is pure complex analysis. No zero predicate, divisor completeness, source
matching, numerical enclosure producer, or omitted-tail theorem is assumed.
Source draft: NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.Analysis.Complex.IntervalMellinKernel

open MeasureTheory Set Filter
open scoped Topology Interval BigOperators

noncomputable section

/-- Positive-axis exponentiation uses the real logarithm explicitly. -/
def logPower (t : ℝ) (z : ℂ) : ℂ := Complex.exp (z * (Real.log t : ℂ))

/-- The Mellin density. All integral theorems below stay in `1 < a ≤ t ≤ b`. -/
def density (z : ℂ) (t : ℝ) : ℂ :=
  Complex.exp ((z - 1) * (Real.log t : ℂ))

/-- The coupled endpoint kernel; it is defined at every complex parameter. -/
def kernel (a b : ℝ) (z : ℂ) : ℂ := ∫ t in a..b, density z t

/-- The actual logarithmic moment that will be the parameter derivative. -/
def logMoment (a b : ℝ) (z : ℂ) : ℂ :=
  ∫ t in a..b, density z t * (Real.log t : ℂ)

/-- The maximum positive-axis density on the interval at horizontal bound β.
For positive endpoints this is `max (a^(β-1)) (b^(β-1))` in real-power notation. -/
def densityBound (a b β : ℝ) : ℝ :=
  Real.exp (max ((β - 1) * Real.log a) ((β - 1) * Real.log b))

/-- Sensitivity is charged in the complex norm, at both actual endpoints. -/
def sensitivity (a b β : ℝ) : ℝ := (b - a) * Real.log b * densityBound a b β

theorem densityBound_pos (a b β : ℝ) : 0 < densityBound a b β :=
  Real.exp_pos _

theorem sensitivity_nonneg {a b : ℝ} (ha : 1 < a) (hab : a ≤ b) (β : ℝ) :
    0 ≤ sensitivity a b β :=
  mul_nonneg (mul_nonneg (sub_nonneg.mpr hab) (Real.log_nonneg (ha.le.trans hab)))
    (densityBound_pos a b β).le

/-- At a nonzero positive real input, the logarithm has no branch ambiguity. -/
theorem exp_real_log {t : ℝ} (ht : 0 < t) :
    Complex.exp (Real.log t : ℂ) = (t : ℂ) := by
  rw [← Complex.ofReal_exp, Real.exp_log ht]

theorem density_eq_logPower_div {t : ℝ} (ht : 0 < t) (z : ℂ) :
    density z t = logPower t z / (t : ℂ) := by
  unfold density logPower
  rw [sub_mul, one_mul, Complex.exp_sub, exp_real_log ht]

/-- All compact-domain integrability statements are proved, not supplied fields. -/
theorem density_continuousOn {a b : ℝ} (ha : 1 < a) (z : ℂ) :
    ContinuousOn (density z) (Icc a b) := by
  intro t ht
  have ht0 : t ≠ 0 := ne_of_gt ((lt_trans zero_lt_one ha).trans_le ht.1)
  have h : ContinuousAt (density z) t := by
    unfold density
    fun_prop (disch := assumption)
  exact h.continuousWithinAt

theorem weighted_density_continuousOn {a b : ℝ} (ha : 1 < a) (z : ℂ) :
    ContinuousOn (fun t ↦ density z t * (Real.log t : ℂ)) (Icc a b) := by
  intro t ht
  have ht0 : t ≠ 0 := ne_of_gt ((lt_trans zero_lt_one ha).trans_le ht.1)
  have h : ContinuousAt (fun t ↦ density z t * (Real.log t : ℂ)) t := by
    unfold density
    fun_prop (disch := assumption)
  exact h.continuousWithinAt

theorem density_intervalIntegrable {a b : ℝ} (ha : 1 < a) (hab : a ≤ b) (z : ℂ) :
    IntervalIntegrable (density z) volume a b :=
  ContinuousOn.intervalIntegrable_of_Icc hab (density_continuousOn ha z)

theorem weighted_density_intervalIntegrable {a b : ℝ}
    (ha : 1 < a) (hab : a ≤ b) (z : ℂ) :
    IntervalIntegrable (fun t ↦ density z t * (Real.log t : ℂ)) volume a b :=
  ContinuousOn.intervalIntegrable_of_Icc hab (weighted_density_continuousOn ha z)

/-- The horizontal bound retains off-line parameters; no projection is used. -/
theorem norm_density_le {a b β t : ℝ} {z : ℂ}
    (ha : 1 < a) (ht : t ∈ Icc a b) (hz : z.re ≤ β) :
    ‖density z t‖ ≤ densityBound a b β := by
  have ha0 : 0 < a := lt_trans zero_lt_one ha
  have ht0 : 0 < t := ha0.trans_le ht.1
  have hlog0 : 0 ≤ Real.log t := Real.log_nonneg (ha.le.trans ht.1)
  have halog : Real.log a ≤ Real.log t := Real.log_le_log ha0 ht.1
  have hblog : Real.log t ≤ Real.log b := Real.log_le_log ht0 ht.2
  have hfirst : (z.re - 1) * Real.log t ≤ (β - 1) * Real.log t :=
    mul_le_mul_of_nonneg_right (sub_le_sub_right hz 1) hlog0
  have hlast : (β - 1) * Real.log t ≤
      max ((β - 1) * Real.log a) ((β - 1) * Real.log b) := by
    by_cases hβ : 0 ≤ β - 1
    · exact (mul_le_mul_of_nonneg_left hblog hβ).trans (le_max_right _ _)
    · exact (mul_le_mul_of_nonpos_left halog (le_of_not_ge hβ)).trans
        (le_max_left _ _)
  simpa [density, densityBound, Complex.norm_exp, Complex.mul_re] using
    Real.exp_le_exp.mpr (hfirst.trans hlast)

theorem norm_weighted_density_le {a b β t : ℝ} {z : ℂ}
    (ha : 1 < a) (ht : t ∈ Icc a b) (hz : z.re ≤ β) :
    ‖density z t * (Real.log t : ℂ)‖ ≤ Real.log b * densityBound a b β := by
  have ht0 : 0 < t := (lt_trans zero_lt_one ha).trans_le ht.1
  have hlog0 : 0 ≤ Real.log t := Real.log_nonneg (ha.le.trans ht.1)
  have hlog : Real.log t ≤ Real.log b := Real.log_le_log ht0 ht.2
  calc
    _ = ‖density z t‖ * Real.log t := by
      simp [Real.norm_eq_abs, abs_of_nonneg hlog0]
    _ ≤ densityBound a b β * Real.log b :=
      mul_le_mul (norm_density_le ha ht hz) hlog hlog0 (densityBound_pos a b β).le
    _ = _ := mul_comm _ _

/-- An exact elementary parameter derivative, before integration. -/
theorem hasDerivAt_density (z : ℂ) (t : ℝ) :
    HasDerivAt (fun w ↦ density w t) (density z t * (Real.log t : ℂ)) z := by
  simpa [density] using (((hasDerivAt_id z).sub_const 1).mul_const
    (Real.log t : ℂ)).cexp

/-- Local domination is constructed on a horizontal neighborhood of each z.
The bound and all measurability/integrability obligations are supplied by the
preceding lemmas, not by an assumed integral-differentiation certificate. -/
theorem hasDerivAt_kernel {a b : ℝ} (ha : 1 < a) (hab : a ≤ b) (z : ℂ) :
    HasDerivAt (kernel a b) (logMoment a b z) z := by
  let U : Set ℂ := {w | w.re < z.re + 1}
  have hU : U ∈ 𝓝 z :=
    (isOpen_lt Complex.continuous_re continuous_const).mem_nhds (by
      change z.re < z.re + 1
      linarith)
  have h := intervalIntegral.hasDerivAt_integral_of_dominated_loc_of_deriv_le
    (F := density) (F' := fun w t ↦ density w t * (Real.log t : ℂ))
    (bound := fun _ ↦ Real.log b * densityBound a b (z.re + 1)) hU
    (Eventually.of_forall fun w ↦ (density_intervalIntegrable ha hab w).def'.aestronglyMeasurable)
    (density_intervalIntegrable ha hab z)
    (weighted_density_intervalIntegrable ha hab z).def'.aestronglyMeasurable
    (Eventually.of_forall fun t ht w hw ↦ by
      have ht' : t ∈ Ioc a b := (uIoc_of_le hab) ▸ ht
      exact norm_weighted_density_le ha ⟨ht'.1.le, ht'.2⟩ (le_of_lt hw))
    intervalIntegrable_const
    (Eventually.of_forall fun t _ w _ ↦ hasDerivAt_density w t)
  exact h.2

/-- Entire means complex differentiable at every parameter, including zero. -/
theorem differentiable_kernel {a b : ℝ} (ha : 1 < a) (hab : a ≤ b) :
    Differentiable ℂ (kernel a b) := fun z ↦ (hasDerivAt_kernel ha hab z).differentiableAt

theorem deriv_kernel {a b : ℝ} (ha : 1 < a) (hab : a ≤ b) (z : ℂ) :
    deriv (kernel a b) z = logMoment a b z := (hasDerivAt_kernel ha hab z).deriv

theorem norm_kernel_le {a b β : ℝ} {z : ℂ}
    (ha : 1 < a) (hab : a ≤ b) (hz : z.re ≤ β) :
    ‖kernel a b z‖ ≤ (b - a) * densityBound a b β := by
  have h := intervalIntegral.norm_integral_le_of_norm_le_const
    (a := a) (b := b) (f := density z) (C := densityBound a b β) (fun t ht ↦ by
      have ht' : t ∈ Ioc a b := (uIoc_of_le hab) ▸ ht
      exact norm_density_le ha ⟨ht'.1.le, ht'.2⟩ hz)
  simpa [kernel, abs_of_nonneg (sub_nonneg.mpr hab), mul_comm] using h

theorem norm_logMoment_le {a b β : ℝ} {z : ℂ}
    (ha : 1 < a) (hab : a ≤ b) (hz : z.re ≤ β) :
    ‖logMoment a b z‖ ≤ sensitivity a b β := by
  have h := intervalIntegral.norm_integral_le_of_norm_le_const
    (a := a) (b := b) (f := fun t ↦ density z t * (Real.log t : ℂ))
    (C := Real.log b * densityBound a b β) (fun t ht ↦ by
      have ht' : t ∈ Ioc a b := (uIoc_of_le hab) ▸ ht
      exact norm_weighted_density_le ha ⟨ht'.1.le, ht'.2⟩ hz)
  simpa [logMoment, sensitivity, abs_of_nonneg (sub_nonneg.mpr hab),
    mul_assoc, mul_comm, mul_left_comm] using h

/-- A horizontal half-plane is convex over the real scalar field. -/
theorem convex_re_le (β : ℝ) : Convex ℝ {z : ℂ | z.re ≤ β} := by
  intro x hx y hy r s hr hs hrs
  change (r • x + s • y).re ≤ β
  simp only [Complex.add_re, Complex.smul_re, smul_eq_mul]
  calc
    r * x.re + s * y.re ≤ r * β + s * β :=
      add_le_add (mul_le_mul_of_nonneg_left hx hr) (mul_le_mul_of_nonneg_left hy hs)
    _ = β := by rw [← add_mul, hrs, one_mul]

/-- Pole-free sensitivity for the actual coupled endpoints. -/
theorem norm_kernel_sub_le {a b β : ℝ} {z w : ℂ}
    (ha : 1 < a) (hab : a ≤ b) (hz : z.re ≤ β) (hw : w.re ≤ β) :
    ‖kernel a b z - kernel a b w‖ ≤ sensitivity a b β * ‖z - w‖ := by
  exact (convex_re_le β).norm_image_sub_le_of_norm_hasDerivWithin_le
    (fun v _ ↦ (hasDerivAt_kernel ha hab v).hasDerivWithinAt)
    (fun v hv ↦ norm_logMoment_le ha hab hv) hw hz

/-- An antiderivative identity relates the integral to endpoint exponentials. -/
theorem hasDerivAt_logPower {t : ℝ} (ht : 0 < t) (z : ℂ) :
    HasDerivAt (fun x ↦ logPower x z) (z * density z t) t := by
  have h := (((Real.hasDerivAt_log (ne_of_gt ht)).ofReal_comp).const_mul z).cexp
  simpa [logPower, density_eq_logPower_div ht, Complex.ofReal_inv,
    div_eq_mul_inv, mul_assoc, mul_comm, mul_left_comm] using h

theorem parameter_mul_kernel {a b : ℝ} (ha : 1 < a) (hab : a ≤ b) (z : ℂ) :
    z * kernel a b z = logPower b z - logPower a z := by
  have h := intervalIntegral.integral_eq_sub_of_hasDerivAt
    (a := a) (b := b) (f := fun t ↦ logPower t z) (f' := fun t ↦ z * density z t)
    (fun t ht ↦ by
      have ht' : t ∈ Icc a b := (uIcc_of_le hab) ▸ ht
      exact hasDerivAt_logPower ((lt_trans zero_lt_one ha).trans_le ht'.1) z)
    ((density_intervalIntegrable ha hab z).const_mul z)
  simpa only [kernel, intervalIntegral.integral_const_mul] using h

/-- Division is used only off zero, after the integral identity is established. -/
theorem kernel_eq_quotient {a b : ℝ} {z : ℂ}
    (ha : 1 < a) (hab : a ≤ b) (hz : z ≠ 0) :
    kernel a b z = (logPower b z - logPower a z) / z := by
  apply (eq_div_iff hz).2
  simpa only [mul_comm] using parameter_mul_kernel ha hab z

/-- An endpoint exponential keeps its true horizontal growth. -/
theorem norm_logPower_le {t β : ℝ} {z : ℂ} (ht : 1 ≤ t) (hz : z.re ≤ β) :
    ‖logPower t z‖ ≤ Real.exp (β * Real.log t) := by
  simpa [logPower, Complex.norm_exp, Complex.mul_re] using
    Real.exp_le_exp.mpr (mul_le_mul_of_nonneg_right hz (Real.log_nonneg ht))

/-- Keep inverse-parameter decay as a separate nonzero-parameter bound.
The pole-free bound alone has no decay in the imaginary coordinate. -/
theorem norm_kernel_le_quotient_bound {a b β : ℝ} {z : ℂ}
    (ha : 1 < a) (hab : a ≤ b) (hz : z.re ≤ β) (hz0 : z ≠ 0) :
    ‖kernel a b z‖ ≤
      (Real.exp (β * Real.log b) + Real.exp (β * Real.log a)) / ‖z‖ := by
  rw [kernel_eq_quotient ha hab hz0, norm_div]
  apply div_le_div_of_nonneg_right _ (norm_nonneg z)
  have htri : ‖logPower b z - logPower a z‖ ≤ ‖logPower b z‖ + ‖logPower a z‖ := by
    simpa only [sub_eq_add_neg, norm_neg] using norm_add_le (logPower b z) (-logPower a z)
  exact htri.trans (add_le_add (norm_logPower_le (ha.le.trans hab) hz)
    (norm_logPower_le ha.le hz))

/-- The two bounds can coexist; cancellation near zero must not erase decay away from zero. -/
theorem norm_kernel_le_min {a b β : ℝ} {z : ℂ}
    (ha : 1 < a) (hab : a ≤ b) (hz : z.re ≤ β) (hz0 : z ≠ 0) :
    ‖kernel a b z‖ ≤ min ((b - a) * densityBound a b β)
      ((Real.exp (β * Real.log b) + Real.exp (β * Real.log a)) / ‖z‖) :=
  le_min (norm_kernel_le ha hab hz) (norm_kernel_le_quotient_bound ha hab hz hz0)

/-- The removable value is derived from the logarithm's antiderivative. -/
theorem kernel_zero {a b : ℝ} (ha : 1 < a) (hab : a ≤ b) :
    kernel a b 0 = (Real.log b - Real.log a : ℝ) := by
  have h := intervalIntegral.integral_eq_sub_of_hasDerivAt
    (a := a) (b := b) (f := fun t : ℝ ↦ (Real.log t : ℂ)) (f' := density 0)
    (fun t ht ↦ by
      have ht' : t ∈ Icc a b := (uIcc_of_le hab) ▸ ht
      have htpos : 0 < t := (lt_trans zero_lt_one ha).trans_le ht'.1
      simpa [density_eq_logPower_div htpos, logPower, one_div, Complex.ofReal_inv]
        using (Real.hasDerivAt_log (ne_of_gt htpos)).ofReal_comp)
    (density_intervalIntegrable ha hab 0)
  simpa [kernel] using h

/-- A genuine interval has nonzero removable value: totalized 0/0 is wrong. -/
theorem kernel_zero_ne_zero {a b : ℝ} (ha : 1 < a) (hab : a < b) :
    kernel a b 0 ≠ 0 := by
  rw [kernel_zero ha hab.le]
  exact_mod_cast ne_of_gt (sub_pos.mpr (Real.log_lt_log (lt_trans zero_lt_one ha) hab))

@[simp] theorem kernel_same (a : ℝ) (z : ℂ) : kernel a a z = 0 := by simp [kernel]

@[simp] theorem kernel_one (a b : ℝ) : kernel a b 1 = (b - a : ℝ) := by
  simp [kernel, density, Complex.real_smul]

/-- Below horizontal coordinate one the left endpoint controls the density. -/
theorem densityBound_of_le_one {a b β : ℝ}
    (ha : 1 < a) (hab : a ≤ b) (hβ : β ≤ 1) :
    densityBound a b β = Real.exp ((β - 1) * Real.log a) := by
  unfold densityBound
  rw [max_eq_left (mul_le_mul_of_nonpos_left
    (Real.log_le_log (lt_trans zero_lt_one ha) hab) (sub_nonpos.mpr hβ))]

/-- Error propagation through a finite weighted family. The hypotheses price
included records only; they do not identify these numbers as zeros or supply a tail. -/
theorem finite_enclosure_error {ι : Type*} (S : Finset ι)
    (m : ι → ℕ) (ρ c : ι → ℂ) (r β : ι → ℝ) {a b : ℝ}
    (ha : 1 < a) (hab : a ≤ b)
    (hρ : ∀ j ∈ S, (ρ j).re ≤ β j) (hc : ∀ j ∈ S, (c j).re ≤ β j)
    (hr : ∀ j ∈ S, ‖ρ j - c j‖ ≤ r j) :
    ‖(∑ j ∈ S, (m j : ℂ) * kernel a b (ρ j)) -
      ∑ j ∈ S, (m j : ℂ) * kernel a b (c j)‖ ≤
      ∑ j ∈ S, (m j : ℝ) * (sensitivity a b (β j) * r j) := by
  calc
    _ = ‖∑ j ∈ S, (m j : ℂ) * (kernel a b (ρ j) - kernel a b (c j))‖ := by
      simp only [mul_sub, Finset.sum_sub_distrib]
    _ ≤ ∑ j ∈ S, ‖(m j : ℂ) * (kernel a b (ρ j) - kernel a b (c j))‖ :=
      norm_sum_le _ _
    _ ≤ _ := by
      apply Finset.sum_le_sum
      intro j hj
      have h := (norm_kernel_sub_le ha hab (hρ j hj) (hc j hj)).trans
        (mul_le_mul_of_nonneg_left (hr j hj) (sensitivity_nonneg ha hab (β j)))
      simpa [norm_mul] using mul_le_mul_of_nonneg_left h (Nat.cast_nonneg (m j) : (0 : ℝ) ≤ m j)

/-- A separately proved complete-complement bound composes with the included
record error. The theorem constructs no such complement bound. -/
theorem finite_enclosure_error_with_tail {ι : Type*} (S : Finset ι)
    (m : ι → ℕ) (ρ c : ι → ℂ) (r β : ι → ℝ) {a b : ℝ}
    (ha : 1 < a) (hab : a ≤ b)
    (hρ : ∀ j ∈ S, (ρ j).re ≤ β j) (hc : ∀ j ∈ S, (c j).re ≤ β j)
    (hr : ∀ j ∈ S, ‖ρ j - c j‖ ≤ r j) (full : ℂ) (tail : ℝ)
    (htail : ‖full - ∑ j ∈ S, (m j : ℂ) * kernel a b (ρ j)‖ ≤ tail) :
    ‖full - ∑ j ∈ S, (m j : ℂ) * kernel a b (c j)‖ ≤
      tail + ∑ j ∈ S, (m j : ℝ) * (sensitivity a b (β j) * r j) := by
  calc
    _ = ‖(full - ∑ j ∈ S, (m j : ℂ) * kernel a b (ρ j)) +
        ((∑ j ∈ S, (m j : ℂ) * kernel a b (ρ j)) -
          ∑ j ∈ S, (m j : ℂ) * kernel a b (c j))‖ := by congr 1; ring
    _ ≤ ‖full - ∑ j ∈ S, (m j : ℂ) * kernel a b (ρ j)‖ +
        ‖(∑ j ∈ S, (m j : ℂ) * kernel a b (ρ j)) -
          ∑ j ∈ S, (m j : ℂ) * kernel a b (c j)‖ := norm_add_le _ _
    _ ≤ _ := add_le_add htail (finite_enclosure_error S m ρ c r β ha hab hρ hc hr)

end
end GRWTSK.Analysis.Complex.IntervalMellinKernel
