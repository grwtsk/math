/-
Copyright (c) 2026 grwtsk contributors. MIT.
-/
import Mathlib.MeasureTheory.Function.Floor
import Mathlib.MeasureTheory.Integral.IntervalIntegral.Basic

/-!
# Dwell time of a binary gate

A measurable active set specifies a binary signal on real time. Its dwell
time is the integral of the indicator, and on an ordered interval equals
the length of the active portion. A fixed nonnegative calibration converts
dwell to a parameter for any additive-time evolution. The floor extension
realizes a discrete gate as an exact continuous gate at integer endpoints.
-/

set_option autoImplicit false

open MeasureTheory Set
open scoped BigOperators

namespace GRWTSK.BinaryGateDwellTime

/-- The active set of a measurable on/off gate. -/
structure Gate where
  active : Set ℝ
  measurable_active : MeasurableSet active

noncomputable section

namespace Gate

/-- Value one when the gate is active, zero otherwise. -/
def activation (gate : Gate) : ℝ → ℝ :=
  gate.active.indicator (fun _ => 1)

theorem activation_eq_zero_or_one (gate : Gate) (t : ℝ) :
    gate.activation t = 0 ∨ gate.activation t = 1 := by
  by_cases ht : t ∈ gate.active <;> simp [activation, ht]

theorem activation_nonneg (gate : Gate) (t : ℝ) : 0 ≤ gate.activation t := by
  rcases gate.activation_eq_zero_or_one t with h | h <;> simp [h]

theorem activation_le_one (gate : Gate) (t : ℝ) : gate.activation t ≤ 1 := by
  rcases gate.activation_eq_zero_or_one t with h | h <;> simp [h]

theorem measurable_activation (gate : Gate) : Measurable gate.activation :=
  measurable_const.indicator gate.measurable_active

theorem intervalIntegrable_activation (gate : Gate) (a b : ℝ) :
    IntervalIntegrable gate.activation volume a b := by
  rw [intervalIntegrable_iff]
  have hconst : IntegrableOn (fun _ : ℝ => (1 : ℝ)) (uIoc a b) volume :=
    intervalIntegrable_iff.mp intervalIntegrable_const
  exact hconst.indicator gate.measurable_active

/-- The signed interval duration of the active part of the gate. -/
def dwell (gate : Gate) (a b : ℝ) : ℝ :=
  ∫ t in a..b, gate.activation t

@[simp] theorem dwell_self (gate : Gate) (a : ℝ) : gate.dwell a a = 0 := by
  simp [dwell]

theorem dwell_add (gate : Gate) (a b c : ℝ) :
    gate.dwell a b + gate.dwell b c = gate.dwell a c :=
  intervalIntegral.integral_add_adjacent_intervals
    (gate.intervalIntegrable_activation a b) (gate.intervalIntegrable_activation b c)

theorem dwell_eq_length (gate : Gate) {a b : ℝ} (hab : a ≤ b) :
    gate.dwell a b = volume.real (gate.active ∩ Ioc a b) := by
  rw [dwell, intervalIntegral.integral_of_le hab, activation]
  change (∫ t in Ioc a b, gate.active.indicator (1 : ℝ → ℝ) t) = _
  rw [MeasureTheory.integral_indicator_one gate.measurable_active]
  simp only [Measure.real, Measure.restrict_apply gate.measurable_active]

theorem dwell_nonneg (gate : Gate) {a b : ℝ} (hab : a ≤ b) :
    0 ≤ gate.dwell a b :=
  intervalIntegral.integral_nonneg_of_forall hab gate.activation_nonneg

theorem dwell_le_duration (gate : Gate) {a b : ℝ} (hab : a ≤ b) :
    gate.dwell a b ≤ b - a := by
  calc
    gate.dwell a b ≤ ∫ _ in a..b, (1 : ℝ) :=
      intervalIntegral.integral_mono_on hab (gate.intervalIntegrable_activation a b)
        intervalIntegrable_const (fun t _ => gate.activation_le_one t)
    _ = b - a := by simp

