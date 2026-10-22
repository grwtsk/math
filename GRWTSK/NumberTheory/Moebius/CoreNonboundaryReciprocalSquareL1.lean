/-
Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI ChatGPT.
Imported sources retain their original credits/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #673. Parent: draft PR #668 at
`f0359b50a4e7534e24b72c96d237230f6d94f397`.
-/
import GRWTSK.NumberTheory.Moebius.CoreBoundaryClassicalWeakMertens

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- Ambient-start-window terminal majorant with the exceptional maximal
terminal length removed. -/
def coreNonboundaryAmbientTerminalL1Majorant
    (j t : ℕ) : ℝ :=
  if harmonicShiftCount j t = 2 ^ j then 0 else
    harmonicAmbientTerminalL1Majorant j t

/-- Ambient-start-window majorant for one non-boundary core depth. -/
def coreNonboundaryDepthAmbientL1Majorant
    (j t : ℕ) : ℝ :=
  2 * (coreNonboundaryAmbientTerminalL1Majorant j t +
    harmonicAmbientLongInteriorL1Majorant j t)

/-- The ambient first moment is nonnegative. -/
theorem harmonicAmbientShortIntervalL1_nonneg
    (j n : ℕ) :
    0 ≤ harmonicAmbientShortIntervalL1 j n := by
  unfold harmonicAmbientShortIntervalL1
  positivity

/-- Enlarging each depth-dependent start window to the common ambient block
preserves the non-boundary terminal deletion. -/
theorem coreNonboundaryDepthShortIntervalL1Majorant_le_ambient
    {j t : ℕ}
    (hcore : t ∈ coreLongDeepDepths j) :
    coreNonboundaryDepthShortIntervalL1Majorant j t ≤
      coreNonboundaryDepthAmbientL1Majorant j t := by
  have htY : t < 2 ^ (j + 1) := by
    simpa [coreLongDeepDepths] using
      (Finset.mem_filter.mp hcore).1.2
  unfold coreNonboundaryDepthShortIntervalL1Majorant
    coreNonboundaryDepthAmbientL1Majorant
    coreNonboundaryAmbientTerminalL1Majorant
    harmonicTerminalShortIntervalL1Majorant
    harmonicAmbientTerminalL1Majorant
    harmonicLongInteriorShortIntervalL1Majorant
    harmonicAmbientLongInteriorL1Majorant
  apply mul_le_mul_of_nonneg_left
  · apply add_le_add
    · by_cases hboundary : harmonicShiftCount j t = 2 ^ j
      · simp [hboundary]
      · simp only [hboundary, if_false]
        by_cases hN : harmonicShiftCount j t = 0
        · simp [hN]
        · simp only [hN, if_false]
          apply mul_le_mul_of_nonneg_right
          · exact harmonicShortIntervalL1_le_ambient htY
          · exact harmonicShiftReciprocal_terminalDifference_nonneg
              (Nat.pos_of_ne_zero hN)
    · apply Finset.sum_le_sum
      intro k _hk
      apply mul_le_mul_of_nonneg_right
      · exact harmonicShortIntervalL1_le_ambient htY
      · exact harmonicShiftReciprocal_secondDifference_nonneg j t k
  · norm_num

private theorem sum_succ_range_filter_eq_Ico
    (F : ℕ → ℝ) {H N : ℕ} (hHN : H ≤ N) :
    (∑ k ∈ (Finset.range (N - 1)).filter (fun k => H ≤ k + 1),
      F (k + 1)) =
      ∑ n ∈ Finset.Ico H N, F n := by
  classical
  apply Finset.sum_bij (fun k _ => k + 1)
  · intro k hk
    simp only [Finset.mem_filter, Finset.mem_range] at hk
    simp only [Finset.mem_Ico]
    constructor
    · exact hk.2
    · omega
  · intro k₁ hk₁ k₂ hk₂ h
    omega
  · intro n hn
    simp only [Finset.mem_Ico] at hn
    refine ⟨n - 1, ?_, ?_⟩
    · simp only [Finset.mem_filter, Finset.mem_range]
      constructor <;> omega
    · omega
  · intro k hk
    rfl

