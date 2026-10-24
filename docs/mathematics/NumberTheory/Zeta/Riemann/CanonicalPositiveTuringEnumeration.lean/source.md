# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.CanonicalPositiveTuringEnumeration

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2b8ecdbeb2421fa84206d7e1676f1dc24a5b3369` · SHA-256 `2abd40724a0a902ee85ed720366cb052ece43931559354106345c52e7f8582cf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CanonicalPositiveTuringFullHead
import Mathlib.Data.Fintype.Card
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Exact finite enumeration from a zero-gap canonical Turing packet

The preceding source identifies the SET of aligned positive points with the complete
positive-height head at zero gap, and identifies the union with their conjugates with
the complete two-sign head. This module retains the record INDEX itself.

A zero-gap packet therefore supplies:

* an equivalence from the certified record index to the canonical positive-height head;
* an equivalence from two signed copies of the record index to the complete height head;
* exact cardinality identities for both heads;
* direct finite source sums indexed by the certified records, with their record
  multiplicities rewritten to the actual analytic multiplicities.

The signed copy is `Sum Index Index`: the left copy is positive height and the right
copy is its actual conjugate. This is not a numerical sorting of roots, and it does
not assign an order by imaginary part. The equivalences are noncomputable semantic
objects and use the inherited classical finite-set infrastructure.

No Turing argument, packet validation, producer replay, local isolation, infinite
zero sum, tail theorem, or RH conclusion is constructed here.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. Classical dependencies remain unaudited.
-/

namespace GRWTSK.RiemannHypothesis.CanonicalPositiveTuringEnumeration

open scoped BigOperators ComplexConjugate
open CanonicalZeroDivisor
open PositiveHeightCountDeficit
open PositiveHeightSymmetricCount
open CanonicalPositiveTuringBridge
open CanonicalPositiveTuringFullHead
open GRWTSK.Combinatorics.WeightedPairBudget
open GRWTSK.NumberTheory.Zeta.Riemann
open GRWTSK.NumberTheory.Zeta.Riemann.CertifiedZeroHeight

noncomputable section

variable {Index Source Jet Transport Residual : Type*} [Fintype Index]
variable {family : DisjointCertifiedFamily Index Source Jet Transport Residual}

/-- The aligned record index as an actual member of the canonical positive-height head. -/
noncomputable def positiveIndexMap
    (packet : CanonicalPositiveTuringPacket family) :
    Index → ↥(positiveHeightHead packet.certificate.height) :=
  fun i => ⟨packet.alignment.point i, packet.alignment.point_mem_head i⟩

/-- Full source identity makes the positive record map injective. -/
theorem positiveIndexMap_injective
    (packet : CanonicalPositiveTuringPacket family) :
    Function.Injective (positiveIndexMap packet) := by
  intro i j h
  apply packet.alignment.point_injective
  exact congrArg Subtype.val h

/-- Zero gap makes every canonical positive-height point represented by one record. -/
theorem positiveIndexMap_surjective_of_gap_eq_zero
    (packet : CanonicalPositiveTuringPacket family)
    (zeroGap : packet.certificate.gap = 0) :
    Function.Surjective (positiveIndexMap packet) := by
  classical
  intro z
  have hz : z.1 ∈ packet.alignment.knownPoints := by
    rw [packet.knownPoints_eq_positiveHeightHead_of_gap_eq_zero zeroGap]
    exact z.2
  rcases (packet.alignment.mem_knownPoints z.1).mp hz with ⟨i, hi⟩
  refine ⟨i, ?_⟩
  apply Subtype.ext
  exact hi

/-- A zero-gap packet enumerates the complete positive-height head exactly once. -/
noncomputable def positiveIndexEquiv
    (packet : CanonicalPositiveTuringPacket family)
    (zeroGap : packet.certificate.gap = 0) :
    Index ≃ ↥(positiveHeightHead packet.certificate.height) :=
  Equiv.ofBijective (positiveIndexMap packet)
    ⟨positiveIndexMap_injective packet,
      positiveIndexMap_surjective_of_gap_eq_zero packet zeroGap⟩

/-- The number of distinct positive-height zeros equals the number of aligned records.
This is a cardinality statement, not a multiplicity count. -/
theorem positiveHeightHead_card_eq_index_card
    (packet : CanonicalPositiveTuringPacket family)
    (zeroGap : packet.certificate.gap = 0) :
    (positiveHeightHead packet.certificate.height).card = Fintype.card Index := by
  simpa using (Fintype.card_congr (positiveIndexEquiv packet zeroGap)).symm