theorem cumulative_increment (gate : Gate) {a b : ℝ} (hab : a ≤ b) :
    0 ≤ gate.dwell 0 b - gate.dwell 0 a ∧
      gate.dwell 0 b - gate.dwell 0 a ≤ b - a := by
  rw [← gate.dwell_add 0 a b, add_sub_cancel_left]
  exact ⟨gate.dwell_nonneg hab, gate.dwell_le_duration hab⟩

/-- Heat time obtained from dwell by a fixed calibration. -/
def calibrated (gate : Gate) (κ a b : ℝ) : ℝ := κ * gate.dwell a b

theorem calibrated_add (gate : Gate) (κ a b c : ℝ) :
    gate.calibrated κ a b + gate.calibrated κ b c = gate.calibrated κ a c := by
  rw [calibrated, calibrated, calibrated, ← mul_add, gate.dwell_add]

theorem calibrated_bounds (gate : Gate) {κ a b : ℝ} (hκ : 0 ≤ κ) (hab : a ≤ b) :
    0 ≤ gate.calibrated κ a b ∧ gate.calibrated κ a b ≤ κ * (b - a) :=
  ⟨mul_nonneg hκ (gate.dwell_nonneg hab),
    mul_le_mul_of_nonneg_left (gate.dwell_le_duration hab) hκ⟩

/-- The gate that is active exactly when its two input gates disagree. -/
def disagreement (first second : Gate) : Gate where
  active := (first.active \ second.active) ∪ (second.active \ first.active)
  measurable_active := (first.measurable_active.diff second.measurable_active).union
    (second.measurable_active.diff first.measurable_active)

theorem abs_activation_sub (first second : Gate) (t : ℝ) :
    |first.activation t - second.activation t| = (first.disagreement second).activation t := by
  by_cases hfirst : t ∈ first.active <;> by_cases hsecond : t ∈ second.active <;>
    simp [activation, disagreement, hfirst, hsecond]

theorem abs_dwell_sub_le (first second : Gate) {a b : ℝ} (hab : a ≤ b) :
    |first.dwell a b - second.dwell a b| ≤ (first.disagreement second).dwell a b := by
  rw [dwell, dwell, ← intervalIntegral.integral_sub (first.intervalIntegrable_activation a b)
    (second.intervalIntegrable_activation a b)]
  calc
    _ ≤ ∫ t in a..b, |first.activation t - second.activation t| :=
      intervalIntegral.abs_integral_le_integral_abs hab
    _ = (first.disagreement second).dwell a b := by
      simp only [abs_activation_sub, dwell]

theorem abs_calibrated_sub_le (first second : Gate) (κ : ℝ) {a b : ℝ} (hab : a ≤ b) :
    |first.calibrated κ a b - second.calibrated κ a b| ≤
      |κ| * (first.disagreement second).dwell a b := by
  rw [calibrated, calibrated, ← mul_sub, abs_mul]
  exact mul_le_mul_of_nonneg_left (first.abs_dwell_sub_le second hab) (abs_nonneg κ)

end Gate

/-- The real value of a bit. -/
def bitValue (bit : Bool) : ℝ := if bit then 1 else 0

/-- Total active time of a bit sequence sampled in unit slots. -/
def discreteDwell (bit : ℕ → Bool) (n : ℕ) : ℝ :=
  ∑ k ∈ Finset.range n, bitValue (bit k)

@[simp] theorem discreteDwell_zero (bit : ℕ → Bool) : discreteDwell bit 0 = 0 := by
  simp [discreteDwell]

theorem discreteDwell_succ (bit : ℕ → Bool) (n : ℕ) :
    discreteDwell bit (n + 1) = discreteDwell bit n + bitValue (bit n) :=
  Finset.sum_range_succ _ _

theorem discreteDwell_add (bit : ℕ → Bool) (m n : ℕ) :
    discreteDwell bit (m + n) = discreteDwell bit m + discreteDwell (fun k => bit (m + k)) n :=
  Finset.sum_range_add _ _ _

