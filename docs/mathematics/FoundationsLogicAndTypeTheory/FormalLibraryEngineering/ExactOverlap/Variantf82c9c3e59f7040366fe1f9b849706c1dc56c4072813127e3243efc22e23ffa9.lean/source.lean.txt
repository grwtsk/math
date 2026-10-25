-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OverlapRegion.Variant11270348a8cfa6dca70a882e2a0d48a3af43056565f6212ae4166a62b31a376f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"11270348a8cfa6dca70a882e2a0d48a3af43056565f6212ae4166a62b31a376f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.OverlapRegion.Variant11270348a8cfa6dca70a882e2a0d48a3af43056565f6212ae4166a62b31a376f","mathematical_subject":"Foundations.Unclassified","original_sha256":"11270348a8cfa6dca70a882e2a0d48a3af43056565f6212ae4166a62b31a376f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Projection/ExactOverlap.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Projection.IncidenceCode

/-!
# Lossless four-way overlap

Similarity first exposes the complete Boolean decomposition.  Scalar distances
may be derived from this object for search, but cannot create identity,
taxonomic parenthood, or a filesystem route.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OverlapRegion.Variant11270348a8cfa6dca70a882e2a0d48a3af43056565f6212ae4166a62b31a376f

namespace Mathematics.Projection

universe u

/-- The four disjoint regions determined by two Boolean coordinates. -/
inductive OverlapRegion
  | common
  | leftResidue
  | rightResidue
  | exterior
  deriving DecidableEq, Repr

def overlapRegion (left right : Bool) : OverlapRegion :=
  match left, right with
  | true, true => .common
  | true, false => .leftResidue
  | false, true => .rightResidue
  | false, false => .exterior

/-- Complete pointwise overlap data. -/
structure ExactOverlap (Probe : Type u) where
  left : IncidenceCode Probe
  right : IncidenceCode Probe

namespace ExactOverlap

variable {Probe : Type u}

def region (overlap : ExactOverlap Probe) (probe : Probe) :
    OverlapRegion :=
  overlapRegion (overlap.left probe) (overlap.right probe)

def common (overlap : ExactOverlap Probe) : IncidenceCode Probe :=
  fun probe ↦ overlap.left probe && overlap.right probe

def leftResidue (overlap : ExactOverlap Probe) : IncidenceCode Probe :=
  fun probe ↦ overlap.left probe && !(overlap.right probe)

def rightResidue (overlap : ExactOverlap Probe) : IncidenceCode Probe :=
  fun probe ↦ !(overlap.left probe) && overlap.right probe

def exterior (overlap : ExactOverlap Probe) : IncidenceCode Probe :=
  fun probe ↦ !(overlap.left probe) && !(overlap.right probe)

theorem region_exhaustive
    (overlap : ExactOverlap Probe) (probe : Probe) :
    overlap.region probe = .common ∨
      overlap.region probe = .leftResidue ∨
      overlap.region probe = .rightResidue ∨
      overlap.region probe = .exterior := by
  cases hleft : overlap.left probe <;>
    cases hright : overlap.right probe <;>
    simp [region, overlapRegion, hleft, hright]

end ExactOverlap

/-- Exact finite Hamming distance, derived only after retaining the overlap. -/
def finiteHamming
    {width : Nat}
    (left right : FiniteIncidenceCode width) : Nat :=
  (BitVec.cpop (BitVec.xor left.bits right.bits)).toNat

end Mathematics.Projection
