/- Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Authors: grwtsk contributors. -/
import GRWTSK.MathematicalLogicAndFoundations.GeneralLogic.SnapshotObservation

/-!
# Unique amalgamation of compatible local snapshot observations

Local records are functions on the existing finite read-set subtypes. A family
of read sets covers the artifact type only when an actual containing patch is
available for every artifact. Local readouts are compatible only when their
values agree at every shared artifact. Neither premise is inferred from a
label, a narrative, or the existence of the individual local records.

The primary argument chooses one containing patch per artifact and takes its
value. Compatibility makes the value independent of the chosen patch. Coverage
then makes any two matching global snapshots equal. Conversely, restrictions of
a global snapshot agree on overlaps. This proves the exact existence-and-
uniqueness criterion, not just one direction of a construction.

The consumer `amalgamation_accepts_certificate` checks every declared read of
an existing revision certificate against a local readout, derives freshness of
the amalgamated snapshot, and reuses the certificate's semantic locality.
Original proof objects and historical source snapshots are not rewritten.

An incompatible overlap obstructs any global snapshot. An uncovered coordinate
permits distinct global extensions, as the Boolean counterexample demonstrates.
These are mathematical compatibility and coverage statements, not an assertion
that external records are truthful, complete, or independently authenticated.
Dependencies inspected at 7d33cee521e3f1c27ffce510a6894bf15b42c89b.
No prior-art novelty or independent-review claim is made.
-/

namespace GRWTSK.Logic.Snapshot

open GRWTSK.ProofHorizon.CorkscrewChamberCap

universe u v w

variable {Index : Type u} {Artifact : Type v} {Revision : Type w}

/-- Every artifact belongs to an identified local read set. -/
def Covers (reads : Index → Finset Artifact) : Prop :=
  ∀ a, ∃ i, a ∈ reads i

