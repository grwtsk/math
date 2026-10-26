/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Mathlib results retain their upstream authorship and licenses. -/

import Mathlib

set_option autoImplicit false

/-!
# Finite spin cuts and oriented graph energy

A finite simple undirected graph is presented by a finset containing exactly
one oriented representative of each undirected edge. The representative
orientation is bookkeeping; it is not a directed interaction.

For Boolean spins, an edge contributes one to the classical cut precisely
when its endpoints differ. Its squared real spin difference is four times
that indicator. Counting each edge in both orientations therefore produces
eight times the classical cut value.

This is a finite algebraic bridge only. It does not identify the present
edge representation with the archived `CellGraph`/`SpectralTensor` carrier,
construct a quantum Hamiltonian, prove a QAOA circuit expectation, or import
the Sherrington--Kirkpatrick or Parisi limiting theorems.
-/

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SpinCutEnergy

/-- One representative per undirected edge, with no loops or reverse duplicates.
    The graph has precisely the undirected edges represented by `edges`. -/
structure SimpleEdgePresentation (V : Type*) [DecidableEq V] where
  edges : Finset (V × V)
  loopless : ∀ e ∈ edges, e.1 ≠ e.2
  noReverse : ∀ e ∈ edges, (e.2, e.1) ∉ edges

variable {V : Type*} [DecidableEq V]

/-- Convert a Boolean label to an Ising spin in `{-1, 1}`. -/
def spin (b : Bool) : ℝ := if b then 1 else -1

/-- Real-valued indicator that two Boolean spins differ. -/
def cutIndicator (a b : Bool) : ℝ := if a = b then 0 else 1

/-- Classical cut value, with each undirected edge counted exactly once. -/
def cutSize (G : SimpleEdgePresentation V) (σ : V → Bool) : ℝ :=
  ∑ e ∈ G.edges, cutIndicator (σ e.1) (σ e.2)

/-- Squared-difference energy, with each undirected edge counted once. -/
def edgeEnergy (G : SimpleEdgePresentation V) (σ : V → Bool) : ℝ :=
  ∑ e ∈ G.edges, (spin (σ e.1) - spin (σ e.2)) ^ 2

/-- Squared-difference energy over both orientations of every edge. -/
def orientedEnergy (G : SimpleEdgePresentation V) (σ : V → Bool) : ℝ :=
  ∑ e ∈ G.edges,
    ((spin (σ e.1) - spin (σ e.2)) ^ 2 +
      (spin (σ e.2) - spin (σ e.1)) ^ 2)

/-- One squared difference is four times the cut indicator. -/
theorem spin_difference_sq (a b : Bool) :
    (spin a - spin b) ^ 2 = 4 * cutIndicator a b := by
  cases a <;> cases b <;> norm_num [spin, cutIndicator]

/-- Both orientations of an edge contribute eight times its cut indicator. -/
theorem spin_oriented_difference_sq (a b : Bool) :
    (spin a - spin b) ^ 2 + (spin b - spin a) ^ 2 =
      8 * cutIndicator a b := by
  cases a <;> cases b <;> norm_num [spin, cutIndicator]

/-- The ordinary (once-per-edge) squared-difference normalization. -/
theorem edgeEnergy_eq_four_cutSize
    (G : SimpleEdgePresentation V) (σ : V → Bool) :
    edgeEnergy G σ = 4 * cutSize G σ := by
  unfold edgeEnergy
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro e he
  exact spin_difference_sq (σ e.1) (σ e.2)

/-- The oriented (twice-per-edge) graph energy is eight times MaxCut's
    classical objective evaluated at the specified spin configuration. -/
theorem orientedEnergy_eq_eight_cutSize
    (G : SimpleEdgePresentation V) (σ : V → Bool) :
    orientedEnergy G σ = 8 * cutSize G σ := by
  unfold orientedEnergy
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro e he
  exact spin_oriented_difference_sq (σ e.1) (σ e.2)

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SpinCutEnergy
