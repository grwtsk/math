/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
SOURCE_PROOF_CANDIDATE; Lean compilation and kernel audit NOT_RUN.
-/
import GRWTSK.Combinatorics.GraphTheory.FrozenPrimeHypercube
import Mathlib.Algebra.BigOperators.Finsupp.Basic

/-!
# Oriented cubical square boundary in the actual binary atlas

Use free abelian chains on the actual 2^m-dimensional hypercube
vertices and oriented one-coordinate edges. An oriented square
is the signed sum of four genuine coordinate edges, with the
two orders of coordinate flips agreeing. The endpoint boundary
of this square's oriented edge chain is zero.

This is the degree-two generator identity ∂₁∂₂ = 0.
The all-degree cubical chain complex remains a separate obligation.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.AlgebraicTopology.BinaryCubicalSquareBoundary

open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FrozenPrimeHypercube

/-- Integral zero-chains indexed by actual hypercube vertices. -/
abbrev VertexChain (m : ℕ) := Cell m →₀ ℤ

/-- Integral one-chains indexed by initial vertices and coordinate ports. -/
abbrev EdgeChain (m : ℕ) := (Cell m × Port m) →₀ ℤ

/-- The cubical vertex boundary of an oriented coordinate edge. -/
def edgeBoundary {m : ℕ} (x : Cell m) (i : Port m) : VertexChain m :=
  Finsupp.single (neighbor x i) 1 - Finsupp.single x 1

/-- The boundary operator on integral one-chains, constructed linearly
from the exact endpoints of each oriented binary edge. -/
noncomputable def boundaryOne (m : ℕ) : EdgeChain m →+ VertexChain m :=
  Finsupp.liftAddHom (fun e : Cell m × Port m =>
    Finsupp.singleAddHom (neighbor e.1 e.2) -
    Finsupp.singleAddHom e.1)

/-- Two coordinate flips commute in the underlying binary additive group. -/
theorem neighbor_commute {m : ℕ} (x : Cell m) (i j : Port m) :
    neighbor (neighbor x i) j = neighbor (neighbor x j) i := by
  unfold neighbor
  abel

/-- The boundary operator agrees with the stipulated endpoints on a generator. -/
theorem boundaryOne_single {m : ℕ} (x : Cell m) (i : Port m) :
    boundaryOne m (Finsupp.single (x, i) (1 : ℤ)) =
      edgeBoundary x i := by
  simp [boundaryOne, edgeBoundary, Finsupp.liftAddHom_apply_single]

/-- Four oriented edges around a square; the opposite horizontal/vertical
sides enter with negative coefficients. -/
def squareEdges {m : ℕ} (x : Cell m) (i j : Port m) : EdgeChain m :=
  Finsupp.single (x, i) 1 +
  Finsupp.single (neighbor x i, j) 1 -
  Finsupp.single (neighbor x j, i) 1 -
  Finsupp.single (x, j) 1

/-- On every cubical 2-face generator, boundary-of-boundary vanishes. -/
theorem boundaryOne_squareEdges {m : ℕ} (x : Cell m) (i j : Port m) :
    boundaryOne m (squareEdges x i j) = 0 := by
  simp only [squareEdges, map_add, map_sub, boundaryOne_single,
    edgeBoundary]
  rw [neighbor_commute x i j]
  abel

/-- Distinct ports create distinct adjacent vertices, not a diagonal. -/
theorem distinct_neighbor_vertices {m : ℕ} (x : Cell m)
    {i j : Port m} (h : i ≠ j) :
    neighbor x i ≠ neighbor x j :=
  (neighbor_injective x).ne h

end GRWTSK.AlgebraicTopology.BinaryCubicalSquareBoundary
