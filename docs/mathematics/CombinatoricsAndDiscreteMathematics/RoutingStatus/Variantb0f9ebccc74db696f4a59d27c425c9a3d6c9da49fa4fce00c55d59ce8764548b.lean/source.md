# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.RoutingStatus.Variantb0f9ebccc74db696f4a59d27c425c9a3d6c9da49fa4fce00c55d59ce8764548b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2833edd231af3838e0901e970504c6d9541d8311` · SHA-256 `b0f9ebccc74db696f4a59d27c425c9a3d6c9da49fa4fce00c55d59ce8764548b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Projection.FormalNeighborhood
import Mathematics.Core.SemanticIdentity

/-!
# Orthogonal intrinsic, separation, and route status

Boundary position, separability, and external routing are independent axes.
In particular, an object may be on a boundary while still carrying a nonzero
separator residue, and neither fact creates a physical path.
-/

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
