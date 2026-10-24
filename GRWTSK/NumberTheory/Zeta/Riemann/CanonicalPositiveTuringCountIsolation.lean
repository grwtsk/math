/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.RationalPositiveHeightCountIsolation
import GRWTSK.NumberTheory.Zeta.Riemann.CanonicalPositiveTuringBridge
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Construct canonical Turing packets from an isolated rational count enclosure

`RationalPositiveHeightCountIsolation` converts a source-correct rational enclosure
into an exact canonical positive-height count only after a strict one-integer check.
`CanonicalPositiveTuringBridge` consumes such an exact count but its underlying
abstract certificate also asks for `certifiedCount ≤ totalCount`.

For a canonically aligned family, that inequality is not another external input:
the aligned point set is already a subset of the complete positive-height head, and
its record multiplicities are the actual analytic multiplicities. This module
derives the inequality and constructs the complete canonical packet automatically.

Consequences are separated carefully:

* an isolated total below `certifiedCount + 2` gives bounded line geometry;
* equality with the certified count gives exact bounded inventory completeness;
* an isolated total below the certified count is impossible in the typed route.

The analytic count enclosure, interval root certificates, and source alignment are
still premises. No argument-principle estimate, numerical zero record, passing
packet, RH result, or global completeness theorem is constructed.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.RiemannHypothesis.CanonicalPositiveTuringCountIsolation

open scoped BigOperators
open GRWTSK.CombinatoricsAndDiscreteMathematics.WeightedPairBudget
open GRWTSK.NumberTheory.Zeta.Riemann
open GRWTSK.NumberTheory.Zeta.Riemann.CertifiedZeroHeight
open PositiveHeightCountDeficit
open RationalPositiveHeightCountIsolation
open CanonicalPositiveTuringBridge

noncomputable section

variable {Index Source Jet Transport Residual : Type*} [Fintype Index]
variable {family : DisjointCertifiedFamily Index Source Jet Transport Residual}

/-- Canonical source alignment already proves that the certified multiplicity sum
cannot exceed the complete canonical positive-height count. -/
theorem certifiedCount_le_positiveHeightCount {T : ℝ}
    (alignment : CanonicalFamilyAlignment family T) :
    family.certifiedCount ≤ positiveHeightCount T := by
  rw [← alignment.knownPoints_mass_eq_certifiedCount]
  unfold positiveHeightCount mass
  exact Finset.sum_le_sum_of_subset_of_nonneg
    alignment.knownPoints_subset (fun z _ _ => Nat.zero_le (multiplicity z))

/-- Build the canonical packet from a semantic count enclosure and a successful
strict rational isolation check. No caller-supplied count-consistency inequality
remains. -/
noncomputable def packetOfIsolatedCount {T : ℝ}
    (alignment : CanonicalFamilyAlignment family T)
    (enclosure : CanonicalCountEnclosure T)
    (count : ℕ)
    (accepted : enclosure.accepts count = true) :
    CanonicalPositiveTuringPacket family where
  certificate :=
    { height := T
      totalCount := count
      exact_total := by
        change positiveHeightCount T = count
        exact enclosure.exact_count_of_accepts count accepted
      certified_le_total := by
        rw [← enclosure.exact_count_of_accepts count accepted]
        exact certifiedCount_le_positiveHeightCount alignment }
  alignment := alignment

@[simp] theorem packet_height {T : ℝ}
    (alignment : CanonicalFamilyAlignment family T)
    (enclosure : CanonicalCountEnclosure T)
    (count : ℕ) (accepted : enclosure.accepts count = true) :
    (packetOfIsolatedCount alignment enclosure count accepted).certificate.height = T :=
  rfl

@[simp] theorem packet_totalCount {T : ℝ}
    (alignment : CanonicalFamilyAlignment family T)
    (enclosure : CanonicalCountEnclosure T)
    (count : ℕ) (accepted : enclosure.accepts count = true) :
    (packetOfIsolatedCount alignment enclosure count accepted).certificate.totalCount = count :=
  rfl

/-- The constructed packet's gap is the literal isolated total minus the certified
multiplicity sum. The subtraction is now protected by the derived subset inequality. -/
theorem packet_gap_eq {T : ℝ}
    (alignment : CanonicalFamilyAlignment family T)
    (enclosure : CanonicalCountEnclosure T)
    (count : ℕ) (accepted : enclosure.accepts count = true) :
    (packetOfIsolatedCount alignment enclosure count accepted).certificate.gap =
      count - family.certifiedCount := by
  rfl