theorem discreteDwell_bounds (bit : ℕ → Bool) (n : ℕ) :
    0 ≤ discreteDwell bit n ∧ discreteDwell bit n ≤ n := by
  constructor
  · exact Finset.sum_nonneg (fun k _ => by cases bit k <;> simp [bitValue])
  · calc
      discreteDwell bit n ≤ ∑ _ ∈ Finset.range n, (1 : ℝ) :=
        Finset.sum_le_sum (fun k _ => by cases bit k <;> simp [bitValue])
      _ = n := by simp

/-- The clock time of a bit sequence with slot duration `Δ` and calibration `κ`. -/
def discreteCalibrated (bit : ℕ → Bool) (Δ κ : ℝ) (n : ℕ) : ℝ :=
  κ * (Δ * discreteDwell bit n)

theorem discreteCalibrated_add (bit : ℕ → Bool) (Δ κ : ℝ) (m n : ℕ) :
    discreteCalibrated bit Δ κ (m + n) =
      discreteCalibrated bit Δ κ m + discreteCalibrated (fun k => bit (m + k)) Δ κ n := by
  simp only [discreteCalibrated, discreteDwell_add, mul_add]

theorem discreteCalibrated_bounds (bit : ℕ → Bool) {Δ κ : ℝ}
    (hΔ : 0 ≤ Δ) (hκ : 0 ≤ κ) (n : ℕ) :
    0 ≤ discreteCalibrated bit Δ κ n ∧ discreteCalibrated bit Δ κ n ≤ κ * (Δ * n) :=
  ⟨mul_nonneg hκ (mul_nonneg hΔ (discreteDwell_bounds bit n).1),
    mul_le_mul_of_nonneg_left
      (mul_le_mul_of_nonneg_left (discreteDwell_bounds bit n).2 hΔ) hκ⟩

/-- Extend bit `n` to the unit slot `[n,n+1)` on nonnegative real time. -/
def unitStep (bit : ℕ → Bool) : Gate where
  active := (Nat.floor : ℝ → ℕ) ⁻¹' {n | bit n = true}
  measurable_active := Nat.measurable_floor (Set.to_countable _).measurableSet

theorem unitStep_activation (bit : ℕ → Bool) (t : ℝ) :
    (unitStep bit).activation t = bitValue (bit ⌊t⌋₊) := by
  simp [unitStep, Gate.activation, Set.indicator_apply, bitValue]

theorem unitStep_dwell_slot (bit : ℕ → Bool) (n : ℕ) :
    (unitStep bit).dwell n (n + 1) = bitValue (bit n) := by
  have hle : (n : ℝ) ≤ (n : ℝ) + 1 := le_add_of_nonneg_right zero_le_one
  calc
    (unitStep bit).dwell n (n + 1) = ∫ _ in (n : ℝ)..(n : ℝ) + 1, bitValue (bit n) := by
      apply intervalIntegral.integral_congr_Ioo_of_le hle
      intro t ht
      have hfloor : ⌊t⌋₊ = n :=
        (Nat.floor_eq_iff ((Nat.cast_nonneg n).trans ht.1.le)).2 ⟨ht.1.le, ht.2⟩
      rw [unitStep_activation, hfloor]
    _ = bitValue (bit n) := by simp

theorem unitStep_dwell (bit : ℕ → Bool) (n : ℕ) :
    (unitStep bit).dwell 0 n = discreteDwell bit n := by
  induction n with
  | zero => simp
  | succ n ih =>
      rw [Nat.cast_succ, ← (unitStep bit).dwell_add 0 n (n + 1), ih,
        unitStep_dwell_slot, discreteDwell_succ]

theorem unitStep_calibrated (bit : ℕ → Bool) (κ : ℝ) (n : ℕ) :
    (unitStep bit).calibrated κ 0 n = discreteCalibrated bit 1 κ n := by
  simp [Gate.calibrated, discreteCalibrated, unitStep_dwell]

/-- Equal terminal dwell can come from different pulse timings. -/
theorem terminalDwell_loses_order :
    ∃ first second : ℕ → Bool, discreteDwell first 2 = discreteDwell second 2 ∧
      discreteDwell first 1 ≠ discreteDwell second 1 := by
  refine ⟨fun n => n == 0, fun n => n == 1, ?_⟩
  simp [discreteDwell_succ, bitValue]

end

end GRWTSK.BinaryGateDwellTime
