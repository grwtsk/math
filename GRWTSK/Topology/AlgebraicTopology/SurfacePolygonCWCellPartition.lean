/-
Copyright (c) 2026 grwtsk contributors. Released under MIT license.
Mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Parent PR #1038 exact head 4cf9d755cef2ce026e9b07568ebbd003aef62854.
-/
import GRWTSK.Topology.AlgebraicTopology.SurfacePolygonCWPartition

/-!
# Actual quotient-level partition into one vertex and positive edge interiors

This source uses quotient induction on the genuine paired boundary.
It proves candidates for coverage and uniqueness of the positive
edge interior labels and parameters. It does not assert open-cell
embeddings or the CW weak topology.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.Topology.AlgebraicTopology.SurfacePolygonCWCellPartition

open GRWTSK.Algebra.GroupTheory.Words.HigherGenusHeisenbergWitness
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonCornerGluing
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonBoundaryTopology
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonCWCellSources
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonCWInteriorSeparation
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonCWPositiveEdges
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonCWPartition

/-- The positive a/b edge images cover the actual quotient, not
merely its finite set of original side labels. -/
theorem every_boundary_point_positive (k : ℕ)
    (x : PolygonBoundaryOneSkeleton k) :
    ∃ h : Handle k, ∃ i : Fin 2, ∃ t : unitInterval,
      x = positiveOneCell k h i t := by
  induction x using Quotient.inductionOn with
  | _ p =>
      exact source_has_positive_representative k p

/-- Every positive edge endpoint is the common vertex. -/
theorem positive_endpoint_eq_vertex (k : ℕ)
    (h : Handle k) (i : Fin 2) (t : unitInterval)
    (ht : IsEndpoint t) :
    positiveOneCell k h i t = polygonZeroCell k := by
  rcases ht with h0 | h1
  · subst t
    exact positiveOneCell_zero k h i
  · subst t
    exact positiveOneCell_one_eq_zeroCell k h i

/-- Every quotient point is either the unique vertex or lies on
the strict interior of one positive edge. -/
theorem vertex_or_positive_interior (k : ℕ)
    (x : PolygonBoundaryOneSkeleton k) :
    x = polygonZeroCell k ∨
      ∃ h : Handle k, ∃ i : Fin 2, ∃ t : unitInterval,
        ¬ IsEndpoint t ∧ x = positiveOneCell k h i t := by
  obtain ⟨h, i, t, rfl⟩ := every_boundary_point_positive k x
  by_cases ht : IsEndpoint t
  · exact Or.inl (positive_endpoint_eq_vertex k h i t ht)
  · exact Or.inr ⟨h, i, t, ht, rfl⟩

/-- The two alternatives of the cell partition are disjoint. -/
theorem positive_interior_not_vertex (k : ℕ)
    (h : Handle k) (i : Fin 2) (t : unitInterval)
    (ht : ¬ IsEndpoint t) :
    positiveOneCell k h i t ≠ polygonZeroCell k :=
  positiveInterior_ne_zeroCell k h i t ht

/-- Positive edge interiors have unique handle, side and real
interval parameter once their quotient images agree. -/
theorem positive_interior_unique (k : ℕ)
    (h h' : Handle k) (i j : Fin 2)
    (t u : unitInterval) (ht : ¬ IsEndpoint t)
    (heq : positiveOneCell k h i t =
      positiveOneCell k h' j u) :
    h = h' ∧ i = j ∧ t = u := by
  have hlabel :=
    positiveOneCell_disjoint_interior k h h' i j ht heq
  have hparam :=
    positive_interior_projection_eq_source k h h' i j t u ht heq
  exact ⟨hlabel.1, hlabel.2, congrArg Prod.snd hparam⟩

end GRWTSK.Topology.AlgebraicTopology.SurfacePolygonCWCellPartition
