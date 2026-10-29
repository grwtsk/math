/- Copyright (c) 2026 grwtsk. MIT.
Mathlib and imported GRWTSK results retain their upstream attribution and licenses. -/
import GRWTSK.NumberTheory.Moebius.MertensSignedAbelExceptionalCardinality
import Mathlib.Data.Nat.Sqrt

/-!
# Bounded-cost removal of the actual Abel boundary depths

For Y = 2^(j+1), remove every shift at t < L and Y-L <= t, with
L <= 2^j. The complete exceptional cost is at most 2 L^2 / Y.
In particular L = Nat.sqrt Y costs at most TWO, not merely three.
The retained bulk packet differs from the original signed packet by at
most two. Their all-positive-exponent upper budgets are equivalent.

All source coefficients, triangular support, and endpoint normalization are
unchanged. No prime-divisor extraction, cancellation, entropy decrement,
source comparison with pickupCross, or unconditional RH is supplied.
SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.Moebius.MertensSignedAbelBoundaryCore

open scoped BigOperators
open GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
open GRWTSK.NumberTheory.Moebius.MertensSignedAbelKernelTransfer
open GRWTSK.NumberTheory.Moebius.MertensSignedAbelExceptionalCardinality

private theorem right_eq_two_left (j : ℕ) : 2 ^ (j + 1) = 2 * 2 ^ j := by
  rw [Nat.pow_succ]
  omega

/-- Total mass of the original nonnegative kernel. -/
theorem kernelMass_nonneg (j t : ℕ) :
    0 ≤ normalizedSignedAbelShiftKernelMass j t := by
  unfold normalizedSignedAbelShiftKernelMass
  exact Finset.sum_nonneg (fun h _ => normalizedSignedAbelShiftKernel_nonneg j t h)

/-- The terminal depths have no kernel mass, including all depths past the endpoint. -/
theorem kernelMass_zero_of_terminal (j t : ℕ) (ht : 2 ^ (j + 1) - 2 ≤ t) :
    normalizedSignedAbelShiftKernelMass j t = 0 := by
  unfold normalizedSignedAbelShiftKernelMass
  apply Finset.sum_eq_zero
  intro h _
  exact kernel_eq_zero_of_terminal_depth j t h ht

/-- The inherited mass telescope identifies the exact source weight. -/
theorem kernelMass_eq_scaled_weight {j t : ℕ} (ht : t + 2 ≤ 2 ^ (j + 1)) :
    normalizedSignedAbelShiftKernelMass j t =
      ((2 ^ (j + 1) : ℕ) : ℝ) * dyadicMertensShiftWeight j (t + 2) := by
  rw [normalizedSignedAbelShiftKernelMass_eq_scaledWeightMass ht,
    signedAbelDepthShiftWeightMass_eq_initialWeight ht]

/-- The parent's unit bound extends to every depth by its actual zero support. -/
theorem kernelMass_le_one (j t : ℕ) :
    normalizedSignedAbelShiftKernelMass j t ≤ 1 := by
  by_cases ht : t + 2 ≤ 2 ^ (j + 1)
  · exact normalizedSignedAbelShiftKernelMass_le_one ht
  · rw [kernelMass_zero_of_terminal j t (by omega)]
    norm_num

/-- The early full shift fibre has mass one, including t+2=2^j. -/
theorem kernelMass_eq_one_of_early {j t : ℕ} (ht : t + 2 ≤ 2 ^ j) :
    normalizedSignedAbelShiftKernelMass j t = 1 := by
  have hXY : 2 ^ j ≤ 2 ^ (j + 1) := by rw [right_eq_two_left]; omega
  rw [kernelMass_eq_scaled_weight (ht.trans hXY),
    dyadicMertensShiftWeight_eq_max, max_eq_left ht,
    dyadic_left_inv_eq_two_mul_right_inv j]
  have hY : (((2 ^ (j + 1) : ℕ) : ℝ)) ≠ 0 := by positivity
  field_simp [hY]
  <;> ring

