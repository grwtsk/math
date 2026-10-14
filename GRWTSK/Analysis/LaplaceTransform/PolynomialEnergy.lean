/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license.
Source-specific CCC continuation; local conditional candidate, RH remains open. -/
import Mathlib.MeasureTheory.Integral.IntervalIntegral.Basic
import Mathlib.MeasureTheory.Integral.Bochner.Set
import Mathlib.Analysis.SpecificLimits.Normed
import Mathlib.Tactic.FieldSimp

/-!
# Polynomial pickup energy pays every positive exponential tilt

Human mathematical direction: grwtsk contributors. Implementation: OpenAI Codex.
This reduction supplies absolute Laplace integrability from an energy budget.
It supplies no pointwise polynomial amplitude or arithmetic budget.
-/

set_option autoImplicit false

noncomputable section
namespace GRWTSK.RiemannHypothesis.CCC
open MeasureTheory Set Filter
open scoped Topology

/-- A positive exponential dominates every fixed real polynomial exponent. -/
theorem summable_exp_neg_mul_nat_add_rpow (σ q : ℝ) (hσ : 0 < σ) :
    Summable (fun n : ℕ ↦ Real.exp (-σ * n) * ((n : ℝ) + 2) ^ q) := by
  let k : ℕ := ⌈q⌉₊
  let r : ℝ := Real.exp (-σ)
  have hr0 : 0 < r := Real.exp_pos _
  have hr : ‖r‖ < 1 := by
    rw [Real.norm_eq_abs, abs_of_pos hr0]
    exact Real.exp_lt_one_iff.mpr (by linarith)
  have hs := summable_pow_mul_geometric_of_norm_lt_one (R := ℝ) k hr
  have hshift : Summable (fun n : ℕ ↦ ((n : ℝ) + 2) ^ k * r ^ (n + 2)) := by
    simpa only [Nat.cast_add, Nat.cast_ofNat] using (summable_nat_add_iff 2).mpr hs
  have hpoly : Summable (fun n : ℕ ↦ Real.exp (-σ * n) * ((n : ℝ) + 2) ^ k) := by
    have hscaled := hshift.mul_left (r ^ 2)⁻¹
    apply hscaled.congr
    intro n
    have he : Real.exp (-σ * (n : ℝ)) = r ^ n := by
      simpa only [r, mul_comm] using Real.exp_nat_mul (-σ) n
    rw [he, pow_add]
    field_simp [ne_of_gt hr0]
  refine Summable.of_nonneg_of_le (fun n ↦ by positivity) (fun n ↦ ?_) hpoly
  have hp := Real.rpow_le_rpow_of_exponent_le
    (le_trans (by norm_num : (1 : ℝ) ≤ 2)
      (le_add_of_nonneg_left (Nat.cast_nonneg n)))
    (show q ≤ (k : ℝ) from Nat.le_ceil q)
  rw [Real.rpow_natCast] at hp
  exact mul_le_mul_of_nonneg_left hp (Real.exp_pos _).le

