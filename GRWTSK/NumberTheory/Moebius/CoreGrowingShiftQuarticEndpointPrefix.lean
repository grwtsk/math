/-
Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI ChatGPT.
Imported sources retain their original credits/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #765. Parent: draft PR #761 at
`3d02ae82b871bc27d6afd60036686d0f30396de8`.
-/
import GRWTSK.NumberTheory.Moebius.CoreGrowingShiftQuarticExplicitMultiplicity

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- The new endpoint pair appended when a binary Möbius prefix grows from
length `b` to length `b+1`. -/
def mertensTwoPointQuarticEndpointPair
    (h b : ℕ) : ℝ :=
  moebiusReal (b + 1) * moebiusReal (b + 1 + h)

/-- Signed endpoint-prefix packet for one shift and one prefix length.  No
absolute value is inserted before the endpoint is paired with the preceding
binary Möbius prefix. -/
def mertensTwoPointQuarticEndpointPrefix
    (h N : ℕ) : ℝ :=
  ∑ b ∈ Finset.range N,
    mertensTwoPointPrefix h b *
      mertensTwoPointQuarticEndpointPair h b

/-- At one endpoint `b`, summing the quartic cell over all earlier base
indices factors exactly into the preceding binary Möbius prefix times the new
endpoint pair. -/
theorem sum_mertensTwoPointQuarticCell_eq_endpointPrefixCell
    (h b : ℕ) :
    (∑ a ∈ Finset.range b,
      mertensTwoPointQuarticCell h a b) =
      mertensTwoPointPrefix h b *
        mertensTwoPointQuarticEndpointPair h b := by
  unfold mertensTwoPointPrefix
    mertensTwoPointQuarticEndpointPair
    mertensTwoPointQuarticCell
  rw [Finset.sum_mul]
  apply Finset.sum_congr rfl
  intro a _ha
  ring

/-- The complete upper triangle is exactly the endpoint-prefix packet.  This
recombines the repeated-middle collision line and the collision-free affine
parallelograms before any analytic inequality is applied. -/
theorem mertensTwoPointQuarticUpperTriangle_eq_endpointPrefix
    (h N : ℕ) :
    mertensTwoPointQuarticUpperTriangle h N =
      mertensTwoPointQuarticEndpointPrefix h N := by
  unfold mertensTwoPointQuarticUpperTriangle
    mertensTwoPointQuarticEndpointPrefix
  apply Finset.sum_congr rfl
  intro b _hb
  exact sum_mertensTwoPointQuarticCell_eq_endpointPrefixCell h b

/-- The signed quartic off-diagonal is twice the endpoint-prefix packet. -/
theorem mertensTwoPointQuarticOffDiagonal_eq_two_mul_endpointPrefix
    (h N : ℕ) :
    mertensTwoPointQuarticOffDiagonal h N =
      2 * mertensTwoPointQuarticEndpointPrefix h N := by
  rw [mertensTwoPointQuarticOffDiagonal_eq_two_mul_upperTriangle,
    mertensTwoPointQuarticUpperTriangle_eq_endpointPrefix]

/-- Active endpoint-prefix energy over every genuine core depth and active
growing shift. -/
def coreGrowingShiftQuarticEndpointPrefixEnergy
    (j : ℕ) : ℝ :=
  ∑ t ∈ coreLongDeepDepths j,
    ∑ k ∈ Finset.range (harmonicShiftCount j t),
      mertensTwoPointQuarticEndpointPrefix
        (harmonicShiftLower j t + k) (t + 1)

/-- The active upper-triangle packet is exactly its endpoint-prefix
presentation. -/
theorem coreGrowingShiftQuarticUpperEnergy_eq_endpointPrefix
    (j : ℕ) :
    coreGrowingShiftQuarticUpperEnergy j =
      coreGrowingShiftQuarticEndpointPrefixEnergy j := by
  unfold coreGrowingShiftQuarticUpperEnergy
    coreGrowingShiftQuarticEndpointPrefixEnergy
  apply Finset.sum_congr rfl
  intro t _ht
  apply Finset.sum_congr rfl
  intro k _hk
  exact mertensTwoPointQuarticUpperTriangle_eq_endpointPrefix
    (harmonicShiftLower j t + k) (t + 1)

