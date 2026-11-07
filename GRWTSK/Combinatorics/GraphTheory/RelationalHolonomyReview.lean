/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors; AI-assisted Lean drafting.
SOURCE_PROOF_CANDIDATE / LEAN_COMPILATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.Combinatorics.GraphTheory.DirectedGraphEdgeTrace
import Mathlib.Tactic

/-!
# Relational holonomy, observer-independent cycle readouts, and finite dispersion

This file formalizes a *mathematical model* motivated by a philosophical
interpretation of life review: experiences are represented at nodes of a
relational network, and chronological interactions retain their exact typed
edges. The model has two deliberately separate structures.

* A group-valued edge connection accumulates ordered path transport. Changing
  local frames changes open-path transport at its endpoints, but a conjugacy-
  invariant observable of a valid closed loop is independent of that frame.
  Cyclically rotating a genuinely closed, composable two-part walk also
  preserves such a readout. This expresses a precise sense in which a local
  observer is not mathematically privileged.
* A nonnegative row-stochastic flux supported on the same graph (with
  self-retention allowed) redistributes vertex intensity. The global sum
  is conserved. This is a finite *stipulated* transport law, not a derivation
  of physical energy conservation from holonomy.

Reused sources:
`DirectedGraphEdgeTrace.TotalEdge`, `ValidFrom`, `finish`, their append
lemmas, and the underlying Mathlib `Quiver` arrow identities. Parallel edges,
edge directions, and repeated chronological occurrences are retained.
`SpinHolonomyEventWalk` is a related commutative Ising-sign specialization;
the present transport permits a noncommutative group and therefore retains
conjugacy rather than incorrectly asserting equality of raw loop products.

Proof comparison: the primary argument is multiplication and cancellation
of adjacent endpoint gauge factors; an independent basepoint test is cyclic
conjugation of two path products. The empty walk, isolated vertex and
trivial identity flux are permitted boundary cases. A nontrivial conjugacy-
invariant readout is an explicit premise; no arbitrary readout is presumed
invariant. A group product can discard information about the original event
list, which remains available as separately typed input.

These are standard discrete gauge and finite Markov identities; theorem-level
novelty is not asserted. No formal, empirical, or metaphysical claim is made
about dying, neural life review, empathy, consciousness, God, or a physical
holonomic mechanism of energy dispersion. Those interpretations would require
independent observable definitions and source-preserving evidence.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationalHolonomyReview

open Quiver
open GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.EdgeTrace

universe u w z

section GroupTransport

variable {V : Type u} [Quiver V] {G : Type w} [Group G]

/-- Ordered multiplicative transport along the original fully tagged edges.
An arbitrary list is algebraically meaningful, but only a `ValidFrom` list
represents a composable chronological path from the specified root. -/
def pathTransport (weight : TotalEdge V → G)
    (events : List (TotalEdge V)) : G :=
  (events.map weight).prod

@[simp] theorem pathTransport_nil (weight : TotalEdge V → G) :
    pathTransport weight [] = 1 := by
  simp [pathTransport]

@[simp] theorem pathTransport_cons (weight : TotalEdge V → G)
    (edge : TotalEdge V) (tail : List (TotalEdge V)) :
    pathTransport weight (edge :: tail) =
      weight edge * pathTransport weight tail := by
  simp [pathTransport]

/-- Ordered concatenation composes transports, even for noncommutative G. -/
theorem pathTransport_append (weight : TotalEdge V → G)
    (first second : List (TotalEdge V)) :
    pathTransport weight (first ++ second) =
      pathTransport weight first * pathTransport weight second := by
  induction first with
  | nil => simp
  | cons edge tail ih =>
      simp [ih, mul_assoc]

/-- Local change of frame: the source and target factors are not optional. -/
def gaugedEdge (weight : TotalEdge V → G) (frame : V → G)
    (edge : TotalEdge V) : G :=
  (frame edge.1)⁻¹ * weight edge * frame edge.2.1

