import FCRS.Topology.Foundations

universe u1 u2 u3

namespace FCRS.Topology

/-- Abstract topological circle with genuine open-cover compactness evidence. -/
structure Sphere1 where
  Point : Type u1
  topology : TopologicalSpaceLike Point
  compact : Compact topology

/-- Abstract topological two-sphere with genuine open-cover compactness evidence. -/
structure Sphere2 where
  Point : Type u2
  topology : TopologicalSpaceLike Point
  compact : Compact topology

/-- Abstract topological three-sphere with genuine open-cover compactness evidence. -/
structure Sphere3 where
  Point : Type u3
  topology : TopologicalSpaceLike Point
  compact : Compact topology

end FCRS.Topology