/-- Two signed record copies map to the complete canonical head.
The left copy is positive height; the right copy is its actual conjugate. -/
noncomputable def signedIndexMap
    (packet : CanonicalPositiveTuringPacket family) :
    Sum Index Index → ↥(heightHead packet.certificate.height)
  | Sum.inl i =>
      ⟨packet.alignment.point i,
        positiveHeightHead_subset_heightHead _ (packet.alignment.point_mem_head i)⟩
  | Sum.inr i =>
      ⟨conjugated (packet.alignment.point i), by
        have hneg := conjugated_mem_negativeHeightHead packet.certificate.height
          (packet.alignment.point i) (packet.alignment.point_mem_head i)
        exact (Finset.mem_filter.mp hneg).1⟩

/-- The two signed copies remain distinct by source identity and strict height sign. -/
theorem signedIndexMap_injective
    (packet : CanonicalPositiveTuringPacket family) :
    Function.Injective (signedIndexMap packet) := by
  classical
  intro a b h
  cases a with
  | inl i =>
      cases b with
      | inl j =>
          have hp : packet.alignment.point i = packet.alignment.point j := by
            simpa [signedIndexMap] using congrArg Subtype.val h
          exact congrArg (fun k : Index => (Sum.inl k : Sum Index Index))
            (packet.alignment.point_injective hp)
      | inr j =>
          exfalso
          have heq : packet.alignment.point i =
              conjugated (packet.alignment.point j) := by
            simpa [signedIndexMap] using congrArg Subtype.val h
          have hp := packet.alignment.point_mem_head i
          have hn := conjugated_mem_negativeHeightHead packet.certificate.height
            (packet.alignment.point j) (packet.alignment.point_mem_head j)
          rw [← heq] at hn
          exact (Finset.disjoint_left.mp
            (positive_negative_disjoint packet.certificate.height)) hp hn
  | inr i =>
      cases b with
      | inl j =>
          exfalso
          have heq : conjugated (packet.alignment.point i) =
              packet.alignment.point j := by
            simpa [signedIndexMap] using congrArg Subtype.val h
          have hn := conjugated_mem_negativeHeightHead packet.certificate.height
            (packet.alignment.point i) (packet.alignment.point_mem_head i)
          have hp := packet.alignment.point_mem_head j
          rw [heq] at hn
          exact (Finset.disjoint_left.mp
            (positive_negative_disjoint packet.certificate.height)) hp hn
      | inr j =>
          have hc : conjugated (packet.alignment.point i) =
              conjugated (packet.alignment.point j) := by
            simpa [signedIndexMap] using congrArg Subtype.val h
          have hp : packet.alignment.point i = packet.alignment.point j :=
            conjugated_injective hc
          exact congrArg (fun k : Index => (Sum.inr k : Sum Index Index))
            (packet.alignment.point_injective hp)

/-- Zero gap makes the signed record map surjective onto the complete two-sign head. -/
theorem signedIndexMap_surjective_of_gap_eq_zero
    (packet : CanonicalPositiveTuringPacket family)
    (zeroGap : packet.certificate.gap = 0) :
    Function.Surjective (signedIndexMap packet) := by
  classical
  intro z
  have hz : z.1 ∈ fullKnownPoints packet := by
    rw [packet.fullKnownPoints_eq_heightHead_of_gap_eq_zero zeroGap]
    exact z.2
  rcases Finset.mem_union.mp hz with hpos | hneg
  · rcases (packet.alignment.mem_knownPoints z.1).mp hpos with ⟨i, hi⟩
    refine ⟨Sum.inl i, ?_⟩
    apply Subtype.ext
    simpa [signedIndexMap] using hi
  · rcases Finset.mem_image.mp hneg with ⟨w, hw, hwz⟩
    rcases (packet.alignment.mem_knownPoints w).mp hw with ⟨i, hi⟩
    refine ⟨Sum.inr i, ?_⟩
    apply Subtype.ext
    calc
      (signedIndexMap packet (Sum.inr i)).1 =
          conjugated (packet.alignment.point i) := rfl
      _ = conjugated w := congrArg conjugated hi
      _ = z.1 := hwz

/-- A zero-gap packet enumerates the complete bounded divisor by two signed copies
of its positive record index. -/
noncomputable def signedIndexEquiv
    (packet : CanonicalPositiveTuringPacket family)
    (zeroGap : packet.certificate.gap = 0) :
    Sum Index Index ≃ ↥(heightHead packet.certificate.height) :=
  Equiv.ofBijective (signedIndexMap packet)
    ⟨signedIndexMap_injective packet,
      signedIndexMap_surjective_of_gap_eq_zero packet zeroGap⟩

