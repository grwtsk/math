/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib and imported GRWTSK results retain their upstream attribution and licenses. -/
import GRWTSK.NumberTheory.Moebius.MertensSignedAbelKernelTransfer

/-!
# Quantitative cardinality control for the actual Abel exceptional cost

For X = 2^j and Y = 2X the actual nonzero Abel kernel is
Y / (b * (b + 1)), where b = t + 1 + h >= X. Consequently every
kernel atom is at most 2/(X+1). At most B exceptional shifts at each
depth cost at most 4B in the complete normalized packet.

This is an unconditional estimate of the actual weights, conditional only
on the stated finite cardinality allowance. The regular contribution stays
signed. No arithmetic estimate for that contribution or subpolynomial
cardinality supplier is asserted. No entropy or external analytic theorem
is imported. SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.Moebius.MertensSignedAbelExceptionalCardinality

open scoped BigOperators
open GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
open GRWTSK.NumberTheory.Moebius.MertensSignedAbelKernelTransfer

/-- Exact reciprocal drop, with the positive denominator retained. -/
theorem reciprocal_drop {x : ℝ} (hx : 0 < x) :
    x⁻¹ - (x + 1)⁻¹ = (x * (x + 1))⁻¹ := by
  have hx0 : x ≠ 0 := ne_of_gt hx
  have hx1 : x + 1 ≠ 0 := by linarith
  field_simp [hx0, hx1]
  <;> ring

/-- Below the left endpoint both max weights agree, including b+1=X. -/
theorem weightDrop_eq_piecewise (j h t : ℕ) :
    dyadicMertensShiftWeightDrop j h t =
      if 2 ^ j ≤ t + 1 + h then
        (((t + 1 + h : ℕ) : ℝ) * (((t + 1 + h : ℕ) : ℝ) + 1))⁻¹
      else 0 := by
  have hindex : (t + 1) + 1 + h = (t + 1 + h) + 1 := by omega
  unfold dyadicMertensShiftWeightDrop
  rw [hindex, dyadicMertensShiftWeight_eq_max, dyadicMertensShiftWeight_eq_max]
  by_cases hb : 2 ^ j ≤ t + 1 + h
  · have hbNext : 2 ^ j ≤ (t + 1 + h) + 1 := by omega
    rw [if_pos hb, max_eq_right hb, max_eq_right hbNext]
    have hbPos : (0 : ℝ) < ((t + 1 + h : ℕ) : ℝ) := by positivity
    calc
      _ = (((t + 1 + h : ℕ) : ℝ))⁻¹ -
          (((t + 1 + h : ℕ) : ℝ) + 1)⁻¹ := by
        push_cast
        ring
      _ = _ := reciprocal_drop hbPos
  · have hbLeft : t + 1 + h ≤ 2 ^ j := by omega
    have hbNext : (t + 1 + h) + 1 ≤ 2 ^ j := by omega
    rw [if_neg hb, max_eq_left hbLeft, max_eq_left hbNext]
    ring

/-- Literal support and literal weight; no synthetic kernel is substituted. -/
theorem kernel_eq_piecewise (j t h : ℕ) :
    normalizedSignedAbelShiftKernel j t h =
      if (1 ≤ h ∧ h < 2 ^ (j + 1) ∧ t < 2 ^ (j + 1) - h - 1) ∧
          2 ^ j ≤ t + 1 + h then
        (((2 ^ (j + 1) : ℕ) : ℝ)) /
          (((t + 1 + h : ℕ) : ℝ) * (((t + 1 + h : ℕ) : ℝ) + 1))
      else 0 := by
  unfold normalizedSignedAbelShiftKernel
  rw [weightDrop_eq_piecewise]
  by_cases hs : 1 ≤ h ∧ h < 2 ^ (j + 1) ∧ t < 2 ^ (j + 1) - h - 1
  · by_cases hb : 2 ^ j ≤ t + 1 + h <;> simp [hs, hb, div_eq_mul_inv]
  · simp [hs]

/-- Unlike an arbitrary subprobability kernel, every actual atom is O(1/Y). -/
theorem kernel_le_two_div_left_succ (j t h : ℕ) :
    normalizedSignedAbelShiftKernel j t h ≤
      2 / ((((2 ^ j : ℕ) : ℝ)) + 1) := by
  rw [kernel_eq_piecewise]
  split_ifs with hs
  · have hx : (0 : ℝ) < ((2 ^ j : ℕ) : ℝ) := by positivity
    have hxb : (((2 ^ j : ℕ) : ℝ)) ≤ ((t + 1 + h : ℕ) : ℝ) := by
      exact_mod_cast hs.2
    have hb : (0 : ℝ) < ((t + 1 + h : ℕ) : ℝ) := hx.trans_le hxb
    have hden : (0 : ℝ) <
        ((t + 1 + h : ℕ) : ℝ) * (((t + 1 + h : ℕ) : ℝ) + 1) := by positivity
    have hx1 : (0 : ℝ) < (((2 ^ j : ℕ) : ℝ)) + 1 := by positivity
    have hprod := mul_le_mul hxb (add_le_add hxb (le_rfl : (1 : ℝ) ≤ 1))
      (show (0 : ℝ) ≤ (((2 ^ j : ℕ) : ℝ)) + 1 by positivity) hb.le
    have hY : (((2 ^ (j + 1) : ℕ) : ℝ)) = 2 * (((2 ^ j : ℕ) : ℝ)) := by
      rw [Nat.pow_succ, Nat.cast_mul]
      norm_num
      <;> ring
    apply (div_le_div_iff₀ hden hx1).mpr
    rw [hY]
    nlinarith [hprod]
  · positivity

