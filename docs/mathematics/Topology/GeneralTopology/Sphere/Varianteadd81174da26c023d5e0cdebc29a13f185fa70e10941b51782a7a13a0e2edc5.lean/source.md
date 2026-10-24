# Complete source: GRWTSK.Topology.GeneralTopology.Sphere.Varianteadd81174da26c023d5e0cdebc29a13f185fa70e10941b51782a7a13a0e2edc5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `656d27c176c461302893eed893edea102c3f6fca` · SHA-256 `eadd81174da26c023d5e0cdebc29a13f185fa70e10941b51782a7a13a0e2edc5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