/-- Exact packet-level off-diagonal identity in endpoint-prefix coordinates. -/
theorem coreGrowingShiftQuarticOffDiagonalEnergy_eq_two_mul_endpointPrefix
    (j : ℕ) :
    coreGrowingShiftQuarticOffDiagonalEnergy j =
      2 * coreGrowingShiftQuarticEndpointPrefixEnergy j := by
  rw [coreGrowingShiftQuarticOffDiagonalEnergy_eq_two_mul_upper,
    coreGrowingShiftQuarticUpperEnergy_eq_endpointPrefix]

/-- The active binary-prefix square energy is diagonal plus twice the signed
endpoint-prefix packet. -/
theorem coreGrowingShiftBinaryPrefixSquareEnergy_eq_diagonal_add_endpointPrefix
    (j : ℕ) :
    coreGrowingShiftBinaryPrefixSquareEnergy j =
      coreGrowingShiftQuarticDiagonalEnergy j +
        2 * coreGrowingShiftQuarticEndpointPrefixEnergy j := by
  rw [coreGrowingShiftBinaryPrefixSquareEnergy_eq_diagonal_add_offDiagonal,
    coreGrowingShiftQuarticOffDiagonalEnergy_eq_two_mul_endpointPrefix]

/-- The repeated-middle collision packet and the exact explicit
interval-weighted collision-free box recombine to the single endpoint-prefix
packet.  The prior split is therefore sufficient but not intrinsic. -/
theorem coreGrowingShiftQuarticCollision_add_explicitIntervalBox_eq_endpointPrefix
    (j : ℕ) :
    coreGrowingShiftQuarticCollisionEnergy j +
        coreGrowingShiftQuarticExplicitIntervalWeightedBoxEnergy j =
      coreGrowingShiftQuarticEndpointPrefixEnergy j := by
  rw [← coreGrowingShiftQuarticMultiplicityWeightedBoxEnergy_eq_explicitInterval,
    ← coreGrowingShiftQuarticParallelogramEnergy_eq_multiplicityBox,
    ← coreGrowingShiftQuarticCollisionFreeEnergy_eq_parallelogram,
    ← coreGrowingShiftQuarticUpperEnergy_eq_collision_add_free,
    coreGrowingShiftQuarticUpperEnergy_eq_endpointPrefix]

/-- Canonical one-sided compensation statement on the signed endpoint-prefix
packet.  The positive quartic diagonal remains visible. -/
def SubpolynomialCoreGrowingShiftQuarticEndpointPrefixCompensation : Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧
    ∀ j : ℕ,
      2 * coreGrowingShiftQuarticEndpointPrefixEnergy j ≤
        (C * (((2 ^ j : ℕ) : ℝ)) *
          (((2 ^ j : ℕ) : ℝ) ^ δ)) ^ 2 -
            coreGrowingShiftQuarticDiagonalEnergy j

/-- Endpoint-prefix compensation is exactly the inherited off-diagonal
compensation source. -/
theorem subpolynomialCoreGrowingShiftQuarticEndpointPrefixCompensation_iff_offDiagonal :
    SubpolynomialCoreGrowingShiftQuarticEndpointPrefixCompensation ↔
      SubpolynomialCoreGrowingShiftQuarticOffDiagonalCompensation := by
  constructor
  · intro hEndpoint δ hδ
    obtain ⟨C, hC, hbound⟩ := hEndpoint δ hδ
    refine ⟨C, hC, ?_⟩
    intro j
    rw [coreGrowingShiftQuarticOffDiagonalEnergy_eq_two_mul_endpointPrefix]
    exact hbound j
  · intro hOff δ hδ
    obtain ⟨C, hC, hbound⟩ := hOff δ hδ
    refine ⟨C, hC, ?_⟩
    intro j
    rw [← coreGrowingShiftQuarticOffDiagonalEnergy_eq_two_mul_endpointPrefix]
    exact hbound j

/-- Exact equivalence with the averaged active binary-prefix square-energy
source. -/
theorem subpolynomialCoreGrowingShiftQuarticEndpointPrefixCompensation_iff_prefixSquareEnergy :
    SubpolynomialCoreGrowingShiftQuarticEndpointPrefixCompensation ↔
      SubpolynomialCoreGrowingShiftBinaryPrefixSquareEnergy :=
  subpolynomialCoreGrowingShiftQuarticEndpointPrefixCompensation_iff_offDiagonal.trans
    subpolynomialCoreGrowingShiftQuarticOffDiagonalCompensation_iff_prefixSquareEnergy

