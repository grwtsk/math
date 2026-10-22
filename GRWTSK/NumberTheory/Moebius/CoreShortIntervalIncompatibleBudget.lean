/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Imported sources retain their original credits/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #572. Parent: draft PR #570 at
`52f7ee0709f7a4197ed575b7d7755e093579b7c4`.
-/
import GRWTSK.NumberTheory.Moebius.CoreShortIntervalBlockLengthWitness

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- Trivial absolute bound for one literal short Möbius interval. -/
theorem abs_ambientMobiusShortIntervalSum_le_length
    (x n : ℕ) :
    |ambientMobiusShortIntervalSum x n| ≤ (n : ℝ) := by
  unfold ambientMobiusShortIntervalSum
  calc
    |∑ k ∈ Finset.range n, moebiusReal (x + k)| ≤
      ∑ k ∈ Finset.range n, |moebiusReal (x + k)| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ _k ∈ Finset.range n, (1 : ℝ) := by
      apply Finset.sum_le_sum
      intro k _hk
      exact moebiusReal_abs_le_one _
    _ = n := by simp

/-- One dyadic start block contains exactly `2^r` starts. -/
theorem dyadicStartBlock_card (r : ℕ) :
    (dyadicStartBlock r).card = 2 ^ r := by
  unfold dyadicStartBlock
  rw [Finset.card_Ico]
  rw [Nat.pow_succ]
  omega

/-- Trivial first-moment bound on one dyadic start block. -/
theorem dyadicStartBlockShortIntervalL1_le
    (r n : ℕ) :
    dyadicStartBlockShortIntervalL1 r n ≤
      ((2 ^ r : ℕ) : ℝ) * (n : ℝ) := by
  unfold dyadicStartBlockShortIntervalL1
  calc
    (∑ x ∈ dyadicStartBlock r,
      |ambientMobiusShortIntervalSum x n|) ≤
      ∑ _x ∈ dyadicStartBlock r, (n : ℝ) := by
        apply Finset.sum_le_sum
        intro x _hx
        exact abs_ambientMobiusShortIntervalSum_le_length x n
    _ = ((dyadicStartBlock r).card : ℝ) * (n : ℝ) := by simp
    _ = ((2 ^ r : ℕ) : ℝ) * (n : ℝ) := by
      rw [dyadicStartBlock_card]

/-- Pure deterministic budget for incompatible dyadic start blocks. -/
def incompatibleDyadicStartBlockTrivialBudget
    (j n : ℕ) : ℝ :=
  ∑ r ∈ (Finset.range (j + 1)).filter (fun r => 2 ^ r < n),
    ((2 ^ r : ℕ) : ℝ) * (n : ℝ)

/-- The incompatible first moment is bounded without any Möbius cancellation. -/
theorem incompatibleDyadicStartBlockL1_le_trivialBudget
    (j n : ℕ) :
    incompatibleDyadicStartBlockL1 j n ≤
      incompatibleDyadicStartBlockTrivialBudget j n := by
  unfold incompatibleDyadicStartBlockL1
    incompatibleDyadicStartBlockTrivialBudget
  apply Finset.sum_le_sum
  intro r _hr
  exact dyadicStartBlockShortIntervalL1_le r n

/-- Pure deterministic endpoint budget. -/
def endpointStartTrivialBudget (n : ℕ) : ℝ :=
  2 * (n : ℝ)

/-- The explicit two-start correction is paid trivially. -/
theorem ambientEndpointStartCorrection_le_trivialBudget
    (j n : ℕ) :
    ambientEndpointStartCorrection j n ≤ endpointStartTrivialBudget n := by
  unfold endpointStartTrivialBudget
  exact ambientEndpointStartCorrection_le_two_mul_length j n

/-- Deterministic incompatible terminal majorant. -/
def incompatibleTerminalTrivialBudget
    (j t : ℕ) : ℝ :=
  if harmonicShiftCount j t = 0 then 0 else
    incompatibleDyadicStartBlockTrivialBudget
      j (harmonicShiftCount j t) *
      harmonicShiftFirstDifference
        j t (harmonicShiftCount j t - 1)

/-- Deterministic incompatible long-interior majorant. -/
def incompatibleLongInteriorTrivialBudget
    (j t : ℕ) : ℝ :=
  ∑ k ∈ (Finset.range (harmonicShiftCount j t - 1)).filter
      (fun k => logarithmicShiftThreshold j ≤ k + 1),
    incompatibleDyadicStartBlockTrivialBudget j (k + 1) *
      harmonicShiftSecondDifference j t k

/-- Deterministic endpoint majorant at one core depth. -/
def endpointCorrectionTrivialBudget
    (j t : ℕ) : ℝ :=
  2 * (
    (if harmonicShiftCount j t = 0 then 0 else
      endpointStartTrivialBudget (harmonicShiftCount j t) *
        harmonicShiftFirstDifference
          j t (harmonicShiftCount j t - 1)) +
    ∑ k ∈ (Finset.range (harmonicShiftCount j t - 1)).filter
        (fun k => logarithmicShiftThreshold j ≤ k + 1),
      endpointStartTrivialBudget (k + 1) *
        harmonicShiftSecondDifference j t k)

/-- Packet-level deterministic budget for all low-scale incompatible blocks. -/
def coreLongIncompatibleTrivialBudgetPacket (j : ℕ) : ℝ :=
  ∑ t ∈ coreLongDeepDepths j,
    2 * (incompatibleTerminalTrivialBudget j t +
      incompatibleLongInteriorTrivialBudget j t)

/-- Packet-level deterministic budget for the two-start endpoint correction. -/
def coreLongEndpointTrivialBudgetPacket (j : ℕ) : ℝ :=
  ∑ t ∈ coreLongDeepDepths j,
    endpointCorrectionTrivialBudget j t