/-- Endpoint-gauge telescoping on the existing VALID typed event trace. -/
theorem valid_path_gauge_telescope (weight : TotalEdge V → G)
    (frame : V → G) (root : V) (events : List (TotalEdge V))
    (hvalid : ValidFrom root events) :
    pathTransport (gaugedEdge weight frame) events =
      (frame root)⁻¹ * pathTransport weight events *
        frame (finish root events) := by
  induction events generalizing root with
  | nil =>
      simp [pathTransport, finish]
  | cons edge tail ih =>
      rcases hvalid with ⟨hsource, htail⟩
      have ht := ih edge.2.1 htail
      rw [pathTransport_cons, ht]
      simp only [pathTransport_cons]
      change
        ((frame edge.1)⁻¹ * weight edge * frame edge.2.1) *
            ((frame edge.2.1)⁻¹ * pathTransport weight tail *
              frame (finish edge.2.1 tail)) =
          (frame root)⁻¹ * (weight edge * pathTransport weight tail) *
            frame (finish edge.2.1 tail)
      rw [hsource]
      group

/-- A scalar readout depends only on the conjugacy class of a loop product. -/
def ConjugacyInvariant {A : Type z} (readout : G → A) : Prop :=
  ∀ x h : G, readout (h⁻¹ * x * h) = readout x

/-- A valid closed relational history has a frame-independent class readout. -/
theorem closed_walk_observer_independent {A : Type z}
    (weight : TotalEdge V → G) (frame : V → G)
    (root : V) (events : List (TotalEdge V))
    (readout : G → A)
    (hvalid : ValidFrom root events)
    (hclosed : finish root events = root)
    (hinvariant : ConjugacyInvariant readout) :
    readout (pathTransport (gaugedEdge weight frame) events) =
      readout (pathTransport weight events) := by
  rw [valid_path_gauge_telescope weight frame root events hvalid, hclosed]
  exact hinvariant (pathTransport weight events) (frame root)

/-- Cyclic order changes the based group product by conjugation, not equality. -/
theorem cyclic_transport_conjugate (weight : TotalEdge V → G)
    (first second : List (TotalEdge V)) :
    (pathTransport weight first)⁻¹ *
        pathTransport weight (first ++ second) *
          pathTransport weight first =
      pathTransport weight (second ++ first) := by
  rw [pathTransport_append, pathTransport_append]
  group

/-- Class observations agree under a cyclic rotation. -/
theorem cyclic_readout {A : Type z} (weight : TotalEdge V → G)
    (readout : G → A) (hinvariant : ConjugacyInvariant readout)
    (first second : List (TotalEdge V)) :
    readout (pathTransport weight (first ++ second)) =
      readout (pathTransport weight (second ++ first)) := by
  have h := hinvariant (pathTransport weight (first ++ second))
    (pathTransport weight first)
  rw [cyclic_transport_conjugate weight first second] at h
  exact h.symm

/-- Two genuine mutually returning paths define closed cycles rooted at
both vertices; their class readouts coincide. The validity and endpoint
conditions are not inferred from a bare list permutation. -/
theorem typed_cycle_rotation {A : Type z}
    (weight : TotalEdge V → G) (readout : G → A)
    (hinvariant : ConjugacyInvariant readout)
    (a b : V) (first second : List (TotalEdge V))
    (hfirst : ValidFrom a first) (hsecond : ValidFrom b second)
    (hfirstEnd : finish a first = b) (hsecondEnd : finish b second = a) :
    ValidFrom a (first ++ second) ∧
      finish a (first ++ second) = a ∧
      ValidFrom b (second ++ first) ∧
      finish b (second ++ first) = b ∧
      readout (pathTransport weight (first ++ second)) =
        readout (pathTransport weight (second ++ first)) := by
  refine ⟨?_, ?_, ?_, ?_, cyclic_readout weight readout hinvariant first second⟩
  · exact (validFrom_append_iff a first second).2
      ⟨hfirst, by simpa [hfirstEnd] using hsecond⟩
  · rw [finish_append, hfirstEnd, hsecondEnd]
  · exact (validFrom_append_iff b second first).2
      ⟨hsecond, by simpa [hsecondEnd] using hfirst⟩
  · rw [finish_append, hsecondEnd, hfirstEnd]

end GroupTransport

section FiniteDispersion

variable {V : Type u} [Quiver V] [Fintype V]

/-- A row-stochastic redistribution supported on the ORIGINAL quiver.
The self-loop option represents retained intensity at the same vertex.
Stochasticity is a hypothesis, not a theorem obtained from holonomy. -/
structure NetworkFlux (V : Type u) [Quiver V] [Fintype V] where
  weight : V → V → ℝ
  nonneg : ∀ a b, 0 ≤ weight a b
  row_sum : ∀ a, (∑ b : V, weight a b) = 1
  supported : ∀ a b, weight a b ≠ 0 → a = b ∨ Nonempty (a ⟶ b)

