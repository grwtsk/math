/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CanonicalPositiveTuringBridge
import GRWTSK.NumberTheory.Zeta.Riemann.PositiveHeightSymmetricCount
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Lift a canonical positive-height Turing packet to the complete two-sign head

The positive-height packet retains one representative from each positive-height
canonical zero. Conjugation supplies the negative-height representatives. The
sourced real-axis exclusion and analytic-order conjugation theorem make these two
strict-sign families disjoint, exhaustive, and multiplicity preserving.

For every aligned packet, the omitted multiplicity in the complete absolute-height
head is exactly TWICE the packet's positive-height gap. At gap zero the finite union
of the known positive points and their conjugates is the exact `heightHead`.
Consequently every finite multiplicity-weighted source sum can be rewritten as a
paired sum over the positive certified family.

This is a bounded source identity. It does not construct the Turing count, validate
producer records, prove local isolation, or supply an infinite divisor/tail theorem.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. Classical dependencies remain unaudited.
-/

namespace GRWTSK.RiemannHypothesis.CanonicalPositiveTuringFullHead

open scoped BigOperators ComplexConjugate
open CanonicalZeroDivisor
open PositiveHeightCountDeficit
open PositiveHeightSymmetricCount
open CanonicalPositiveTuringBridge
open GRWTSK.Combinatorics.WeightedPairBudget
open GRWTSK.Combinatorics.WeightedSubsetBudget
open GRWTSK.NumberTheory.Zeta.Riemann
open GRWTSK.NumberTheory.Zeta.Riemann.CertifiedZeroHeight

noncomputable section

variable {Index Source Jet Transport Residual : Type*} [Fintype Index]
variable {family : DisjointCertifiedFamily Index Source Jet Transport Residual}

/-- The bounded full inventory proposed by a positive-height packet.
The union is by full canonical point identity, not by interval or producer label. -/
noncomputable def fullKnownPoints
    (packet : CanonicalPositiveTuringPacket family) : Finset ZeroPoint :=
  packet.alignment.knownPoints ∪
    packet.alignment.knownPoints.image conjugated

/-- The known positive points and their conjugates lie in opposite strict-sign heads. -/
theorem known_conjugate_disjoint
    (packet : CanonicalPositiveTuringPacket family) :
    Disjoint packet.alignment.knownPoints
      (packet.alignment.knownPoints.image conjugated) := by
  classical
  apply Finset.disjoint_left.mpr
  intro z hz hcz
  have hp := packet.alignment.knownPoints_subset hz
  rcases Finset.mem_image.mp hcz with ⟨w, hw, rfl⟩
  have hn := conjugated_mem_negativeHeightHead packet.certificate.height w
    (packet.alignment.knownPoints_subset hw)
  exact (Finset.disjoint_left.mp
    (positive_negative_disjoint packet.certificate.height)) hp hn

/-- Every proposed full point belongs to the SAME complete canonical height head. -/
theorem fullKnownPoints_subset_heightHead
    (packet : CanonicalPositiveTuringPacket family) :
    fullKnownPoints packet ⊆ heightHead packet.certificate.height := by
  classical
  intro z hz
  rcases Finset.mem_union.mp hz with hp | hn
  · exact positiveHeightHead_subset_heightHead _
      (packet.alignment.knownPoints_subset hp)
  · rcases Finset.mem_image.mp hn with ⟨w, hw, rfl⟩
    have hneg := conjugated_mem_negativeHeightHead packet.certificate.height w
      (packet.alignment.knownPoints_subset hw)
    exact (Finset.mem_filter.mp hneg).1

/-- Conjugating the known positive family preserves its complete canonical mass. -/
theorem conjugate_known_mass_eq
    (packet : CanonicalPositiveTuringPacket family) :
    mass (packet.alignment.knownPoints.image conjugated) multiplicity =
      mass packet.alignment.knownPoints multiplicity := by
  classical
  unfold mass
  rw [Finset.sum_image conjugated_injective.injOn]
  exact Finset.sum_congr rfl (fun z _ => multiplicity_conjugated z)

/-- The proposed full inventory has exactly twice the certified positive-height mass. -/
theorem fullKnownPoints_mass_eq_twice_certifiedCount
    (packet : CanonicalPositiveTuringPacket family) :
    mass (fullKnownPoints packet) multiplicity =
      2 * family.certifiedCount := by
  calc
    mass (fullKnownPoints packet) multiplicity =
        mass packet.alignment.knownPoints multiplicity +
          mass (packet.alignment.knownPoints.image conjugated) multiplicity := by
      unfold fullKnownPoints mass
      rw [Finset.sum_union (known_conjugate_disjoint packet)]
    _ = mass packet.alignment.knownPoints multiplicity +
          mass packet.alignment.knownPoints multiplicity := by
      rw [conjugate_known_mass_eq packet]
    _ = 2 * family.certifiedCount := by
      rw [packet.known_mass_eq_certifiedCount]
      omega

/-- Exact total-count alignment plus source symmetry doubles the packet total. -/
theorem heightCount_eq_twice_totalCount
    (packet : CanonicalPositiveTuringPacket family) :
    heightCount packet.certificate.height =
      2 * packet.certificate.totalCount := by
  calc
    heightCount packet.certificate.height =
        2 * positiveHeightCount packet.certificate.height :=
      heightCount_eq_two_mul_positiveHeightCount _
    _ = 2 * packet.certificate.totalCount := by
      rw [packet.exact_count]

