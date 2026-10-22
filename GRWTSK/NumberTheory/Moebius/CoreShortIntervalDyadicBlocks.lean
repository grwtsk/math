/-
Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI ChatGPT.
Imported sources retain their original credits/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #565. Parent: draft PR #564 at
`55a4b8b2ab3bd66f76e03d208f7a20f4dd187f2a`.
-/
import GRWTSK.NumberTheory.Moebius.CoreShortIntervalAmbientWindow

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- Standard dyadic start block `[2^r,2^(r+1))`. -/
def dyadicStartBlock (r : ℕ) : Finset ℕ :=
  Finset.Ico (2 ^ r) (2 ^ (r + 1))

/-- First moment of short Möbius sums over one standard dyadic start block. -/
def dyadicStartBlockShortIntervalL1 (r n : ℕ) : ℝ :=
  ∑ x ∈ dyadicStartBlock r,
    |ambientMobiusShortIntervalSum x n|

/-- The two endpoint starts not covered by the standard blocks up to scale
`j`. -/
def ambientEndpointStartCorrection (j n : ℕ) : ℝ :=
  |ambientMobiusShortIntervalSum (2 ^ (j + 1)) n| +
    |ambientMobiusShortIntervalSum (2 ^ (j + 1) + 1) n|

/-- Aggregate of all standard dyadic start-block first moments through scale
`j`, plus the explicit two-start endpoint correction. -/
def dyadicStartBlockAggregateL1 (j n : ℕ) : ℝ :=
  (∑ r ∈ Finset.range (j + 1),
      dyadicStartBlockShortIntervalL1 r n) +
    ambientEndpointStartCorrection j n

/-- Exact finite sum decomposition of the prefix into standard dyadic start
blocks.  This induction avoids any choice of a logarithmic block index. -/
theorem sum_prefix_eq_sum_dyadicStartBlocks
    (f : ℕ → ℝ) (j : ℕ) :
    (∑ x ∈ Finset.Ico 1 (2 ^ (j + 1)), f x) =
      ∑ r ∈ Finset.range (j + 1),
        ∑ x ∈ dyadicStartBlock r, f x := by
  induction j with
  | zero =>
      simp [dyadicStartBlock]
  | succ j ih =>
      rw [Nat.succ_eq_add_one, Finset.sum_range_succ]
      rw [← ih]
      unfold dyadicStartBlock
      have h1 : 1 ≤ 2 ^ (j + 1) := by positivity
      have h2 : 2 ^ (j + 1) ≤ 2 ^ (j + 2) := by
        rw [Nat.pow_succ]
        omega
      rw [← Finset.sum_Ico_consecutive _ h1 h2]
      rfl

/-- The common ambient start window is the dyadic prefix plus exactly two
endpoint starts. -/
theorem harmonicAmbientStartWindow_eq_prefix_insert_two
    (j : ℕ) :
    harmonicAmbientStartWindow j =
      (Finset.Ico 1 (2 ^ (j + 1))).insert (2 ^ (j + 1))
        |>.insert (2 ^ (j + 1) + 1) := by
  ext x
  simp [harmonicAmbientStartWindow]
  omega

/-- Exact decomposition of the ambient first moment into standard dyadic start
blocks plus the two-start endpoint correction. -/
theorem harmonicAmbientShortIntervalL1_eq_dyadicAggregate
    (j n : ℕ) :
    harmonicAmbientShortIntervalL1 j n =
      dyadicStartBlockAggregateL1 j n := by
  unfold harmonicAmbientShortIntervalL1 dyadicStartBlockAggregateL1
    ambientEndpointStartCorrection dyadicStartBlockShortIntervalL1
  rw [harmonicAmbientStartWindow_eq_prefix_insert_two]
  have hY :
      2 ^ (j + 1) ∉ Finset.Ico 1 (2 ^ (j + 1)) := by simp
  have hY1 :
      2 ^ (j + 1) + 1 ∉
        (Finset.Ico 1 (2 ^ (j + 1))).insert (2 ^ (j + 1)) := by
    simp
  rw [Finset.sum_insert hY1, Finset.sum_insert hY]
  rw [sum_prefix_eq_sum_dyadicStartBlocks
    (fun x => |ambientMobiusShortIntervalSum x n|) j]
  ring

/-- Endpoint correction has the elementary bound `2n`. -/
theorem ambientEndpointStartCorrection_le_two_mul_length
    (j n : ℕ) :
    ambientEndpointStartCorrection j n ≤ 2 * (n : ℝ) := by
  unfold ambientEndpointStartCorrection
  apply add_le_add
  · unfold ambientMobiusShortIntervalSum
    calc
      |∑ k ∈ Finset.range n,
          moebiusReal (2 ^ (j + 1) + k)| ≤
        ∑ k ∈ Finset.range n,
          |moebiusReal (2 ^ (j + 1) + k)| :=
        Finset.abs_sum_le_sum_abs _ _
      _ ≤ ∑ _k ∈ Finset.range n, (1 : ℝ) := by
        apply Finset.sum_le_sum
        intro k _hk
        exact moebiusReal_abs_le_one _
      _ = n := by simp
  · unfold ambientMobiusShortIntervalSum
    calc
      |∑ k ∈ Finset.range n,
          moebiusReal (2 ^ (j + 1) + 1 + k)| ≤
        ∑ k ∈ Finset.range n,
          |moebiusReal (2 ^ (j + 1) + 1 + k)| :=
        Finset.abs_sum_le_sum_abs _ _
      _ ≤ ∑ _k ∈ Finset.range n, (1 : ℝ) := by
        apply Finset.sum_le_sum
        intro k _hk
        exact moebiusReal_abs_le_one _
      _ = n := by simp

