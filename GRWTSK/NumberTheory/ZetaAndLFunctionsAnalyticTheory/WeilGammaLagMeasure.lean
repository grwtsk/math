/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilGammaData
import Mathlib.MeasureTheory.Measure.WithDensity
import Mathlib.MeasureTheory.Integral.Bochner.ContinuousLinearMap
import Mathlib.Tactic

/-!
# The actual gamma lag measure and its exhaustive finite windows

The density is the existing `parityKernel 0`, restricted to positive lags.
The windows are `[1/(m+1),m+1]`; no physical-space or spectral truncation
is substituted for them. The complete lag measure is infinite near zero,
while every one of these windows has finite measure. The weighted integral
identity retains the original kernel, rather than changing physical norms.

Local analytic argument and declaration map: `WeilGammaLagMeasure.md`.
SOURCE_PROOF_CANDIDATE. Elaboration, exact types, fresh kernel replay,
transitive axiom audit and independent review: NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
open Set MeasureTheory Filter
open scoped ENNReal Topology

namespace GRWTSK.NumberTheory.WeilQuadraticForm.GammaLag

open OddRootProjection

/-- Positive-lag reference measure. -/
def baseMeasure : Measure ℝ := volume.restrict (Ioi 0)

/-- A nonnegative density representing precisely the original gamma
kernel on the positive-lag support. -/
def density (r : ℝ) : ℝ≥0 := Real.toNNReal (parityKernel 0 r)

/-- The actual weighted lag measure, not Lebesgue measure on lags. -/
def measure : Measure ℝ := baseMeasure.withDensity (fun r => (density r : ℝ≥0∞))

/-- `m=0` is allowed and gives the null interval `[1,1]`. -/
def window (m : ℕ) : Set ℝ := Icc (((m : ℝ) + 1)⁻¹) ((m : ℝ) + 1)

theorem measurable_density : Measurable density := by
  unfold density parityKernel
  fun_prop

theorem kernel_pos {r : ℝ} (hr : 0 < r) : 0 < parityKernel 0 r := by
  have he : Real.exp (-2 * r) < 1 := by
    rw [← Real.exp_zero]
    exact Real.exp_lt_exp.mpr (by linarith)
  unfold parityKernel
  exact div_pos (Real.exp_pos _) (sub_pos.mpr he)

@[simp] theorem density_coe {r : ℝ} (hr : 0 < r) :
    (density r : ℝ) = parityKernel 0 r := by
  exact Real.coe_toNNReal _ (kernel_pos hr).le

@[simp] theorem window_measurable (m : ℕ) : MeasurableSet (window m) :=
  measurableSet_Icc

theorem window_subset_positive (m : ℕ) : window m ⊆ Ioi (0 : ℝ) := by
  intro r hr
  exact lt_of_lt_of_le (inv_pos.mpr (by positivity : 0 < (m : ℝ) + 1)) hr.1