/-- The full two-sign omitted mass is exactly twice the positive-height gap.
No subtraction is interpreted before the canonical subset proof is supplied. -/
theorem full_missing_mass_eq_twice_gap
    (packet : CanonicalPositiveTuringPacket family) :
    mass (heightHead packet.certificate.height \ fullKnownPoints packet) multiplicity =
      2 * packet.certificate.gap := by
  have partition := remaining_add_known
    (heightHead packet.certificate.height) (fullKnownPoints packet) multiplicity
    packet.fullKnownPoints_subset_heightHead
  have knownMass := packet.fullKnownPoints_mass_eq_twice_certifiedCount
  have totalMass :
      mass (heightHead packet.certificate.height) multiplicity =
        2 * packet.certificate.totalCount := by
    calc
      mass (heightHead packet.certificate.height) multiplicity =
          heightCount packet.certificate.height := rfl
      _ = 2 * packet.certificate.totalCount :=
        packet.heightCount_eq_twice_totalCount
  have certifiedLe := packet.certificate.certified_le_total
  unfold TuringCountCertificate.gap
  rw [knownMass, totalMass] at partition
  omega

/-- Zero positive-height gap gives the exact complete absolute-height inventory. -/
theorem fullKnownPoints_eq_heightHead_of_gap_eq_zero
    (packet : CanonicalPositiveTuringPacket family)
    (zeroGap : packet.certificate.gap = 0) :
    fullKnownPoints packet = heightHead packet.certificate.height := by
  have hpos := packet.knownPoints_eq_positiveHeightHead_of_gap_eq_zero zeroGap
  unfold fullKnownPoints
  rw [hpos, image_positiveHeightHead_eq_negativeHeightHead,
    positive_union_negative_eq_heightHead]

/-- Conversely, exact full-head coverage forces the arithmetic gap to vanish. -/
theorem gap_eq_zero_of_fullKnownPoints_eq_heightHead
    (packet : CanonicalPositiveTuringPacket family)
    (complete : fullKnownPoints packet = heightHead packet.certificate.height) :
    packet.certificate.gap = 0 := by
  have massEq := congrArg (fun S : Finset ZeroPoint => mass S multiplicity) complete
  have knownMass := packet.fullKnownPoints_mass_eq_twice_certifiedCount
  have totalMass :
      mass (heightHead packet.certificate.height) multiplicity =
        2 * packet.certificate.totalCount := by
    calc
      mass (heightHead packet.certificate.height) multiplicity =
          heightCount packet.certificate.height := rfl
      _ = 2 * packet.certificate.totalCount :=
        packet.heightCount_eq_twice_totalCount
  have certifiedLe := packet.certificate.certified_le_total
  unfold TuringCountCertificate.gap
  rw [knownMass, totalMass] at massEq
  omega

/-- Full bounded inventory equality is equivalent to zero canonical Turing gap. -/
theorem gap_eq_zero_iff_fullKnownPoints_eq_heightHead
    (packet : CanonicalPositiveTuringPacket family) :
    packet.certificate.gap = 0 ↔
      fullKnownPoints packet = heightHead packet.certificate.height := by
  constructor
  · exact packet.fullKnownPoints_eq_heightHead_of_gap_eq_zero
  · exact packet.gap_eq_zero_of_fullKnownPoints_eq_heightHead

/-- At zero gap, the complete both-sign count is twice the certified positive count. -/
theorem heightCount_eq_twice_certifiedCount_of_gap_eq_zero
    (packet : CanonicalPositiveTuringPacket family)
    (zeroGap : packet.certificate.gap = 0) :
    heightCount packet.certificate.height =
      2 * family.certifiedCount := by
  have complete := (TuringCountCertificate.gap_eq_zero_iff_complete
    packet.certificate).mp zeroGap
  have certifiedEq : family.certifiedCount = packet.certificate.totalCount := by
    simpa [TuringCountCertificate.Complete] using complete
  rw [packet.heightCount_eq_twice_totalCount, ← certifiedEq]

/-- Every finite multiplicity-weighted source expression can be evaluated from the
positive certified family plus its actual conjugates. No tail or infinite sum is implied. -/
theorem full_weighted_sum_eq_paired_of_gap_eq_zero
    (packet : CanonicalPositiveTuringPacket family)
    (zeroGap : packet.certificate.gap = 0)
    (F : ZeroPoint → ℂ) :
    (∑ z ∈ heightHead packet.certificate.height,
        (multiplicity z : ℂ) * F z) =
      ∑ z ∈ packet.alignment.knownPoints,
        (multiplicity z : ℂ) * (F z + F (conjugated z)) := by
  classical
  let known := packet.alignment.knownPoints
  have hfull : known ∪ known.image conjugated =
      heightHead packet.certificate.height := by
    simpa only [fullKnownPoints, known] using
      packet.fullKnownPoints_eq_heightHead_of_gap_eq_zero zeroGap
  have hdisj : Disjoint known (known.image conjugated) := by
    simpa only [known] using packet.known_conjugate_disjoint
  have himage :
      (∑ z ∈ known.image conjugated, (multiplicity z : ℂ) * F z) =
        ∑ z ∈ known, (multiplicity z : ℂ) * F (conjugated z) := by
    rw [Finset.sum_image conjugated_injective.injOn]
    exact Finset.sum_congr rfl (fun z _ => by rw [multiplicity_conjugated])
  rw [← hfull, Finset.sum_union hdisj, himage,
    ← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro z _
  ring

/-- A one-unit positive gap becomes two omitted units in the full head, while the
positive inventory remains incomplete. This is arithmetic control, not a zeta example. -/
theorem one_unit_gap_full_mass_fixture
    (packet : CanonicalPositiveTuringPacket family)
    (oneGap : packet.certificate.gap = 1) :
    mass (heightHead packet.certificate.height \ fullKnownPoints packet) multiplicity = 2 := by
  rw [packet.full_missing_mass_eq_twice_gap, oneGap]
  norm_num

end

end GRWTSK.RiemannHypothesis.CanonicalPositiveTuringFullHead
