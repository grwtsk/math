/-
Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI ChatGPT.
Imported sources retain their original credits/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #597. Parent: draft PR #596 at
`f193a7994ee845ba7e0b8860bcc63af6f19ed9eb`.
-/
import GRWTSK.NumberTheory.Moebius.CoreLengthCoefficientRightTelescope

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- No active shift count exceeds the left dyadic scale. -/
theorem harmonicShiftCount_le_leftScale
    (j t : ℕ) :
    harmonicShiftCount j t ≤ 2 ^ j := by
  by_cases ht : t + 1 < 2 ^ j
  · rw [harmonicShiftCount_eq_leftScale ht]
  · have hright : 2 ^ j ≤ t + 1 := Nat.le_of_not_gt ht
    rw [harmonicShiftCount_eq_rightDistance hright, Nat.pow_succ]
    omega

/-- Terminal selectors vanish above the maximal active length. -/
theorem coreTerminalLengthCoefficient_eq_zero_of_leftScale_lt
    {j t n : ℕ}
    (hn : 2 ^ j < n) :
    coreTerminalLengthCoefficient j t n = 0 := by
  unfold coreTerminalLengthCoefficient
  have hne : n ≠ harmonicShiftCount j t := by
    intro h
    have hle := harmonicShiftCount_le_leftScale j t
    omega
  simp [hne]

/-- Interior selectors vanish above the maximal active length. -/
theorem coreInteriorLengthCoefficient_eq_zero_of_leftScale_lt
    {j t n : ℕ}
    (hn : 2 ^ j < n) :
    coreInteriorLengthCoefficient j t n = 0 := by
  unfold coreInteriorLengthCoefficient
  have hnot : ¬ (logarithmicShiftThreshold j ≤ n ∧
      n < harmonicShiftCount j t) := by
    intro h
    have hle := harmonicShiftCount_le_leftScale j t
    omega
  simp [hnot]

/-- The depth-aggregated coefficient mass is identically zero above
`n=2^j`. -/
theorem coreLengthCoefficientMass_eq_zero_of_leftScale_lt
    {j n : ℕ}
    (hn : 2 ^ j < n) :
    coreLengthCoefficientMass j n = 0 := by
  unfold coreLengthCoefficientMass
  apply Finset.sum_eq_zero
  intro t _ht
  rw [coreTerminalLengthCoefficient_eq_zero_of_leftScale_lt hn,
    coreInteriorLengthCoefficient_eq_zero_of_leftScale_lt hn,
    zero_add]

/-- The full depth mass is likewise zero above the maximal active length. -/
theorem fullLengthCoefficientMass_eq_zero_of_leftScale_lt
    {j n : ℕ}
    (hn : 2 ^ j < n) :
    fullLengthCoefficientMass j n = 0 := by
  unfold fullLengthCoefficientMass
  apply Finset.sum_eq_zero
  intro t _ht
  rw [coreTerminalLengthCoefficient_eq_zero_of_leftScale_lt hn,
    coreInteriorLengthCoefficient_eq_zero_of_leftScale_lt hn,
    zero_add]

/-- At the boundary length `n=2^j`, every right-regime selector vanishes. -/
theorem rightLengthCoefficientMass_at_leftScale_eq_zero
    (j : ℕ) :
    rightLengthCoefficientMass j (2 ^ j) = 0 := by
  unfold rightLengthCoefficientMass
  apply Finset.sum_eq_zero
  intro t ht
  simp only [rightCoefficientDepths, Finset.mem_filter,
    Finset.mem_range] at ht
  have hright : 2 ^ j ≤ t + 1 := ht.2
  have hcount :
      harmonicShiftCount j t < 2 ^ j := by
    rw [harmonicShiftCount_eq_rightDistance hright, Nat.pow_succ]
    omega
  unfold coreTerminalLengthCoefficient coreInteriorLengthCoefficient
  simp [hcount.ne, hcount]

/-- The complete boundary mass is exactly the repeated left terminal mass. -/
theorem fullLengthCoefficientMass_at_leftScale
    (j : ℕ) :
    fullLengthCoefficientMass j (2 ^ j) =
      leftLengthCoefficientMass j (2 ^ j) := by
  rw [fullLengthCoefficientMass_eq_left_add_right,
    rightLengthCoefficientMass_at_leftScale_eq_zero, add_zero]

/-- Coarse boundary estimate in the form used by the piecewise theorem. -/
theorem fullLengthCoefficientMass_at_leftScale_le_three_inv
    (j : ℕ) :
    fullLengthCoefficientMass j (2 ^ j) ≤
      3 * (((2 ^ j : ℕ) : ℝ))⁻¹ := by
  rw [fullLengthCoefficientMass_at_leftScale]
  calc
    leftLengthCoefficientMass j (2 ^ j) ≤
        (((2 ^ j : ℕ) : ℝ))⁻¹ :=
      leftLengthCoefficientMass_at_leftScale_le_inv j
    _ ≤ 3 * (((2 ^ j : ℕ) : ℝ))⁻¹ := by
      have hnonneg : 0 ≤ (((2 ^ j : ℕ) : ℝ))⁻¹ := by positivity
      nlinarith

