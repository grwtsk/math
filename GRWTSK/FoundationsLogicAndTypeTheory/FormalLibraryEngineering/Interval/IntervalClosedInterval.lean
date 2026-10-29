import FCRS.Topology.Foundations

universe u

namespace FCRS.Topology

/--
An abstract closed interval.  It is not identified with the real unit
interval; the endpoint and interior laws record only the semantics needed by
the core graph-realization layer.
-/
structure ClosedInterval where
  Point : Type u
  topology : TopologicalSpaceLike Point
  zero : Point
  one : Point
  zero_ne_one : zero ≠ one
  interior : Set Point
  zero_not_mem_interior : ¬ zero ∈ interior
  one_not_mem_interior : ¬ one ∈ interior

end FCRS.Topology