/-- Unit blocks have an integrable quadratic majorant; no amplitude estimate is used. -/
theorem tilted_block_norm_bound {f : ℝ → ℝ} (hf : Continuous f)
    {C q σ : ℝ} (hσ : 0 < σ)
    (henergy : ∀ T : ℝ, 0 ≤ T →
      (∫ u in (0 : ℝ)..T, f u ^ 2) ≤ C * (1 + T) ^ q) (n : ℕ) :
    (∫ u in Icc (n : ℝ) ((n : ℝ) + 1), ‖Real.exp (-σ * u) * f u‖) ≤
      Real.exp (-σ * n) * (1 + C * ((n : ℝ) + 2) ^ q) := by
  have hfsq : Continuous (fun u ↦ f u ^ 2) := hf.pow 2
  have htilt : Continuous (fun u ↦ ‖Real.exp (-σ * u) * f u‖) := by
    exact ((Real.continuous_exp.comp (continuous_const.mul continuous_id)).mul hf).norm
  have hmajor : Continuous (fun u ↦ Real.exp (-σ * (n : ℝ)) * (1 + f u ^ 2)) :=
    continuous_const.mul (continuous_const.add hfsq)
  have hmono :
      (∫ u in Icc (n : ℝ) ((n : ℝ) + 1), ‖Real.exp (-σ * u) * f u‖) ≤
      ∫ u in Icc (n : ℝ) ((n : ℝ) + 1),
        Real.exp (-σ * (n : ℝ)) * (1 + f u ^ 2) := by
    apply setIntegral_mono_on htilt.integrableOn_Icc hmajor.integrableOn_Icc
      measurableSet_Icc
    intro u hu
    rw [norm_mul, Real.norm_eq_abs (Real.exp _), abs_of_pos (Real.exp_pos _),
      Real.norm_eq_abs]
    have hexp : Real.exp (-σ * u) ≤ Real.exp (-σ * n) := by
      apply Real.exp_le_exp.mpr
      nlinarith [hu.1]
    have habs : |f u| ≤ 1 + f u ^ 2 := by
      nlinarith [sq_nonneg (|f u| - 1), sq_abs (f u)]
    exact mul_le_mul hexp habs (abs_nonneg _) (Real.exp_pos _).le
  have hsum : (∫ u in Icc (n : ℝ) ((n : ℝ) + 1), (1 + f u ^ 2)) =
      1 + ∫ u in Icc (n : ℝ) ((n : ℝ) + 1), f u ^ 2 := by
    rw [integral_add (continuous_const.integrableOn_Icc) hfsq.integrableOn_Icc]
    simp
  have hprefix : (∫ u in Icc (n : ℝ) ((n : ℝ) + 1), f u ^ 2) ≤
      ∫ u in Icc (0 : ℝ) ((n : ℝ) + 1), f u ^ 2 := by
    apply setIntegral_mono_set hfsq.integrableOn_Icc
      (Eventually.of_forall (fun u ↦ sq_nonneg (f u)))
    exact Eventually.of_forall (fun u hu ↦ ⟨le_trans (by positivity) hu.1, hu.2⟩)
  have hprefix_bound : (∫ u in Icc (0 : ℝ) ((n : ℝ) + 1), f u ^ 2) ≤
      C * ((n : ℝ) + 2) ^ q := by
    simpa only [intervalIntegral.integral_of_le (by positivity : (0 : ℝ) ≤ (n : ℝ) + 1),
      integral_Icc_eq_integral_Ioc, add_comm (1 : ℝ), add_assoc,
      show (1 : ℝ) + 1 = 2 by norm_num] using
        henergy ((n : ℝ) + 1) (by positivity)
  rw [integral_const_mul, hsum] at hmono
  exact hmono.trans (mul_le_mul_of_nonneg_left
    (add_le_add (le_refl 1) (hprefix.trans hprefix_bound)) (Real.exp_pos _).le)

/-- Polynomial integral energy implies absolute integrability at every positive tilt. -/
theorem integrableOn_tilt_of_polynomial_energy {f : ℝ → ℝ} (hf : Continuous f)
    {C q : ℝ} (_hC : 0 ≤ C)
    (henergy : ∀ T : ℝ, 0 ≤ T →
      (∫ u in (0 : ℝ)..T, f u ^ 2) ≤ C * (1 + T) ^ q)
    {σ : ℝ} (hσ : 0 < σ) :
    IntegrableOn (fun u ↦ Real.exp (-σ * u) * f u) (Ioi 0) := by
  have hgeom : Summable (fun n : ℕ ↦ Real.exp (-σ * n)) := by
    simpa only [Real.rpow_zero, mul_one] using summable_exp_neg_mul_nat_add_rpow σ 0 hσ
  have hbound : Summable (fun n : ℕ ↦
      Real.exp (-σ * n) * (1 + C * ((n : ℝ) + 2) ^ q)) := by
    simpa only [mul_add, mul_one, mul_left_comm, mul_assoc] using
      hgeom.add ((summable_exp_neg_mul_nat_add_rpow σ q hσ).mul_left C)
  have hs : Summable (fun n : ℕ ↦
      ∫ u in Icc (n : ℝ) ((n : ℝ) + 1), ‖Real.exp (-σ * u) * f u‖) :=
    Summable.of_nonneg_of_le (fun n ↦ integral_nonneg (fun u ↦ norm_nonneg _))
      (tilted_block_norm_bound hf hσ henergy) hbound
  have hi : IntegrableOn (fun u ↦ Real.exp (-σ * u) * f u)
      (⋃ n : ℕ, Icc (n : ℝ) ((n : ℝ) + 1)) := by
    apply integrableOn_iUnion_of_summable_integral_norm _ hs
    intro n
    exact ((Real.continuous_exp.comp (continuous_const.mul continuous_id)).mul hf).integrableOn_Icc
  apply hi.mono_set
  intro u hu
  refine mem_iUnion.mpr ⟨⌊u⌋₊, ?_⟩
  exact ⟨Nat.floor_le hu.le, (Nat.lt_floor_add_one u).le⟩


end GRWTSK.RiemannHypothesis.CCC