/-- Cardinality may now control mass because the actual atom bound was proved. -/
theorem exceptionalKernelMass_le_card (j t : ℕ) (bad : Finset ℕ) :
    exceptionalKernelMass j t bad ≤
      (bad.card : ℝ) * (2 / ((((2 ^ j : ℕ) : ℝ)) + 1)) := by
  unfold exceptionalKernelMass
  rw [← Finset.sum_filter]
  have hcard :
      (((Finset.Ico 1 (2 ^ (j + 1))).filter (fun h => h ∈ bad)).card : ℝ) ≤
        (bad.card : ℝ) := by
    apply Nat.cast_le.mpr
    apply Finset.card_le_card
    intro h hh
    exact (Finset.mem_filter.mp hh).2
  calc
    _ ≤ ∑ _h ∈ (Finset.Ico 1 (2 ^ (j + 1))).filter (fun h => h ∈ bad),
        2 / ((((2 ^ j : ℕ) : ℝ)) + 1) := by
      apply Finset.sum_le_sum
      intro h _hh
      exact kernel_le_two_div_left_succ j t h
    _ = (((Finset.Ico 1 (2 ^ (j + 1))).filter (fun h => h ∈ bad)).card : ℝ) *
        (2 / ((((2 ^ j : ℕ) : ℝ)) + 1)) := by simp
    _ ≤ _ := mul_le_mul_of_nonneg_right hcard (by positivity)

/-- A real per-depth cardinality budget also pays the exact kernel mass. -/
theorem exceptionalKernelMass_le_of_card_le (j t : ℕ) (bad : Finset ℕ)
    {B : ℝ} (hcard : (bad.card : ℝ) ≤ B) :
    exceptionalKernelMass j t bad ≤ B * (2 / ((((2 ^ j : ℕ) : ℝ)) + 1)) :=
  (exceptionalKernelMass_le_card j t bad).trans
    (mul_le_mul_of_nonneg_right hcard (by positivity))

/-- Signed regular aggregate, retaining all depths and the original normalization. -/
def signedRegularPacket (bad : ℕ → ℕ → Finset ℕ) (j : ℕ) : ℝ :=
  2 * (((2 ^ (j + 1) : ℕ) : ℝ))⁻¹ *
    ∑ t ∈ Finset.range (2 ^ (j + 1)), regularPrefixPairing j t (bad j t)

/-- Only the already declared exceptional allowance, not a new error model. -/
def weightedExceptionalCost (bad : ℕ → ℕ → Finset ℕ) (j : ℕ) : ℝ :=
  2 * (((2 ^ (j + 1) : ℕ) : ℝ))⁻¹ *
    ∑ t ∈ Finset.range (2 ^ (j + 1)),
      ((t + 1 : ℕ) : ℝ) * exceptionalKernelMass j t (bad j t)

theorem exceptionalPacketUpper_eq_regular_add_cost
    (bad : ℕ → ℕ → Finset ℕ) (j : ℕ) :
    exceptionalPacketUpper bad j = signedRegularPacket bad j + weightedExceptionalCost bad j := by
  unfold exceptionalPacketUpper signedRegularPacket weightedExceptionalCost
  rw [Finset.sum_add_distrib, mul_add]

theorem weightedExceptionalCost_nonneg (bad : ℕ → ℕ → Finset ℕ) (j : ℕ) :
    0 ≤ weightedExceptionalCost bad j := by
  unfold weightedExceptionalCost
  apply mul_nonneg (by positivity)
  exact Finset.sum_nonneg (fun t _ht =>
    mul_nonneg (by positivity) (exceptionalKernelMass_nonneg j t (bad j t)))

/-- Exact successor-length sum, including N=0. -/
theorem sum_prefix_lengths (N : ℕ) :
    (∑ t ∈ Finset.range N, ((t + 1 : ℕ) : ℝ)) = (N : ℝ) * ((N : ℝ) + 1) / 2 := by
  induction N with
  | zero => simp
  | succ N ih =>
      rw [Finset.sum_range_succ, ih]
      push_cast
      ring

