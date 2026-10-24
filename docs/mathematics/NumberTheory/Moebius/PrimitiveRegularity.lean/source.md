# Complete source: GRWTSK.NumberTheory.Moebius.PrimitiveRegularity

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c1c1c47c47de13b904fc4b469d210f57acbc132b` · SHA-256 `2d3e2dad4ae83918b57a79b6b6e8a2c154135abaa0c2fb28dbed34548f952cd2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license.
Source-specific CCC continuation; local conditional candidate, RH remains open. -/
import GRWTSK.NumberTheory.Moebius.MertensPrimitive
import Mathlib.MeasureTheory.Function.Floor
import Mathlib.MeasureTheory.Function.AbsolutelyContinuous
import Mathlib.MeasureTheory.Integral.DominatedConvergence
import Mathlib.MeasureTheory.Integral.IntervalIntegral.LebesgueDifferentiationThm

/-!
# Regularity and local-energy containment for the actual closed Möbius pickup

Human mathematical direction and theorem selection: grwtsk contributors.
Formal implementation assistance: OpenAI Codex.

The definitions are imported unchanged from `PickupBudgets`. The coefficient
bound is Mathlib's ordinary Möbius bound; no arithmetic growth premise is used.
The derivative conclusion is almost everywhere, including no assertion of
pointwise differentiability at arithmetic events. These lemmas are analytic
inputs to P07, not a proof of either polynomial budget or RH.
-/

set_option autoImplicit false

noncomputable section
namespace GRWTSK.RiemannHypothesis.CCC

open MeasureTheory Set Filter

theorem moebiusReal_abs_le_one (n : ℕ) : |moebiusReal n| ≤ 1 := by
  unfold moebiusReal
  exact_mod_cast (ArithmeticFunction.abs_moebius_le_one (n := n))

/-- The real closed prefix has its elementary counting allowance. -/
theorem mertensPrefix_abs_le {x : ℝ} (hx : 0 ≤ x) : |mertensPrefix x| ≤ x := by
  unfold mertensPrefix
  calc
    _ ≤ ∑ n ∈ Finset.Icc 1 ⌊x⌋₊, |moebiusReal n| := Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ _n ∈ Finset.Icc 1 ⌊x⌋₊, (1 : ℝ) :=
      Finset.sum_le_sum (fun n _ => moebiusReal_abs_le_one n)
    _ = (⌊x⌋₊ : ℝ) := by simp
    _ ≤ x := Nat.floor_le hx

theorem mertensPrefix_measurable : Measurable mertensPrefix := by
  exact (measurable_of_countable
    (fun N : ℕ => ∑ n ∈ Finset.Icc 1 N, moebiusReal n)).comp
    (Nat.measurable_floor (R := ℝ))

theorem pickupVelocity_measurable : Measurable pickupVelocity := by
  exact (Real.continuous_exp.comp ((continuous_id.neg).div_const 2)).measurable.mul
    (mertensPrefix_measurable.comp Real.continuous_exp.measurable)

/-- The elementary exponential allowance is retained, not called polynomial. -/
theorem pickupVelocity_abs_le (u : ℝ) : |pickupVelocity u| ≤ Real.exp (u / 2) := by
  have hm := mertensPrefix_abs_le (Real.exp_pos u).le
  calc
    |pickupVelocity u| = Real.exp (-u / 2) * |mertensPrefix (Real.exp u)| := by
      simp [pickupVelocity, abs_mul]
    _ ≤ Real.exp (-u / 2) * Real.exp u :=
      mul_le_mul_of_nonneg_left hm (Real.exp_pos _).le
    _ = Real.exp (u / 2) := by rw [← Real.exp_add]; congr 1; ring

/-- The actual step recording gives an integrable velocity on every finite interval. -/
theorem pickupVelocity_intervalIntegrable (a b : ℝ) :
    IntervalIntegrable pickupVelocity volume a b := by
  have hg : IntervalIntegrable (fun u : ℝ => Real.exp (u / 2)) volume a b :=
    (Real.continuous_exp.comp (continuous_id.div_const 2)).intervalIntegrable a b
  apply hg.mono_fun' pickupVelocity_measurable.aestronglyMeasurable
  exact ae_of_all _ fun u => by
    simpa only [Real.norm_eq_abs, Function.comp_apply, id_eq] using pickupVelocity_abs_le u

theorem wholePickup_continuous : Continuous wholePickup := by
  exact intervalIntegral.continuous_primitive pickupVelocity_intervalIntegrable 0

theorem wholePickup_measurable : Measurable wholePickup := wholePickup_continuous.measurable