/-- Values, not just read-set names, agree at every overlap. -/
def CompatibleReadouts (reads : Index → Finset Artifact)
    (values : ∀ i, {a : Artifact // a ∈ reads i} → Revision) : Prop :=
  ∀ i j a (hi : a ∈ reads i) (hj : a ∈ reads j),
    values i ⟨a, hi⟩ = values j ⟨a, hj⟩

/-- No default revision is needed: coverage supplies a containing patch. -/
noncomputable def amalgamate (reads : Index → Finset Artifact)
    (values : ∀ i, {a : Artifact // a ∈ reads i} → Revision)
    (cover : Covers reads) : SourceSnapshot Artifact Revision :=
  fun a => values (Classical.choose (cover a)) ⟨a, Classical.choose_spec (cover a)⟩

/-- Compatibility is exactly what allows a different containing patch to be used. -/
theorem amalgamate_apply (reads : Index → Finset Artifact)
    (values : ∀ i, {a : Artifact // a ∈ reads i} → Revision)
    (cover : Covers reads) (compatible : CompatibleReadouts reads values)
    (i : Index) (a : Artifact) (ha : a ∈ reads i) :
    amalgamate reads values cover a = values i ⟨a, ha⟩ :=
  compatible (Classical.choose (cover a)) i a (Classical.choose_spec (cover a)) ha

theorem restrict_amalgamate (reads : Index → Finset Artifact)
    (values : ∀ i, {a : Artifact // a ∈ reads i} → Revision)
    (cover : Covers reads) (compatible : CompatibleReadouts reads values) (i : Index) :
    restrict (reads i) (amalgamate reads values cover) = values i := by
  funext a
  exact amalgamate_apply reads values cover compatible i a.val a.property

/-- Matching restrictions are unique under coverage, even without compatibility as a premise. -/
theorem matching_snapshots_unique (reads : Index → Finset Artifact)
    (values : ∀ i, {a : Artifact // a ∈ reads i} → Revision)
    (cover : Covers reads) {left right : SourceSnapshot Artifact Revision}
    (leftMatches : ∀ i, restrict (reads i) left = values i)
    (rightMatches : ∀ i, restrict (reads i) right = values i) : left = right := by
  funext a
  obtain ⟨i, ha⟩ := cover a
  exact (congrFun (leftMatches i) ⟨a, ha⟩).trans
    (congrFun (rightMatches i) ⟨a, ha⟩).symm

/-- A matching global snapshot forces agreement at every overlapping coordinate. -/
theorem compatible_of_matching_snapshot (reads : Index → Finset Artifact)
    (values : ∀ i, {a : Artifact // a ∈ reads i} → Revision)
    (snapshot : SourceSnapshot Artifact Revision)
    (matches : ∀ i, restrict (reads i) snapshot = values i) :
    CompatibleReadouts reads values := by
  intro i j a hi hj
  exact (congrFun (matches i) ⟨a, hi⟩).symm.trans
    (congrFun (matches j) ⟨a, hj⟩)

/-- Compatibility and coverage give a unique global record, with no missing-coordinate default. -/
theorem compatible_iff_unique_amalgamation (reads : Index → Finset Artifact)
    (values : ∀ i, {a : Artifact // a ∈ reads i} → Revision)
    (cover : Covers reads) :
    CompatibleReadouts reads values ↔
      ∃! snapshot : SourceSnapshot Artifact Revision,
        ∀ i, restrict (reads i) snapshot = values i := by
  constructor
  · intro compatible
    refine ⟨amalgamate reads values cover, restrict_amalgamate reads values cover compatible, ?_⟩
    intro snapshot matches
    exact matching_snapshots_unique reads values cover matches
      (restrict_amalgamate reads values cover compatible)
  · rintro ⟨snapshot, matches, _⟩
    exact compatible_of_matching_snapshot reads values snapshot matches

/-- An existing global record supplies compatible readouts without choosing any new values. -/
theorem restrictions_compatible (reads : Index → Finset Artifact)
    (snapshot : SourceSnapshot Artifact Revision) :
    CompatibleReadouts reads (fun i => restrict (reads i) snapshot) :=
  fun _ _ _ _ _ => rfl

/-- Reconstructing restrictions does not revise their original snapshot. -/
theorem amalgamate_restrictions (reads : Index → Finset Artifact)
    (cover : Covers reads) (snapshot : SourceSnapshot Artifact Revision) :
    amalgamate reads (fun i => restrict (reads i) snapshot) cover = snapshot := rfl

/-- The resulting snapshot is independent of the witness used to establish coverage. -/
theorem amalgamate_independent_of_cover (reads : Index → Finset Artifact)
    (values : ∀ i, {a : Artifact // a ∈ reads i} → Revision)
    (firstCover secondCover : Covers reads)
    (compatible : CompatibleReadouts reads values) :
    amalgamate reads values firstCover = amalgamate reads values secondCover :=
  matching_snapshots_unique reads values firstCover
    (restrict_amalgamate reads values firstCover compatible)
    (restrict_amalgamate reads values secondCover compatible)

/-- Local witnesses for every declared read give the existing exact freshness check. -/
theorem amalgamation_freshens_certificate (reads : Index → Finset Artifact)
    (values : ∀ i, {a : Artifact // a ∈ reads i} → Revision)
    (cover : Covers reads) (compatible : CompatibleReadouts reads values)
    {Target : SourceSnapshot Artifact Revision → Prop}
    (certificate : RevisionCertificate Artifact Revision Target)
    (captured : ∀ a ∈ certificate.reads, ∃ i, ∃ ha : a ∈ reads i,
      values i ⟨a, ha⟩ = certificate.recorded a) :
    certificate.Fresh (amalgamate reads values cover) := by
  intro a ha
  obtain ⟨i, member, valueEq⟩ := captured a ha
  exact (amalgamate_apply reads values cover compatible i a member).trans valueEq

/-- The old certificate's actual proof and locality supply acceptance of the assembled source. -/
theorem amalgamation_accepts_certificate (reads : Index → Finset Artifact)
    (values : ∀ i, {a : Artifact // a ∈ reads i} → Revision)
    (cover : Covers reads) (compatible : CompatibleReadouts reads values)
    {Target : SourceSnapshot Artifact Revision → Prop}
    (certificate : RevisionCertificate Artifact Revision Target)
    (captured : ∀ a ∈ certificate.reads, ∃ i, ∃ ha : a ∈ reads i,
      values i ⟨a, ha⟩ = certificate.recorded a) :
    certificate.Accepted (amalgamate reads values cover) :=
  certificate.fresh_accepts
    (amalgamation_freshens_certificate reads values cover compatible certificate captured)

/-- One incompatible overlap rules out a matching global snapshot. -/
theorem incompatible_overlap_prevents_amalgamation (reads : Index → Finset Artifact)
    (values : ∀ i, {a : Artifact // a ∈ reads i} → Revision)
    (i j : Index) (a : Artifact) (hi : a ∈ reads i) (hj : a ∈ reads j)
    (different : values i ⟨a, hi⟩ ≠ values j ⟨a, hj⟩) :
    ¬ ∃ snapshot : SourceSnapshot Artifact Revision,
      ∀ k, restrict (reads k) snapshot = values k := by
  rintro ⟨snapshot, matches⟩
  exact different (compatible_of_matching_snapshot reads values snapshot matches i j a hi hj)

/-- Local agreement on one Boolean coordinate does not determine the other coordinate. -/
theorem uncovered_coordinate_allows_distinct_extensions :
    ∃ left right : SourceSnapshot Bool Bool, left ≠ right ∧
      restrict ({false} : Finset Bool) left = restrict {false} right := by
  refine ⟨fun _ => false, fun b => b,
    GRWTSK.Logic.Observation.total_decoder_nonuniqueness_off_range.2.2, ?_⟩
  funext a
  have ha : a.val = false := Finset.mem_singleton.mp a.property
  exact ha.symm

end GRWTSK.Logic.Snapshot