theorem window_mono : Monotone window := by
  intro m n hmn r hr
  have hmn' : (m : ℝ) + 1 ≤ (n : ℝ) + 1 := by exact_mod_cast Nat.add_le_add_right hmn 1
  have hi : ((n : ℝ) + 1)⁻¹ ≤ ((m : ℝ) + 1)⁻¹ :=
    by simpa only [one_div] using
      (one_div_le_one_div_of_le (by positivity : 0 < (m : ℝ) + 1) hmn')
  exact ⟨hi.trans hr.1, hr.2.trans hmn'⟩

theorem exists_window_mem {r : ℝ} (hr : 0 < r) : ∃ m : ℕ, r ∈ window m := by
  obtain ⟨m, hm⟩ := exists_nat_gt (max r r⁻¹)
  have hm1 : r < (m : ℝ) + 1 := by linarith [le_max_left r r⁻¹]
  have hm2 : r⁻¹ ≤ (m : ℝ) + 1 := by linarith [le_max_right r r⁻¹]
  have hi : ((m : ℝ) + 1)⁻¹ ≤ r := by
    have hh := one_div_le_one_div_of_le (inv_pos.mpr hr) hm2
    simpa only [one_div, inv_inv] using hh
  exact ⟨m, hi, hm1.le⟩

theorem iUnion_window : (⋃ m : ℕ, window m) = Ioi (0 : ℝ) := by
  ext r
  constructor
  · intro hr
    obtain ⟨m, hm⟩ := mem_iUnion.mp hr
    exact window_subset_positive m hm
  · intro hr
    obtain ⟨m, hm⟩ := exists_window_mem hr
    exact mem_iUnion.mpr ⟨m, hm⟩

/-- An elementary finite majorant for the gamma density on one lag window. -/
def densityBound (m : ℕ) : ℝ :=
  (1 - Real.exp (-2 * (((m : ℝ) + 1)⁻¹)))⁻¹

theorem densityBound_pos (m : ℕ) : 0 < densityBound m := by
  unfold densityBound
  apply inv_pos.mpr
  apply sub_pos.mpr
  rw [← Real.exp_zero]
  apply Real.exp_lt_exp.mpr
  have hp : 0 < ((m : ℝ) + 1)⁻¹ := by positivity
  linarith

theorem kernel_le_densityBound {m : ℕ} {r : ℝ} (hr : r ∈ window m) :
    parityKernel 0 r ≤ densityBound m := by
  have hp := window_subset_positive m hr
  have hnum : Real.exp (-((0 : ℝ) + 1 / 2) * r) ≤ 1 := by
    rw [← Real.exp_zero]
    apply Real.exp_le_exp.mpr
    linarith
  have ha : 0 < 1 - Real.exp (-2 * (((m : ℝ) + 1)⁻¹)) := by
    apply sub_pos.mpr
    rw [← Real.exp_zero]
    apply Real.exp_lt_exp.mpr
    have hz : 0 < ((m : ℝ) + 1)⁻¹ := by positivity
    linarith
  have hden : 1 - Real.exp (-2 * (((m : ℝ) + 1)⁻¹)) ≤
      1 - Real.exp (-2 * r) := by
    have he : Real.exp (-2 * r) ≤ Real.exp (-2 * (((m : ℝ) + 1)⁻¹)) :=
      Real.exp_le_exp.mpr (by linarith [hr.1])
    linarith
  have hb : 0 < 1 - Real.exp (-2 * r) := ha.trans_le hden
  change Real.exp (-((0 : ℝ) + 1 / 2) * r) / (1 - Real.exp (-2 * r)) ≤
    (1 - Real.exp (-2 * (((m : ℝ) + 1)⁻¹)))⁻¹
  rw [inv_eq_one_div]
  apply (div_le_div_iff₀ hb ha).2
  nlinarith [mul_le_mul_of_nonneg_right hnum ha.le]

theorem measure_window_lt_top (m : ℕ) : measure (window m) < ∞ := by
  rw [measure, withDensity_apply _ (window_measurable m)]
  have hle : (∫⁻ r in window m, (density r : ℝ≥0∞) ∂baseMeasure) ≤
      ENNReal.ofReal (densityBound m) * baseMeasure (window m) := by
    calc
      _ ≤ ∫⁻ _r in window m, ENNReal.ofReal (densityBound m) ∂baseMeasure := by
        apply lintegral_mono_ae
        filter_upwards [ae_restrict_mem (μ := baseMeasure) (window_measurable m)] with r hr
        change ENNReal.ofReal (parityKernel 0 r) ≤ ENNReal.ofReal (densityBound m)
        exact ENNReal.ofReal_le_ofReal (kernel_le_densityBound hr)
      _ = _ := by simp
  have hb : baseMeasure (window m) < ∞ := by
    have hle' : baseMeasure (window m) ≤ volume (window m) :=
      Measure.restrict_apply_le _ _
    exact hle'.trans_lt (by simp [window, Real.volume_Icc])
  exact hle.trans_lt (ENNReal.mul_lt_top ENNReal.ofReal_lt_top hb)

theorem ae_positive : ∀ᵐ r ∂measure, 0 < r := by
  apply (withDensity_absolutelyContinuous baseMeasure (fun r => (density r : ℝ≥0∞))).ae
  exact ae_restrict_mem measurableSet_Ioi

theorem ae_window_cover : ∀ᵐ r ∂measure, ∃ m : ℕ, r ∈ window m :=
  ae_positive.mono fun _ hr => exists_window_mem hr

/-- Exact weighted integral identity. Finiteness is not inferred from this
identity; membership of the maximal energy domain is proved separately. -/
theorem integral_measure (g : ℝ → ℝ) :
    (∫ r, g r ∂measure) = ∫ r in Ioi (0 : ℝ), parityKernel 0 r * g r := by
  rw [measure, integral_withDensity_eq_integral_smul measurable_density]
  apply integral_congr_ae
  filter_upwards [ae_restrict_mem (μ := volume) measurableSet_Ioi] with r hr
  simp only [NNReal.smul_def, smul_eq_mul, density_coe hr]

/-- The integrability contract is retained, not hidden by totalized integrals. -/
theorem integrable_measure_iff (g : ℝ → ℝ) :
    Integrable g measure ↔
      IntegrableOn (fun r => parityKernel 0 r * g r) (Ioi (0 : ℝ)) := by
  rw [measure, integrable_withDensity_iff_integrable_smul measurable_density]
  apply integrable_congr
  filter_upwards [ae_restrict_mem (μ := volume) measurableSet_Ioi] with r hr
  simp only [NNReal.smul_def, smul_eq_mul, density_coe hr]

end GRWTSK.NumberTheory.WeilQuadraticForm.GammaLag