/-- A source-aligned family cannot contain more certified multiplicity than the
isolated canonical total. Such data are rejected rather than interpreted as
"extra zeros". -/
theorem isolated_total_not_lt_certifiedCount {T : ℝ}
    (alignment : CanonicalFamilyAlignment family T)
    (enclosure : CanonicalCountEnclosure T)
    (count : ℕ) (accepted : enclosure.accepts count = true) :
    ¬ count < family.certifiedCount := by
  intro excessive
  have hsubset := certifiedCount_le_positiveHeightCount alignment
  have hexact := enclosure.exact_count_of_accepts count accepted
  rw [hexact] at hsubset
  omega

/-- The reflected-pair threshold can be checked directly against the isolated
integer count. -/
theorem packet_gap_lt_two_of_total_lt_certified_add_two {T : ℝ}
    (alignment : CanonicalFamilyAlignment family T)
    (enclosure : CanonicalCountEnclosure T)
    (count : ℕ) (accepted : enclosure.accepts count = true)
    (strict : count < family.certifiedCount + 2) :
    (packetOfIsolatedCount alignment enclosure count accepted).certificate.gap < 2 := by
  rw [packet_gap_eq alignment enclosure count accepted]
  have hle := certifiedCount_le_positiveHeightCount alignment
  rw [enclosure.exact_count_of_accepts count accepted] at hle
  omega

/-- A rationally isolated count with fewer than two uncredited units classifies
every positive-height canonical zero through the same cutoff as on line. -/
theorem all_positive_on_line_of_isolated_count_margin {T : ℝ}
    (alignment : CanonicalFamilyAlignment family T)
    (enclosure : CanonicalCountEnclosure T)
    (count : ℕ) (accepted : enclosure.accepts count = true)
    (strict : count < family.certifiedCount + 2) :
    ∀ z ∈ positiveHeightHead T, z.1.re = 1 / 2 := by
  let packet := packetOfIsolatedCount alignment enclosure count accepted
  have small : packet.certificate.gap < 2 := by
    simpa [packet] using
      packet_gap_lt_two_of_total_lt_certified_add_two
        alignment enclosure count accepted strict
  simpa [packet] using
    CanonicalPositiveTuringPacket.all_positive_on_line_of_gap_lt_two packet small

/-- Natural-height specialization of the isolated-count reflected-pair result. -/
theorem rhThrough_of_isolated_count_margin
    (N : ℕ)
    (alignment : CanonicalFamilyAlignment family (N : ℝ))
    (enclosure : CanonicalCountEnclosure (N : ℝ))
    (count : ℕ) (accepted : enclosure.accepts count = true)
    (strict : count < family.certifiedCount + 2) : RHThrough N := by
  let packet := packetOfIsolatedCount alignment enclosure count accepted
  have small : packet.certificate.gap < 2 := by
    simpa [packet] using
      packet_gap_lt_two_of_total_lt_certified_add_two
        alignment enclosure count accepted strict
  exact CanonicalPositiveTuringPacket.rhThrough_of_gap_lt_two
    packet N rfl small

/-- Equality between the isolated total and certified mass yields zero gap. -/
theorem packet_gap_eq_zero_of_certifiedCount_eq {T : ℝ}
    (alignment : CanonicalFamilyAlignment family T)
    (enclosure : CanonicalCountEnclosure T)
    (count : ℕ) (accepted : enclosure.accepts count = true)
    (complete : family.certifiedCount = count) :
    (packetOfIsolatedCount alignment enclosure count accepted).certificate.gap = 0 := by
  rw [packet_gap_eq alignment enclosure count accepted, complete, Nat.sub_self]

/-- Equality of the source-aligned certified mass with the isolated count proves
exact bounded positive-height inventory coverage. -/
theorem knownPoints_eq_positiveHeightHead_of_isolated_count_eq {T : ℝ}
    (alignment : CanonicalFamilyAlignment family T)
    (enclosure : CanonicalCountEnclosure T)
    (count : ℕ) (accepted : enclosure.accepts count = true)
    (complete : family.certifiedCount = count) :
    alignment.knownPoints = positiveHeightHead T := by
  let packet := packetOfIsolatedCount alignment enclosure count accepted
  have zeroGap : packet.certificate.gap = 0 := by
    simpa [packet] using
      packet_gap_eq_zero_of_certifiedCount_eq
        alignment enclosure count accepted complete
  simpa [packet] using
    CanonicalPositiveTuringPacket.knownPoints_eq_positiveHeightHead_of_gap_eq_zero
      packet zeroGap

/-- A one-unit deficit may establish bounded line geometry without inventory
completeness. This arithmetic control must not be promoted to exhaustion. -/
theorem one_unit_deficit_location_not_completeness_fixture :
    (13 : ℕ) ≤ 14 ∧ 14 < 13 + 2 ∧ 13 ≠ 14 := by
  norm_num

end

end GRWTSK.RiemannHypothesis.CanonicalPositiveTuringCountIsolation
