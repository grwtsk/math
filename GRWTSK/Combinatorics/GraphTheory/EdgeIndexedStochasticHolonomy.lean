/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors; AI-assisted Lean drafting.
SOURCE_PROOF_CANDIDATE / LEAN_COMPILATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.Combinatorics.GraphTheory.RelationalHolonomyPathEquivalence
import Mathlib.Tactic

/-!
# Finite edge-indexed Markov transport over a holonomy connection

A finite quiver has distinct arrow fibers `a ⟶ b`. The probability of
traversing an arrow is attached to that exact arrow, not just its endpoints.
Each vertex also has an explicit stay probability. Nonnegativity and the
source-row normalization are required, rather than inferred from group
holonomy. Marginalizing the arrows recovers the existing `NetworkFlux`.

For a finite group `G`, a fiber state `x : G` is right-multiplied by
the connection transport of the traversed edge. The lifted density at
`(b,y)` therefore uses the unique predecessor `y * U(e)⁻¹`.
Summing out `G` recovers the vertex Markov step, and a finite permutation
of the group fiber proves conservation of total mass.

A gauge frame `h` relabels a fiber by `x ↦ x * h(v)`. The associated
density changes by `m'(v,y) = m(v,y * h(v)⁻¹)`. Direct group cancellation
proves that the lifted Markov step intertwines this relabeling and the
existing connection gauge law. This is a real compatibility theorem on a
shared edge carrier, not an identification of stochastic positivity with
the sign of a group-valued or arithmetic holonomy operator.

Primary proof: interchange finite vertex, edge and fiber sums; change the
fiber summation index by right multiplication. Independent boundary check:
parallel edges remain separate before aggregation, although their total
vertex-to-vertex probability can coincide. Stays are not traversed arrows.
A group transport product is not itself a stochastic normalization.

Standard finite Markov and discrete gauge algebra; no priority claim,
physical energy interpretation, or empirical model is inferred. Source
proof scripts await elaboration, fresh kernel verification and axiom audit.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.EdgeIndexedStochasticHolonomy

open Quiver
open GRWTSK.DifferentialGeometry.RelationalHolonomy
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationalHolonomyReview
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationalHolonomyPathEquivalence

universe u w

variable {V : Type u} [Quiver V] [Fintype V]
  [∀ a b : V, Fintype (a ⟶ b)]

/-- Source-row normalized probabilities for every actual directed arrow
and for staying at a vertex. Parallel arrows have independent weights. -/
structure EdgeKernel (V : Type u) [Quiver V] [Fintype V]
    [∀ a b : V, Fintype (a ⟶ b)] where
  stay : V → ℝ
  edge : ∀ {a b : V}, (a ⟶ b) → ℝ
  stay_nonneg : ∀ a, 0 ≤ stay a
  edge_nonneg : ∀ {a b : V} (e : a ⟶ b), 0 ≤ edge e
  row_sum : ∀ a, stay a + (∑ b : V, ∑ e : a ⟶ b, edge e) = 1

/-- One redistribution, retaining each edge as a separate summand. -/
def EdgeKernel.step (K : EdgeKernel V) (mass : V → ℝ) (b : V) : ℝ :=
  K.stay b * mass b + ∑ a : V, ∑ e : a ⟶ b, K.edge e * mass a

theorem EdgeKernel.step_nonneg (K : EdgeKernel V)
    (mass : V → ℝ) (hmass : ∀ a, 0 ≤ mass a) (b : V) :
    0 ≤ K.step mass b := by
  unfold EdgeKernel.step
  apply add_nonneg
  · exact mul_nonneg (K.stay_nonneg b) (hmass b)
  · apply Finset.sum_nonneg
    intro a _
    apply Finset.sum_nonneg
    intro e _
    exact mul_nonneg (K.edge_nonneg e) (hmass a)

