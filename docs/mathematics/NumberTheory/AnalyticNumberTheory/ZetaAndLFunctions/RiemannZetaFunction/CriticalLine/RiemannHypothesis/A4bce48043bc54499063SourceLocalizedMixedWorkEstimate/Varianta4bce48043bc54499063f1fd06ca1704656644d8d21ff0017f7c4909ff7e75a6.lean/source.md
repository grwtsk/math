# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.A4bce48043bc54499063SourceLocalizedMixedWorkEstimate.Varianta4bce48043bc54499063f1fd06ca1704656644d8d21ff0017f7c4909ff7e75a6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6f7e811e950e3fe0031b7146b68070c0e2d57b69` · SHA-256 `a4bce48043bc54499063f1fd06ca1704656644d8d21ff0017f7c4909ff7e75a6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceJointWorkSupport
import SourceMixedWorkWindowEnvelope

/-!
# Localized budgets for the unchanged Abel work

AI attribution: OpenAI Codex. The actual source support shortens the error
window. Constants shift the error and retained boundary together. The explicit
budget still grows exponentially and is not the uniform signed witness for RH16.
-/

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceLocalizedMixedWorkEstimate

open MeasureTheory Set
open scoped Interval
open SourceMangoldtAbel SourceJointMangoldtWork SourceConstantOffsetCancellation
open SourceJointWorkSupport SourceMixedWorkWindowEnvelope SourceColumnEnvelopeMass
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateVaughanSource EstimateSourceMobiusKernel

noncomputable section

/-- The positive oriented mass stops at the actual source support. -/
def localizedCenteredErrorExpMass (A offset : ℝ) : ℝ :=
  ∫ t in Real.log (vaughanCutoff A : ℝ)..
    max (Real.log (vaughanCutoff A : ℝ)) (actualJointSupportUpper A),
    |mangoldtLogError t - offset| * Real.exp (t / 2)

theorem localizedCenteredErrorExpMass_nonneg (A offset : ℝ) :
    0 ≤ localizedCenteredErrorExpMass A offset := by
  apply intervalIntegral.integral_nonneg (le_max_left _ _)
  intro t _
  positivity

/-- The support truncation preserves the arbitrary offset and every original column. -/
theorem centeredErrorWork_abs_le_localized_mass (A offset : ℝ) (hA : 1 ≤ A) :
    |centeredErrorWork A offset| ≤
      (162826 / (7623 * A ^ 2) + 1 / 4) *
        localizedCenteredErrorExpMass A offset * columnEnvelopeMass A := by
  let l := Real.log (vaughanCutoff A : ℝ)
  by_cases hL : l ≤ actualJointSupportUpper A
  · dsimp only [l] at hL
    rw [centeredErrorWork_eq_support_integral A offset hA]
    simpa only [localizedCenteredErrorExpMass, max_eq_right hL] using
      actual_centered_work_window_abs_le_mass A offset l
        (actualJointSupportUpper A) hA hL
  · dsimp only [l] at hL
    rw [centeredErrorWork_zero_of_support_le_lower A offset hA (le_of_not_ge hL)]
    simp only [abs_zero, localizedCenteredErrorExpMass,
      max_eq_left (le_of_not_ge hL), intervalIntegral.integral_same, mul_zero, zero_mul, le_refl]

private theorem exp_half_antiderivative (t : ℝ) :
    HasDerivAt (fun t : ℝ => 2 * Real.exp (t / 2)) (Real.exp (t / 2)) t := by
  have h := (((hasDerivAt_id t).div_const 2).exp).const_mul 2
  simp only [id_eq] at h
  convert h using 1 <;> first | rfl | ring

theorem exp_half_actualJointSupportUpper (A : ℝ) :
    Real.exp (actualJointSupportUpper A / 2) =
      Real.exp A / Real.sqrt ((vaughanCutoff A + 1 : ℕ) : ℝ) := by
  have ha : 0 < ((vaughanCutoff A + 1 : ℕ) : ℝ) := by positivity
  rw [show actualJointSupportUpper A / 2 =
    A - Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ) / 2 by
      unfold actualJointSupportUpper; ring, Real.exp_sub, Real.exp_half, Real.exp_log ha]

