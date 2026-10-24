/-
Copyright (c) 2026 grwtsk contributors. Released under MIT license.
Mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Parent PR #1033 head 51b0eba980a7c446d1283320937db62092aed838.
-/
import GRWTSK.Topology.AlgebraicTopology.SurfacePolygonCWOrbitClosure

/-!
# Positive polygon edge interior fibers

The original opposite-side involution sends positive sides 0/1 to
negative sides 2/3. Hence the two-point EqvGen orbit cannot identify
two distinct positive side interior points. These are algebraic
injectivity/disjointness statements, not yet topological embeddings.
-/
set_option autoImplicit false
noncomputable section
namespace GRWTSK.Topology.AlgebraicTopology.SurfacePolygonCWPositiveEdges

open GRWTSK.Algebra.GroupTheory.Words.HigherGenusHeisenbergWitness
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonCornerGluing
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonBoundaryTopology
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonCWCellSources
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonCWOrbitClosure
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonCWInteriorOrbit

/-- A genuine positive side is never the reversed opposite of a
positive side, regardless of handle or real interval parameter. -/
theorem positive_not_opposite_positive (k : ℕ)
    (h h' : Handle k) (i j : Fin 2)
    (t u : unitInterval) :
    (((h', (j : Fin 4)), u) : BoundaryPoint k) ≠
      oppositeBoundaryPoint k (((h, (i : Fin 4)), t)) := by
  fin_cases i <;> fin_cases j <;>
    simp [oppositeBoundaryPoint]

/-- Equality in the authentic paired quotient between positive
strict interior points forces equality of original source points. -/
theorem positive_interior_projection_eq_source (k : ℕ)
    (h h' : Handle k) (i j : Fin 2)
    (t u : unitInterval) (ht : ¬ IsEndpoint t)
    (heq : positiveOneCell k h i t =
      positiveOneCell k h' j u) :
    (((h, (i : Fin 4)), t) : BoundaryPoint k) =
      (((h', (j : Fin 4)), u) : BoundaryPoint k) := by
  have ho := interior_projection_eq_orbit k ht heq
  rcases ho with hsame | hop
  · exact hsame.symm
  · exact False.elim
      (positive_not_opposite_positive k h h' i j t u hop)

/-- Injectivity of each positive edge characteristic on nonendpoint
parameters. This is not yet an open topological embedding. -/
theorem positiveOneCell_injective_interior (k : ℕ)
    (h : Handle k) (i : Fin 2)
    {t u : unitInterval} (ht : ¬ IsEndpoint t)
    (heq : positiveOneCell k h i t =
      positiveOneCell k h i u) :
    t = u := by
  have hsource :=
    positive_interior_projection_eq_source k h h i i t u ht heq
  exact congrArg Prod.snd hsource

/-- Pairwise distinct positive edge labels cannot share any
nonendpoint image in the actual paired boundary quotient. -/
theorem positiveOneCell_disjoint_interior (k : ℕ)
    (h h' : Handle k) (i j : Fin 2)
    {t u : unitInterval} (ht : ¬ IsEndpoint t)
    (heq : positiveOneCell k h i t =
      positiveOneCell k h' j u) :
    h = h' ∧ i = j := by
  have hs :=
    positive_interior_projection_eq_source k h h' i j t u ht heq
  have hcorner := congrArg Prod.fst hs
  have hh : h = h' := congrArg Prod.fst hcorner
  have hi : (i : Fin 4) = (j : Fin 4) :=
    congrArg Prod.snd hcorner
  constructor
  · exact hh
  · apply Fin.ext
    exact congrArg Fin.val hi

end GRWTSK.Topology.AlgebraicTopology.SurfacePolygonCWPositiveEdges