/-- Each outgoing probability is counted once; conservation uses no
symmetry or reversibility assumption. -/
theorem EdgeKernel.total_step (K : EdgeKernel V) (mass : V → ℝ) :
    (∑ b : V, K.step mass b) = ∑ a : V, mass a := by
  classical
  calc
    (∑ b : V, K.step mass b) =
        (∑ a : V, K.stay a * mass a) +
          (∑ a : V, ∑ b : V, ∑ e : a ⟶ b, K.edge e * mass a) := by
            simp only [EdgeKernel.step, Finset.sum_add_distrib]
            rw [Finset.sum_comm]
    _ = ∑ a : V,
          (K.stay a + (∑ b : V, ∑ e : a ⟶ b, K.edge e)) * mass a := by
            simp only [add_mul, Finset.sum_add_distrib, Finset.sum_mul]
    _ = ∑ a : V, mass a := by
          simp only [K.row_sum, one_mul]

/-- The stationary kernel is permitted even when the quiver has no arrows. -/
def EdgeKernel.stationary : EdgeKernel V where
  stay _ := 1
  edge := fun {a b} _ => 0
  stay_nonneg := by intro a; norm_num
  edge_nonneg := by intro a b e; norm_num
  row_sum := by intro a; simp

/-- Aggregate parallel arrows only at the explicit marginal boundary. -/
def EdgeKernel.aggregateWeight (K : EdgeKernel V) (a b : V) : ℝ := by
  classical
  exact (if a = b then K.stay a else 0) + ∑ e : a ⟶ b, K.edge e

theorem EdgeKernel.aggregateWeight_nonneg (K : EdgeKernel V) (a b : V) :
    0 ≤ K.aggregateWeight a b := by
  classical
  have hedge : 0 ≤ ∑ e : a ⟶ b, K.edge e :=
    Finset.sum_nonneg (fun e _ => K.edge_nonneg e)
  by_cases h : a = b
  · simpa [EdgeKernel.aggregateWeight, h] using
      add_nonneg (K.stay_nonneg a) hedge
  · simpa [EdgeKernel.aggregateWeight, h] using hedge

theorem EdgeKernel.aggregateWeight_row_sum (K : EdgeKernel V) (a : V) :
    (∑ b : V, K.aggregateWeight a b) = 1 := by
  classical
  calc
    (∑ b : V, K.aggregateWeight a b) =
        (∑ b : V, if a = b then K.stay a else 0) +
          (∑ b : V, ∑ e : a ⟶ b, K.edge e) := by
            simp [EdgeKernel.aggregateWeight, Finset.sum_add_distrib]
    _ = K.stay a + (∑ b : V, ∑ e : a ⟶ b, K.edge e) := by simp
    _ = 1 := K.row_sum a

/-- Exact marginal into the pre-existing vertex-level network-flux type.
Support at non-self destinations implies the presence of an actual arrow. -/
def EdgeKernel.toNetworkFlux (K : EdgeKernel V) : NetworkFlux V where
  weight := K.aggregateWeight
  nonneg := K.aggregateWeight_nonneg
  row_sum := K.aggregateWeight_row_sum
  supported := by
    intro a b hweight
    by_cases hab : a = b
    · exact Or.inl hab
    · right
      by_contra hno
      haveI : IsEmpty (a ⟶ b) := ⟨fun e => hno ⟨e⟩⟩
      have hempty : (∑ e : a ⟶ b, K.edge e) = 0 := by simp
      apply hweight
      simp [EdgeKernel.aggregateWeight, hab, hempty]

/-- Vertex evolution from the aggregated flux equals the edge-resolved step. -/
theorem EdgeKernel.step_eq_networkFlux (K : EdgeKernel V)
    (mass : V → ℝ) (b : V) :
    K.step mass b = K.toNetworkFlux.step mass b := by
  classical
  simp [EdgeKernel.step, EdgeKernel.toNetworkFlux,
    EdgeKernel.aggregateWeight, NetworkFlux.step,
    mul_add, Finset.sum_add_distrib, Finset.mul_sum,
    mul_comm, mul_left_comm, mul_assoc]

/-- The weight of a traversed walk is the product of its actual arrow
probabilities. A zero-edge walk means no traversal, not a stay draw. -/
def EdgeKernel.pathProbability (K : EdgeKernel V) {a b : V} :
    QuiverWalk a b → ℝ
  | .nil _ => 1
  | .step e tail => K.edge e * K.pathProbability tail

