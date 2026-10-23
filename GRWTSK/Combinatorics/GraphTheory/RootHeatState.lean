/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import Mathlib.Data.Rat.BigOperators
import Mathlib.Algebra.Order.BigOperators.Ring.Finset

set_option autoImplicit false

/-!
# Root aggregation and finite rational heat

A supplied root map is the mathematical input to root compression. Aggregate
weights are exact fiber sums. Finite heat is a supplied column-stochastic
rational kernel; mass and nonnegativity are proved, including at every iterate.
No discovery of graph roots, continuum heat limit or spectral-gap assumption is
hidden in the definitions. Priority compares current root heat, so a scheduling
implementation must retain the current state as well as the root identities.
-/

namespace GRWTSK.Combinatorics.GraphTheory.RootHeatState

open scoped BigOperators

variable {Vertex Root : Type*}

section Aggregation

variable [Fintype Vertex] [Fintype Root] [DecidableEq Root]

/-- Push each vertex weight to its supplied root, without losing fiber mass. -/
def aggregate (root : Vertex → Root) (weight : Vertex → ℚ) (r : Root) : ℚ :=
  ∑ vertex, if root vertex = r then weight vertex else 0

omit [Fintype Root] in
theorem aggregate_nonneg (root : Vertex → Root) (weight : Vertex → ℚ)
    (nonnegative : ∀ vertex, 0 ≤ weight vertex) (r : Root) :
    0 ≤ aggregate root weight r := by
  apply Finset.sum_nonneg
  intro vertex _
  split_ifs <;> simp_all

/-- Replacing a forest by its roots preserves total weight exactly. -/
theorem aggregate_mass (root : Vertex → Root) (weight : Vertex → ℚ) :
    ∑ r, aggregate root weight r = ∑ vertex, weight vertex := by
  unfold aggregate
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro vertex _
  simp

end Aggregation

/-- Nonnegative rational transport with one unit of outgoing mass per source. -/
structure HeatKernel (Root : Type*) [Fintype Root] where
  transition : Root → Root → ℚ
  nonnegative : ∀ target source, 0 ≤ transition target source
  stochastic : ∀ source, ∑ target, transition target source = 1

namespace HeatKernel

variable [Fintype Root]

/-- One exact finite Markov heat step. The first kernel index is the target. -/
def step (kernel : HeatKernel Root) (heat : Root → ℚ) (target : Root) : ℚ :=
  ∑ source, kernel.transition target source * heat source

theorem step_nonneg (kernel : HeatKernel Root) (heat : Root → ℚ)
    (nonnegative : ∀ root, 0 ≤ heat root) (target : Root) :
    0 ≤ kernel.step heat target := by
  exact Finset.sum_nonneg (fun source _ =>
    mul_nonneg (kernel.nonnegative target source) (nonnegative source))

/-- No heat is lost or created by a stochastic update. -/
theorem step_mass (kernel : HeatKernel Root) (heat : Root → ℚ) :
    ∑ target, kernel.step heat target = ∑ source, heat source := by
  unfold step
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro source _
  rw [← Finset.sum_mul, kernel.stochastic, one_mul]

/-- The exact state at a discrete heat time. -/
def evolve (kernel : HeatKernel Root) (initial : Root → ℚ) : Nat → Root → ℚ
  | 0 => initial
  | time + 1 => kernel.step (kernel.evolve initial time)

theorem evolve_nonneg (kernel : HeatKernel Root) (initial : Root → ℚ)
    (nonnegative : ∀ root, 0 ≤ initial root) (time : Nat) :
    ∀ root, 0 ≤ kernel.evolve initial time root := by
  induction time with
  | zero => exact nonnegative
  | succ time previous => exact kernel.step_nonneg _ previous

theorem evolve_mass (kernel : HeatKernel Root) (initial : Root → ℚ) (time : Nat) :
    ∑ root, kernel.evolve initial time root = ∑ root, initial root := by
  induction time with
  | zero => rfl
  | succ time previous => exact (kernel.step_mass _).trans previous

end HeatKernel

/-- Root names plus the current exact heat are the retained prioritization state. -/
structure State (Root : Type*) where
  heat : Root → ℚ
  nonnegative : ∀ root, 0 ≤ heat root

namespace State

variable [Fintype Root]

/-- Heat updates do not alter the root carrier. -/
def advance (state : State Root) (kernel : HeatKernel Root) : State Root where
  heat := kernel.step state.heat
  nonnegative := kernel.step_nonneg _ state.nonnegative

/-- Higher current heat has higher priority; ties remain explicit. -/
def Prioritizes (state : State Root) (first second : Root) : Prop :=
  state.heat second ≤ state.heat first

omit [Fintype Root] in
theorem prioritizes_total (state : State Root) (first second : Root) :
    state.Prioritizes first second ∨ state.Prioritizes second first :=
  le_total _ _

omit [Fintype Root] in
theorem prioritizes_trans (state : State Root) {first middle last : Root}
    (firstMiddle : state.Prioritizes first middle)
    (middleLast : state.Prioritizes middle last) : state.Prioritizes first last :=
  le_trans middleLast firstMiddle

/-- Zero entries may be omitted from the current sparse heat representation. -/
def active (state : State Root) : Finset Root :=
  Finset.univ.filter (fun root => state.heat root ≠ 0)

/-- Sparse support pruning preserves the exact current heat at every root. -/
theorem active_heat [DecidableEq Root] (state : State Root) (root : Root) :
    (if root ∈ state.active then state.heat root else 0) = state.heat root := by
  by_cases nonzero : state.heat root = 0 <;> simp [active, nonzero]

/-- Only zero mass is omitted when current heat is stored on its active roots. -/
theorem active_mass (state : State Root) :
    ∑ root ∈ state.active, state.heat root = ∑ root, state.heat root := by
  rw [active, Finset.sum_filter]
  apply Finset.sum_congr rfl
  intro root _
  by_cases zero : state.heat root = 0 <;> simp [zero]

/-- Every currently active root has positive heat. This is a current-state fact;
future diffusion can give a previously zero root positive heat. -/
theorem active_iff_positive (state : State Root) (root : Root) :
    root ∈ state.active ↔ 0 < state.heat root := by
  simp only [active, Finset.mem_filter, Finset.mem_univ, true_and]
  exact ne_comm.trans (state.nonnegative root).lt_iff_ne.symm

/-- Aggregating a finite forest gives a valid nonnegative root state. -/
def ofForest [Fintype Vertex] [DecidableEq Root] (root : Vertex → Root)
    (weight : Vertex → ℚ) (nonnegative : ∀ vertex, 0 ≤ weight vertex) : State Root where
  heat := aggregate root weight
  nonnegative := aggregate_nonneg root weight nonnegative

/-- Root compression followed by any finite heat time preserves forest mass. -/
theorem forest_evolve_mass [Fintype Vertex] [DecidableEq Root]
    (root : Vertex → Root) (weight : Vertex → ℚ)
    (kernel : HeatKernel Root) (time : Nat) :
    ∑ r, kernel.evolve (aggregate root weight) time r = ∑ vertex, weight vertex :=
  (kernel.evolve_mass _ _).trans (aggregate_mass root weight)

end State

end GRWTSK.Combinatorics.GraphTheory.RootHeatState
