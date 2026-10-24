# Complete source: GRWTSK.NumberTheory.Moebius.CoreBoundaryPreservingHybrid

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e5644ce1b421bbbe1308d5ea7b62710c1a7633b3` · SHA-256 `2ac803b6c54a25853712eddf313b3d2c2078332dc620071489f7b7ee131df14b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Imported sources retain their original credits/licenses.

Status: WITNESS / SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #600. Parent: draft PR #599 at
`a3267815052f159121ab7b4a86908905b1f52fe6`.
-/
import GRWTSK.NumberTheory.Moebius.CoreLengthCoefficientPiecewise

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- Boundary terminal contribution at one core depth.  It is retained signed
and is present only at maximal active length `2^j`. -/
def coreBoundarySignedDepthContribution
    (j t : ℕ) : ℝ :=
  if harmonicShiftCount j t = 2 ^ j then
    2 * harmonicTerminalCumulativeContribution j t
  else 0

/-- Complete signed boundary packet, before any start-point triangle
inequality. -/
def coreBoundarySignedPacket
    (j : ℕ) : ℝ :=
  ∑ t ∈ coreLongDeepDepths j,
    coreBoundarySignedDepthContribution j t

/-- Non-boundary signed remainder after removing the exceptional maximal
terminal length. -/
def coreNonboundarySignedRemainderPacket
    (j : ℕ) : ℝ :=
  coreLongDeepRemainderPacket j - coreBoundarySignedPacket j

/-- Positive L1 majorant for one core depth with the maximal terminal length
removed.  Interior retained lengths are automatically below the active count. -/
def coreNonboundaryDepthShortIntervalL1Majorant
    (j t : ℕ) : ℝ :=
  2 * (
    (if harmonicShiftCount j t = 2 ^ j then 0
     else harmonicTerminalShortIntervalL1Majorant j t) +
    harmonicLongInteriorShortIntervalL1Majorant j t)

/-- Packet-level positive L1 majorant only for non-boundary retained lengths. -/
def coreNonboundaryShortIntervalL1Packet
    (j : ℕ) : ℝ :=
  ∑ t ∈ coreLongDeepDepths j,
    coreNonboundaryDepthShortIntervalL1Majorant j t

/-- Exact depth decomposition into the signed boundary terminal part and the
remaining signed contribution. -/
def coreNonboundarySignedDepthRemainder
    (j t : ℕ) : ℝ :=
  logarithmicLongDepthRemainder j t -
    coreBoundarySignedDepthContribution j t

/-- The packet split is exact. -/
theorem coreLongDeepRemainderPacket_eq_boundary_add_nonboundary
    (j : ℕ) :
    coreLongDeepRemainderPacket j =
      coreBoundarySignedPacket j +
        coreNonboundarySignedRemainderPacket j := by
  unfold coreNonboundarySignedRemainderPacket
  ring

/-- At one core depth, removing the boundary terminal contribution leaves an
L1-majorizable non-boundary remainder. -/
theorem abs_coreNonboundarySignedDepthRemainder_le_l1
    {j t : ℕ}
    (hcore : t ∈ coreLongDeepDepths j) :
    |coreNonboundarySignedDepthRemainder j t| ≤
      coreNonboundaryDepthShortIntervalL1Majorant j t := by
  rw [show
      coreNonboundarySignedDepthRemainder j t =
        logarithmicLongDepthRemainder j t -
          coreBoundarySignedDepthContribution j t by rfl]
  rw [logarithmicLongDepthRemainder_eq_terminal_add_longInterior]
  unfold coreBoundarySignedDepthContribution
    coreNonboundaryDepthShortIntervalL1Majorant
  by_cases hboundary : harmonicShiftCount j t = 2 ^ j
  · rw [if_pos hboundary, if_pos hboundary]
    ring_nf
    simpa using abs_harmonicCumulativeLongContribution_le_l1 j t
  · rw [if_neg hboundary, if_neg hboundary, sub_zero]
    calc
      |2 * harmonicTerminalCumulativeContribution j t +
        2 * (((2 ^ (j + 1) : ℕ) : ℝ))⁻¹ *
          harmonicCumulativeLongContribution
            j t (logarithmicShiftThreshold j)| ≤
        |2 * harmonicTerminalCumulativeContribution j t| +
        |2 * (((2 ^ (j + 1) : ℕ) : ℝ))⁻¹ *
          harmonicCumulativeLongContribution
            j t (logarithmicShiftThreshold j)| := abs_add _ _
      _ ≤ 2 * harmonicTerminalShortIntervalL1Majorant j t +
          2 * harmonicLongInteriorShortIntervalL1Majorant j t := by
        apply add_le_add
        · rw [abs_mul, abs_of_nonneg (by norm_num : (0 : ℝ) ≤ 2)]
          exact mul_le_mul_of_nonneg_left
            (abs_harmonicTerminalCumulativeContribution_le_l1 hcore)
            (by norm_num)
        · exact abs_harmonicCumulativeLongContribution_le_l1 j t
      _ = _ := by ring

