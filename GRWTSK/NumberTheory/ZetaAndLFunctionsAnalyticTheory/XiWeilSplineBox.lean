/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.XiWeilOddDipole
import Mathlib.Analysis.SpecialFunctions.Integrals.Basic
import Mathlib.Analysis.Calculus.ContDiff.Deriv

/-!
# Compact box and finite difference realizations of the spline observations

An interval average and a centered difference act on functions of a real
translation variable. Their eigenvalues on complex plane waves give exact
integral realizations of both spline probes at every complex frequency.
-/

noncomputable section
open Complex
namespace GRWTSK.XiWeilOddDipole

/-- Normalized convolution with the unit-radius box, acting on an observation. -/
def boxAverage (f : ℝ → ℂ) (x : ℝ) : ℂ := (∫ t : ℝ in -1..1, f (x + t)) / 2

/-- The (antisymmetric) signed pair of translates. -/
def centeredDifference (f : ℝ → ℂ) (x : ℝ) : ℂ := (f (x + 1) - f (x - 1)) / 2

def planeWave (z : ℂ) (x : ℝ) : ℂ := exp (I * z * x)

def boxMultiplier (z : ℂ) : ℂ := if z = 0 then 1 else sin z / z

private theorem wave_add (z : ℂ) (x t : ℝ) :
    planeWave z (x + t) = planeWave z x * planeWave z t := by
  simp only [planeWave, ofReal_add, mul_add, exp_add]

theorem integral_boxMultiplier (z : ℂ) :
    (∫ t : ℝ in -1..1, planeWave z t) / 2 = boxMultiplier z := by
  by_cases hz : z = 0
  · simp [hz, planeWave, boxMultiplier]
  · simp only [planeWave, boxMultiplier, ite_eq_right hz]
    rw [integral_exp_mul_complex (mul_ne_zero I_ne_zero hz)]
    simp only [ofReal_one, ofReal_neg, mul_one, mul_neg]
    rw [mul_comm I z, Complex.sin]
    field_simp
    ring_nf
    simp [Complex.I_sq, sub_eq_add_neg]

theorem boxAverage_wave (a z : ℂ) (x : ℝ) :
    boxAverage (fun t => a * planeWave z t) x =
      (a * boxMultiplier z) * planeWave z x := by
  simp only [boxAverage, wave_add, ← mul_assoc, intervalIntegral.integral_const_mul]
  rw [mul_div_assoc, integral_boxMultiplier]
  ring

theorem centeredDifference_wave (a z : ℂ) (x : ℝ) :
    centeredDifference (fun t => a * planeWave z t) x =
      (a * (I * sin z)) * planeWave z x := by
  simp only [centeredDifference, sub_eq_add_neg x 1, wave_add]
  simp only [planeWave, ofReal_one, ofReal_neg, mul_one, mul_neg]
  rw [mul_comm I z, Complex.sin]
  field_simp
  ring_nf
  simp [Complex.I_sq, sub_eq_add_neg]