/-- Endpoint-prefix compensation supplies the signed growing-shift packet. -/
theorem subpolynomialCoreGrowingShiftFirstDifferencePacket_of_endpointPrefixCompensation
    (hEndpoint :
      SubpolynomialCoreGrowingShiftQuarticEndpointPrefixCompensation) :
    SubpolynomialCoreGrowingShiftFirstDifferencePacket :=
  subpolynomialCoreGrowingShiftFirstDifferencePacket_of_quarticCompensation
    (subpolynomialCoreGrowingShiftQuarticEndpointPrefixCompensation_iff_offDiagonal.mp
      hEndpoint)

/-- Conditional RH endpoint stated on the single signed endpoint-prefix
obstruction. -/
theorem riemannHypothesis_of_coreGrowingShiftQuarticEndpointPrefixCompensation
    (hEndpoint :
      SubpolynomialCoreGrowingShiftQuarticEndpointPrefixCompensation) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_coreGrowingShiftQuarticCompensation
    (subpolynomialCoreGrowingShiftQuarticEndpointPrefixCompensation_iff_offDiagonal.mp
      hEndpoint)

/-- Source profile for a theorem already stated on the exact signed
endpoint-prefix packet. -/
structure SignedEndpointPrefixMobiusSource where
  sourceStatement : Prop
  endpointPrefixIdentification : Prop
  activeGrowingShiftRangeControl : Prop
  signedEndpointControl : Prop
  depthShiftMultiplicityControl : Prop
  allScaleUniformity : Prop
  finiteSmallScaleControl : Prop

/-- Proof-producing adapter from a source stated directly on the endpoint
packet. -/
structure ToCoreGrowingShiftQuarticEndpointPrefixCompensation
    (d : SignedEndpointPrefixMobiusSource) : Type where
  toEndpoint :
    d.sourceStatement →
      d.endpointPrefixIdentification →
      d.activeGrowingShiftRangeControl →
      d.signedEndpointControl →
      d.depthShiftMultiplicityControl →
      d.allScaleUniformity →
      d.finiteSmallScaleControl →
      SubpolynomialCoreGrowingShiftQuarticEndpointPrefixCompensation

/-- Profile for a summation-by-parts, Carleson-energy, martingale, or related
source.  Sign preservation is a separate load-bearing obligation. -/
structure EndpointPrefixCarlesonSource where
  sourceStatement : Prop
  summationByPartsIdentity : Prop
  prefixEnergyControl : Prop
  endpointIncrementControl : Prop
  activeMultiplicityControl : Prop
  signPreservation : Prop
  allScaleUniformity : Prop
  finiteSmallScaleControl : Prop

structure ToCoreGrowingShiftQuarticEndpointPrefixCompensationFromCarleson
    (d : EndpointPrefixCarlesonSource) : Type where
  toEndpoint :
    d.sourceStatement →
      d.summationByPartsIdentity →
      d.prefixEnergyControl →
      d.endpointIncrementControl →
      d.activeMultiplicityControl →
      d.signPreservation →
      d.allScaleUniformity →
      d.finiteSmallScaleControl →
      SubpolynomialCoreGrowingShiftQuarticEndpointPrefixCompensation

/-- Finite hostile witness: endpoint-prefix terms may cancel exactly while the
corresponding termwise absolute mass is positive. -/
theorem endpointPrefixCancellation_hostileWitness :
    ((1 : ℝ) * 1 + (-1 : ℝ) * 1) = 0 ∧
      |(1 : ℝ) * 1| + |(-1 : ℝ) * 1| = 2 := by
  norm_num

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.mertensTwoPointQuarticUpperTriangle_eq_endpointPrefix
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreGrowingShiftQuarticOffDiagonalEnergy_eq_two_mul_endpointPrefix
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreGrowingShiftQuarticCollision_add_explicitIntervalBox_eq_endpointPrefix
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.subpolynomialCoreGrowingShiftQuarticEndpointPrefixCompensation_iff_prefixSquareEnergy
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.riemannHypothesis_of_coreGrowingShiftQuarticEndpointPrefixCompensation
