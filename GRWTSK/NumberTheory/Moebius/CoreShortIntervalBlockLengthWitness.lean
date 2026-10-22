/-
Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI ChatGPT.
Imported sources retain their original credits/licenses.

Status: LITERATURE_REVIEWED / WITNESS / SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #569. Parent: draft PR #566 at
`b58ccf0210ab0f50e81e7a4f3b4b24b865281da4`.
-/
import GRWTSK.NumberTheory.Moebius.CoreShortIntervalDyadicBlocks

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- Dyadic start blocks whose ambient scale is at least the retained interval
length. -/
def compatibleDyadicStartBlockL1
    (j n : ℕ) : ℝ :=
  ∑ r ∈ (Finset.range (j + 1)).filter (fun r => n ≤ 2 ^ r),
    dyadicStartBlockShortIntervalL1 r n

/-- Low-scale dyadic start blocks whose ambient scale is smaller than the
retained interval length. -/
def incompatibleDyadicStartBlockL1
    (j n : ℕ) : ℝ :=
  ∑ r ∈ (Finset.range (j + 1)).filter (fun r => 2 ^ r < n),
    dyadicStartBlockShortIntervalL1 r n

/-- Exact compatible/incompatible split of the dyadic start-block aggregate,
with the two endpoint starts retained separately. -/
theorem dyadicStartBlockAggregateL1_eq_compatible_add_incompatible
    (j n : ℕ) :
    dyadicStartBlockAggregateL1 j n =
      compatibleDyadicStartBlockL1 j n +
        incompatibleDyadicStartBlockL1 j n +
          ambientEndpointStartCorrection j n := by
  unfold dyadicStartBlockAggregateL1
    compatibleDyadicStartBlockL1
    incompatibleDyadicStartBlockL1
  rw [← Finset.sum_filter_add_sum_filter_not
    (s := Finset.range (j + 1))
    (p := fun r => n ≤ 2 ^ r)]
  congr 2
  · rfl
  · apply Finset.sum_congr
    · ext r
      simp [Nat.not_le]
    · intro r _hr
      rfl

/-- Compatible terminal majorant. -/
def compatibleDyadicBlockTerminalL1Majorant
    (j t : ℕ) : ℝ :=
  if harmonicShiftCount j t = 0 then 0 else
    compatibleDyadicStartBlockL1 j (harmonicShiftCount j t) *
      harmonicShiftFirstDifference j t (harmonicShiftCount j t - 1)

/-- Incompatible terminal majorant. -/
def incompatibleDyadicBlockTerminalL1Majorant
    (j t : ℕ) : ℝ :=
  if harmonicShiftCount j t = 0 then 0 else
    incompatibleDyadicStartBlockL1 j (harmonicShiftCount j t) *
      harmonicShiftFirstDifference j t (harmonicShiftCount j t - 1)

/-- Compatible long-interior majorant. -/
def compatibleDyadicBlockLongInteriorL1Majorant
    (j t : ℕ) : ℝ :=
  ∑ k ∈ (Finset.range (harmonicShiftCount j t - 1)).filter
      (fun k => logarithmicShiftThreshold j ≤ k + 1),
    compatibleDyadicStartBlockL1 j (k + 1) *
      harmonicShiftSecondDifference j t k

/-- Incompatible long-interior majorant. -/
def incompatibleDyadicBlockLongInteriorL1Majorant
    (j t : ℕ) : ℝ :=
  ∑ k ∈ (Finset.range (harmonicShiftCount j t - 1)).filter
      (fun k => logarithmicShiftThreshold j ≤ k + 1),
    incompatibleDyadicStartBlockL1 j (k + 1) *
      harmonicShiftSecondDifference j t k

/-- Compatible contribution at one core depth. -/
def coreLongDepthCompatibleDyadicL1
    (j t : ℕ) : ℝ :=
  2 * (compatibleDyadicBlockTerminalL1Majorant j t +
    compatibleDyadicBlockLongInteriorL1Majorant j t)

/-- Incompatible contribution at one core depth. -/
def coreLongDepthIncompatibleDyadicL1
    (j t : ℕ) : ℝ :=
  2 * (incompatibleDyadicBlockTerminalL1Majorant j t +
    incompatibleDyadicBlockLongInteriorL1Majorant j t)

/-- Two-start endpoint contribution at one core depth. -/
def coreLongDepthEndpointCorrectionL1
    (j t : ℕ) : ℝ :=
  2 * (
    (if harmonicShiftCount j t = 0 then 0 else
      ambientEndpointStartCorrection j (harmonicShiftCount j t) *
        harmonicShiftFirstDifference j t (harmonicShiftCount j t - 1)) +
    ∑ k ∈ (Finset.range (harmonicShiftCount j t - 1)).filter
        (fun k => logarithmicShiftThreshold j ≤ k + 1),
      ambientEndpointStartCorrection j (k + 1) *
        harmonicShiftSecondDifference j t k)

