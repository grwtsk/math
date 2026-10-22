/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Imported sources retain their original credits/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #563. Parent: draft PR #561 at
`a809adaae19fd1ca5b11433c1035981381a4e0e4`.
-/
import GRWTSK.NumberTheory.Moebius.CoreShortIntervalStartWindowWitness

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- Common ambient starting-point block containing every inherited depth
window at dyadic scale `j`. -/
def harmonicAmbientStartWindow (j : ℕ) : Finset ℕ :=
  Finset.Ico 1 (2 ^ (j + 1) + 2)

/-- Möbius sum on a short interval starting at the literal point `x`. -/
def ambientMobiusShortIntervalSum (x n : ℕ) : ℝ :=
  ∑ k ∈ Finset.range n, moebiusReal (x + k)

/-- First moment over the common ambient starting-point block. -/
def harmonicAmbientShortIntervalL1 (j n : ℕ) : ℝ :=
  ∑ x ∈ harmonicAmbientStartWindow j,
    |ambientMobiusShortIntervalSum x n|

/-- The source-specific short interval equals the literal ambient short
interval at its exact starting point. -/
theorem harmonicShortMobiusSum_eq_ambient
    (j t n a : ℕ) :
    harmonicShortMobiusSum j t n a =
      ambientMobiusShortIntervalSum
        (harmonicShortIntervalStart j t a) n := by
  unfold harmonicShortMobiusSum ambientMobiusShortIntervalSum
    harmonicShortIntervalStart harmonicStartWindowLower
  apply Finset.sum_congr rfl
  intro k _hk
  congr 2 <;> omega

/-- Every inherited start window lies in one common ambient block. -/
theorem harmonicStartWindow_subset_ambient
    {j t : ℕ} (ht : t < 2 ^ (j + 1)) :
    Finset.Ico (harmonicStartWindowLower j t)
        (harmonicStartWindowUpper j t) ⊆
      harmonicAmbientStartWindow j := by
  intro x hx
  simp only [Finset.mem_Ico] at hx ⊢
  constructor
  · have hlower : 1 ≤ harmonicStartWindowLower j t := by
      unfold harmonicStartWindowLower harmonicShiftLower
      omega
    omega
  · unfold harmonicStartWindowUpper harmonicStartWindowLower
      harmonicShiftLower
    by_cases hleft : t + 1 < 2 ^ j
    · rw [max_eq_right]
      · omega
      · omega
    · rw [max_eq_left]
      · omega
      · omega

/-- Exact first-moment rewrite from base indices to literal starting points. -/
theorem harmonicShortIntervalL1_eq_startWindowSum
    (j t n : ℕ) :
    harmonicShortIntervalL1 j t n =
      ∑ x ∈ Finset.Ico (harmonicStartWindowLower j t)
          (harmonicStartWindowUpper j t),
        |ambientMobiusShortIntervalSum x n| := by
  unfold harmonicShortIntervalL1
  rw [← harmonicStartWindow_eq_image_range]
  rw [Finset.sum_image]
  · apply Finset.sum_congr rfl
    intro a _ha
    rw [harmonicShortMobiusSum_eq_ambient]
  · intro a₁ ha₁ a₂ ha₂ h
    unfold harmonicShortIntervalStart at h
    omega

/-- Nonnegativity lets any depth-window first moment enlarge to the common
ambient start block without loss other than adding terms. -/
theorem harmonicShortIntervalL1_le_ambient
    {j t n : ℕ} (ht : t < 2 ^ (j + 1)) :
    harmonicShortIntervalL1 j t n ≤
      harmonicAmbientShortIntervalL1 j n := by
  rw [harmonicShortIntervalL1_eq_startWindowSum]
  unfold harmonicAmbientShortIntervalL1
  apply Finset.sum_le_sum_of_subset_of_nonneg
  · exact harmonicStartWindow_subset_ambient ht
  · intro x _hx _hnot
    exact abs_nonneg _

/-- Ambient terminal L1 majorant, preserving the exact terminal coefficient
and interval length. -/
def harmonicAmbientTerminalL1Majorant
    (j t : ℕ) : ℝ :=
  if harmonicShiftCount j t = 0 then 0 else
    harmonicAmbientShortIntervalL1 j (harmonicShiftCount j t) *
      harmonicShiftFirstDifference
        j t (harmonicShiftCount j t - 1)

/-- Ambient long-interior majorant, preserving every interval length and exact
second-difference coefficient. -/
def harmonicAmbientLongInteriorL1Majorant
    (j t : ℕ) : ℝ :=
  ∑ k ∈ (Finset.range (harmonicShiftCount j t - 1)).filter
      (fun k => logarithmicShiftThreshold j ≤ k + 1),
    harmonicAmbientShortIntervalL1 j (k + 1) *
      harmonicShiftSecondDifference j t k

