/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib imports retain upstream authorship and Apache-2.0 licensing. -/
import Mathlib.Data.Finset.Union
import Mathlib.LinearAlgebra.Matrix.Determinant.Basic
import Mathlib.Analysis.SpecialFunctions.Log.Basic

/-!
# Finite upstream neighborhoods and logarithmic spectral volume

An arrow points from a consumer to a prerequisite. Finite root sets and finite
successor sets retain each vertex once, including shared dependencies of several
roots. The radius counts arrows, not imports, source lines, or taxonomy levels.

The spectral volume below is a project definition on a supplied finite weighted
edge system. It does not identify an extracted graph with Lean's environment,
establish the completeness of an extractor, validate a receipt, or justify a
numerical evaluator. Positivity of the regularized determinant is an explicit
premise of `spectralLogVolume`; its derivation from nonnegative edge weights is a
separate missing bridge. No claim about mathematical importance follows.
-/

set_option autoImplicit false

namespace GRWTSK.Combinatorics.DirectedGraph.FiniteDependencyVolume

variable {V : Type*} [DecidableEq V]

/-- Vertices reached upstream in at most the supplied number of arrows. -/
def boundedUpstream (successors : V → Finset V) (roots : Finset V) : ℕ → Finset V
  | 0 => roots
  | radius + 1 => boundedUpstream successors roots radius ∪
      (boundedUpstream successors roots radius).biUnion successors

@[simp]
theorem boundedUpstream_zero (successors : V → Finset V) (roots : Finset V) :
    boundedUpstream successors roots 0 = roots := rfl

/-- The next shell uses only an admitted vertex and one direct dependency. -/
theorem mem_boundedUpstream_succ (successors : V → Finset V) (roots : Finset V)
    (radius : ℕ) (vertex : V) :
    vertex ∈ boundedUpstream successors roots (radius + 1) ↔
      vertex ∈ boundedUpstream successors roots radius ∨
      ∃ parent ∈ boundedUpstream successors roots radius, vertex ∈ successors parent := by
  simp [boundedUpstream]

/-- Increasing the radius cannot remove a previously admitted dependency. -/
theorem boundedUpstream_subset_succ (successors : V → Finset V) (roots : Finset V)
    (radius : ℕ) :
    boundedUpstream successors roots radius ⊆ boundedUpstream successors roots (radius + 1) :=
  Finset.subset_union_left

/-- Roots are retained even when the radius is zero. -/
theorem roots_subset_boundedUpstream (successors : V → Finset V) (roots : Finset V)
    (radius : ℕ) : roots ⊆ boundedUpstream successors roots radius := by
  induction radius with
  | zero => exact Finset.Subset.refl roots
  | succ radius ih => exact ih.trans (boundedUpstream_subset_succ successors roots radius)

/-- A composite root union has precisely the union of its component neighborhoods. -/
theorem boundedUpstream_union (successors : V → Finset V) (left right : Finset V)
    (radius : ℕ) :
    boundedUpstream successors (left ∪ right) radius =
      boundedUpstream successors left radius ∪ boundedUpstream successors right radius := by
  induction radius with
  | zero => rfl
  | succ radius ih =>
    ext vertex
    simp only [boundedUpstream, ih, Finset.mem_union, Finset.mem_biUnion]
    aesop

/-- Repeating an entire component creates no new vertex or dependency volume input. -/
theorem boundedUpstream_duplicate (successors : V → Finset V) (roots : Finset V)
    (radius : ℕ) :
    boundedUpstream successors (roots ∪ roots) radius = boundedUpstream successors roots radius := by
  simp

/-- The default publication neighborhood is an explicit three-arrow cutoff. -/
abbrev upstreamThree (successors : V → Finset V) (roots : Finset V) : Finset V :=
  boundedUpstream successors roots 3

/-- A finite typed edge system: different edge kinds may share endpoints. -/
structure WeightedEdges (V E : Type*) where
  source : E → V
  target : E → V
  weight : E → ℝ
  weight_nonneg : ∀ edge, 0 ≤ weight edge

variable {E : Type*}

/-- Signed endpoint incidence; a loop has the zero vector. -/
def incidence (edges : WeightedEdges V E) (edge : E) (vertex : V) : ℝ :=
  (if edges.source edge = vertex then 1 else 0) -
    (if edges.target edge = vertex then 1 else 0)

theorem incidence_loop (edges : WeightedEdges V E) (edge : E)
    (hloop : edges.source edge = edges.target edge) (vertex : V) :
    incidence edges edge vertex = 0 := by
  simp [incidence, hloop]

/-- Sum of weighted incidence outer products; the directed edge identity is retained. -/
noncomputable def laplacian [Fintype E] (edges : WeightedEdges V E) : Matrix V V ℝ :=
  fun left right => ∑ edge, edges.weight edge * incidence edges edge left *
    incidence edges edge right

/-- Orientations do not spoil symmetry of the chosen Laplacian. -/
theorem laplacian_symmetric [Fintype E] (edges : WeightedEdges V E) (left right : V) :
    laplacian edges left right = laplacian edges right left := by
  apply Finset.sum_congr rfl
  intro edge _
  ring

/-- Positive regularized determinant is an explicit mathematical acceptance premise. -/
def PositiveRegularizedDeterminant [Fintype V] (L : Matrix V V ℝ) (tau : ℝ) : Prop :=
  0 < (1 + tau • L).det

/-- Project spectral log-volume; extraction and numerical refinement are not assumed. -/
noncomputable def spectralLogVolume [Fintype V] (L : Matrix V V ℝ) (tau : ℝ)
    (_hdet : PositiveRegularizedDeterminant L tau) : ℝ :=
  (1 / 2 : ℝ) * Real.log (1 + tau • L).det

end GRWTSK.Combinatorics.DirectedGraph.FiniteDependencyVolume