theorem EdgeKernel.pathProbability_nonneg (K : EdgeKernel V)
    {a b : V} (p : QuiverWalk a b) : 0 ≤ K.pathProbability p := by
  induction p with
  | nil _ => norm_num [EdgeKernel.pathProbability]
  | step e tail ih =>
      change 0 ≤ K.edge e * K.pathProbability tail
      exact mul_nonneg (K.edge_nonneg e) ih

theorem EdgeKernel.pathProbability_append (K : EdgeKernel V)
    {a b c : V} (p : QuiverWalk a b) (q : QuiverWalk b c) :
    K.pathProbability (Walk.append p q) =
      K.pathProbability p * K.pathProbability q := by
  induction p with
  | nil _ => simp [Walk.append, EdgeKernel.pathProbability]
  | step e tail ih =>
      change K.edge e * K.pathProbability (Walk.append tail q) =
        (K.edge e * K.pathProbability tail) * K.pathProbability q
      rw [ih, mul_assoc]

variable {G : Type w} [Group G] [Fintype G]

/-- A density on the group fiber is pushed along an arrow by right
multiplication by its connection element. -/
def EdgeKernel.liftedStep (K : EdgeKernel V)
    (C : Connection (fun a b : V => a ⟶ b) G)
    (mass : V → G → ℝ) (b : V) (y : G) : ℝ :=
  K.stay b * mass b y +
    ∑ a : V, ∑ e : a ⟶ b,
      K.edge e * mass a (y * (C.edgeTransport e)⁻¹)

theorem EdgeKernel.liftedStep_nonneg (K : EdgeKernel V)
    (C : Connection (fun a b : V => a ⟶ b) G)
    (mass : V → G → ℝ) (hmass : ∀ a x, 0 ≤ mass a x)
    (b : V) (y : G) : 0 ≤ K.liftedStep C mass b y := by
  unfold EdgeKernel.liftedStep
  apply add_nonneg
  · exact mul_nonneg (K.stay_nonneg b) (hmass b y)
  · apply Finset.sum_nonneg
    intro a _
    apply Finset.sum_nonneg
    intro e _
    exact mul_nonneg (K.edge_nonneg e) (hmass a _)

/-- Right multiplication permutes a finite group, preserving its sum. -/
private theorem sum_right_translate (f : G → ℝ) (u : G) :
    (∑ y : G, f (y * u⁻¹)) = ∑ x : G, f x := by
  exact Fintype.sum_equiv (Equiv.mulRight u⁻¹)
    (fun y : G => f (y * u⁻¹)) f (fun y => rfl)

/-- Marginalizing the lifted group fiber gives the original edge-resolved
vertex step, without forgetting any edge while taking the sum. -/
theorem EdgeKernel.lifted_marginal (K : EdgeKernel V)
    (C : Connection (fun a b : V => a ⟶ b) G)
    (mass : V → G → ℝ) (b : V) :
    (∑ y : G, K.liftedStep C mass b y) =
      K.step (fun a => ∑ x : G, mass a x) b := by
  classical
  have htransfer :
      (∑ y : G, ∑ a : V, ∑ e : a ⟶ b,
        K.edge e * mass a (y * (C.edgeTransport e)⁻¹)) =
      ∑ a : V, ∑ e : a ⟶ b, K.edge e * (∑ x : G, mass a x) := by
    calc
      (∑ y : G, ∑ a : V, ∑ e : a ⟶ b,
          K.edge e * mass a (y * (C.edgeTransport e)⁻¹)) =
        ∑ a : V, ∑ y : G, ∑ e : a ⟶ b,
          K.edge e * mass a (y * (C.edgeTransport e)⁻¹) :=
            Finset.sum_comm
      _ = ∑ a : V, ∑ e : a ⟶ b, ∑ y : G,
          K.edge e * mass a (y * (C.edgeTransport e)⁻¹) := by
            apply Finset.sum_congr rfl
            intro a _
            exact Finset.sum_comm
      _ = ∑ a : V, ∑ e : a ⟶ b,
          K.edge e * (∑ x : G, mass a x) := by
            apply Finset.sum_congr rfl
            intro a _
            apply Finset.sum_congr rfl
            intro e _
            rw [← Finset.mul_sum, sum_right_translate]
  unfold EdgeKernel.liftedStep EdgeKernel.step
  rw [Finset.sum_add_distrib, ← Finset.mul_sum, htransfer]