/-- Exact late mass; no upper bound replaces the reciprocal profile. -/
theorem kernelMass_eq_reciprocal_of_late {j t : ℕ}
    (hleft : 2 ^ j ≤ t + 2) (hright : t + 2 ≤ 2 ^ (j + 1)) :
    normalizedSignedAbelShiftKernelMass j t =
      (((2 ^ (j + 1) : ℕ) : ℝ)) / ((t + 2 : ℕ) : ℝ) - 1 := by
  rw [kernelMass_eq_scaled_weight hright, dyadicMertensShiftWeight_of_le hleft]
  have hY : (((2 ^ (j + 1) : ℕ) : ℝ)) ≠ 0 := by positivity
  simp only [mul_sub, mul_inv_cancel₀ hY, div_eq_mul_inv]

/-- Complete depth profile with the exact boundary conventions. -/
theorem kernelMass_eq_profile (j t : ℕ) :
    normalizedSignedAbelShiftKernelMass j t =
      if t + 2 ≤ 2 ^ j then 1
      else if t + 2 < 2 ^ (j + 1) then
        (((2 ^ (j + 1) : ℕ) : ℝ)) / ((t + 2 : ℕ) : ℝ) - 1
      else 0 := by
  by_cases hleft : t + 2 ≤ 2 ^ j
  · rw [if_pos hleft, kernelMass_eq_one_of_early hleft]
  · rw [if_neg hleft]
    by_cases hright : t + 2 < 2 ^ (j + 1)
    · rw [if_pos hright]
      exact kernelMass_eq_reciprocal_of_late (by omega) hright.le
    · rw [if_neg hright]
      exact kernelMass_zero_of_terminal j t (by omega)

/-- Late prefix length times mass is bounded by the remaining integer tail length.
Using Y-(t+1), rather than Y-t, retains a saving in the final triangular sum. -/
theorem length_mul_kernelMass_le_tail {j t : ℕ}
    (hleft : 2 ^ j ≤ t + 2) (ht : t < 2 ^ (j + 1)) :
    ((t + 1 : ℕ) : ℝ) * normalizedSignedAbelShiftKernelMass j t ≤
      (((2 ^ (j + 1) : ℕ) : ℝ)) - ((t + 1 : ℕ) : ℝ) := by
  by_cases hright : t + 2 ≤ 2 ^ (j + 1)
  · have hid : ((t + 2 : ℕ) : ℝ) * normalizedSignedAbelShiftKernelMass j t =
        (((2 ^ (j + 1) : ℕ) : ℝ)) - ((t + 2 : ℕ) : ℝ) := by
      rw [kernelMass_eq_reciprocal_of_late hleft hright]
      have hden : ((t + 2 : ℕ) : ℝ) ≠ 0 := by positivity
      field_simp [hden]
      <;> ring
    have hlen : ((t + 2 : ℕ) : ℝ) = ((t + 1 : ℕ) : ℝ) + 1 := by
      push_cast
      ring
    rw [hlen] at hid
    nlinarith [kernelMass_nonneg j t]
  · rw [kernelMass_zero_of_terminal j t (by omega), mul_zero]
    have hle : ((t + 1 : ℕ) : ℝ) ≤ (((2 ^ (j + 1) : ℕ) : ℝ)) := by
      exact_mod_cast (show t + 1 ≤ 2 ^ (j + 1) by omega)
    linarith

/-- Remove all shift labels only at the early and late boundary depths. -/
def boundaryShifts (width : ℕ → ℕ) (j t : ℕ) : Finset ℕ :=
  if t < width j ∨ 2 ^ (j + 1) - width j ≤ t then
    Finset.Ico 1 (2 ^ (j + 1))
  else ∅

/-- The exceptional mass is exactly the full fibre mass at removed depths. -/
theorem boundary_mass (width : ℕ → ℕ) (j t : ℕ) :
    exceptionalKernelMass j t (boundaryShifts width j t) =
      if t < width j ∨ 2 ^ (j + 1) - width j ≤ t then
        normalizedSignedAbelShiftKernelMass j t
      else 0 := by
  by_cases hb : t < width j ∨ 2 ^ (j + 1) - width j ≤ t
  · simp only [boundaryShifts, if_pos hb]
    unfold exceptionalKernelMass normalizedSignedAbelShiftKernelMass
    apply Finset.sum_congr rfl
    intro h hh
    simp only [if_pos hh]
  · simp only [boundaryShifts, if_neg hb]
    simp [exceptionalKernelMass]

