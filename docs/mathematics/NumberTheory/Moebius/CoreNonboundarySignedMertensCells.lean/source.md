# Complete source: GRWTSK.NumberTheory.Moebius.CoreNonboundarySignedMertensCells

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7f98a495095c2f601f2986fd610b45d3f024bcfe` · SHA-256 `c5c73f18f7580c641ab28683b4670be287f43f48ee47489fe4b79a6939c963c9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Imported sources retain their original credits/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #682. Parent: draft PR #679 at
`d33beeafc138e92816744d8af048a5f1b4792dc8`.
-/
import GRWTSK.NumberTheory.Moebius.CoreNonboundarySignedLengthTranspose

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- Ordinary Mertens increment over the exact short interval appearing at one
base point of the non-boundary packet. -/
def coreNonboundaryMertensIncrement
    (j t n a : ℕ) : ℝ :=
  mertensPrefixReal (a + harmonicShiftLower j t + n) -
    mertensPrefixReal (a + harmonicShiftLower j t)

/-- Every induced harmonic short Möbius sum is exactly an ordinary Mertens
prefix difference. -/
theorem harmonicShortMobiusSum_eq_mertensIncrement
    (j t n a : ℕ) :
    harmonicShortMobiusSum j t n a =
      coreNonboundaryMertensIncrement j t n a := by
  have hprefix :=
    mertensPrefixReal_add_interval
      (a + harmonicShiftLower j t) n
  have hsum :
      (∑ k ∈ Finset.range n,
        moebiusReal
          ((a + harmonicShiftLower j t) + k + 1)) =
        harmonicShortMobiusSum j t n a := by
    unfold harmonicShortMobiusSum
    apply Finset.sum_congr rfl
    intro k _hk
    congr 2 <;> omega
  rw [hsum] at hprefix
  unfold coreNonboundaryMertensIncrement
  linarith

/-- One exact signed arithmetic cell.  No absolute value is introduced: the
Möbius base sign, Mertens increment, and Abel selector remain multiplied before
any summation. -/
def coreNonboundarySignedMertensCell
    (j n t a : ℕ) : ℝ :=
  2 * moebiusReal (a + 1) *
    coreNonboundaryMertensIncrement j t n a *
      (coreTerminalLengthCoefficient j t n +
        coreInteriorLengthCoefficient j t n)

