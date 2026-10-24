# Complete source: GRWTSK.Topology.GeneralTopology.Incidence.Variant2ee233d19422776531c54cc682e319cbd014319cbda57b6088388a7b081111d0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `84510d7c244b755477f6cab1b35769e0d3da2b37` · SHA-256 `2ee233d19422776531c54cc682e319cbd014319cbda57b6088388a7b081111d0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Topology.Closure
import Mathlib.Topology.Continuous
import Mathematics.Terrain.BooleanYoneda

/-!
# Boundary-certified incidence evolution

Membership bits are locally constant away from the frontier of the observed
neighborhood.  Thus a bit change is a neighborhood-boundary event.  Identifying
that frontier with an arithmetic surgery locus remains a separate theorem.
-/

namespace Mathematics.Trajectory.Incidence

open Filter
open Set
open scoped Topology

universe u₁ u₂

variable {Time : Type u₁} {State : Type u₂}

/-- A bit changes at `t` when membership is not eventually constant there. -/
def MembershipChangesAt
    [TopologicalSpace Time]
    (path : Time → State) (U : Set State) (t : Time) : Prop :=
  ¬ ∀ᶠ s in 𝓝 t, (path s ∈ U ↔ path t ∈ U)

/--
Along a continuous path, a neighborhood-membership bit is locally constant at
every time whose state is away from the neighborhood frontier.
-/
theorem eventually_membership_eq_of_not_mem_frontier
    [TopologicalSpace Time] [TopologicalSpace State]
    (path : Time → State) (U : Set State) (t : Time)
    (hpath : ContinuousAt path t)
    (hfrontier : path t ∉ frontier U) :
    ∀ᶠ s in 𝓝 t, (path s ∈ U ↔ path t ∈ U) := by
  by_cases ht : path t ∈ U
  · have hinterior : path t ∈ interior U :=
      (mem_interior_iff_notMem_frontier ht).2 hfrontier
    filter_upwards [hpath (isOpen_interior.mem_nhds hinterior)] with s hs
    exact ⟨fun _ => ht, fun _ => interior_subset hs⟩
  · have htcompl : path t ∈ Uᶜ := ht
    have hfrontierCompl : path t ∉ frontier Uᶜ := by
      simpa [frontier_compl] using hfrontier
    have hinterior : path t ∈ interior Uᶜ :=
      (mem_interior_iff_notMem_frontier htcompl).2 hfrontierCompl
    filter_upwards [hpath (isOpen_interior.mem_nhds hinterior)] with s hs
    have hsU : path s ∉ U := interior_subset hs
    exact ⟨fun h => (hsU h).elim, fun h => (ht h).elim⟩

/-- Every genuine local membership change occurs on the observed frontier. -/
theorem membershipChange_requires_frontier
    [TopologicalSpace Time] [TopologicalSpace State]
    (path : Time → State) (U : Set State) (t : Time)
    (hpath : ContinuousAt path t)
    (hchange : MembershipChangesAt path U t) :
    path t ∈ frontier U := by
  by_contra hfrontier
  exact hchange
    (eventually_membership_eq_of_not_mem_frontier
      path U t hpath hfrontier)

section MetricTrajectory

variable {D : Type u₁} [MetricSpace State]

/--
The complete time-indexed rational-threshold code determines a trajectory
pointwise when the beacon family is dense.
-/
theorem thresholdTrajectory_injective
    (beacon : D → State) (hdense : DenseRange beacon)
    {path₁ path₂ : Time → State}
    (hcode : ∀ t,
      Terrain.BooleanYoneda.metricThresholdCode beacon (path₁ t) =
        Terrain.BooleanYoneda.metricThresholdCode beacon (path₂ t)) :
    path₁ = path₂ := by
  funext t
  exact Terrain.BooleanYoneda.metricThresholdCode_injective
    beacon hdense (hcode t)

end MetricTrajectory

end Mathematics.Trajectory.Incidence
```