/-- Exact finite tail-length sum. L=0 is included; no division by L occurs. -/
theorem sum_tail_lengths {Y L : ℕ} (hL : L ≤ Y) :
    (∑ t ∈ Finset.Ico (Y - L) Y,
      ((Y : ℝ) - ((t + 1 : ℕ) : ℝ))) = (L : ℝ) * ((L : ℝ) - 1) / 2 := by
  rw [Finset.sum_Ico_eq_sum_range]
  have hlen : Y - (Y - L) = L := by omega
  rw [hlen]
  calc
    _ = ∑ k ∈ Finset.range L, ((L : ℝ) - ((k + 1 : ℕ) : ℝ)) := by
      apply Finset.sum_congr rfl
      intro k _
      simp only [Nat.cast_add, Nat.cast_one, Nat.cast_sub hL]
      ring
    _ = (L : ℝ) * ((L : ℝ) - 1) / 2 := by
      rw [Finset.sum_sub_distrib, sum_prefix_lengths]
      simp only [Finset.sum_const, Finset.card_range, nsmul_eq_mul]
      ring

/-- Before outer normalization, the two full boundary layers cost at most L squared. -/
theorem boundary_weight_sum_le_square (width : ℕ → ℕ) (j : ℕ)
    (hwidth : width j ≤ 2 ^ j) :
    (∑ t ∈ Finset.range (2 ^ (j + 1)),
      ((t + 1 : ℕ) : ℝ) * exceptionalKernelMass j t (boundaryShifts width j t)) ≤
        (width j : ℝ) ^ 2 := by
  let Y : ℕ := 2 ^ (j + 1)
  let L : ℕ := width j
  have hYX : Y = 2 * 2 ^ j := right_eq_two_left j
  have hLX : L ≤ 2 ^ j := hwidth
  have hLY : L ≤ Y := by omega
  have hsep : L ≤ Y - L := by omega
  have hset : (Finset.range Y).filter (fun t => t < L ∨ Y - L ≤ t) =
      Finset.range L ∪ Finset.Ico (Y - L) Y := by
    ext t
    simp only [Finset.mem_filter, Finset.mem_range, Finset.mem_union, Finset.mem_Ico]
    omega
  have hdis : Disjoint (Finset.range L) (Finset.Ico (Y - L) Y) := by
    apply Finset.disjoint_left.mpr
    intro t ht he
    have hsmall := Finset.mem_range.mp ht
    have hlarge := (Finset.mem_Ico.mp he).1
    omega
  calc
    _ = ∑ t ∈ Finset.range Y,
        if t < L ∨ Y - L ≤ t then
          ((t + 1 : ℕ) : ℝ) * normalizedSignedAbelShiftKernelMass j t else 0 := by
      apply Finset.sum_congr rfl
      intro t _
      rw [boundary_mass]
      change ((t + 1 : ℕ) : ℝ) *
        (if t < L ∨ Y - L ≤ t then normalizedSignedAbelShiftKernelMass j t else 0) = _
      split_ifs <;> simp
    _ = (∑ t ∈ Finset.range L,
          ((t + 1 : ℕ) : ℝ) * normalizedSignedAbelShiftKernelMass j t) +
        ∑ t ∈ Finset.Ico (Y - L) Y,
          ((t + 1 : ℕ) : ℝ) * normalizedSignedAbelShiftKernelMass j t := by
      rw [← Finset.sum_filter, hset, Finset.sum_union hdis]
    _ ≤ (∑ t ∈ Finset.range L, ((t + 1 : ℕ) : ℝ)) +
        ∑ t ∈ Finset.Ico (Y - L) Y, ((Y : ℝ) - ((t + 1 : ℕ) : ℝ)) := by
      apply add_le_add
      · apply Finset.sum_le_sum
        intro t _
        simpa only [mul_one] using mul_le_mul_of_nonneg_left
          (kernelMass_le_one j t) (show 0 ≤ ((t + 1 : ℕ) : ℝ) by positivity)
      · apply Finset.sum_le_sum
        intro t ht
        have htmem := Finset.mem_Ico.mp ht
        have hleft : 2 ^ j ≤ t + 2 := by omega
        exact length_mul_kernelMass_le_tail hleft htmem.2
    _ = (width j : ℝ) ^ 2 := by
      rw [sum_prefix_lengths, sum_tail_lengths hLY]
      change (L : ℝ) * ((L : ℝ) + 1) / 2 +
        (L : ℝ) * ((L : ℝ) - 1) / 2 = (L : ℝ) ^ 2
      ring

