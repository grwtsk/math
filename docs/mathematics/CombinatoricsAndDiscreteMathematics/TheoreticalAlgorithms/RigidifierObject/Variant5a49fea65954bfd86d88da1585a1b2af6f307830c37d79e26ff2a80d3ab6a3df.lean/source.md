# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.RigidifierObject.Variant5a49fea65954bfd86d88da1585a1b2af6f307830c37d79e26ff2a80d3ab6a3df

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1ea4af2e498c31d0727ee6960be9c4c2af3504c5` · SHA-256 `5a49fea65954bfd86d88da1585a1b2af6f307830c37d79e26ff2a80d3ab6a3df`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Projection.RoutingStatus

/-!
# One dependent rigidification object

Every generated leaf binds one element, permanent route key, certified name,
declared sort, exact incidence coordinate, denotation, and provenance.  These
facts cannot drift apart as parallel lists.
-/

namespace Mathematics.Projection

/-- The complete finite claim embedded directly in one generated Lean leaf. -/
structure SourceLabelClaim
    (sortCount neighborhoodCount : Nat) where
  routeKey : RigidKey
  elementId : String
  declaredSort : Fin sortCount
  declaredSortName : String
  canonicalName : String
  canonicalStem : String
  canonicalExtension : String
  canonicalPath : String
  materializedStem : String
  materializedExtension : String
  selectedCandidateId : String
  modelSelectedCandidateId : String
  oracleCandidateIds : List String
  supportIds : List String
  allowedSupportIds : List String
  oracleProposalDigest : String
  modelProposalDigest : String
  incidence : FiniteIncidenceCode neighborhoodCount
  deriving DecidableEq, Repr

namespace SourceLabelClaim

def Denotes
    {sortCount neighborhoodCount : Nat}
    (claim : SourceLabelClaim sortCount neighborhoodCount) : Prop :=
  claim.selectedCandidateId ∈ claim.oracleCandidateIds ∧
  claim.modelSelectedCandidateId = claim.selectedCandidateId ∧
  claim.supportIds ≠ [] ∧
  (∀ support, support ∈ claim.supportIds →
    support ∈ claim.allowedSupportIds) ∧
  claim.materializedStem = claim.canonicalStem ∧
  claim.materializedExtension = claim.canonicalExtension

def HasProvenance
    {sortCount neighborhoodCount : Nat}
    (claim : SourceLabelClaim sortCount neighborhoodCount) : Prop :=
  claim.oracleProposalDigest.length = 64 ∧
  claim.modelProposalDigest.length = 64

end SourceLabelClaim

/--
Kernel-checked local certificate for exactly one source element.  Model output
is retained as proposal evidence but appears in neither authority proof.
-/
structure SourceLabelObject
    (sortCount neighborhoodCount : Nat) where
  claim : SourceLabelClaim sortCount neighborhoodCount
  denotation : claim.Denotes
  provenance : claim.HasProvenance

/-- One externally certified physical-neighborhood name and denotation. -/
structure SourceNeighborhoodClaim where
  neighborhoodId : String
  declaredSortName : String
  canonicalName : String
  canonicalStem : String
  canonicalPath : String
  selectedCandidateId : String
  modelSelectedCandidateId : String
  oracleCandidateIds : List String
  supportIds : List String
  proposalDigest : String
  deriving DecidableEq, Repr

namespace SourceNeighborhoodClaim

def Denotes (claim : SourceNeighborhoodClaim) : Prop :=
  claim.selectedCandidateId ∈ claim.oracleCandidateIds ∧
  claim.modelSelectedCandidateId = claim.selectedCandidateId ∧
  claim.supportIds ≠ [] ∧
  claim.canonicalStem ≠ "" ∧
  claim.canonicalPath ≠ ""

def HasProvenance (claim : SourceNeighborhoodClaim) : Prop :=
  claim.proposalDigest.length = 64

end SourceNeighborhoodClaim

/-- Dependent certificate carried by one semantic neighborhood index. -/
structure SourceNeighborhoodObject where
  claim : SourceNeighborhoodClaim
  denotation : claim.Denotes
  provenance : claim.HasProvenance

/--
Compact binding to the exhaustive intrinsic source structure.  Primitive
vertices remain derivable from the bound normalization/symmetry artifacts
rather than being copied into ordinal or digest-named source files.
-/
structure IntrinsicStructureBinding where
  normalizationReceiptDigest : String
  symmetryCertificateDigest : String
  formalNeighborhoodDigest : String
  primitiveElementCount : Nat
  sourceElementCount : Nat
  sourceCommandCount : Nat
  sourceRelationCount : Nat
  deriving DecidableEq, Repr

namespace IntrinsicStructureBinding

def HasProvenance (binding : IntrinsicStructureBinding) : Prop :=
  binding.normalizationReceiptDigest.length = 64 ∧
  binding.symmetryCertificateDigest.length = 64 ∧
  binding.formalNeighborhoodDigest.length = 64

end IntrinsicStructureBinding

namespace SourceLabelObject

def key
    {sortCount neighborhoodCount : Nat}
    (object : SourceLabelObject sortCount neighborhoodCount) :
    RigidKey :=
  object.claim.routeKey

def elementId
    {sortCount neighborhoodCount : Nat}
    (object : SourceLabelObject sortCount neighborhoodCount) :
    String :=
  object.claim.elementId

def canonicalPath
    {sortCount neighborhoodCount : Nat}
    (object : SourceLabelObject sortCount neighborhoodCount) :
    String :=
  object.claim.canonicalPath

end SourceLabelObject

end Mathematics.Projection
```
