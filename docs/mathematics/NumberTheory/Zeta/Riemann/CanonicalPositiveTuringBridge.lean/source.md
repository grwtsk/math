# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.CanonicalPositiveTuringBridge

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `011c4e2da11499c71c29f1b16cde02408e605360` · SHA-256 `d16dafe093e7f13bb2633fcbdb501959fec9e0bb512a5af25211b9c91ffd213a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.PositiveHeightSymmetricCount
import GRWTSK.NumberTheory.Zeta.Riemann.CertifiedZeroHeight
import GRWTSK.Combinatorics.WeightedSubsetBudget

set_option autoImplicit false

/-!
# Bind an exact Turing count certificate to the canonical positive-height divisor

`CertifiedZeroHeight.TuringCountCertificate` deliberately leaves its total-count
predicate and record semantics abstract. This module supplies the missing typed
adapter to the maintained zeta source.

A canonical alignment identifies every certified record with one distinct actual
`ZeroPoint`, proves positive-height membership at the same cutoff, preserves the
record's multiplicity as the actual analytic multiplicity, retains exact line
geometry, and places the point's height inside the record interval. The total-count
predicate is fixed to equality with `positiveHeightCount`; an arbitrary external
natural number cannot enter through this route.

Under these premises the certificate gap is exactly the canonical multiplicity of
the omitted positive-height points. Gap below two excludes an off-line reflection
pair and yields bounded RH. Gap zero is stronger: positivity of every canonical
multiplicity proves exact bounded inventory equality.

This does not construct a Turing argument, validate numerical records, prove interval
isolation, or provide a passing certificate. SOURCE_ONLY / NOT_RUN /
NOT_KERNEL_AUDITED. Imported classical dependencies remain unaudited.
-/

namespace GRWTSK.RiemannHypothesis.CanonicalPositiveTuringBridge

open Set
open scoped BigOperators
open CanonicalZeroDivisor
open PositiveHeightCountDeficit
open GRWTSK.Combinatorics.WeightedPairBudget
open GRWTSK.Combinatorics.WeightedSubsetBudget
open GRWTSK.NumberTheory.Zeta.Riemann
open GRWTSK.NumberTheory.Zeta.Riemann.CertifiedZeroHeight

noncomputable section

variable {Index Source Jet Transport Residual : Type*} [Fintype Index]

/-- The only accepted exact-total predicate for this adapter. -/
def PositiveHeightExactTotal (T : ℝ) (count : ℕ) : Prop :=
  positiveHeightCount T = count

/-- Source alignment for a disjoint certified family.

The interval condition does not by itself identify a zero; the full canonical point
and injectivity fields do that work. Conversely, a point list without interval and
multiplicity alignment is not a certificate-family adapter. -/
structure CanonicalFamilyAlignment
    (family : DisjointCertifiedFamily Index Source Jet Transport Residual)
    (T : ℝ) where
  point : Index → ZeroPoint
  point_injective : Function.Injective point
  point_mem_head : ∀ i, point i ∈ positiveHeightHead T
  point_on_line : ∀ i, (point i).1.re = 1 / 2
  multiplicity_eq : ∀ i, (family.record i).multiplicity = multiplicity (point i)
  height_mem_interval : ∀ i,
    (point i).1.im ∈ (family.record i).interval.carrier

namespace CanonicalFamilyAlignment

variable {family : DisjointCertifiedFamily Index Source Jet Transport Residual}
    {T : ℝ}

/-- Deduplicate by full canonical zero identity, not interval label or producer key. -/
noncomputable def knownPoints
    (alignment : CanonicalFamilyAlignment family T) : Finset ZeroPoint := by
  classical
  exact Finset.univ.map ⟨alignment.point, alignment.point_injective⟩

@[simp] theorem mem_knownPoints
    (alignment : CanonicalFamilyAlignment family T) (z : ZeroPoint) :
    z ∈ alignment.knownPoints ↔ ∃ i, alignment.point i = z := by
  classical
  simp [knownPoints]

/-- Every aligned point lies in the same complete positive-height source head. -/
theorem knownPoints_subset
    (alignment : CanonicalFamilyAlignment family T) :
    alignment.knownPoints ⊆ positiveHeightHead T := by
  classical
  intro z hz
  rcases (mem_knownPoints alignment z).mp hz with ⟨i, rfl⟩
  exact alignment.point_mem_head i

/-- The certified family contributes only independently proved on-line points. -/
theorem knownPoints_on_line
    (alignment : CanonicalFamilyAlignment family T) :
    ∀ z ∈ alignment.knownPoints, z.1.re = 1 / 2 := by
  classical
  intro z hz
  rcases (mem_knownPoints alignment z).mp hz with ⟨i, rfl⟩
  exact alignment.point_on_line i

/-- Canonical positivity transfers to every aligned producer record. -/
theorem record_multiplicity_pos
    (alignment : CanonicalFamilyAlignment family T) (i : Index) :
    0 < (family.record i).multiplicity := by
  rw [alignment.multiplicity_eq i]
  exact multiplicity_pos (alignment.point i)

/-- The record sum is exactly the canonical mass of the deduplicated point set. -/
theorem knownPoints_mass_eq_certifiedCount
    (alignment : CanonicalFamilyAlignment family T) :
    mass alignment.knownPoints multiplicity = family.certifiedCount := by
  classical
  unfold knownPoints mass DisjointCertifiedFamily.certifiedCount
  rw [Finset.sum_map]
  exact Finset.sum_congr rfl
    (fun i _ => (alignment.multiplicity_eq i).symm)

end CanonicalFamilyAlignment

/-- An exact count certificate together with all source-identity obligations. -/
structure CanonicalPositiveTuringPacket
    (family : DisjointCertifiedFamily Index Source Jet Transport Residual) where
  certificate : TuringCountCertificate family PositiveHeightExactTotal
  alignment : CanonicalFamilyAlignment family certificate.height

namespace CanonicalPositiveTuringPacket

variable {family : DisjointCertifiedFamily Index Source Jet Transport Residual}

/-- The packet's total is definitionally tied to the canonical positive-height count. -/
theorem exact_count
    (packet : CanonicalPositiveTuringPacket family) :
    positiveHeightCount packet.certificate.height =
      packet.certificate.totalCount := by
  simpa [PositiveHeightExactTotal] using packet.certificate.exact_total

/-- The certified abstract sum is the mass of the same canonical known set. -/
theorem known_mass_eq_certifiedCount
    (packet : CanonicalPositiveTuringPacket family) :
    mass packet.alignment.knownPoints multiplicity = family.certifiedCount :=
  packet.alignment.knownPoints_mass_eq_certifiedCount

/-- The natural gap is exactly the omitted canonical multiplicity mass. -/
theorem gap_eq_missing_mass
    (packet : CanonicalPositiveTuringPacket family) :
    packet.certificate.gap =
      mass (positiveHeightHead packet.certificate.height \
        packet.alignment.knownPoints) multiplicity := by
  unfold TuringCountCertificate.gap
  rw [← packet.exact_count, ← packet.known_mass_eq_certifiedCount]
  unfold positiveHeightCount
  exact (remaining_eq_sub
    (positiveHeightHead packet.certificate.height)
    packet.alignment.knownPoints multiplicity
    packet.alignment.knownPoints_subset).symm

/-- A gap below two is exactly the strict count margin used by the reflected-pair test. -/
theorem total_lt_certified_add_two
    (packet : CanonicalPositiveTuringPacket family)
    (small : packet.certificate.gap < 2) :
    packet.certificate.totalCount < family.certifiedCount + 2 := by
  have certifiedLe := packet.certificate.certified_le_total
  unfold TuringCountCertificate.gap at small
  omega

/-- Gap below two classifies every positive-height source point as on line.
It does not assert that the known inventory is complete. -/
theorem all_positive_on_line_of_gap_lt_two
    (packet : CanonicalPositiveTuringPacket family)
    (small : packet.certificate.gap < 2) :
    ∀ z ∈ positiveHeightHead packet.certificate.height,
      z.1.re = 1 / 2 := by
  apply all_on_line_of_positive_credit packet.certificate.height
    packet.alignment.knownPoints family.certifiedCount
    packet.certificate.totalCount
  · exact packet.alignment.knownPoints_subset
  · exact packet.alignment.knownPoints_on_line
  · exact le_of_eq packet.known_mass_eq_certifiedCount.symm
  · exact le_of_eq packet.exact_count
  · exact packet.total_lt_certified_add_two small

/-- At a natural cutoff, a passing exact Turing packet yields the repository's
absolute-height bounded RH conclusion. -/
theorem rhThrough_of_gap_lt_two
    (packet : CanonicalPositiveTuringPacket family)
    (N : ℕ) (height_eq : packet.certificate.height = (N : ℝ))
    (small : packet.certificate.gap < 2) : RHThrough N := by
  apply rhThrough_of_positive_credit N packet.alignment.knownPoints
    family.certifiedCount packet.certificate.totalCount
  · simpa only [height_eq] using packet.alignment.knownPoints_subset
  · exact packet.alignment.knownPoints_on_line
  · exact le_of_eq packet.known_mass_eq_certifiedCount.symm
  · have exactCount := packet.exact_count
    rw [height_eq] at exactCount
    exact le_of_eq exactCount
  · exact packet.total_lt_certified_add_two small

/-- Exact count equality plus positive canonical weights proves bounded completeness. -/
theorem knownPoints_eq_positiveHeightHead_of_complete
    (packet : CanonicalPositiveTuringPacket family)
    (complete : packet.certificate.Complete) :
    packet.alignment.knownPoints =
      positiveHeightHead packet.certificate.height := by
  have hcomplete : family.certifiedCount = packet.certificate.totalCount := by
    simpa [TuringCountCertificate.Complete] using complete
  apply eq_of_mass_eq
    (positiveHeightHead packet.certificate.height)
    packet.alignment.knownPoints multiplicity
    packet.alignment.knownPoints_subset
  · intro z _
    exact multiplicity_pos z
  · calc
      mass packet.alignment.knownPoints multiplicity =
          family.certifiedCount := packet.known_mass_eq_certifiedCount
      _ = packet.certificate.totalCount := hcomplete
      _ = positiveHeightCount packet.certificate.height := packet.exact_count.symm
      _ = mass (positiveHeightHead packet.certificate.height) multiplicity := rfl

/-- The zero-gap formulation of exact bounded inventory completeness. -/
theorem knownPoints_eq_positiveHeightHead_of_gap_eq_zero
    (packet : CanonicalPositiveTuringPacket family)
    (zeroGap : packet.certificate.gap = 0) :
    packet.alignment.knownPoints =
      positiveHeightHead packet.certificate.height := by
  apply packet.knownPoints_eq_positiveHeightHead_of_complete
  exact (TuringCountCertificate.gap_eq_zero_iff_complete
    packet.certificate).mp zeroGap

/-- A one-unit gap can pass the location test while the inventory remains incomplete. -/
theorem one_unit_gap_not_complete_fixture :
    (1 : ℕ) ≤ 2 ∧ 2 - 1 < 2 ∧ (1 : ℕ) ≠ 2 := by
  norm_num

end CanonicalPositiveTuringPacket

end

end GRWTSK.RiemannHypothesis.CanonicalPositiveTuringBridge
```