/-- Exact retained-length selector identity for the non-boundary ambient
terminal term at one genuine core depth. -/
theorem coreNonboundaryAmbientTerminalL1Majorant_eq_selector
    {j t : ℕ}
    (hcore : t ∈ coreLongDeepDepths j) :
    coreNonboundaryAmbientTerminalL1Majorant j t =
      ∑ n ∈ Finset.Ico (logarithmicShiftThreshold j) (2 ^ j),
        harmonicAmbientShortIntervalL1 j n *
          coreTerminalLengthCoefficient j t n := by
  have hN :
      logarithmicShiftThreshold j ≤ harmonicShiftCount j t := by
    simpa [coreLongDeepDepths] using
      (Finset.mem_filter.mp hcore).2
  have hNle : harmonicShiftCount j t ≤ 2 ^ j :=
    harmonicShiftCount_le_leftScale j t
  have hHpos : 0 < logarithmicShiftThreshold j := by
    unfold logarithmicShiftThreshold
    omega
  have hNpos : 0 < harmonicShiftCount j t := lt_of_lt_of_le hHpos hN
  unfold coreNonboundaryAmbientTerminalL1Majorant
  by_cases hboundary : harmonicShiftCount j t = 2 ^ j
  · rw [if_pos hboundary]
    apply Finset.sum_eq_zero
    intro n hn
    simp only [Finset.mem_Ico] at hn
    unfold coreTerminalLengthCoefficient
    simp [hboundary, hn.2.ne]
  · rw [if_neg hboundary]
    unfold harmonicAmbientTerminalL1Majorant
    rw [if_neg (Nat.ne_of_gt hNpos)]
    classical
    rw [Finset.sum_eq_single (harmonicShiftCount j t)]
    · unfold coreTerminalLengthCoefficient
      simp [hNpos]
    · intro n hn hne
      unfold coreTerminalLengthCoefficient
      simp [hne]
    · simp only [Finset.mem_Ico]
      exact ⟨hN, lt_of_le_of_ne hNle hboundary⟩

/-- Exact retained-length selector identity for the ambient long-interior term
at one genuine core depth. -/
theorem harmonicAmbientLongInteriorL1Majorant_eq_selector
    {j t : ℕ}
    (hcore : t ∈ coreLongDeepDepths j) :
    harmonicAmbientLongInteriorL1Majorant j t =
      ∑ n ∈ Finset.Ico (logarithmicShiftThreshold j) (2 ^ j),
        harmonicAmbientShortIntervalL1 j n *
          coreInteriorLengthCoefficient j t n := by
  let H : ℕ := logarithmicShiftThreshold j
  let N : ℕ := harmonicShiftCount j t
  let X : ℕ := 2 ^ j
  have hHN : H ≤ N := by
    simpa [H, N, coreLongDeepDepths] using
      (Finset.mem_filter.mp hcore).2
  have hNX : N ≤ X := by
    simpa [N, X] using harmonicShiftCount_le_leftScale j t
  unfold harmonicAmbientLongInteriorL1Majorant
  rw [sum_succ_range_filter_eq_Ico
    (F := fun n =>
      harmonicAmbientShortIntervalL1 j n *
        harmonicShiftSecondDifference j t (n - 1)) hHN]
  have hfirst :
      (∑ n ∈ Finset.Ico H N,
        harmonicAmbientShortIntervalL1 j n *
          harmonicShiftSecondDifference j t (n - 1)) =
      ∑ n ∈ Finset.Ico H N,
        harmonicAmbientShortIntervalL1 j n *
          coreInteriorLengthCoefficient j t n := by
    apply Finset.sum_congr rfl
    intro n hn
    have hnI := Finset.mem_Ico.mp hn
    unfold coreInteriorLengthCoefficient
    simp [H, N, hnI.1, hnI.2]
  rw [hfirst]
  rw [← Finset.sum_Ico_consecutive
    (fun n =>
      harmonicAmbientShortIntervalL1 j n *
        coreInteriorLengthCoefficient j t n) hHN hNX]
  have hzero :
      (∑ n ∈ Finset.Ico N X,
        harmonicAmbientShortIntervalL1 j n *
          coreInteriorLengthCoefficient j t n) = 0 := by
    apply Finset.sum_eq_zero
    intro n hn
    have hnN : N ≤ n := (Finset.mem_Ico.mp hn).1
    unfold coreInteriorLengthCoefficient
    have hnot : ¬ (logarithmicShiftThreshold j ≤ n ∧
        n < harmonicShiftCount j t) := by
      intro h
      dsimp [N] at hnN
      omega
    simp [hnot]
  rw [hzero, add_zero]

