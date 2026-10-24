# Complete source: GRWTSK.Topology.AlgebraicTopology.SurfacePolygonCWOrbitClosure

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c8fa2c24daedd33d74b00c6b253bca2b6668c2cb` · SHA-256 `080ad56746748aa4f888aebeaa12783367bdf5de83caf4e60122986e7b3b967a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. Released under MIT license.
Mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Parent PR #1031 head 32373e549a588881f851c485c8df9efc5cbd4be3.
-/
import GRWTSK.Topology.AlgebraicTopology.SurfacePolygonCWInteriorOrbit

/-!
# Two-point orbit closure for the authentic boundary equivalence

The proof candidate extends the primitive interior opposite-side
relation through reflexivity, symmetry and transitivity of EqvGen.
It does not silently identify distinct positive edges.
-/
set_option autoImplicit false
noncomputable section

namespace GRWTSK.Topology.AlgebraicTopology.SurfacePolygonCWOrbitClosure

open GRWTSK.GroupTheory.Words.HigherGenusHeisenbergWitness
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonCornerGluing
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonBoundaryTopology
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonCWInteriorOrbit

/-- Reversing the same original opposite side twice returns the
original side and the original real interval parameter. -/
theorem oppositeBoundaryPoint_involutive (k : ℕ)
    (p : BoundaryPoint k) :
    oppositeBoundaryPoint k (oppositeBoundaryPoint k p) = p := by
  rcases p with ⟨⟨h, i⟩, t⟩
  fin_cases i <;>
    simp [oppositeBoundaryPoint, unitInterval.symm_symm]

/-- A two-point orbit relation, not a universally true relation. -/
def InteriorOrbit (k : ℕ) (p q : BoundaryPoint k) : Prop :=
  q = p ∨ q = oppositeBoundaryPoint k p

/-- Every primitive step from a nonendpoint lies in the two-point
orbit; no endpoint seam is allowed. -/
theorem interior_step_orbit (k : ℕ)
    {p q : BoundaryPoint k}
    (h : BoundaryGluingStep k p q)
    (hp : ¬ IsEndpoint p.2) :
    InteriorOrbit k p q :=
  Or.inr (interior_step_pair_orbit k h hp)

/-- The two-point orbit is symmetric. -/
theorem interiorOrbit_symm (k : ℕ)
    {p q : BoundaryPoint k}
    (h : InteriorOrbit k p q) :
    InteriorOrbit k q p := by
  rcases h with rfl | h
  · exact Or.inl rfl
  · subst q
    exact Or.inr (oppositeBoundaryPoint_involutive k p).symm

/-- The two-point orbit is closed under composition. -/
theorem interiorOrbit_trans (k : ℕ)
    {p q r : BoundaryPoint k}
    (hpq : InteriorOrbit k p q)
    (hqr : InteriorOrbit k q r) :
    InteriorOrbit k p r := by
  rcases hpq with rfl | hpq
  · exact hqr
  · subst q
    rcases hqr with rfl | hqr
    · exact Or.inr rfl
    · exact Or.inl (hqr.trans (oppositeBoundaryPoint_involutive k p))

/-- Complete EqvGen fiber bound at every strict interior point:
only the point itself and its unique reversed opposite-side partner
can be equivalent. This is stronger than endpoint preservation. -/
theorem interior_connected_orbit (k : ℕ)
    {p q : BoundaryPoint k}
    (h : BoundaryConnected k p q)
    (hp : ¬ IsEndpoint p.2) :
    InteriorOrbit k p q := by
  induction h with
  | rel p q hpq =>
      exact interior_step_orbit k hpq hp
  | refl p =>
      exact Or.inl rfl
  | symm p q hpq ih =>
      have hq : ¬ IsEndpoint q.2 := by
        intro hendpoint
        exact hp ((boundary_connected_preserves_endpoint k
          (Relation.EqvGen.symm _ _ hpq)).mpr hendpoint)
      exact interiorOrbit_symm k (ih hq)
  | trans p q r hpq hqr ihpq ihqr =>
      have hq : ¬ IsEndpoint q.2 := by
        intro hendpoint
        exact hp ((boundary_connected_preserves_endpoint k hpq).mpr hendpoint)
      exact interiorOrbit_trans k (ihpq hp) (ihqr hq)

/-- Equal quotient images of strict interior source points have
exactly the same two-point-orbit constraint. -/
theorem interior_projection_eq_orbit (k : ℕ)
    {p q : BoundaryPoint k}
    (hp : ¬ IsEndpoint p.2)
    (h : boundaryProjection k p = boundaryProjection k q) :
    InteriorOrbit k p q :=
  interior_connected_orbit k (Quotient.exact h) hp

end GRWTSK.Topology.AlgebraicTopology.SurfacePolygonCWOrbitClosure
```
