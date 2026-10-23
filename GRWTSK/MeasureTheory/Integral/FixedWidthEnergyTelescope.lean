import GRWTSK.Analysis.MeasureTheory.Integral.MoebiusCumulativeEnergy

/-! Exact fixed-width terminal-window accounting for the actual completed
Möbius pickup. Recurrence is applied only at T≥b. A backward floor telescope
leaves a compact nonnegative remainder; a forward grid/ceil telescope covers
all real horizons without evaluating the recurrence at a negative scale.
No signed settlement estimate is supplied.
-/
noncomputable section
open MeasureTheory Set
open scoped BigOperators
namespace HSSCP04
open PPNCP04 EulerP04RH.NativeWindow

/-- Literal completed-pickup terminal window with a fixed width. -/
def localEnergy (b T : ℝ) : ℝ :=
  ∫ u : ℝ in Icc (T-b) T, globalPickup u^2

namespace LocalEnergyTelescope

lemma localEnergy_nonnegative (b T : ℝ) : 0 ≤ localEnergy b T :=
  integral_nonneg (fun _ => sq_nonneg _)

lemma localEnergy_common_cutoff (b T : ℝ) :
    localEnergy b T = ∫ u : ℝ in Icc (T-b) T, pickup T u^2 := by
  apply setIntegral_congr_fun measurableSet_Icc
  intro u hu
  simp only [pickup_cutoff_consistent hu.2]

/-- This exact recurrence deliberately requires T≥b≥0. -/
theorem energy_step {b T : ℝ} (hb : 0 ≤ b) (hT : b ≤ T) :
    energy T = energy (T-b)+localEnergy b T := by
  have hf : Continuous (fun u : ℝ => globalPickup u^2) := globalPickup_continuous.pow 2
  have hadd := intervalIntegral.integral_add_adjacent_intervals
    (hf.intervalIntegrable (μ := volume) (a := 0) (b := T-b))
    (hf.intervalIntegrable (μ := volume) (a := T-b) (b := T))
  rw [intervalIntegral.integral_of_le (by linarith : 0 ≤ T-b),
    intervalIntegral.integral_of_le (by linarith : T-b ≤ T),
    intervalIntegral.integral_of_le (by linarith : 0 ≤ T),
    ← integral_Icc_eq_integral_Ioc, ← integral_Icc_eq_integral_Ioc,
    ← integral_Icc_eq_integral_Ioc] at hadd
  rw [energy_eq_global_integral, energy_eq_global_integral]
  exact hadd.symm