/-- One network redistribution of a scalar intensity field. -/
def NetworkFlux.step (flux : NetworkFlux V) (intensity : V → ℝ)
    (destination : V) : ℝ :=
  ∑ origin : V, intensity origin * flux.weight origin destination

/-- The step maps nonnegative vertex intensities to nonnegative ones. -/
theorem NetworkFlux.step_nonneg (flux : NetworkFlux V)
    (intensity : V → ℝ) (h : ∀ a, 0 ≤ intensity a) (b : V) :
    0 ≤ flux.step intensity b := by
  unfold NetworkFlux.step
  exact Finset.sum_nonneg (fun a _ => mul_nonneg (h a) (flux.nonneg a b))

/-- Global intensity is conserved for every finite row-stochastic flux. -/
theorem NetworkFlux.total_step (flux : NetworkFlux V)
    (intensity : V → ℝ) :
    (∑ b : V, flux.step intensity b) = ∑ a : V, intensity a := by
  classical
  change (∑ b : V, ∑ a : V, intensity a * flux.weight a b) =
    ∑ a : V, intensity a
  calc
    (∑ b : V, ∑ a : V, intensity a * flux.weight a b) =
        ∑ a : V, ∑ b : V, intensity a * flux.weight a b := Finset.sum_comm
    _ = ∑ a : V, intensity a := by
      simp_rw [← Finset.mul_sum]
      simp [flux.row_sum]

/-- No nonzero transfer is permitted across a missing, non-self arrow. -/
theorem NetworkFlux.off_network_zero (flux : NetworkFlux V)
    {a b : V} (hne : a ≠ b) (hno : ¬ Nonempty (a ⟶ b)) :
    flux.weight a b = 0 := by
  by_contra hweight
  rcases flux.supported a b hweight with hsame | hedge
  · exact hne hsame
  · exact hno hedge

/-- Even a graph without arrows admits the stationary redistribution.
This boundary case shows conservation alone does not imply movement. -/
noncomputable def NetworkFlux.stationary : NetworkFlux V where
  weight a b := if a = b then 1 else 0
  nonneg := by
    intro a b
    split_ifs <;> norm_num
  row_sum := by
    intro a
    classical
    simp
  supported := by
    intro a b h
    left
    by_contra hne
    simp [hne] at h

end FiniteDispersion

section ReviewModel

variable {V : Type u} [Quiver V] [Fintype V] {G : Type w} [Group G]

/-- The same vertex/edge carrier supports chronological holonomy and
redistribution, but the connection and stochastic flux remain typed fields.
`intensity` is a stipulated model scalar, not measured neural energy. -/
structure RelationalReview (V : Type u) [Quiver V] [Fintype V]
    (G : Type w) [Group G] where
  edgeWeight : TotalEdge V → G
  flux : NetworkFlux V
  intensity : V → ℝ

/-- Global aggregation uses every vertex, without selecting a privileged one. -/
def RelationalReview.total (model : RelationalReview V G) : ℝ :=
  ∑ a : V, model.intensity a

/-- Aggregate after the stipulated redistribution. -/
def RelationalReview.totalAfterStep (model : RelationalReview V G) : ℝ :=
  ∑ b : V, model.flux.step model.intensity b

/-- Redistribution preserves the full relational aggregate. -/
theorem RelationalReview.totalAfterStep_eq_total
    (model : RelationalReview V G) :
    model.totalAfterStep = model.total := by
  simpa [RelationalReview.totalAfterStep, RelationalReview.total] using
    (NetworkFlux.total_step model.flux model.intensity)

/-- Combined consumer: conservation of the full aggregate AND invariance of
a closed-loop class readout. Neither claim implies the other. -/
theorem RelationalReview.conservation_and_observer_independence
    {A : Type z} (model : RelationalReview V G)
    (frame : V → G) (root : V) (events : List (TotalEdge V))
    (readout : G → A)
    (hvalid : ValidFrom root events)
    (hclosed : finish root events = root)
    (hinvariant : ConjugacyInvariant readout) :
    model.totalAfterStep = model.total ∧
      readout (pathTransport (gaugedEdge model.edgeWeight frame) events) =
        readout (pathTransport model.edgeWeight events) := by
  exact ⟨model.totalAfterStep_eq_total,
    closed_walk_observer_independent model.edgeWeight frame root events
      readout hvalid hclosed hinvariant⟩

end ReviewModel

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationalHolonomyReview
end
