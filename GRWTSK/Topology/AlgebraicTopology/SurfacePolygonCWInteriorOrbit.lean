/-
Copyright (c) 2026 R.A. Jacob Martone. Released under MIT license.
Mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI ChatGPT.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Parent PR #1027 head e5e835fbc9ff2dba09569347e7cd29a9e44ff5f6.
-/
import GRWTSK.Topology.AlgebraicTopology.SurfacePolygonCWInteriorSeparation

/-!
# Two-point orbit invariant for original interior boundary fibers

The only original generators touching nonendpoint source points are
the reversed opposite-side pairings. This source isolates their
invariant before the full EqvGen induction and open-cell embeddings.
-/

set_option autoImplicit false
noncomputable section
namespace GRWTSK.Topology.AlgebraicTopology.SurfacePolygonCWInteriorOrbit

open GRWTSK.GroupTheory.Words.HigherGenusHeisenbergWitness
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonCornerGluing
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonBoundaryTopology

/-- The source point's unique reversed opposite-side partner,
retaining its original handle, side index, and true real parameter. -/
def oppositeBoundaryPoint (k : ℕ) :
    BoundaryPoint k → BoundaryPoint k
  | (((h, i), t)) =>
      (((h, i + 2), unitInterval.symm t))

/-- Every original opposite-pairing generator is compatible with
the same two-point orbit. Endpoint seams are deliberately excluded. -/
theorem interior_step_pair_orbit (k : ℕ)
    {p q : BoundaryPoint k}
    (h : BoundaryGluingStep k p q)
    (hp : ¬ IsEndpoint p.2) :
    q = oppositeBoundaryPoint k p := by
  cases h with
  | pairA h t =>
      rfl
  | pairB h t =>
      rfl
  | seam01 h =>
      exact False.elim (hp (Or.inr rfl))
  | seam12 h =>
      exact False.elim (hp (Or.inr rfl))
  | seam23 h =>
      exact False.elim (hp (Or.inr rfl))
  | seamNext h =>
      exact False.elim (hp (Or.inr rfl))

/-- A primitive gluing from an interior point cannot be a seam;
it must be the same opposite side with reversed interval parameter. -/
theorem interior_step_preserves_handle (k : ℕ)
    {p q : BoundaryPoint k}
    (h : BoundaryGluingStep k p q)
    (hp : ¬ IsEndpoint p.2) :
    p.1.1 = q.1.1 := by
  rw [interior_step_pair_orbit k h hp]
  rfl

/-- The interior gluing also preserves strict interior status. -/
theorem interior_step_preserves_nonendpoint (k : ℕ)
    {p q : BoundaryPoint k}
    (h : BoundaryGluingStep k p q)
    (hp : ¬ IsEndpoint p.2) :
    ¬ IsEndpoint q.2 := by
  intro hq
  exact hp ((step_preserves_endpoint k h).mpr hq)

end GRWTSK.Topology.AlgebraicTopology.SurfacePolygonCWInteriorOrbit
