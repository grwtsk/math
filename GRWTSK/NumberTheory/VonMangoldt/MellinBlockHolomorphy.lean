/-
Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Research direction: grwtsk contributors. Formalization assistance: ChatGPT.
Lean and Mathlib retain their original attribution and licenses.
Status: proof source; not elaborated in the pinned environment.
-/
import Mathlib
import GRWTSK.NumberTheory.VonMangoldt.MellinReadout

/-! # Holomorphy of the actual finite Mellin blocks

Differentiation of the continuous subtraction is proved by the dominated
parameter-integral theorem on a positive compact interval. The point s=1 is
included; no division by 1-s is used.
-/
set_option autoImplicit false
noncomputable section
open MeasureTheory Set Filter Metric
open scoped Topology Interval BigOperators
namespace GRWTSK.NumberTheory.VonMangoldt.MellinBlockHolomorphy
open GRWTSK.Analysis.MellinTransform.PositiveCoordinates
open GRWTSK.NumberTheory.VonMangoldt.DyadicDiscrepancy

/-- Continuity in the positive physical coordinate. -/
theorem power_continuousOn {a b : ℝ} (ha : 0 < a) (s : ℂ) :
    ContinuousOn (fun u : ℝ => power u s) (Icc a b) := by
  intro u hu
  have hu0 : u ≠ 0 := ne_of_gt (ha.trans_le hu.1)
  have hc : ContinuousAt (fun u : ℝ => power u s) u := by
    unfold power
    exact Complex.continuous_exp.continuousAt.comp
      (continuousAt_const.mul
        (Complex.continuous_ofReal.continuousAt.comp (Real.continuousAt_log hu0)))
  exact hc.continuousWithinAt

theorem parameter_derivative (u : ℝ) (s : ℂ) :
    HasDerivAt (fun z : ℂ => power u (-z))
      (-(Real.log u : ℂ)*power u (-s)) s := by
  have h := (((hasDerivAt_id s).neg).mul_const (Real.log u : ℂ)).cexp
  convert! h using 1
  simp [power, mul_comm]

/-- Actual derivative of the background integral at every complex parameter. -/
theorem background_hasDerivAt {X : ℕ} (hX : 0 < X) (s₀ : ℂ) :
    HasDerivAt (fun s : ℂ => ∫ u in (X:ℝ)..(2*X:ℝ), power u (-s))
      (∫ u in (X:ℝ)..(2*X:ℝ), -(Real.log u : ℂ)*power u (-s₀)) s₀ := by
  have hXr : (0:ℝ) < X := by exact_mod_cast hX
  have hX1 : (1:ℝ) ≤ X := by exact_mod_cast hX
  have hXX : (X:ℝ) ≤ 2*X := by linarith
  let L : ℝ := Real.log (2*(X:ℝ))
  let M : ℝ := ‖s₀‖+1
  have hL : 0 ≤ L := Real.log_nonneg (by linarith)
  have hM : 0 ≤ M := by positivity
  have hc (s : ℂ) := power_continuousOn (b := (2*X:ℝ)) hXr (-s)
  have hd (s : ℂ) : ContinuousOn
      (fun u : ℝ => -(Real.log u : ℂ)*power u (-s)) (Icc (X:ℝ) (2*X:ℝ)) := by
    apply ContinuousOn.mul _ (hc s)
    intro u hu
    exact ((Complex.continuous_ofReal.continuousAt.comp
      (Real.continuousAt_log (ne_of_gt (hXr.trans_le hu.1)))).neg).continuousWithinAt
  have hbnd : ∀ u ∈ Ι (X:ℝ) (2*X:ℝ), ∀ s ∈ ball s₀ 1,
      ‖-(Real.log u : ℂ)*power u (-s)‖ ≤ L*Real.exp (M*L) := by
    intro u hu s hs
    have hu' : u ∈ Icc (X:ℝ) (2*X:ℝ) := by
      have hu'' : u ∈ Ioc (X:ℝ) (2*X:ℝ) := by simpa [uIoc_of_le hXX] using hu
      exact ⟨hu''.1.le, hu''.2⟩
    have hu0 : 0 < u := hXr.trans_le hu'.1
    have hlu0 : 0 ≤ Real.log u := Real.log_nonneg (hX1.trans hu'.1)
    have hluL : Real.log u ≤ L := Real.log_le_log hu0 hu'.2
    have hsn : ‖s‖ ≤ M := by
      have hs' : ‖s-s₀‖ < 1 := by simpa [mem_ball, dist_eq_norm] using hs
      calc
        ‖s‖ = ‖(s-s₀)+s₀‖ := by congr 1; abel
        _ ≤ ‖s-s₀‖+‖s₀‖ := norm_add_le _ _
        _ ≤ M := by dsimp [M]; linarith
    have hre : -s.re ≤ M := by
      have h := Complex.abs_re_le_norm s
      have h' := neg_le_abs s.re
      linarith
    rw [norm_mul, norm_neg, Complex.norm_real, Real.norm_eq_abs,
      abs_of_nonneg hlu0, norm_power]
    apply mul_le_mul hluL _ (Real.exp_pos _).le hL
    apply Real.exp_le_exp.mpr
    calc
      (-s).re*Real.log u ≤ M*Real.log u := by simpa using mul_le_mul_of_nonneg_right hre hlu0
      _ ≤ M*L := mul_le_mul_of_nonneg_left hluL hM
  have h := intervalIntegral.hasDerivAt_integral_of_dominated_loc_of_deriv_le
    (F := fun s u => power u (-s))
    (F' := fun s u => -(Real.log u : ℂ)*power u (-s))
    (bound := fun _ : ℝ => L*Real.exp (M*L))
    (a := (X:ℝ)) (b := (2*X:ℝ)) (μ := volume)
    (ball_mem_nhds s₀ (show (0:ℝ)<1 by norm_num))
    (Filter.Eventually.of_forall (fun s =>
      ((hc s).intervalIntegrable_of_Icc hXX).def'.aestronglyMeasurable))
    ((hc s₀).intervalIntegrable_of_Icc hXX)
    (((hd s₀).intervalIntegrable_of_Icc hXX).def'.aestronglyMeasurable)
    (Filter.Eventually.of_forall (fun u hu => hbnd u hu))
    (intervalIntegrable_const)
    (Filter.Eventually.of_forall (fun u _ s _ => parameter_derivative u s))
  exact h.2

/-- Every original finite block is entire. -/
theorem dirichletBlock_differentiable {X : ℕ} (hX : 0 < X) :
    Differentiable ℂ (dirichletBlock X) := by
  intro s
  have ha : DifferentiableAt ℂ
      (fun z : ℂ => ∑ n ∈ window X, (mangoldt n : ℂ)*power (n:ℝ) (-z)) s := by
    apply DifferentiableAt.fun_sum
    intro n _
    exact (parameter_derivative (n:ℝ) s).differentiableAt.const_mul _
  exact ha.sub (background_hasDerivAt hX s).differentiableAt

end GRWTSK.NumberTheory.VonMangoldt.MellinBlockHolomorphy