/-- A genuine shorter mass budget carries the exact floor denominator. -/
theorem localizedCenteredErrorExpMass_le (A offset : ℝ) (hA : 1 ≤ A) :
    localizedCenteredErrorExpMass A offset ≤
      2 * (Real.log 4 + 4 + Real.log 2 + |offset|) * Real.exp A /
        Real.sqrt ((vaughanCutoff A + 1 : ℕ) : ℝ) := by
  let l := Real.log (vaughanCutoff A : ℝ)
  let L := actualJointSupportUpper A
  let C := Real.log 4 + 4 + Real.log 2 + |offset|
  have hC : 0 ≤ C := by dsimp only [C]; positivity
  by_cases hL : l ≤ L
  · have hL' : Real.log (vaughanCutoff A : ℝ) ≤ actualJointSupportUpper A := hL
    have hl0 : 0 ≤ l := (actual_log_cutoff_bounds A hA).1
    have he : IntervalIntegrable (fun t => mangoldtLogError t - offset) volume l L := by
      have hie : IntervalIntegrable mangoldtLogError volume l L := by
        simpa using mangoldtLogError_mul_deriv_intervalIntegrable l L hL
          (fun t : ℝ => t) contDiff_id
      exact hie.sub (intervalIntegrable_const)
    have hexp : IntervalIntegrable (fun t : ℝ => Real.exp (t / 2)) volume l L := by
      have hc : Continuous (fun t : ℝ => Real.exp (t / 2)) := by fun_prop
      exact hc.intervalIntegrable _ _
    have hea : IntervalIntegrable (fun t => |mangoldtLogError t - offset| *
        Real.exp (t / 2)) volume l L := by
      have hc : Continuous (fun t : ℝ => Real.exp (t / 2)) := by fun_prop
      exact he.abs.mul_continuousOn hc.continuousOn
    have hle : (∫ t in l..L, |mangoldtLogError t - offset| * Real.exp (t / 2)) ≤
        ∫ t in l..L, C * Real.exp (t / 2) := by
      apply intervalIntegral.integral_mono_on hL hea (hexp.const_mul C)
      intro t ht
      apply mul_le_mul_of_nonneg_right _ (Real.exp_pos _).le
      exact (abs_sub _ _).trans
        (add_le_add (mangoldtLogError_abs_le t (hl0.trans ht.1)) (le_refl |offset|))
    have hi : (∫ t in l..L, Real.exp (t / 2)) =
        2 * Real.exp (L / 2) - 2 * Real.exp (l / 2) :=
      intervalIntegral.integral_eq_sub_of_hasDerivAt
        (fun t _ => exp_half_antiderivative t) hexp
    rw [intervalIntegral.integral_const_mul, hi] at hle
    have hdrop : (∫ t in l..L, |mangoldtLogError t - offset| * Real.exp (t / 2)) ≤
        2 * C * Real.exp (L / 2) := by
      nlinarith [Real.exp_pos (l / 2)]
    simpa only [l, L, C, localizedCenteredErrorExpMass, max_eq_right hL',
      exp_half_actualJointSupportUpper, mul_div_assoc] using hdrop
  · dsimp only [l, L] at hL
    simp only [localizedCenteredErrorExpMass, max_eq_left (le_of_not_ge hL),
      intervalIntegral.integral_same]
    positivity

/-- The exact source support removes the extra A from the prior exponential envelope. -/
theorem centeredErrorWork_abs_le_localized_explicit (A offset : ℝ) (hA : 1 ≤ A) :
    |centeredErrorWork A offset| ≤
      4 * (Real.log 4 + 4 + Real.log 2 + |offset|) * Real.exp A *
        (162826 / (7623 * A ^ 2) + 1 / 4) := by
  let c := 162826 / (7623 * A ^ 2) + (1 / 4 : ℝ)
  let C := Real.log 4 + 4 + Real.log 2 + |offset|
  let a : ℝ := ((vaughanCutoff A + 1 : ℕ) : ℝ)
  have hc : 0 ≤ c := by dsimp only [c]; positivity
  have hC : 0 ≤ C := by dsimp only [C]; positivity
  have ha : 0 < a := by dsimp only [a]; positivity
  have hAa : A ≤ Real.sqrt a := by
    have hf : A ^ 2 < a := by
      simpa only [a, vaughanCutoff, Nat.cast_add, Nat.cast_one] using
        Nat.lt_floor_add_one (A ^ 2)
    nlinarith [Real.sq_sqrt ha.le, Real.sqrt_nonneg a]
  have hratio : A / Real.sqrt a ≤ 1 := (div_le_one (Real.sqrt_pos.2 ha)).2 hAa
  calc
    _ ≤ c * localizedCenteredErrorExpMass A offset * columnEnvelopeMass A :=
      centeredErrorWork_abs_le_localized_mass A offset hA
    _ ≤ c * localizedCenteredErrorExpMass A offset * (2 * A) :=
      mul_le_mul_of_nonneg_left (columnEnvelopeMass_le A hA)
        (mul_nonneg hc (localizedCenteredErrorExpMass_nonneg A offset))
    _ ≤ c * (2 * C * Real.exp A / Real.sqrt a) * (2 * A) :=
      mul_le_mul_of_nonneg_right
        (mul_le_mul_of_nonneg_left (localizedCenteredErrorExpMass_le A offset hA) hc)
        (by linarith)
    _ = (4 * C * Real.exp A * c) * (A / Real.sqrt a) := by ring
    _ ≤ (4 * C * Real.exp A * c) * 1 :=
      mul_le_mul_of_nonneg_left hratio (by positivity)
    _ = _ := by ring

theorem jointMangoldtErrorWork_abs_le_localized_explicit (A : ℝ) (hA : 1 ≤ A) :
    |jointMangoldtErrorWork A| ≤
      4 * (Real.log 4 + 4 + Real.log 2) * Real.exp A *
        (162826 / (7623 * A ^ 2) + 1 / 4) := by
  simpa only [centeredErrorWork, sub_zero, jointMangoldtErrorWork, abs_zero, add_zero] using
    centeredErrorWork_abs_le_localized_explicit A 0 hA

/-- The original lower boundary and work share the anchored localized mass exactly. -/
theorem original_boundary_work_abs_le_localized_mass (A : ℝ) (hA : 1 ≤ A) :
    |mangoldtLogError (Real.log (vaughanCutoff A : ℝ)) *
        jointMangoldtTestProfile A (Real.log (vaughanCutoff A : ℝ)) +
      jointMangoldtErrorWork A| ≤
      (162826 / (7623 * A ^ 2) + 1 / 4) *
        localizedCenteredErrorExpMass A
          (mangoldtLogError (Real.log (vaughanCutoff A : ℝ))) * columnEnvelopeMass A := by
  have h := centeredErrorWork_abs_le_localized_mass A
    (mangoldtLogError (Real.log (vaughanCutoff A : ℝ))) hA
  rw [centeredErrorWork_eq_original_add_lower A _ hA, add_comm] at h
  exact h

end
end FormalResearch.RiemannHypothesis.SourceLocalizedMixedWorkEstimate
```