/-- Exact one-depth ambient lengthwise form after removing the exceptional
maximal terminal length. -/
theorem coreNonboundaryDepthAmbientL1Majorant_eq_lengthwise
    {j t : ℕ}
    (hcore : t ∈ coreLongDeepDepths j) :
    coreNonboundaryDepthAmbientL1Majorant j t =
      2 * ∑ n ∈ Finset.Ico (logarithmicShiftThreshold j) (2 ^ j),
        harmonicAmbientShortIntervalL1 j n *
          (coreTerminalLengthCoefficient j t n +
            coreInteriorLengthCoefficient j t n) := by
  unfold coreNonboundaryDepthAmbientL1Majorant
  rw [coreNonboundaryAmbientTerminalL1Majorant_eq_selector hcore,
    harmonicAmbientLongInteriorL1Majorant_eq_selector hcore]
  rw [← Finset.sum_add_distrib]
  apply congrArg (fun x : ℝ => 2 * x)
  apply Finset.sum_congr rfl
  intro n _hn
  ring

/-- Length-transposed ambient non-boundary packet. -/
def coreNonboundaryAmbientLengthPacket (j : ℕ) : ℝ :=
  2 * ∑ n ∈ Finset.Ico (logarithmicShiftThreshold j) (2 ^ j),
    harmonicAmbientShortIntervalL1 j n *
      coreLengthCoefficientMass j n

/-- Finite outer Fubini identifies the ambient depth packet with the exact
length-transposed coefficient mass. -/
theorem sum_coreNonboundaryDepthAmbientL1Majorant_eq_lengthPacket
    (j : ℕ) :
    (∑ t ∈ coreLongDeepDepths j,
      coreNonboundaryDepthAmbientL1Majorant j t) =
      coreNonboundaryAmbientLengthPacket j := by
  unfold coreNonboundaryAmbientLengthPacket
  have hdepth :
      (∑ t ∈ coreLongDeepDepths j,
        coreNonboundaryDepthAmbientL1Majorant j t) =
      ∑ t ∈ coreLongDeepDepths j,
        2 * ∑ n ∈ Finset.Ico (logarithmicShiftThreshold j) (2 ^ j),
          harmonicAmbientShortIntervalL1 j n *
            (coreTerminalLengthCoefficient j t n +
              coreInteriorLengthCoefficient j t n) := by
    apply Finset.sum_congr rfl
    intro t ht
    rw [coreNonboundaryDepthAmbientL1Majorant_eq_lengthwise ht]
  rw [hdepth, ← Finset.mul_sum, Finset.sum_comm]
  apply congrArg (fun x : ℝ => 2 * x)
  apply Finset.sum_congr rfl
  intro n _hn
  unfold coreLengthCoefficientMass
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro t _ht
  ring

/-- The original non-boundary packet is controlled by the exact transposed
ambient length packet. -/
theorem coreNonboundaryShortIntervalL1Packet_le_lengthPacket
    (j : ℕ) :
    coreNonboundaryShortIntervalL1Packet j ≤
      coreNonboundaryAmbientLengthPacket j := by
  unfold coreNonboundaryShortIntervalL1Packet
  calc
    (∑ t ∈ coreLongDeepDepths j,
      coreNonboundaryDepthShortIntervalL1Majorant j t) ≤
      ∑ t ∈ coreLongDeepDepths j,
        coreNonboundaryDepthAmbientL1Majorant j t := by
      apply Finset.sum_le_sum
      intro t ht
      exact coreNonboundaryDepthShortIntervalL1Majorant_le_ambient ht
    _ = coreNonboundaryAmbientLengthPacket j :=
      sum_coreNonboundaryDepthAmbientL1Majorant_eq_lengthPacket j

/-- Canonical reciprocal-square first moment after the exact coefficient-mass
geometry has been discharged. -/
def reciprocalSquareAmbientShortIntervalL1Packet
    (j : ℕ) : ℝ :=
  ∑ n ∈ Finset.Ico (logarithmicShiftThreshold j) (2 ^ j),
    harmonicAmbientShortIntervalL1 j n *
      ((((2 ^ j + n : ℕ) : ℝ))⁻¹ ^ 2)