/-- The complete actual exceptional allowance, not a maximum-cardinality proxy. -/
theorem boundary_cost_le_two_square_div (width : ℕ → ℕ) (j : ℕ)
    (hwidth : width j ≤ 2 ^ j) :
    weightedExceptionalCost (boundaryShifts width) j ≤
      2 * (width j : ℝ) ^ 2 / (((2 ^ (j + 1) : ℕ) : ℝ)) := by
  unfold weightedExceptionalCost
  calc
    _ ≤ (2 * (((2 ^ (j + 1) : ℕ) : ℝ))⁻¹) * (width j : ℝ) ^ 2 :=
      mul_le_mul_of_nonneg_left (boundary_weight_sum_le_square width j hwidth)
        (by positivity)
    _ = _ := by rw [div_eq_mul_inv]; ring

/-- Signed packet error is controlled by the original full exceptional allowance. -/
theorem abs_packet_sub_regular_le_cost (bad : ℕ → ℕ → Finset ℕ) (j : ℕ) :
    |weightedMertensDyadicSignedAbelDepthPacket j - signedRegularPacket bad j| ≤
      weightedExceptionalCost bad j := by
  rw [depthPacket_eq_scaled_kernelPrefixSum]
  unfold signedRegularPacket weightedExceptionalCost
  rw [← mul_sub, abs_mul,
    abs_of_nonneg (show 0 ≤ 2 * (((2 ^ (j + 1) : ℕ) : ℝ))⁻¹ by positivity),
    ← Finset.sum_sub_distrib]
  apply mul_le_mul_of_nonneg_left _ (by positivity)
  apply (Finset.abs_sum_le_sum_abs _ _).trans
  apply Finset.sum_le_sum
  intro t _
  exact abs_kernelPrefixPairing_sub_regular_le_mass j t (bad j t)

/-- Retain exactly the signed middle-depth packet. -/
def bulkPacket (width : ℕ → ℕ) (j : ℕ) : ℝ :=
  signedRegularPacket (boundaryShifts width) j

/-- Explicit middle-depth readout; an empty middle interval is allowed. -/
theorem bulkPacket_eq_middle_sum (width : ℕ → ℕ) (j : ℕ) :
    bulkPacket width j = 2 * (((2 ^ (j + 1) : ℕ) : ℝ))⁻¹ *
      ∑ t ∈ Finset.range (2 ^ (j + 1)),
        if width j ≤ t ∧ t < 2 ^ (j + 1) - width j then kernelPrefixPairing j t else 0 := by
  unfold bulkPacket signedRegularPacket
  apply congrArg (fun z : ℝ => 2 * (((2 ^ (j + 1) : ℕ) : ℝ))⁻¹ * z)
  apply Finset.sum_congr rfl
  intro t _
  by_cases hb : t < width j ∨ 2 ^ (j + 1) - width j ≤ t
  · have hm : ¬ (width j ≤ t ∧ t < 2 ^ (j + 1) - width j) := by omega
    rw [if_neg hm]
    unfold regularPrefixPairing
    simp only [boundaryShifts, if_pos hb]
    apply Finset.sum_eq_zero
    intro h hh
    simp only [if_pos hh]
  · have hm : width j ≤ t ∧ t < 2 ^ (j + 1) - width j := by omega
    simp only [if_pos hm, regularPrefixPairing, boundaryShifts, if_neg hb]
    simp [kernelPrefixPairing]

/-- Canonical integer square-root collar; no floating-point width is used. -/
def sqrtWidth (j : ℕ) : ℕ := Nat.sqrt (2 ^ (j + 1))

theorem sqrtWidth_sq_le (j : ℕ) : sqrtWidth j ^ 2 ≤ 2 ^ (j + 1) :=
  Nat.sqrt_le' _

