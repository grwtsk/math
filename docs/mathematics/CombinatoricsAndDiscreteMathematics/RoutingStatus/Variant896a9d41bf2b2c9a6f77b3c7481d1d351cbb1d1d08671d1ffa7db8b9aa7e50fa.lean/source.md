# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.RoutingStatus.Variant896a9d41bf2b2c9a6f77b3c7481d1d351cbb1d1d08671d1ffa7db8b9aa7e50fa

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5fa5903bf5552c6b56431f1db9e387ccd74b2267` · SHA-256 `6a3acebeae1199a09913041d1d9443633140cebd36b9fea1dae1ae3f37860fe3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.BoundaryStatus.Variantb0f9ebccc74db696f4a59d27c425c9a3d6c9da49fa4fce00c55d59ce8764548b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b0f9ebccc74db696f4a59d27c425c9a3d6c9da49fa4fce00c55d59ce8764548b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.BoundaryStatus.Variantb0f9ebccc74db696f4a59d27c425c9a3d6c9da49fa4fce00c55d59ce8764548b","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"b0f9ebccc74db696f4a59d27c425c9a3d6c9da49fa4fce00c55d59ce8764548b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Projection/RoutingStatus.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Projection.FormalNeighborhood
import Mathematics.Core.SemanticIdentity

/-!
# Orthogonal intrinsic, separation, and route status

Boundary position, separability, and external routing are independent axes.
In particular, an object may be on a boundary while still carrying a nonzero
separator residue, and neither fact creates a physical path.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.BoundaryStatus.Variantb0f9ebccc74db696f4a59d27c425c9a3d6c9da49fa4fce00c55d59ce8764548b

namespace Mathematics.Projection

universe u v

inductive BoundaryStatus
  | interior
  | boundary
  | undischarged
  deriving DecidableEq, Repr

inductive RoutingObstruction
  | incompleteProbeFamily
  | unresolvedDenotation
  | incomparableCovers
  | intrinsicCodeCollision
  | nontrivialAutomorphismOrbit
  deriving DecidableEq, Repr

structure RoutingResidue
    (Element : Type u) (Probe : Type v)
    [DecidableEq Element] where
  query : IncidenceCode Probe
  candidateFiber : Finset Element
  obstruction : RoutingObstruction
  notIncidenceSingleton :
    ¬ ∃ element, candidateFiber = {element}

inductive SeparationStatus
    (Element : Type u) (Probe : Type v)
    [DecidableEq Element]
  | separated
  | residue (obstruction : RoutingResidue Element Probe)
  | undischarged (obligation : String)

inductive RouteStatus
  | unrouted
  | opaque (key : RigidKey)
  | namedSingleton (key : RigidKey)
  deriving DecidableEq, Repr

structure IntrinsicPosition
    (Probe : Type u) (Neighborhood : Type v)
    [DecidableEq Neighborhood] where
  incidence : IncidenceCode Probe
  memberships : Finset Neighborhood
  boundary : BoundaryStatus

/-- An exact fiber determines identity only after it is a singleton. -/
structure IncidenceSingleton
    (Element : Type u) [DecidableEq Element]
    (fiber : Finset Element) where
  element : Element
  exact : fiber = {element}

end Mathematics.Projection
```