/-- Dyadic-block terminal majorant preserving the exact terminal interval
length and Abel coefficient. -/
def dyadicBlockTerminalL1Majorant (j t : ℕ) : ℝ :=
  if harmonicShiftCount j t = 0 then 0 else
    dyadicStartBlockAggregateL1 j (harmonicShiftCount j t) *
      harmonicShiftFirstDifference j t (harmonicShiftCount j t - 1)

/-- Dyadic-block long-interior majorant preserving every retained interval
length and exact second-difference coefficient. -/
def dyadicBlockLongInteriorL1Majorant (j t : ℕ) : ℝ :=
  ∑ k ∈ (Finset.range (harmonicShiftCount j t - 1)).filter
      (fun k => logarithmicShiftThreshold j ≤ k + 1),
    dyadicStartBlockAggregateL1 j (k + 1) *
      harmonicShiftSecondDifference j t k

/-- One-depth dyadic start-block majorant. -/
def coreLongDepthDyadicBlockL1Majorant (j t : ℕ) : ℝ :=
  2 * (dyadicBlockTerminalL1Majorant j t +
    dyadicBlockLongInteriorL1Majorant j t)

/-- Packet-level dyadic start-block observable. -/
def coreLongDyadicBlockShortIntervalL1Packet (j : ℕ) : ℝ :=
  ∑ t ∈ coreLongDeepDepths j,
    coreLongDepthDyadicBlockL1Majorant j t

/-- The ambient core packet is exactly its dyadic-block decomposition. -/
theorem coreLongAmbientShortIntervalL1Packet_eq_dyadicBlocks
    (j : ℕ) :
    coreLongAmbientShortIntervalL1Packet j =
      coreLongDyadicBlockShortIntervalL1Packet j := by
  unfold coreLongAmbientShortIntervalL1Packet
    coreLongDyadicBlockShortIntervalL1Packet
    coreLongDepthAmbientL1Majorant
    coreLongDepthDyadicBlockL1Majorant
    harmonicAmbientTerminalL1Majorant
    dyadicBlockTerminalL1Majorant
    harmonicAmbientLongInteriorL1Majorant
    dyadicBlockLongInteriorL1Majorant
  apply Finset.sum_congr rfl
  intro t _ht
  congr 2
  · by_cases hN : harmonicShiftCount j t = 0 <;>
      simp [hN, harmonicAmbientShortIntervalL1_eq_dyadicAggregate]
  · apply Finset.sum_congr rfl
    intro k _hk
    rw [harmonicAmbientShortIntervalL1_eq_dyadicAggregate]

/-- Source-facing dyadic-block supplier. -/
def SubpolynomialCoreLongDyadicBlockShortIntervalL1Packet : Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧
    ∀ j : ℕ,
      coreLongDyadicBlockShortIntervalL1Packet j ≤
        C * (((2 ^ j : ℕ) : ℝ) ^ δ)

/-- Exact equivalence with the ambient supplier. -/
theorem subpolynomialCoreLongDyadicBlockShortIntervalL1Packet_iff_ambient :
    SubpolynomialCoreLongDyadicBlockShortIntervalL1Packet ↔
      SubpolynomialCoreLongAmbientShortIntervalL1Packet := by
  constructor
  · intro h δ hδ
    obtain ⟨C, hC, hb⟩ := h δ hδ
    refine ⟨C, hC, ?_⟩
    intro j
    rw [coreLongAmbientShortIntervalL1Packet_eq_dyadicBlocks]
    exact hb j
  · intro h δ hδ
    obtain ⟨C, hC, hb⟩ := h δ hδ
    refine ⟨C, hC, ?_⟩
    intro j
    rw [← coreLongAmbientShortIntervalL1Packet_eq_dyadicBlocks]
    exact hb j

/-- Conditional endpoint from the dyadic-block short-interval supplier. -/
theorem riemannHypothesis_of_subpolynomialCoreLongDyadicBlockShortIntervalL1Packet
    (h : SubpolynomialCoreLongDyadicBlockShortIntervalL1Packet) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_subpolynomialCoreLongAmbientShortIntervalL1Packet
    (subpolynomialCoreLongDyadicBlockShortIntervalL1Packet_iff_ambient.mp h)

/-- Scope descriptor for a theorem furnishing first-moment bounds on standard
dyadic start blocks, uniformly over the retained interval lengths. -/
structure DyadicBlockShortIntervalL1Source where
  sourceStatement : Prop
  firstMomentBound : Prop
  uniformInBlockScale : Prop
  uniformInIntervalLength : Prop

/-- Adapter from a theorem on standard dyadic start blocks to the exact
coefficient-weighted packet.  The two-start endpoint correction remains an
explicit obligation. -/
structure DyadicBlockShortIntervalToCoreAdapter
    (d : DyadicBlockShortIntervalL1Source) : Type where
  endpointCorrectionPaid : Prop
  coefficientWeightedSummation : Prop
  toCore :
    d.sourceStatement →
      d.firstMomentBound →
      d.uniformInBlockScale →
      d.uniformInIntervalLength →
      endpointCorrectionPaid →
      coefficientWeightedSummation →
      SubpolynomialCoreLongDyadicBlockShortIntervalL1Packet

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.harmonicAmbientShortIntervalL1_eq_dyadicAggregate
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.ambientEndpointStartCorrection_le_two_mul_length
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreLongAmbientShortIntervalL1Packet_eq_dyadicBlocks