/-- Exact one-depth split into theorem-compatible blocks, low-scale blocks,
and the explicit two-start endpoint correction. -/
theorem coreLongDepthDyadicBlockL1Majorant_eq_threeWay
    (j t : ℕ) :
    coreLongDepthDyadicBlockL1Majorant j t =
      coreLongDepthCompatibleDyadicL1 j t +
        coreLongDepthIncompatibleDyadicL1 j t +
          coreLongDepthEndpointCorrectionL1 j t := by
  unfold coreLongDepthDyadicBlockL1Majorant
    dyadicBlockTerminalL1Majorant
    dyadicBlockLongInteriorL1Majorant
    coreLongDepthCompatibleDyadicL1
    coreLongDepthIncompatibleDyadicL1
    coreLongDepthEndpointCorrectionL1
    compatibleDyadicBlockTerminalL1Majorant
    incompatibleDyadicBlockTerminalL1Majorant
    compatibleDyadicBlockLongInteriorL1Majorant
    incompatibleDyadicBlockLongInteriorL1Majorant
  by_cases hN : harmonicShiftCount j t = 0
  · simp [hN, dyadicStartBlockAggregateL1_eq_compatible_add_incompatible]
  · simp only [hN, if_false]
    rw [dyadicStartBlockAggregateL1_eq_compatible_add_incompatible]
    have hinterior :
        (∑ k ∈ (Finset.range (harmonicShiftCount j t - 1)).filter
            (fun k => logarithmicShiftThreshold j ≤ k + 1),
          dyadicStartBlockAggregateL1 j (k + 1) *
            harmonicShiftSecondDifference j t k) =
        (∑ k ∈ (Finset.range (harmonicShiftCount j t - 1)).filter
            (fun k => logarithmicShiftThreshold j ≤ k + 1),
          compatibleDyadicStartBlockL1 j (k + 1) *
            harmonicShiftSecondDifference j t k) +
        (∑ k ∈ (Finset.range (harmonicShiftCount j t - 1)).filter
            (fun k => logarithmicShiftThreshold j ≤ k + 1),
          incompatibleDyadicStartBlockL1 j (k + 1) *
            harmonicShiftSecondDifference j t k) +
        (∑ k ∈ (Finset.range (harmonicShiftCount j t - 1)).filter
            (fun k => logarithmicShiftThreshold j ≤ k + 1),
          ambientEndpointStartCorrection j (k + 1) *
            harmonicShiftSecondDifference j t k) := by
      rw [← Finset.sum_add_distrib, ← Finset.sum_add_distrib]
      apply Finset.sum_congr rfl
      intro k _hk
      rw [dyadicStartBlockAggregateL1_eq_compatible_add_incompatible]
      ring
    rw [hinterior]
    ring

/-- Packet contribution from theorem-compatible dyadic start blocks. -/
def coreLongCompatibleDyadicL1Packet (j : ℕ) : ℝ :=
  ∑ t ∈ coreLongDeepDepths j,
    coreLongDepthCompatibleDyadicL1 j t

/-- Packet contribution from low-scale incompatible dyadic start blocks. -/
def coreLongIncompatibleDyadicL1Packet (j : ℕ) : ℝ :=
  ∑ t ∈ coreLongDeepDepths j,
    coreLongDepthIncompatibleDyadicL1 j t

/-- Packet contribution from the two-start endpoint correction. -/
def coreLongEndpointCorrectionL1Packet (j : ℕ) : ℝ :=
  ∑ t ∈ coreLongDeepDepths j,
    coreLongDepthEndpointCorrectionL1 j t

/-- Exact packet split. -/
theorem coreLongDyadicBlockShortIntervalL1Packet_eq_threeWay
    (j : ℕ) :
    coreLongDyadicBlockShortIntervalL1Packet j =
      coreLongCompatibleDyadicL1Packet j +
        coreLongIncompatibleDyadicL1Packet j +
          coreLongEndpointCorrectionL1Packet j := by
  unfold coreLongDyadicBlockShortIntervalL1Packet
    coreLongCompatibleDyadicL1Packet
    coreLongIncompatibleDyadicL1Packet
    coreLongEndpointCorrectionL1Packet
  rw [← Finset.sum_add_distrib, ← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro t _ht
  exact coreLongDepthDyadicBlockL1Majorant_eq_threeWay j t

/-- Scope descriptor for a theorem valid on dyadic start blocks only when the
short interval length does not exceed the ambient start scale. -/
structure CompatibleDyadicShortIntervalScope where
  sourceStatement : Prop
  firstMomentBound : Prop
  uniformInBlockScale : Prop
  uniformInCompatibleLength : Prop

/-- Adapter boundary: a compatible-block theorem still needs separate payment
of low-scale incompatible blocks and the endpoint correction. -/
structure CompatibleDyadicToCoreAdapter
    (d : CompatibleDyadicShortIntervalScope) : Type where
  incompatibleBlocksPaid : Prop
  endpointCorrectionPaid : Prop
  coefficientWeightedSummation : Prop
  toCore :
    d.sourceStatement →
      d.firstMomentBound →
      d.uniformInBlockScale →
      d.uniformInCompatibleLength →
      incompatibleBlocksPaid →
      endpointCorrectionPaid →
      coefficientWeightedSummation →
      SubpolynomialCoreLongDyadicBlockShortIntervalL1Packet

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.dyadicStartBlockAggregateL1_eq_compatible_add_incompatible
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreLongDyadicBlockShortIntervalL1Packet_eq_threeWay