/-- The number of distinct bounded zeros is twice the number of positive records.
Multiplicity is retained separately and need not be one. -/
theorem heightHead_card_eq_two_mul_index_card
    (packet : CanonicalPositiveTuringPacket family)
    (zeroGap : packet.certificate.gap = 0) :
    (heightHead packet.certificate.height).card = 2 * Fintype.card Index := by
  simpa [two_mul] using (Fintype.card_congr (signedIndexEquiv packet zeroGap)).symm

/-- Zero gap identifies the exact positive-height total with the sum of record weights. -/
theorem positiveHeightCount_eq_record_sum_of_gap_eq_zero
    (packet : CanonicalPositiveTuringPacket family)
    (zeroGap : packet.certificate.gap = 0) :
    positiveHeightCount packet.certificate.height =
      ∑ i : Index, (family.record i).multiplicity := by
  have complete := (TuringCountCertificate.gap_eq_zero_iff_complete
    packet.certificate).mp zeroGap
  have certifiedEq : family.certifiedCount = packet.certificate.totalCount := by
    simpa [TuringCountCertificate.Complete] using complete
  calc
    positiveHeightCount packet.certificate.height =
        packet.certificate.totalCount := packet.exact_count
    _ = family.certifiedCount := certifiedEq.symm
    _ = ∑ i : Index, (family.record i).multiplicity := rfl

/-- The complete finite divisor sum can be indexed directly by certified records.
Record multiplicity is rewritten to the same actual analytic multiplicity before use. -/
theorem full_weighted_sum_eq_records_of_gap_eq_zero
    (packet : CanonicalPositiveTuringPacket family)
    (zeroGap : packet.certificate.gap = 0)
    (F : ZeroPoint → ℂ) :
    (∑ z ∈ heightHead packet.certificate.height,
        (multiplicity z : ℂ) * F z) =
      ∑ i : Index, ((family.record i).multiplicity : ℂ) *
        (F (packet.alignment.point i) +
          F (conjugated (packet.alignment.point i))) := by
  classical
  rw [packet.full_weighted_sum_eq_paired_of_gap_eq_zero zeroGap F]
  unfold CanonicalFamilyAlignment.knownPoints
  rw [Finset.sum_map]
  apply Finset.sum_congr rfl
  intro i _
  rw [← packet.alignment.multiplicity_eq i]

/-- Unit record weights turn the complete bounded divisor into distinct simple zeros. -/
theorem all_simple_of_unit_records
    (packet : CanonicalPositiveTuringPacket family)
    (zeroGap : packet.certificate.gap = 0)
    (unit : ∀ i, (family.record i).multiplicity = 1) :
    ∀ z ∈ heightHead packet.certificate.height, multiplicity z = 1 := by
  intro z hz
  let zh : ↥(heightHead packet.certificate.height) := ⟨z, hz⟩
  obtain ⟨s, hs⟩ := (signedIndexEquiv packet zeroGap).surjective zh
  cases s with
  | inl i =>
      have hp : packet.alignment.point i = z :=
        congrArg Subtype.val hs
      have hm := packet.alignment.multiplicity_eq i
      rw [unit i, hp] at hm
      exact hm.symm
  | inr i =>
      have hp : conjugated (packet.alignment.point i) = z :=
        congrArg Subtype.val hs
      have hm := packet.alignment.multiplicity_eq i
      rw [unit i] at hm
      have hc : multiplicity (conjugated (packet.alignment.point i)) = 1 := by
        rw [multiplicity_conjugated, ← hm]
      simpa only [hp] using hc

/-- Under unit record weights, analytic multiplicity count equals distinct-point count. -/
theorem heightCount_eq_heightHead_card_of_unit_records
    (packet : CanonicalPositiveTuringPacket family)
    (zeroGap : packet.certificate.gap = 0)
    (unit : ∀ i, (family.record i).multiplicity = 1) :
    heightCount packet.certificate.height =
      (heightHead packet.certificate.height).card := by
  unfold heightCount
  calc
    (∑ z ∈ heightHead packet.certificate.height, multiplicity z) =
        ∑ _z ∈ heightHead packet.certificate.height, 1 := by
      apply Finset.sum_congr rfl
      intro z hz
      exact all_simple_of_unit_records packet zeroGap unit z hz
    _ = (heightHead packet.certificate.height).card := by simp

end

end GRWTSK.RiemannHypothesis.CanonicalPositiveTuringEnumeration
```