/-- Ambient majorant for one genuine core depth. -/
def coreLongDepthAmbientL1Majorant
    (j t : ℕ) : ℝ :=
  2 * (harmonicAmbientTerminalL1Majorant j t +
    harmonicAmbientLongInteriorL1Majorant j t)

/-- Packet-level ambient-block observable. -/
def coreLongAmbientShortIntervalL1Packet
    (j : ℕ) : ℝ :=
  ∑ t ∈ coreLongDeepDepths j,
    coreLongDepthAmbientL1Majorant j t

/-- The exact core-depth L1 majorant is dominated by its common-ambient
version. -/
theorem coreLongDepthShortIntervalL1Majorant_le_ambient
    {j t : ℕ}
    (hcore : t ∈ coreLongDeepDepths j) :
    coreLongDepthShortIntervalL1Majorant j t ≤
      coreLongDepthAmbientL1Majorant j t := by
  have htY : t < 2 ^ (j + 1) := by
    simpa [coreLongDeepDepths] using
      (Finset.mem_filter.mp hcore).1.2
  unfold coreLongDepthShortIntervalL1Majorant
    coreLongDepthAmbientL1Majorant
    harmonicTerminalShortIntervalL1Majorant
    harmonicAmbientTerminalL1Majorant
    harmonicLongInteriorShortIntervalL1Majorant
    harmonicAmbientLongInteriorL1Majorant
  apply mul_le_mul_of_nonneg_left
  · apply add_le_add
    · by_cases hN : harmonicShiftCount j t = 0
      · simp [hN]
      · simp only [hN, if_false]
        apply mul_le_mul_of_nonneg_right
        · exact harmonicShortIntervalL1_le_ambient htY
        · have hNpos : 0 < harmonicShiftCount j t := Nat.pos_of_ne_zero hN
          exact harmonicShiftReciprocal_terminalDifference_nonneg hNpos
    · apply Finset.sum_le_sum
      intro k _hk
      apply mul_le_mul_of_nonneg_right
      · exact harmonicShortIntervalL1_le_ambient htY
      · exact harmonicShiftReciprocal_secondDifference_nonneg j t k
  · norm_num

/-- The exact core L1 packet is bounded by a single common-ambient packet. -/
theorem coreLongShortIntervalL1Packet_le_ambient
    (j : ℕ) :
    coreLongShortIntervalL1Packet j ≤
      coreLongAmbientShortIntervalL1Packet j := by
  unfold coreLongShortIntervalL1Packet
    coreLongAmbientShortIntervalL1Packet
  apply Finset.sum_le_sum
  intro t ht
  exact coreLongDepthShortIntervalL1Majorant_le_ambient ht

/-- Source-facing ambient-block supplier. -/
def SubpolynomialCoreLongAmbientShortIntervalL1Packet : Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧
    ∀ j : ℕ,
      coreLongAmbientShortIntervalL1Packet j ≤
        C * (((2 ^ j : ℕ) : ℝ) ^ δ)

/-- The ambient-block supplier supplies the exact core L1 packet. -/
theorem subpolynomialCoreLongShortIntervalL1Packet_of_ambient
    (hAmbient : SubpolynomialCoreLongAmbientShortIntervalL1Packet) :
    SubpolynomialCoreLongShortIntervalL1Packet := by
  intro δ hδ
  obtain ⟨C, hC, hbound⟩ := hAmbient δ hδ
  refine ⟨C, hC, ?_⟩
  intro j
  exact le_trans (coreLongShortIntervalL1Packet_le_ambient j) (hbound j)

/-- Conditional endpoint from a common ambient-block short-interval supplier. -/
theorem riemannHypothesis_of_subpolynomialCoreLongAmbientShortIntervalL1Packet
    (hAmbient : SubpolynomialCoreLongAmbientShortIntervalL1Packet) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_subpolynomialCoreLongShortIntervalL1Packet
    (subpolynomialCoreLongShortIntervalL1Packet_of_ambient hAmbient)

/-- Scope of a theorem stated on an asymptotic start block rather than the
origin-anchored ambient block used above. -/
structure AsymptoticBlockShortIntervalScope where
  sourceStatement : Prop
  blockLower : ℕ → ℕ
  blockUpper : ℕ → ℕ
  firstMomentBound : Prop

/-- The remaining literature adapter must pay any translation/origin mismatch
between an asymptotic block and `[1,2^(j+1)+2)`. -/
structure AsymptoticBlockToAmbientL1Adapter
    (d : AsymptoticBlockShortIntervalScope) : Type where
  originBlockComparison : Prop
  preserveLengths : Prop
  toAmbient :
    d.sourceStatement →
      d.firstMomentBound →
      originBlockComparison →
      preserveLengths →
      SubpolynomialCoreLongAmbientShortIntervalL1Packet

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.harmonicStartWindow_subset_ambient
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.harmonicShortIntervalL1_le_ambient
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreLongShortIntervalL1Packet_le_ambient