/-- Exact finite telescope over every full terminal window. -/
theorem backward_telescope {b T : ℝ} (hb : 0 ≤ b) (n : ℕ)
    (hfull : (n : ℝ)*b ≤ T) :
    energy T = energy (T-(n:ℝ)*b)+
      ∑ j ∈ Finset.range n, localEnergy b (T-(j:ℝ)*b) := by
  induction n with
  | zero => simp
  | succ n ih =>
    have hfull' : (n:ℝ)*b ≤ T := by
      have hn := Nat.cast_nonneg (α := ℝ) n
      simp only [Nat.cast_add,Nat.cast_one] at hfull
      nlinarith
    rw [ih hfull', Finset.sum_range_succ]
    have hstep := energy_step hb (show b ≤ T-(n:ℝ)*b by
      simp only [Nat.cast_add,Nat.cast_one] at hfull
      nlinarith)
    rw [hstep]
    have he : T-(n:ℝ)*b-b = T-((n+1:ℕ):ℝ)*b := by
      push_cast
      ring
    rw [he]
    ring

lemma floor_remainder_bounds {b T : ℝ} (hb : 0 < b) (hT : 0 ≤ T) :
    0 ≤ T-(⌊T/b⌋₊:ℝ)*b ∧ T-(⌊T/b⌋₊:ℝ)*b < b := by
  have hfloor := Nat.floor_le (div_nonneg hT hb.le)
  have hnext := Nat.lt_floor_add_one (T/b)
  have hlow := (le_div_iff₀ hb).mp hfloor
  have hhigh := (div_lt_iff₀ hb).mp hnext
  constructor <;> nlinarith

/-- The remainder stays in [0,b); no negative-scale terminal recurrence is used. -/
theorem floor_telescope {b T : ℝ} (hb : 0 < b) (hT : 0 ≤ T) :
    energy T = energy (T-(⌊T/b⌋₊:ℝ)*b)+
      ∑ j ∈ Finset.range ⌊T/b⌋₊, localEnergy b (T-(j:ℝ)*b) :=
  backward_telescope hb.le _ (by linarith [(floor_remainder_bounds hb hT).1])

lemma compact_remainder_bound {b T : ℝ} (hb : 0 < b) (hT : 0 ≤ T) :
    energy (T-(⌊T/b⌋₊:ℝ)*b) ≤ energy b :=
  energy_monotone (floor_remainder_bounds hb hT).2.le

/-- Exact forward fixed-grid telescope from zero. -/
theorem grid_telescope {b : ℝ} (hb : 0 ≤ b) (n : ℕ) :
    energy ((n:ℝ)*b) =
      ∑ j ∈ Finset.range n, localEnergy b (((j:ℝ)+1)*b) := by
  induction n with
  | zero => simp [energy_zero]
  | succ n ih =>
    rw [Finset.sum_range_succ]
    have hs := energy_step hb (show b ≤ ((n+1:ℕ):ℝ)*b by
      have hn := Nat.cast_nonneg (α := ℝ) n
      push_cast
      nlinarith)
    have he : ((n+1:ℕ):ℝ)*b-b = (n:ℝ)*b := by push_cast; ring
    rw [he, ih] at hs
    simpa only [Nat.cast_add,Nat.cast_one] using hs

lemma localEnergy_le_total {b T : ℝ} (hb : 0 ≤ b) (hT : b ≤ T) :
    localEnergy b T ≤ energy T := by
  rw [energy_step hb hT]
  exact le_add_of_nonneg_left (energy_nonneg _)

/-- A genuine all-real fixed-width window estimate gives polynomial total energy.
The ceil extends the upper endpoint, never the recurrence below zero. -/
theorem window_bound_implies_energy_polynomial {b C q : ℝ}
    (hb : 0 < b) (hC : 0 ≤ C) (hq : 0 ≤ q)
    (hwindow : ∀ T : ℝ, b ≤ T → localEnergy b T ≤ C*(1+T)^q) :
    PolynomialBound energy := by
  have hn : ∀ n : ℕ, energy ((n:ℝ)*b) ≤ C*(n:ℝ)*(1+(n:ℝ)*b)^q := by
    intro n
    induction n with
    | zero => simp [energy_zero]
    | succ n ih =>
      have hnb : b ≤ ((n+1:ℕ):ℝ)*b := by
        have hn := Nat.cast_nonneg (α := ℝ) n
        push_cast
        nlinarith
      have hstep := energy_step hb.le hnb
      have he : ((n+1:ℕ):ℝ)*b-b = (n:ℝ)*b := by push_cast; ring
      rw [he] at hstep
      rw [hstep]
      have hw := hwindow (((n+1:ℕ):ℝ)*b) hnb
      have hp : (1+(n:ℝ)*b)^q ≤ (1+((n+1:ℕ):ℝ)*b)^q :=
        Real.rpow_le_rpow (by positivity) (by push_cast; nlinarith) hq
      have hi := ih.trans (mul_le_mul_of_nonneg_left hp (by positivity : 0 ≤ C*(n:ℝ)))
      calc
        _ ≤ C*(n:ℝ)*(1+((n+1:ℕ):ℝ)*b)^q+
          C*(1+((n+1:ℕ):ℝ)*b)^q := add_le_add hi hw
        _ = _ := by push_cast; ring
  refine ⟨C*(1+b⁻¹)*(1+b)^q,q+1,by positivity,by linarith,?_⟩
  intro T hT
  let n : ℕ := ⌈T/b⌉₊
  have hTn : T ≤ (n:ℝ)*b := (div_le_iff₀ hb).mp (Nat.le_ceil (T/b))
  have hnT : (n:ℝ) ≤ T/b+1 := (Nat.ceil_lt_add_one (div_nonneg hT hb.le)).le
  have hgrid : (n:ℝ)*b ≤ T+b := by
    have h := mul_le_mul_of_nonneg_right hnT hb.le
    field_simp at h
    nlinarith
  have hcount : (n:ℝ) ≤ (1+b⁻¹)*(1+T) := by
    rw [div_eq_mul_inv] at hnT
    nlinarith [inv_nonneg.mpr hb.le]
  have hscale : 1+(n:ℝ)*b ≤ (1+b)*(1+T) := by
    nlinarith [mul_nonneg hb.le hT]
  have hpow : (1+(n:ℝ)*b)^q ≤ ((1+b)*(1+T))^q :=
    Real.rpow_le_rpow (by positivity) hscale hq
  calc
    energy T ≤ energy ((n:ℝ)*b) := energy_monotone hTn
    _ ≤ C*(n:ℝ)*(1+(n:ℝ)*b)^q := hn n
    _ ≤ C*((1+b⁻¹)*(1+T))*((1+b)*(1+T))^q :=
      mul_le_mul (mul_le_mul_of_nonneg_left hcount hC) hpow (by positivity) (by positivity)
    _ = C*(1+b⁻¹)*(1+b)^q*(1+T)^(q+1) := by
      rw [Real.mul_rpow (by positivity : 0 ≤ 1+b) (by linarith : 0 ≤ 1+T),
        Real.rpow_add (by linarith : 0 < 1+T), Real.rpow_one]
      ring

end LocalEnergyTelescope
end HSSCP04
#print axioms HSSCP04.LocalEnergyTelescope.energy_step
#print axioms HSSCP04.LocalEnergyTelescope.floor_telescope
#print axioms HSSCP04.LocalEnergyTelescope.grid_telescope
#print axioms HSSCP04.LocalEnergyTelescope.window_bound_implies_energy_polynomial