/-- The complete exceptional cost is at most four times the per-depth count.
The allowance B may depend on j; there is no count-density or good-set assumption. -/
theorem weightedExceptionalCost_le_four_mul (bad : ℕ → ℕ → Finset ℕ)
    (j : ℕ) {B : ℝ} (hB : 0 ≤ B)
    (hcard : ∀ t ∈ Finset.range (2 ^ (j + 1)), ((bad j t).card : ℝ) ≤ B) :
    weightedExceptionalCost bad j ≤ 4 * B := by
  let X : ℝ := ((2 ^ j : ℕ) : ℝ)
  let Y : ℝ := ((2 ^ (j + 1) : ℕ) : ℝ)
  have hX : 0 < X := by dsimp [X]; positivity
  have hY : 0 < Y := by dsimp [Y]; positivity
  have hYX : Y = 2 * X := by
    dsimp [X, Y]
    rw [Nat.pow_succ, Nat.cast_mul]
    norm_num
    <;> ring
  have hbound : weightedExceptionalCost bad j ≤
      (2 * Y⁻¹) *
        ((Y * (Y + 1) / 2) * (B * (2 / (X + 1)))) := by
    unfold weightedExceptionalCost
    calc
      _ ≤ (2 * Y⁻¹) *
          ∑ t ∈ Finset.range (2 ^ (j + 1)),
            ((t + 1 : ℕ) : ℝ) * (B * (2 / (X + 1))) := by
        apply mul_le_mul_of_nonneg_left _ (by positivity)
        apply Finset.sum_le_sum
        intro t ht
        exact mul_le_mul_of_nonneg_left
          (exceptionalKernelMass_le_of_card_le j t (bad j t) (hcard t ht))
          (by positivity)
      _ = _ := by rw [← Finset.sum_mul, sum_prefix_lengths]
  have hcancel : (2 * Y⁻¹) *
      ((Y * (Y + 1) / 2) * (B * (2 / (X + 1)))) =
        B * (2 * (Y + 1) / (X + 1)) := by
    field_simp [ne_of_gt hY, ne_of_gt (show 0 < X + 1 by linarith)]
    <;> ring
  have hratio : 2 * (Y + 1) / (X + 1) ≤ 4 := by
    apply (div_le_iff₀ (show 0 < X + 1 by linarith)).mpr
    rw [hYX]
    linarith
  calc
    weightedExceptionalCost bad j ≤ B * (2 * (Y + 1) / (X + 1)) := by
      simpa only [hcancel] using hbound
    _ ≤ B * 4 := mul_le_mul_of_nonneg_left hratio hB
    _ = 4 * B := by ring

/-- Substantive exceptional-channel bound without taking absolute regular sums. -/
theorem exceptionalPacketUpper_le_regular_add_four_mul
    (bad : ℕ → ℕ → Finset ℕ) (j : ℕ) {B : ℝ} (hB : 0 ≤ B)
    (hcard : ∀ t ∈ Finset.range (2 ^ (j + 1)), ((bad j t).card : ℝ) ≤ B) :
    exceptionalPacketUpper bad j ≤ signedRegularPacket bad j + 4 * B := by
  rw [exceptionalPacketUpper_eq_regular_add_cost]
  exact add_le_add le_rfl (weightedExceptionalCost_le_four_mul bad j hB hcard)

/-- Canonical RH consumer: both arithmetic suppliers remain explicit and unsupplied.
The cardinality premise is sufficient, not necessary, for the true weighted cost. -/
theorem riemannHypothesis_of_regular_and_cardinality_budgets
    (bad : ℕ → ℕ → Finset ℕ)
    (hregular : ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧ ∀ j : ℕ,
      signedRegularPacket bad j ≤ C * (((2 ^ j : ℕ) : ℝ) ^ δ))
    (hcount : ∀ δ : ℝ, 0 < δ → ∃ D : ℝ, 0 ≤ D ∧ ∀ j : ℕ,
      ∀ t ∈ Finset.range (2 ^ (j + 1)),
        ((bad j t).card : ℝ) ≤ D * (((2 ^ j : ℕ) : ℝ) ^ δ)) :
    _root_.RiemannHypothesis := by
  apply riemannHypothesis_of_kernelExceptionalBudget bad
  intro δ hδ
  obtain ⟨C, hC, hreg⟩ := hregular δ hδ
  obtain ⟨D, hD, hbad⟩ := hcount δ hδ
  refine ⟨C + 4 * D, by positivity, ?_⟩
  intro j
  have hB : 0 ≤ D * (((2 ^ j : ℕ) : ℝ) ^ δ) :=
    mul_nonneg hD (Real.rpow_nonneg (by positivity) _)
  calc
    exceptionalPacketUpper bad j ≤ signedRegularPacket bad j +
        4 * (D * (((2 ^ j : ℕ) : ℝ) ^ δ)) :=
      exceptionalPacketUpper_le_regular_add_four_mul bad j hB (hbad j)
    _ ≤ C * (((2 ^ j : ℕ) : ℝ) ^ δ) +
        4 * (D * (((2 ^ j : ℕ) : ℝ) ^ δ)) := add_le_add (hreg j) le_rfl
    _ = (C + 4 * D) * (((2 ^ j : ℕ) : ℝ) ^ δ) := by ring

end GRWTSK.NumberTheory.Moebius.MertensSignedAbelExceptionalCardinality