/-- A word of integral averages and differences, applied to an actual plane wave. -/
theorem box_difference_readout (n k : ℕ) (z : ℂ) :
    ((centeredDifference^[k]) ((boxAverage^[n]) (planeWave z))) 0 =
      boxMultiplier z ^ n * (I * sin z) ^ k := by
  have hav (j : ℕ) : (boxAverage^[j]) (planeWave z) =
      fun t => boxMultiplier z ^ j * planeWave z t := by
    induction j with
    | zero => simp
    | succ j ih =>
      rw [Function.iterate_succ_apply', ih]
      funext x
      rw [boxAverage_wave, pow_succ]
  have hd (j : ℕ) : (centeredDifference^[j]) ((boxAverage^[n]) (planeWave z)) =
      fun t => (boxMultiplier z ^ n * (I * sin z) ^ j) * planeWave z t := by
    induction j with
    | zero => simpa using hav n
    | succ j ih =>
      rw [Function.iterate_succ_apply', ih]
      funext x
      rw [centeredDifference_wave, pow_succ, mul_assoc (boxMultiplier z ^ n)]
  rw [hd]
  simp [planeWave]

/-- The two spline probes are exactly the readouts of seven box averages and
one difference, and of five box averages and three differences with opposite sign. -/
theorem spline_probe_readouts (z : ℂ) :
    ((centeredDifference^[1]) ((boxAverage^[7]) (planeWave z))) 0 = firstProbe z ∧
      -((centeredDifference^[3]) ((boxAverage^[5]) (planeWave z))) 0 = thirdProbe z := by
  rw [box_difference_readout, box_difference_readout]
  by_cases hz : z = 0
  · simp [hz, firstProbe, thirdProbe, boxMultiplier, splineWindow]
  · simp only [boxMultiplier, splineWindow, ite_eq_right hz, firstProbe, thirdProbe, pow_one]
    constructor
    · field_simp
    · field_simp
      ring_nf
      simp [Complex.I_sq]


open MeasureTheory

/-- The box density before forming convolution powers. -/
def unitBox : ℝ → ℂ := (Set.Icc (-1 : ℝ) 1).indicator (fun _ => (1 / 2 : ℂ))

private theorem box_eq_primitive {f : ℝ → ℂ}
    (hf : ∀ a b, IntervalIntegrable f volume a b) (x : ℝ) :
    boxAverage f x = ((∫ t in (0 : ℝ)..x + 1, f t) - ∫ t in (0 : ℝ)..x + -1, f t) / 2 := by
  rw [boxAverage, intervalIntegral.integral_comp_add_left,
    intervalIntegral.integral_interval_sub_left (hf _ _) (hf _ _)]

private theorem boxAverage_continuous {f : ℝ → ℂ} (hf : Integrable f) :
    Continuous (boxAverage f) := by
  have h := hf.continuous_primitive 0
  simp_rw [show boxAverage f = fun x => _ from funext (box_eq_primitive
    (fun _ _ => hf.intervalIntegrable))]
  exact ((h.comp (continuous_id.add continuous_const)).sub
    (h.comp (continuous_id.add continuous_const))).div_const _

/-- A box average gains one continuous derivative on finite smoothness classes. -/
theorem boxAverage_contDiff_succ {f : ℝ → ℂ} (n : ℕ) (hf : ContDiff ℝ n f) :
    ContDiff ℝ (n + 1 : ℕ) (boxAverage f) := by
  let P : ℝ → ℂ := fun x => ∫ t in (0 : ℝ)..x, f t
  have hd (x : ℝ) : HasDerivAt P (f x) x :=
    intervalIntegral.integral_hasDerivAt_right (hf.continuous.intervalIntegrable _ _)
      hf.continuous.aestronglyMeasurable.stronglyMeasurableAtFilter hf.continuous.continuousAt
  have hp : ContDiff ℝ (n + 1 : ℕ) P := by
    rw [Nat.cast_add, Nat.cast_one, contDiff_succ_iff_deriv]
    exact ⟨fun x => (hd x).differentiableAt, by simp, by
      convert hf using 1
      exact funext fun x => (hd x).deriv⟩
  have he : boxAverage f = fun x => (P (x + 1) - P (x + -1)) / 2 :=
    funext (box_eq_primitive (fun _ _ => hf.continuous.intervalIntegrable _ _))
  rw [he]
  exact ((hp.comp (contDiff_id.add contDiff_const)).sub
    (hp.comp (contDiff_id.add contDiff_const))).div_const _

private theorem centeredDifference_contDiff {f : ℝ → ℂ} {n : ℕ} (hf : ContDiff ℝ n f) :
    ContDiff ℝ n (centeredDifference f) :=
  ((hf.comp (contDiff_id.add contDiff_const)).sub
    (hf.comp (contDiff_id.sub contDiff_const))).div_const _

private theorem unitBox_integrable : Integrable unitBox := by
  apply (integrable_indicator_iff measurableSet_Icc).mpr
  exact integrableOn_const (by simp)

/-- The n-fold real averaging of the compact unit box is at least C^(n-1)
for n positive. Including the initial box gives n+1 convolution factors. -/
theorem boxDensity_contDiff (n : ℕ) : ContDiff ℝ n ((boxAverage^[n + 1]) unitBox) := by
  induction n with
  | zero => simpa [contDiff_zero] using boxAverage_continuous unitBox_integrable
  | succ n ih =>
    rw [Function.iterate_succ_apply']
    exact boxAverage_contDiff_succ n ih

private theorem differences_contDiff {f : ℝ → ℂ} {n : ℕ} (hf : ContDiff ℝ n f) (j : ℕ) :
    ContDiff ℝ n ((centeredDifference^[j]) f) := by
  induction j with
  | zero => simpa
  | succ j ih =>
    rw [Function.iterate_succ_apply']
    exact centeredDifference_contDiff ih

/-- The physical finite differences of the seven-box and five-box densities
are respectively C^5 and C^3, both above the C² Weil test threshold. -/
theorem spline_densities_regular :
    ContDiff ℝ 5 ((centeredDifference^[1]) ((boxAverage^[6]) unitBox)) ∧
    ContDiff ℝ 3 ((centeredDifference^[3]) ((boxAverage^[4]) unitBox)) := by
  exact ⟨differences_contDiff (boxDensity_contDiff 5) 1,
    differences_contDiff (boxDensity_contDiff 3) 3⟩


private def supportedAt (r : ℝ) (f : ℝ → ℂ) : Prop :=
  ∀ x, x < -r ∨ r < x → f x = 0

private theorem supported_box {r : ℝ} {f : ℝ → ℂ} (h : supportedAt r f) :
    supportedAt (r + 1) (boxAverage f) := by
  intro x hx
  have he : (∫ t : ℝ in -1..1, f (x + t)) = ∫ _t : ℝ in -1..1, (0 : ℂ) := by
    apply intervalIntegral.integral_congr
    intro t ht
    rw [Set.uIcc_of_le (by norm_num : (-1 : ℝ) ≤ 1)] at ht
    exact h _ (hx.elim (fun hl => Or.inl (by linarith [ht.2]))
      (fun hr => Or.inr (by linarith [ht.1])))
  simp [boxAverage, he]

private theorem supported_difference {r : ℝ} {f : ℝ → ℂ} (h : supportedAt r f) :
    supportedAt (r + 1) (centeredDifference f) := by
  intro x hx
  have hplus : f (x + 1) = 0 := h _ (hx.elim (fun hl => Or.inl (by linarith))
    (fun hr => Or.inr (by linarith)))
  have hminus : f (x - 1) = 0 := h _ (hx.elim (fun hl => Or.inl (by linarith))
    (fun hr => Or.inr (by linarith)))
  simp [centeredDifference, hplus, hminus]

private theorem support_iterate (A : (ℝ → ℂ) → ℝ → ℂ)
    (hA : ∀ {r f}, supportedAt r f → supportedAt (r + 1) (A f))
    {r f} (h : supportedAt r f) (j : ℕ) : supportedAt (r + j) ((A^[j]) f) := by
  induction j with
  | zero => simpa
  | succ j ih =>
    simpa [Function.iterate_succ_apply', add_assoc] using hA ih

/-- Both physical test densities vanish outside the common interval [-8,8]. -/
theorem spline_densities_supported :
    ∀ x : ℝ, x < -8 ∨ 8 < x →
      (centeredDifference^[1]) ((boxAverage^[6]) unitBox) x = 0 ∧
      (centeredDifference^[3]) ((boxAverage^[4]) unitBox) x = 0 := by
  have hu : supportedAt 1 unitBox := by
    intro x hx
    apply Set.indicator_of_notMem
    intro ht
    exact hx.elim (fun h => (not_lt_of_ge ht.1) h) (fun h => (not_lt_of_ge ht.2) h)
  have h₁ := support_iterate centeredDifference supported_difference
    (support_iterate boxAverage supported_box hu 6) 1
  have h₃ := support_iterate centeredDifference supported_difference
    (support_iterate boxAverage supported_box hu 4) 3
  norm_num at h₁ h₃
  intro x hx
  exact ⟨h₁ x hx, h₃ x hx⟩

end GRWTSK.XiWeilOddDipole