/-- At fixed retained length, the signed length slice is exactly the sum of
its Mertens-increment cells over genuine core depths and their literal base
points. -/
theorem coreNonboundarySignedLengthSlice_eq_mertensCells
    (j n : ℕ) :
    coreNonboundarySignedLengthSlice j n =
      ∑ t ∈ coreLongDeepDepths j,
        ∑ a ∈ Finset.range (t + 1),
          coreNonboundarySignedMertensCell j n t a := by
  unfold coreNonboundarySignedLengthSlice
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro t _ht
  rw [cumulativeHarmonicShiftCorrelation_eq_shortIntervalAverage]
  rw [Finset.sum_mul, Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro a _ha
  rw [harmonicShortMobiusSum_eq_mertensIncrement]
  unfold coreNonboundarySignedMertensCell
  ring

/-- Start-point-major form of the complete signed non-boundary packet.  The
retained-length sum remains signed inside each base-point contribution. -/
def coreNonboundarySignedMertensCellPacket
    (j : ℕ) : ℝ :=
  ∑ t ∈ coreLongDeepDepths j,
    ∑ a ∈ Finset.range (t + 1),
      ∑ n ∈ Finset.Ico (logarithmicShiftThreshold j) (2 ^ j),
        coreNonboundarySignedMertensCell j n t a

/-- Exact finite Fubini from retained-length-major order to depth/base-point-
major order. -/
theorem coreNonboundarySignedLengthPacket_eq_mertensCellPacket
    (j : ℕ) :
    coreNonboundarySignedLengthPacket j =
      coreNonboundarySignedMertensCellPacket j := by
  unfold coreNonboundarySignedLengthPacket
    coreNonboundarySignedMertensCellPacket
  calc
    (∑ n ∈ Finset.Ico (logarithmicShiftThreshold j) (2 ^ j),
      coreNonboundarySignedLengthSlice j n) =
      ∑ n ∈ Finset.Ico (logarithmicShiftThreshold j) (2 ^ j),
        ∑ t ∈ coreLongDeepDepths j,
          ∑ a ∈ Finset.range (t + 1),
            coreNonboundarySignedMertensCell j n t a := by
      apply Finset.sum_congr rfl
      intro n _hn
      rw [coreNonboundarySignedLengthSlice_eq_mertensCells]
    _ = ∑ t ∈ coreLongDeepDepths j,
        ∑ n ∈ Finset.Ico (logarithmicShiftThreshold j) (2 ^ j),
          ∑ a ∈ Finset.range (t + 1),
            coreNonboundarySignedMertensCell j n t a := by
      rw [Finset.sum_comm]
    _ = ∑ t ∈ coreLongDeepDepths j,
        ∑ a ∈ Finset.range (t + 1),
          ∑ n ∈ Finset.Ico (logarithmicShiftThreshold j) (2 ^ j),
            coreNonboundarySignedMertensCell j n t a := by
      apply Finset.sum_congr rfl
      intro t _ht
      rw [Finset.sum_comm]

/-- Canonical source phrased directly on the explicit signed Mertens cells. -/
def SubpolynomialCoreNonboundarySignedMertensCellPacket : Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧
    ∀ j : ℕ,
      |coreNonboundarySignedMertensCellPacket j| ≤
        C * (((2 ^ j : ℕ) : ℝ) ^ δ)

/-- The Mertens-cell source is exactly equivalent to the signed retained-length
source; this is representation only, not an analytic estimate. -/
theorem subpolynomialCoreNonboundarySignedMertensCellPacket_iff_lengthPacket :
    SubpolynomialCoreNonboundarySignedMertensCellPacket ↔
      SubpolynomialCoreNonboundarySignedLengthPacket := by
  constructor
  · intro h δ hδ
    obtain ⟨C, hC, hbound⟩ := h δ hδ
    refine ⟨C, hC, ?_⟩
    intro j
    rw [coreNonboundarySignedLengthPacket_eq_mertensCellPacket]
    exact hbound j
  · intro h δ hδ
    obtain ⟨C, hC, hbound⟩ := h δ hδ
    refine ⟨C, hC, ?_⟩
    intro j
    rw [← coreNonboundarySignedLengthPacket_eq_mertensCellPacket]
    exact hbound j

/-- Exact conditional endpoint using the classical Weak-Mertens boundary source
and the explicit signed Mertens-cell source for the non-boundary packet. -/
theorem riemannHypothesis_of_classicalWeakMertensStep_and_signedMertensCells
    (hBoundary : ClassicalWeakMertensStepSource)
    (hCells : SubpolynomialCoreNonboundarySignedMertensCellPacket) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_classicalWeakMertensStep_and_signedLength
    hBoundary
    (subpolynomialCoreNonboundarySignedMertensCellPacket_iff_lengthPacket.mp
      hCells)

/-- Generic proof-producing adapter for any future dispersion, Chowla, Elliott,
or short-interval statement that actually controls the complete signed cell
packet.  A citation or analogy alone does not construct this record. -/
structure ToSignedMertensCellPacketAdapter
    (source : Prop) : Type where
  preserveDepthCancellation : Prop
  preserveLengthCancellation : Prop
  preserveStartPointCancellation : Prop
  toCells :
    source →
      preserveDepthCancellation →
      preserveLengthCancellation →
      preserveStartPointCancellation →
      SubpolynomialCoreNonboundarySignedMertensCellPacket

/-- Finite hostile witness: signed cancellation between two arithmetic cells
can be exact while the corresponding termwise absolute mass is positive. -/
theorem signedMertensCellCancellation_hostileWitness :
    (2 : ℝ) * 1 * 1 + 2 * (-1) * 1 = 0 ∧
      |(2 : ℝ) * 1 * 1| + |2 * (-1) * 1| = 4 := by
  norm_num

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.harmonicShortMobiusSum_eq_mertensIncrement
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreNonboundarySignedLengthSlice_eq_mertensCells
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreNonboundarySignedLengthPacket_eq_mertensCellPacket
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.riemannHypothesis_of_classicalWeakMertensStep_and_signedMertensCells
```