theorem wholePickup_intervalIntegrable (a b : ℝ) :
    IntervalIntegrable wholePickup volume a b := wholePickup_continuous.intervalIntegrable a b

theorem wholePickup_sq_intervalIntegrable (a b : ℝ) :
    IntervalIntegrable (fun u : ℝ => wholePickup u ^ 2) volume a b :=
  (wholePickup_continuous.pow 2).intervalIntegrable a b

/-- Absolute continuity is proved on the entire oriented primitive interval. -/
theorem wholePickup_absolutelyContinuousOnInterval (T : ℝ) :
    AbsolutelyContinuousOnInterval wholePickup 0 T := by
  have h := pickupVelocity_intervalIntegrable 0 T
  exact h.absolutelyContinuousOnInterval_intervalIntegral left_mem_uIcc

/-- This is an almost-everywhere derivative law, not an eventwise derivative claim. -/
theorem wholePickup_ae_hasDerivAt (T : ℝ) :
    ∀ᵐ u ∂volume, u ∈ uIcc 0 T → HasDerivAt wholePickup (pickupVelocity u) u := by
  filter_upwards [(pickupVelocity_intervalIntegrable 0 T).ae_hasDerivAt_integral] with u hu
  intro hmem
  exact hu hmem 0 left_mem_uIcc

@[simp] theorem wholePickup_zero : wholePickup 0 = 0 := by simp [wholePickup]

theorem pickupEnergy_continuous : Continuous pickupEnergy := by
  exact intervalIntegral.continuous_primitive wholePickup_sq_intervalIntegrable 0

@[simp] theorem pickupEnergy_zero : pickupEnergy 0 = 0 := by simp [pickupEnergy]

theorem pickupEnergy_nonneg {T : ℝ} (hT : 0 ≤ T) : 0 ≤ pickupEnergy T := by
  exact intervalIntegral.integral_nonneg_of_forall hT (fun u => sq_nonneg (wholePickup u))

theorem pickupLocalEnergy_nonneg {T : ℝ} (hT : 0 ≤ T) : 0 ≤ pickupLocalEnergy T := by
  apply intervalIntegral.integral_nonneg_of_forall (max_le hT (by linarith))
  exact fun u => sq_nonneg (wholePickup u)

/-- The original local interval is contained in the completed energy interval. -/
theorem pickupLocalEnergy_le_energy {T : ℝ} (hT : 0 ≤ T) :
    pickupLocalEnergy T ≤ pickupEnergy T := by
  exact intervalIntegral.integral_mono_interval (le_max_left 0 (T - 1))
    (max_le hT (by linarith)) le_rfl
    (ae_of_all _ fun u => sq_nonneg (wholePickup u))
    (wholePickup_sq_intervalIntegrable 0 T)

theorem pickupEnergy_mono {S T : ℝ} (hS : 0 ≤ S) (hST : S ≤ T) :
    pickupEnergy S ≤ pickupEnergy T := by
  exact intervalIntegral.integral_mono_interval le_rfl hS hST
    (ae_of_all _ fun u => sq_nonneg (wholePickup u))
    (wholePickup_sq_intervalIntegrable 0 T)

/-- Exact local-energy subtraction; there is no discarded interval remainder. -/
theorem pickupLocalEnergy_eq_sub (T : ℝ) :
    pickupLocalEnergy T = pickupEnergy T - pickupEnergy (max 0 (T - 1)) := by
  have h := intervalIntegral.integral_add_adjacent_intervals
    (wholePickup_sq_intervalIntegrable 0 (max 0 (T - 1)))
    (wholePickup_sq_intervalIntegrable (max 0 (T - 1)) T)
  change pickupEnergy (max 0 (T - 1)) + pickupLocalEnergy T = pickupEnergy T at h
  linarith

/-- Nonnegative response-Gram diagonals use the actual pickup-response definition. -/
theorem pickupResponseGram_self_nonneg {T : ℝ} (hT : 0 ≤ T) (n : ℕ) :
    0 ≤ pickupResponseGram T n n := by
  apply intervalIntegral.integral_nonneg_of_forall hT
  exact fun u => mul_self_nonneg (pickupResponse n u)

/-- This is only P01's nonnegativity, not its sharp upper bound. -/
theorem pickupDiagonal_nonneg {T : ℝ} (hT : 0 ≤ T) : 0 ≤ pickupDiagonal T := by
  exact Finset.sum_nonneg (fun n _ =>
    mul_nonneg (sq_nonneg (moebiusReal n)) (pickupResponseGram_self_nonneg hT n))

end GRWTSK.RiemannHypothesis.CCC
```
