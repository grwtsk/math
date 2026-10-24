# Complete source: GRWTSK.NumberTheory.Moebius.FiniteResponseSum

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5e6c4b01e48f5cf6e779023aac9098fc0801127d` · SHA-256 `35e2189986ff91fe2ffe14c69841c2ab01f70344037f1cf8a6d07e007d8d41aa`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license.
Source-specific CCC continuation; local conditional candidate, RH remains open. -/
import GRWTSK.NumberTheory.Moebius.PrimitiveRegularity
import Mathlib.Analysis.SpecialFunctions.Integrals.Basic

/-!
# The actual closed-prefix Möbius pickup as a finite response sum

Human mathematical direction and theorem selection: grwtsk contributors.
Formal implementation assistance: OpenAI Codex.

The definitions in `PickupBudgets` are retained, including the closed cutoff.
No cancellation or polynomial-growth premise is used in this source adapter.
-/

set_option autoImplicit false

noncomputable section
namespace GRWTSK.RiemannHypothesis.CCC

open MeasureTheory Set
open scoped BigOperators

/-- The velocity of a single unit impulse, with its closed event convention. -/
def pickupAtomVelocity (n : ℕ) (u : ℝ) : ℝ :=
  if Real.log n ≤ u then Real.exp (-u / 2) else 0

theorem pickup_log_le_iff_closed_cutoff {n : ℕ} (hn : 1 ≤ n) (u : ℝ) :
    Real.log n ≤ u ↔ n ≤ ⌊Real.exp u⌋₊ := by
  have hnpos : (0 : ℝ) < n := by exact_mod_cast hn
  rw [Real.log_le_iff_le_exp hnpos, Nat.le_floor_iff (Real.exp_pos u).le]

/-- Earlier closed prefixes can be expanded over the same final inventory. -/
theorem mertensPrefix_fixed_inventory {u T : ℝ} (huT : u ≤ T) :
    mertensPrefix (Real.exp u) =
      ∑ n ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
        if Real.log n ≤ u then moebiusReal n else 0 := by
  have hsub : Finset.Icc 1 ⌊Real.exp u⌋₊ ⊆ Finset.Icc 1 ⌊Real.exp T⌋₊ := by
    intro n hn
    have hne := Finset.mem_Icc.mp hn
    exact Finset.mem_Icc.mpr ⟨hne.1,
      hne.2.trans (Nat.floor_mono (Real.exp_le_exp.mpr huT))⟩
  unfold mertensPrefix
  calc
    _ = ∑ n ∈ Finset.Icc 1 ⌊Real.exp u⌋₊,
        if Real.log n ≤ u then moebiusReal n else 0 := by
      apply Finset.sum_congr rfl
      intro n hn
      have hne := Finset.mem_Icc.mp hn
      simp [(pickup_log_le_iff_closed_cutoff hne.1 u).mpr hne.2]
    _ = _ := by
      apply Finset.sum_subset hsub
      intro n hnT hnu
      have hn1 := (Finset.mem_Icc.mp hnT).1
      have hnot : ¬Real.log n ≤ u := by
        intro h
        exact hnu (Finset.mem_Icc.mpr
          ⟨hn1, (pickup_log_le_iff_closed_cutoff hn1 u).mp h⟩)
      simp [hnot]

theorem pickupVelocity_fixed_inventory {u T : ℝ} (huT : u ≤ T) :
    pickupVelocity u = ∑ n ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
      moebiusReal n * pickupAtomVelocity n u := by
  rw [pickupVelocity, mertensPrefix_fixed_inventory huT, Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro n _
  by_cases h : Real.log n ≤ u <;> simp [pickupAtomVelocity, h, mul_comm]

theorem pickupAtomVelocity_measurable (n : ℕ) : Measurable (pickupAtomVelocity n) := by
  apply Measurable.ite measurableSet_Ici
    (Real.continuous_exp.comp ((continuous_id.neg).div_const 2)).measurable
    measurable_const

theorem pickupAtomVelocity_intervalIntegrable (n : ℕ) (a b : ℝ) :
    IntervalIntegrable (pickupAtomVelocity n) volume a b := by
  have hg : IntervalIntegrable (fun u : ℝ => Real.exp (-u / 2)) volume a b :=
    (Real.continuous_exp.comp ((continuous_id.neg).div_const 2)).intervalIntegrable a b
  apply hg.mono_fun' (pickupAtomVelocity_measurable n).aestronglyMeasurable
  exact ae_of_all _ fun u => by
    by_cases h : Real.log n ≤ u <;>
      simp [pickupAtomVelocity, h, Real.norm_eq_abs, (Real.exp_pos _).le]

/-- Finite Fubini over the unchanged final closed inventory. -/
theorem wholePickup_finite_atom_integrals {T : ℝ} (hT : 0 ≤ T) :
    wholePickup T = ∑ n ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
      moebiusReal n * ∫ u in (0 : ℝ)..T, pickupAtomVelocity n u := by
  unfold wholePickup
  calc
    _ = ∫ u in (0 : ℝ)..T,
        ∑ n ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
          moebiusReal n * pickupAtomVelocity n u := by
      apply intervalIntegral.integral_congr
      intro u hu
      rw [uIcc_of_le hT] at hu
      exact pickupVelocity_fixed_inventory hu.2
    _ = _ := by
      rw [intervalIntegral.integral_finsetSum]
      · apply Finset.sum_congr rfl
        intro n _
        exact intervalIntegral.integral_const_mul _ _
      · intro n _
        exact (pickupAtomVelocity_intervalIntegrable n 0 T).const_mul _

theorem pickup_negative_half_integral (a b : ℝ) :
    (∫ u in a..b, Real.exp (-u / 2)) =
      2 * (Real.exp (-a / 2) - Real.exp (-b / 2)) := by
  have hd (u : ℝ) : HasDerivAt (fun x : ℝ => -2 * Real.exp (-x / 2))
      (Real.exp (-u / 2)) u := by
    have ha : HasDerivAt (fun x : ℝ => -x / 2) (-(1 : ℝ) / 2) u :=
      (hasDerivAt_id u).neg.div_const 2
    have heq : (-2 : ℝ) * (Real.exp (-u / 2) * (-(1 : ℝ) / 2)) =
        Real.exp (-u / 2) := by ring
    simpa only [heq] using ha.exp.const_mul (-2)
  have hi : IntervalIntegrable (fun u : ℝ => Real.exp (-u / 2)) volume a b :=
    (Real.continuous_exp.comp ((continuous_id.neg).div_const 2)).intervalIntegrable a b
  rw [intervalIntegral.integral_eq_sub_of_hasDerivAt (fun u _ => hd u) hi]
  ring

theorem pickup_exp_negative_log_half {n : ℕ} (hn : 1 ≤ n) :
    Real.exp (-Real.log n / 2) = (Real.sqrt n)⁻¹ := by
  have hnpos : (0 : ℝ) < n := by exact_mod_cast hn
  have hs : Real.sqrt (Real.exp (Real.log n)) = Real.exp (Real.log n / 2) := by
    have he : Real.exp (Real.log n) = Real.exp (Real.log n / 2) ^ 2 := by
      rw [pow_two, ← Real.exp_add]
      congr 1
      ring
    rw [he, Real.sqrt_sq (Real.exp_pos _).le]
  rw [Real.exp_log hnpos] at hs
  rw [show -Real.log (n : ℝ) / 2 = -(Real.log n / 2) by ring, Real.exp_neg, ← hs]

theorem pickupAtomVelocity_integral {n : ℕ} (hn : 1 ≤ n) {T : ℝ}
    (hnT : Real.log n ≤ T) :
    (∫ u in (0 : ℝ)..T, pickupAtomVelocity n u) =
      2 * ((Real.sqrt n)⁻¹ - Real.exp (-T / 2)) := by
  have hnreal : (1 : ℝ) ≤ n := by exact_mod_cast hn
  have hlog : 0 ≤ Real.log n := Real.log_nonneg hnreal
  have hz : (∫ u in (0 : ℝ)..Real.log n, pickupAtomVelocity n u) = 0 := by
    calc
      _ = ∫ u in (0 : ℝ)..Real.log n, (0 : ℝ) := by
        apply intervalIntegral.integral_congr_Ioo_of_le hlog
        intro u hu
        simp [pickupAtomVelocity, not_le.mpr hu.2]
      _ = 0 := intervalIntegral.integral_zero
  have he : (∫ u in Real.log n..T, pickupAtomVelocity n u) =
      ∫ u in Real.log n..T, Real.exp (-u / 2) := by
    apply intervalIntegral.integral_congr
    intro u hu
    rw [uIcc_of_le hnT] at hu
    simp [pickupAtomVelocity, hu.1]
  have hsplit := intervalIntegral.integral_add_adjacent_intervals
    (pickupAtomVelocity_intervalIntegrable n 0 (Real.log n))
    (pickupAtomVelocity_intervalIntegrable n (Real.log n) T)
  rw [← hsplit, hz, zero_add, he, pickup_negative_half_integral,
    pickup_exp_negative_log_half hn]

/-- The complete signed pickup identity holds for every real nonnegative cutoff. -/
theorem wholePickup_closed_prefix {T : ℝ} (hT : 0 ≤ T) :
    wholePickup T = 2 * ∑ n ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
      moebiusReal n * ((Real.sqrt n)⁻¹ - Real.exp (-T / 2)) := by
  rw [wholePickup_finite_atom_integrals hT, Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro n hn
  have hne := Finset.mem_Icc.mp hn
  rw [pickupAtomVelocity_integral hne.1
    ((pickup_log_le_iff_closed_cutoff hne.1 T).mpr hne.2)]
  ring

theorem wholePickup_response_sum {T : ℝ} (hT : 0 ≤ T) :
    wholePickup T = ∑ n ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
      moebiusReal n * pickupResponse n T := by
  rw [wholePickup_closed_prefix hT, Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro n hn
  have hne := Finset.mem_Icc.mp hn
  simp only [pickupResponse,
    if_pos ((pickup_log_le_iff_closed_cutoff hne.1 T).mpr hne.2)]
  ring

theorem pickup_inverse_sqrt_eq_negative_half (n : ℕ) :
    (Real.sqrt n)⁻¹ = (n : ℝ) ^ (-(1 / 2 : ℝ)) := by
  rw [Real.rpow_neg (Nat.cast_nonneg n), ← Real.sqrt_eq_rpow]

/-- The same finite identity in the literal negative-half power convention. -/
theorem wholePickup_closed_prefix_rpow {T : ℝ} (hT : 0 ≤ T) :
    wholePickup T = 2 * ∑ n ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
      moebiusReal n * ((n : ℝ) ^ (-(1 / 2 : ℝ)) - Real.exp (-T / 2)) := by
  simpa only [pickup_inverse_sqrt_eq_negative_half] using wholePickup_closed_prefix hT

/-- Both constituent prefixes have precisely the same closed cutoff. -/
theorem wholePickup_closed_prefix_flux {T : ℝ} (hT : 0 ≤ T) :
    wholePickup T =
      2 * (∑ n ∈ Finset.Icc 1 ⌊Real.exp T⌋₊, moebiusReal n * (Real.sqrt n)⁻¹) -
      2 * Real.exp (-T / 2) * mertensPrefix (Real.exp T) := by
  rw [wholePickup_closed_prefix hT]
  simp only [mul_sub, Finset.sum_sub_distrib, ← Finset.sum_mul, mertensPrefix]
  ring

theorem pickupResponse_at_event {n : ℕ} (hn : 1 ≤ n) :
    pickupResponse n (Real.log n) = 0 := by
  simp [pickupResponse, pickup_exp_negative_log_half hn]

/-- The final inventory works at every real time in the recording interval. -/
theorem wholePickup_fixed_inventory {u T : ℝ} (hu : 0 ≤ u) (huT : u ≤ T) :
    wholePickup u = ∑ n ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
      moebiusReal n * pickupResponse n u := by
  rw [wholePickup_response_sum hu]
  apply Finset.sum_subset
  · intro n hn
    have hne := Finset.mem_Icc.mp hn
    exact Finset.mem_Icc.mpr ⟨hne.1,
      hne.2.trans (Nat.floor_mono (Real.exp_le_exp.mpr huT))⟩
  · intro n hnT hnu
    have hn1 := (Finset.mem_Icc.mp hnT).1
    have hnot : ¬Real.log n ≤ u := by
      intro h
      exact hnu (Finset.mem_Icc.mpr
        ⟨hn1, (pickup_log_le_iff_closed_cutoff hn1 u).mp h⟩)
    simp [pickupResponse, hnot]

/-- The two actual response branches agree at the closed event. -/
theorem pickupResponse_continuous {n : ℕ} (hn : 1 ≤ n) :
    Continuous (pickupResponse n) := by
  apply Continuous.if_le
    (continuous_const.mul (continuous_const.sub
      (Real.continuous_exp.comp ((continuous_id.neg).div_const 2))))
    continuous_const continuous_const continuous_id
  intro u hu
  change Real.log (n : ℝ) = u at hu
  change 2 * ((Real.sqrt n)⁻¹ - Real.exp (-u / 2)) = 0
  rw [← hu, pickup_exp_negative_log_half hn]
  ring

theorem pickupResponse_product_intervalIntegrable {m n : ℕ}
    (hm : 1 ≤ m) (hn : 1 ≤ n) (a b : ℝ) :
    IntervalIntegrable (fun u => pickupResponse m u * pickupResponse n u) volume a b :=
  ((pickupResponse_continuous hm).mul (pickupResponse_continuous hn)).intervalIntegrable a b

/-- The complete signed finite square is integrated before diagonal splitting. -/
theorem pickupEnergy_eq_full_gram {T : ℝ} (hT : 0 ≤ T) :
    pickupEnergy T = pickupFullGram T := by
  let S := Finset.Icc 1 ⌊Real.exp T⌋₊
  have hprod (m : ℕ) (hm : m ∈ S) (n : ℕ) (hn : n ∈ S) :
      Continuous (fun u => moebiusReal m * moebiusReal n *
        (pickupResponse m u * pickupResponse n u)) := by
    exact continuous_const.mul ((pickupResponse_continuous (Finset.mem_Icc.mp hm).1).mul
      (pickupResponse_continuous (Finset.mem_Icc.mp hn).1))
  unfold pickupEnergy
  calc
    _ = ∫ u in (0 : ℝ)..T, ∑ m ∈ S, ∑ n ∈ S,
        moebiusReal m * moebiusReal n * (pickupResponse m u * pickupResponse n u) := by
      apply intervalIntegral.integral_congr
      intro u hu
      rw [uIcc_of_le hT] at hu
      change wholePickup u ^ 2 = ∑ m ∈ S, ∑ n ∈ S,
        moebiusReal m * moebiusReal n * (pickupResponse m u * pickupResponse n u)
      rw [wholePickup_fixed_inventory hu.1 hu.2, pow_two, Finset.sum_mul_sum]
      apply Finset.sum_congr rfl
      intro m _
      apply Finset.sum_congr rfl
      intro n _
      ring
    _ = pickupFullGram T := by
      rw [intervalIntegral.integral_finsetSum]
      · unfold pickupFullGram pickupResponseGram
        apply Finset.sum_congr rfl
        intro m hm
        rw [intervalIntegral.integral_finsetSum]
        · apply Finset.sum_congr rfl
          intro n _
          exact intervalIntegral.integral_const_mul _ _
        · intro n hn
          exact (hprod m hm n hn).intervalIntegrable 0 T
      · intro m hm
        exact (continuous_finsetSum S (fun n hn => hprod m hm n hn)).intervalIntegrable 0 T

/-- P00's exact energy identity for the actual source and ordered cross terms. -/
theorem pickupEnergy_eq_diagonal_add_cross {T : ℝ} (hT : 0 ≤ T) :
    pickupEnergy T = pickupDiagonal T + pickupCross T := by
  rw [pickupEnergy_eq_full_gram hT, pickup_full_gram_split]

end GRWTSK.RiemannHypothesis.CCC
```