/-- The corrected piecewise coefficient-mass target is now inhabited with
universal constant three. -/
theorem piecewiseReciprocalLengthCoefficientMassBound :
    PiecewiseReciprocalLengthCoefficientMassBound := by
  refine ⟨3, by norm_num, ?_⟩
  intro j n hnH hnX
  by_cases hboundary : n = 2 ^ j
  · subst n
    simp only [if_pos rfl]
    exact fullLengthCoefficientMass_at_leftScale_le_three_inv j
  · have hnlt : n < 2 ^ j := lt_of_le_of_ne hnX hboundary
    simp only [if_neg hboundary]
    exact fullLengthCoefficientMass_le_three_inv_sq hnH hnlt

/-- The logarithmic threshold never exceeds one past the left dyadic scale. -/
theorem logarithmicShiftThreshold_le_leftScale_add_one
    (j : ℕ) :
    logarithmicShiftThreshold j ≤ 2 ^ j + 1 := by
  by_cases hj : 2 ≤ j
  · exact le_trans (nat_add_two_le_two_pow_of_two_le hj) (Nat.le_succ _)
  · have hj' : j = 0 ∨ j = 1 := by omega
    rcases hj' with rfl | rfl <;>
      norm_num [logarithmicShiftThreshold]

/-- Exact truncation of the transposed incompatible packet: all retained
lengths above `2^j` carry zero coefficient mass. -/
theorem transposedIncompatibleDyadicL1Packet_eq_truncated
    (j : ℕ) :
    transposedIncompatibleDyadicL1Packet j =
      2 * ∑ n ∈ Finset.Ico (logarithmicShiftThreshold j) (2 ^ j + 1),
        coreLengthCoefficientMass j n *
          incompatibleDyadicStartBlockL1 j n := by
  rw [transposedIncompatibleDyadicL1Packet_eq_lengthMass]
  have hHY :
      logarithmicShiftThreshold j ≤ 2 ^ j + 1 :=
    logarithmicShiftThreshold_le_leftScale_add_one j
  have hXY : 2 ^ j + 1 ≤ 2 ^ (j + 1) + 1 := by
    rw [Nat.pow_succ]
    omega
  rw [Finset.sum_Ico_consecutive _ hHY hXY]
  apply congrArg (fun x : ℝ => 2 * x)
  rw [add_eq_left]
  apply Finset.sum_eq_zero
  intro n hn
  have hnX : 2 ^ j < n := by
    simp only [Finset.mem_Ico] at hn
    omega
  rw [coreLengthCoefficientMass_eq_zero_of_leftScale_lt hnX, zero_mul]

/-- For scales where the logarithmic threshold reaches the dyadic range, the
truncated packet splits into non-boundary lengths plus the single boundary
length `n=2^j`. -/
theorem transposedIncompatibleDyadicL1Packet_eq_nonboundary_add_boundary
    {j : ℕ}
    (hHX : logarithmicShiftThreshold j ≤ 2 ^ j) :
    transposedIncompatibleDyadicL1Packet j =
      2 * (
        (∑ n ∈ Finset.Ico (logarithmicShiftThreshold j) (2 ^ j),
          coreLengthCoefficientMass j n *
            incompatibleDyadicStartBlockL1 j n) +
        coreLengthCoefficientMass j (2 ^ j) *
          incompatibleDyadicStartBlockL1 j (2 ^ j)) := by
  rw [transposedIncompatibleDyadicL1Packet_eq_truncated]
  rw [Finset.sum_Ico_succ_top hHX]

/-- Source-facing weighted incompatible L1 obligation after all coefficient
mass geometry has been discharged. -/
def PiecewiseWeightedIncompatibleL1Supplier : Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧
    ∀ j : ℕ,
      2 * ∑ n ∈ Finset.Ico (logarithmicShiftThreshold j) (2 ^ j + 1),
        coreLengthCoefficientMass j n *
          incompatibleDyadicStartBlockL1 j n ≤
        C * (((2 ^ j : ℕ) : ℝ) ^ δ)

/-- The weighted supplier is exactly the transposed incompatible supplier. -/
theorem piecewiseWeightedIncompatibleL1Supplier_iff_transposed :
    PiecewiseWeightedIncompatibleL1Supplier ↔
      SubpolynomialTransposedIncompatibleDyadicL1Packet := by
  constructor <;> intro h δ hδ
  · obtain ⟨C, hC, hb⟩ := h δ hδ
    refine ⟨C, hC, ?_⟩
    intro j
    rw [transposedIncompatibleDyadicL1Packet_eq_truncated]
    exact hb j
  · obtain ⟨C, hC, hb⟩ := h δ hδ
    refine ⟨C, hC, ?_⟩
    intro j
    rw [← transposedIncompatibleDyadicL1Packet_eq_truncated]
    exact hb j

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.piecewiseReciprocalLengthCoefficientMassBound
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.transposedIncompatibleDyadicL1Packet_eq_truncated
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.piecewiseWeightedIncompatibleL1Supplier_iff_transposed