/-- Both collars are disjoint at every dyadic scale, including j=0. -/
theorem sqrtWidth_le_left (j : ℕ) : sqrtWidth j ≤ 2 ^ j := by
  have hs := sqrtWidth_sq_le j
  rw [right_eq_two_left] at hs
  by_contra hnot
  have hsucc : 2 ^ j + 1 ≤ sqrtWidth j := by omega
  have hmul := Nat.mul_self_le_mul_self hsucc
  nlinarith

/-- Uniform bound TWO for the entire removed contribution. -/
theorem sqrt_boundary_cost_le_two (j : ℕ) :
    weightedExceptionalCost (boundaryShifts sqrtWidth) j ≤ 2 := by
  have hs : (sqrtWidth j : ℝ) ^ 2 ≤ (((2 ^ (j + 1) : ℕ) : ℝ)) := by
    exact_mod_cast sqrtWidth_sq_le j
  apply (boundary_cost_le_two_square_div sqrtWidth j (sqrtWidth_le_left j)).trans
  apply (div_le_iff₀ (show (0 : ℝ) < (((2 ^ (j + 1) : ℕ) : ℝ)) by positivity)).mpr
  nlinarith

/-- The original signed packet and the canonical bulk differ by at most two. -/
theorem abs_packet_sub_sqrt_bulk_le_two (j : ℕ) :
    |weightedMertensDyadicSignedAbelDepthPacket j - bulkPacket sqrtWidth j| ≤ 2 :=
  (abs_packet_sub_regular_le_cost (boundaryShifts sqrtWidth) j).trans
    (sqrt_boundary_cost_le_two j)

/-- The existing exceptional upper allowance differs from the original packet by at most four. -/
theorem sqrt_exceptional_upper_bounds (j : ℕ) :
    weightedMertensDyadicSignedAbelDepthPacket j ≤
        exceptionalPacketUpper (boundaryShifts sqrtWidth) j ∧
      exceptionalPacketUpper (boundaryShifts sqrtWidth) j ≤
        weightedMertensDyadicSignedAbelDepthPacket j + 4 := by
  refine ⟨depthPacket_le_exceptionalPacketUpper _ _, ?_⟩
  rw [exceptionalPacketUpper_eq_regular_add_cost]
  have he := sqrt_boundary_cost_le_two j
  have hd := (abs_le.mp (abs_packet_sub_sqrt_bulk_le_two j)).1
  change -2 ≤ weightedMertensDyadicSignedAbelDepthPacket j -
    signedRegularPacket (boundaryShifts sqrtWidth) j at hd
  linarith

/-- Exact equivalence of the old arithmetic obligation and its square-root-collar bulk.
No witness is constructed; every positive exponent and every dyadic scale remain. -/
theorem subpolynomialDepthPacket_iff_sqrt_bulk :
    SubpolynomialDyadicSignedAbelDepthPacket ↔
      (∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧ ∀ j : ℕ,
        bulkPacket sqrtWidth j ≤ C * (((2 ^ j : ℕ) : ℝ) ^ δ)) := by
  constructor
  · intro h δ hδ
    obtain ⟨C, hC, hb⟩ := h δ hδ
    refine ⟨C + 2, by positivity, ?_⟩
    intro j
    have hd := (abs_le.mp (abs_packet_sub_sqrt_bulk_le_two j)).1
    have hpow := one_le_dyadic_rpow hδ j
    have hval := hb j
    nlinarith
  · intro h δ hδ
    obtain ⟨C, hC, hb⟩ := h δ hδ
    refine ⟨C + 2, by positivity, ?_⟩
    intro j
    have hd := (abs_le.mp (abs_packet_sub_sqrt_bulk_le_two j)).2
    have hpow := one_le_dyadic_rpow hδ j
    have hval := hb j
    nlinarith

/-- Canonical RH endpoint retaining the unsupplied signed bulk estimate. -/
theorem riemannHypothesis_of_sqrt_bulk_budget
    (hbulk : ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧ ∀ j : ℕ,
      bulkPacket sqrtWidth j ≤ C * (((2 ^ j : ℕ) : ℝ) ^ δ)) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_subpolynomialDyadicSignedAbelDepthPacket
    (subpolynomialDepthPacket_iff_sqrt_bulk.mpr hbulk)

end GRWTSK.NumberTheory.Moebius.MertensSignedAbelBoundaryCore