/-- The exact length packet is bounded by six times the canonical
reciprocal-square observable. -/
theorem coreNonboundaryAmbientLengthPacket_le_reciprocalSquare
    (j : ℕ) :
    coreNonboundaryAmbientLengthPacket j ≤
      6 * reciprocalSquareAmbientShortIntervalL1Packet j := by
  unfold coreNonboundaryAmbientLengthPacket
    reciprocalSquareAmbientShortIntervalL1Packet
  calc
    2 * (∑ n ∈ Finset.Ico (logarithmicShiftThreshold j) (2 ^ j),
      harmonicAmbientShortIntervalL1 j n *
        coreLengthCoefficientMass j n) ≤
      2 * (∑ n ∈ Finset.Ico (logarithmicShiftThreshold j) (2 ^ j),
        harmonicAmbientShortIntervalL1 j n *
          (3 * ((((2 ^ j + n : ℕ) : ℝ))⁻¹ ^ 2))) := by
      apply mul_le_mul_of_nonneg_left
      · apply Finset.sum_le_sum
        intro n hn
        have hnI := Finset.mem_Ico.mp hn
        apply mul_le_mul_of_nonneg_left
        · exact le_trans (coreLengthCoefficientMass_le_full j n)
            (fullLengthCoefficientMass_le_three_inv_sq hnI.1 hnI.2)
        · exact harmonicAmbientShortIntervalL1_nonneg j n
      · norm_num
    _ = 6 * (∑ n ∈ Finset.Ico (logarithmicShiftThreshold j) (2 ^ j),
        harmonicAmbientShortIntervalL1 j n *
          ((((2 ^ j + n : ℕ) : ℝ))⁻¹ ^ 2)) := by ring

/-- Source-facing reciprocal-square ambient short-interval first moment. -/
def SubpolynomialReciprocalSquareAmbientShortIntervalL1Packet : Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧
    ∀ j : ℕ,
      reciprocalSquareAmbientShortIntervalL1Packet j ≤
        C * (((2 ^ j : ℕ) : ℝ) ^ δ)

/-- The reciprocal-square source supplies the positive non-boundary packet. -/
theorem subpolynomialCoreNonboundaryShortIntervalL1Packet_of_reciprocalSquare
    (hReciprocal :
      SubpolynomialReciprocalSquareAmbientShortIntervalL1Packet) :
    SubpolynomialCoreNonboundaryShortIntervalL1Packet := by
  intro δ hδ
  obtain ⟨C, hC, hbound⟩ := hReciprocal δ hδ
  refine ⟨6 * C, mul_nonneg (by norm_num) hC, ?_⟩
  intro j
  calc
    coreNonboundaryShortIntervalL1Packet j ≤
      coreNonboundaryAmbientLengthPacket j :=
        coreNonboundaryShortIntervalL1Packet_le_lengthPacket j
    _ ≤ 6 * reciprocalSquareAmbientShortIntervalL1Packet j :=
        coreNonboundaryAmbientLengthPacket_le_reciprocalSquare j
    _ ≤ 6 * (C * (((2 ^ j : ℕ) : ℝ) ^ δ)) := by
        exact mul_le_mul_of_nonneg_left (hbound j) (by norm_num)
    _ = (6 * C) * (((2 ^ j : ℕ) : ℝ) ^ δ) := by ring

/-- Exact two-premise conditional endpoint: classical Weak Mertens pays the
exceptional signed boundary, while the reciprocal-square ambient first moment
pays every non-boundary retained length. -/
theorem riemannHypothesis_of_classicalWeakMertensStep_and_reciprocalSquareL1
    (hBoundary : ClassicalWeakMertensStepSource)
    (hNonboundary :
      SubpolynomialReciprocalSquareAmbientShortIntervalL1Packet) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_hybridBoundaryPreservingCoreSupplier
    ⟨subpolynomialCoreBoundarySignedPacket_of_classicalWeakMertensStep
        hBoundary,
      subpolynomialCoreNonboundaryShortIntervalL1Packet_of_reciprocalSquare
        hNonboundary⟩

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.sum_coreNonboundaryDepthAmbientL1Majorant_eq_lengthPacket
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreNonboundaryAmbientLengthPacket_le_reciprocalSquare
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.riemannHypothesis_of_classicalWeakMertensStep_and_reciprocalSquareL1