/-- The non-boundary signed packet is controlled by the positive L1 packet
with the maximal terminal length removed. -/
theorem abs_coreNonboundarySignedRemainderPacket_le_l1
    (j : ℕ) :
    |coreNonboundarySignedRemainderPacket j| ≤
      coreNonboundaryShortIntervalL1Packet j := by
  have hsum :
      coreNonboundarySignedRemainderPacket j =
        ∑ t ∈ coreLongDeepDepths j,
          coreNonboundarySignedDepthRemainder j t := by
    unfold coreNonboundarySignedRemainderPacket
      coreLongDeepRemainderPacket coreBoundarySignedPacket
      coreNonboundarySignedDepthRemainder
    rw [Finset.sum_sub_distrib]
  rw [hsum]
  unfold coreNonboundaryShortIntervalL1Packet
  calc
    |∑ t ∈ coreLongDeepDepths j,
      coreNonboundarySignedDepthRemainder j t| ≤
      ∑ t ∈ coreLongDeepDepths j,
        |coreNonboundarySignedDepthRemainder j t| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ t ∈ coreLongDeepDepths j,
        coreNonboundaryDepthShortIntervalL1Majorant j t := by
      apply Finset.sum_le_sum
      intro t ht
      exact abs_coreNonboundarySignedDepthRemainder_le_l1 ht

/-- Signed boundary supplier: cancellation across starts/depths remains inside
the boundary packet until after summation. -/
def SubpolynomialCoreBoundarySignedPacket : Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧
    ∀ j : ℕ,
      |coreBoundarySignedPacket j| ≤
        C * (((2 ^ j : ℕ) : ℝ) ^ δ)

/-- Positive L1 supplier only for non-boundary retained lengths. -/
def SubpolynomialCoreNonboundaryShortIntervalL1Packet : Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧
    ∀ j : ℕ,
      coreNonboundaryShortIntervalL1Packet j ≤
        C * (((2 ^ j : ℕ) : ℝ) ^ δ)

/-- Hybrid boundary-preserving source. -/
def HybridBoundaryPreservingCoreSupplier : Prop :=
  SubpolynomialCoreBoundarySignedPacket ∧
    SubpolynomialCoreNonboundaryShortIntervalL1Packet

/-- Signed boundary control plus non-boundary L1 control supplies the exact core
signed remainder. -/
theorem subpolynomialCoreLongDeepRemainderPacket_of_hybridBoundary
    (hHybrid : HybridBoundaryPreservingCoreSupplier) :
    SubpolynomialCoreLongDeepRemainderPacket := by
  intro δ hδ
  obtain ⟨Cb, hCb, hb⟩ := hHybrid.1 δ hδ
  obtain ⟨Cn, hCn, hn⟩ := hHybrid.2 δ hδ
  refine ⟨Cb + Cn, add_nonneg hCb hCn, ?_⟩
  intro j
  rw [coreLongDeepRemainderPacket_eq_boundary_add_nonboundary]
  calc
    coreBoundarySignedPacket j +
        coreNonboundarySignedRemainderPacket j ≤
      |coreBoundarySignedPacket j| +
        |coreNonboundarySignedRemainderPacket j| := by
      exact add_le_add (le_abs_self _) (le_abs_self _)
    _ ≤ |coreBoundarySignedPacket j| +
        coreNonboundaryShortIntervalL1Packet j := by
      exact add_le_add_left
        (abs_coreNonboundarySignedRemainderPacket_le_l1 j) _
    _ ≤ Cb * (((2 ^ j : ℕ) : ℝ) ^ δ) +
        Cn * (((2 ^ j : ℕ) : ℝ) ^ δ) := by
      exact add_le_add (hb j) (hn j)
    _ = (Cb + Cn) * (((2 ^ j : ℕ) : ℝ) ^ δ) := by ring

/-- Conditional RH endpoint through the hybrid boundary-preserving supplier. -/
theorem riemannHypothesis_of_hybridBoundaryPreservingCoreSupplier
    (hHybrid : HybridBoundaryPreservingCoreSupplier) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_subpolynomialCoreLongDeepRemainderPacket
    (subpolynomialCoreLongDeepRemainderPacket_of_hybridBoundary hHybrid)

/-- Abstract two-start witness: a signed weighted sum can vanish while the
corresponding L1 quantity is strictly positive.  This records information loss
from the start-point triangle inequality without making a claim about actual
Möbius values. -/
theorem signedStartPointCancellation_hostileWitness :
    (1 : ℝ) * 1 + (-1 : ℝ) * 1 = 0 ∧
      |(1 : ℝ)| + |(1 : ℝ)| = 2 := by
  norm_num

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.abs_coreNonboundarySignedRemainderPacket_le_l1
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.subpolynomialCoreLongDeepRemainderPacket_of_hybridBoundary
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.signedStartPointCancellation_hostileWitness
```