/-- Low-scale incompatible packet is bounded by a pure deterministic budget. -/
theorem coreLongIncompatibleDyadicL1Packet_le_trivialBudget
    (j : ℕ) :
    coreLongIncompatibleDyadicL1Packet j ≤
      coreLongIncompatibleTrivialBudgetPacket j := by
  unfold coreLongIncompatibleDyadicL1Packet
    coreLongIncompatibleTrivialBudgetPacket
    coreLongDepthIncompatibleDyadicL1
    incompatibleDyadicBlockTerminalL1Majorant
    incompatibleDyadicBlockLongInteriorL1Majorant
    incompatibleTerminalTrivialBudget
    incompatibleLongInteriorTrivialBudget
  apply Finset.sum_le_sum
  intro t _ht
  apply mul_le_mul_of_nonneg_left
  · apply add_le_add
    · by_cases hN : harmonicShiftCount j t = 0
      · simp [hN]
      · simp only [hN, if_false]
        apply mul_le_mul_of_nonneg_right
        · exact incompatibleDyadicStartBlockL1_le_trivialBudget _ _
        · exact harmonicShiftReciprocal_terminalDifference_nonneg
            (Nat.pos_of_ne_zero hN)
    · apply Finset.sum_le_sum
      intro k _hk
      apply mul_le_mul_of_nonneg_right
      · exact incompatibleDyadicStartBlockL1_le_trivialBudget _ _
      · exact harmonicShiftReciprocal_secondDifference_nonneg j t k
  · norm_num

/-- Endpoint-correction packet is bounded by a pure deterministic budget. -/
theorem coreLongEndpointCorrectionL1Packet_le_trivialBudget
    (j : ℕ) :
    coreLongEndpointCorrectionL1Packet j ≤
      coreLongEndpointTrivialBudgetPacket j := by
  unfold coreLongEndpointCorrectionL1Packet
    coreLongEndpointTrivialBudgetPacket
    coreLongDepthEndpointCorrectionL1
    endpointCorrectionTrivialBudget
  apply Finset.sum_le_sum
  intro t _ht
  apply mul_le_mul_of_nonneg_left
  · apply add_le_add
    · by_cases hN : harmonicShiftCount j t = 0
      · simp [hN]
      · simp only [hN, if_false]
        apply mul_le_mul_of_nonneg_right
        · exact ambientEndpointStartCorrection_le_trivialBudget _ _
        · exact harmonicShiftReciprocal_terminalDifference_nonneg
            (Nat.pos_of_ne_zero hN)
    · apply Finset.sum_le_sum
      intro k _hk
      apply mul_le_mul_of_nonneg_right
      · exact ambientEndpointStartCorrection_le_trivialBudget _ _
      · exact harmonicShiftReciprocal_secondDifference_nonneg j t k
  · norm_num

/-- Deterministic-budget proposition left after removing Möbius cancellation
from the incompatible and endpoint pieces. -/
def SubpolynomialIncompatibleAndEndpointTrivialBudget : Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧
    ∀ j : ℕ,
      coreLongIncompatibleTrivialBudgetPacket j +
          coreLongEndpointTrivialBudgetPacket j ≤
        C * (((2 ^ j : ℕ) : ℝ) ^ δ)

/-- The only analytic arithmetic input after the deterministic pieces are
separated is the theorem-compatible dyadic-block packet. -/
def SubpolynomialCompatibleDyadicShortIntervalPacket : Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧
    ∀ j : ℕ,
      coreLongCompatibleDyadicL1Packet j ≤
        C * (((2 ^ j : ℕ) : ℝ) ^ δ)

/-- Compatible analytic supplier plus a deterministic budget for the excluded
pieces supplies the complete dyadic-block packet. -/
theorem subpolynomialCoreLongDyadicBlockShortIntervalL1Packet_of_compatible
    (hCompat : SubpolynomialCompatibleDyadicShortIntervalPacket)
    (hDet : SubpolynomialIncompatibleAndEndpointTrivialBudget) :
    SubpolynomialCoreLongDyadicBlockShortIntervalL1Packet := by
  intro δ hδ
  obtain ⟨Cc, hCc, hc⟩ := hCompat δ hδ
  obtain ⟨Cd, hCd, hd⟩ := hDet δ hδ
  refine ⟨Cc + Cd, add_nonneg hCc hCd, ?_⟩
  intro j
  rw [coreLongDyadicBlockShortIntervalL1Packet_eq_threeWay]
  calc
    coreLongCompatibleDyadicL1Packet j +
        coreLongIncompatibleDyadicL1Packet j +
        coreLongEndpointCorrectionL1Packet j ≤
      coreLongCompatibleDyadicL1Packet j +
        (coreLongIncompatibleTrivialBudgetPacket j +
          coreLongEndpointTrivialBudgetPacket j) := by
      apply add_le_add_left
      exact add_le_add
        (coreLongIncompatibleDyadicL1Packet_le_trivialBudget j)
        (coreLongEndpointCorrectionL1Packet_le_trivialBudget j)
    _ ≤ Cc * (((2 ^ j : ℕ) : ℝ) ^ δ) +
        Cd * (((2 ^ j : ℕ) : ℝ) ^ δ) := by
      exact add_le_add (hc j) (hd j)
    _ = (Cc + Cd) * (((2 ^ j : ℕ) : ℝ) ^ δ) := by ring

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.incompatibleDyadicStartBlockL1_le_trivialBudget
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreLongIncompatibleDyadicL1Packet_le_trivialBudget
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.subpolynomialCoreLongDyadicBlockShortIntervalL1Packet_of_compatible