/-- The group-fiber lift conserves total mass, even for noncommutative G. -/
theorem EdgeKernel.lifted_total (K : EdgeKernel V)
    (C : Connection (fun a b : V => a ⟶ b) G)
    (mass : V → G → ℝ) :
    (∑ b : V, ∑ y : G, K.liftedStep C mass b y) =
      ∑ a : V, ∑ x : G, mass a x := by
  classical
  calc
    (∑ b : V, ∑ y : G, K.liftedStep C mass b y) =
        ∑ b : V, K.step (fun a => ∑ x : G, mass a x) b := by
          apply Finset.sum_congr rfl
          intro b _
          exact K.lifted_marginal C mass b
    _ = ∑ a : V, ∑ x : G, mass a x :=
      K.total_step (fun a => ∑ x : G, mass a x)

/-- Change fiber coordinates at each vertex by the same local frame used
in the existing connection gauge law. -/
def reframe (frame : V → G) (mass : V → G → ℝ)
    (a : V) (y : G) : ℝ :=
  mass a (y * (frame a)⁻¹)

/-- The lifted stochastic step intertwines local gauge-frame changes.
The real edge probabilities are fixed; only the group fiber is relabeled. -/
theorem EdgeKernel.liftedStep_gauge (K : EdgeKernel V)
    (C : Connection (fun a b : V => a ⟶ b) G)
    (frame : V → G) (mass : V → G → ℝ) (b : V) (y : G) :
    K.liftedStep (C.gauge frame) (reframe frame mass) b y =
      reframe frame (K.liftedStep C mass) b y := by
  classical
  change
    K.stay b * mass b (y * (frame b)⁻¹) +
      (∑ a : V, ∑ e : a ⟶ b,
        K.edge e * mass a
          ((y * ((frame a)⁻¹ * C.edgeTransport e * frame b)⁻¹) *
            (frame a)⁻¹)) =
    K.stay b * mass b (y * (frame b)⁻¹) +
      (∑ a : V, ∑ e : a ⟶ b,
        K.edge e * mass a ((y * (frame b)⁻¹) * (C.edgeTransport e)⁻¹))
  congr 1
  apply Finset.sum_congr rfl
  intro a _
  apply Finset.sum_congr rfl
  intro e _
  have hgroup :
      (y * ((frame a)⁻¹ * C.edgeTransport e * frame b)⁻¹) * (frame a)⁻¹ =
        (y * (frame b)⁻¹) * (C.edgeTransport e)⁻¹ := by group
  exact congrArg (fun z : G => K.edge e * mass a z) hgroup

/-- The edge probability and the conjugacy-invariant loop readout can
be combined without equating the stochastic and group-valued laws. -/
def EdgeKernel.weightedReadout (K : EdgeKernel V)
    (C : Connection (fun a b : V => a ⟶ b) G)
    {a : V} (p : QuiverWalk a a) (readout : G → ℝ) : ℝ :=
  K.pathProbability p * readout (C.holonomy p)

theorem EdgeKernel.weightedReadout_gauge (K : EdgeKernel V)
    (C : Connection (fun a b : V => a ⟶ b) G)
    (frame : V → G) {a : V} (p : QuiverWalk a a)
    (readout : G → ℝ) (hinvariant : ConjugacyInvariant readout) :
    K.weightedReadout (C.gauge frame) p readout =
      K.weightedReadout C p readout := by
  change K.pathProbability p * readout ((C.gauge frame).holonomy p) =
    K.pathProbability p * readout (C.holonomy p)
  rw [Connection.holonomy_gauge]
  rw [hinvariant (C.holonomy p) (frame a)]

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.EdgeIndexedStochasticHolonomy
end
