/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors; AI-assisted Lean drafting.
SOURCE_PROOF_CANDIDATE / LEAN_ELABORATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.Combinatorics.GraphTheory.EdgeIndexedStochasticHolonomy
import Mathlib.Tactic

/-!
# Iterated edge-indexed holonomy and exact transport/trace compatibility

The prior `EdgeKernel.liftedStep` is an incoming-density pushforward, with
real nonnegative arrow probabilities, a separate stay probability, and a
group-valued connection. Here the one-step facts are propagated to EVERY
finite iterate without discarding the edge fibers or assuming reversibility.

The diagrams commute at every natural time:
  marginal ∘ liftedEvolve = evolve ∘ marginal,
  liftedEvolve(C.gauge h) ∘ reframe h =
    reframe h ∘ liftedEvolve(C).
Both mass and nonnegativity are propagated by induction. The reframe
permutes each finite group fiber, so it preserves the marginal and is
invertible; it does not change the physical vertex mass.

The existing `QuiverWalk`/Mathlib Path/valid-trace equivalence is used in
the independent pathwise fiber-action return. Every typed arrow in a
chronological walk acts by RIGHT multiplication. Concatenated paths compose
the actions in chronological order; gauging a path acts by a change of
coordinates at its actual source and target.

Proof comparison: induction over the finite number of stochastic steps;
the path action instead uses the exact earlier group transport composition
and edge/trace preservation. The empty walk has identity group transport,
whereas one Markov step can stay, traverse an edge, or combine parallel
edges. These are different mathematical operations.

The results make no claim about a continuous Markov semigroup, a signed
spin generator, arithmetic source positivity, physical energy, RH or GRH.
Compilation and independent verification remain NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.EdgeIndexedStochasticHolonomy

open Quiver
open GRWTSK.DifferentialGeometry.RelationalHolonomy
open GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.EdgeTrace
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationalHolonomyReview
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationalHolonomyPathEquivalence

universe u w

variable {V : Type u} [Quiver V] [Fintype V]
  [∀ a b : V, Fintype (a ⟶ b)]

/-- The actual forward density step, iterated a finite number of times. -/
def EdgeKernel.evolve (K : EdgeKernel V) (mass : V → ℝ) : ℕ → V → ℝ
  | 0 => mass
  | n + 1 => K.step (K.evolve mass n)

@[simp] theorem EdgeKernel.evolve_zero (K : EdgeKernel V) (mass : V → ℝ) :
    K.evolve mass 0 = mass := rfl

@[simp] theorem EdgeKernel.evolve_succ (K : EdgeKernel V)
    (mass : V → ℝ) (n : ℕ) :
    K.evolve mass (n + 1) = K.step (K.evolve mass n) := rfl

/-- Nonnegative vertex mass remains nonnegative at every finite step. -/
theorem EdgeKernel.evolve_nonneg (K : EdgeKernel V)
    (mass : V → ℝ) (hmass : ∀ a, 0 ≤ mass a)
    (n : ℕ) (a : V) : 0 ≤ K.evolve mass n a := by
  induction n generalizing a with
  | zero => exact hmass a
  | succ n ih =>
      change 0 ≤ K.step (K.evolve mass n) a
      exact K.step_nonneg _ (fun b => ih b) a

/-- Source-row normalization conserves the entire vertex mass at every step. -/
theorem EdgeKernel.evolve_total (K : EdgeKernel V)
    (mass : V → ℝ) (n : ℕ) :
    (∑ a : V, K.evolve mass n a) = ∑ a : V, mass a := by
  induction n with
  | zero => rfl
  | succ n ih =>
      change (∑ a : V, K.step (K.evolve mass n) a) = _
      exact (K.total_step (K.evolve mass n)).trans ih

variable {G : Type w} [Group G] [Fintype G]

/-- Iterate the group-fiber density pushforward, not the signed holonomy. -/
def EdgeKernel.liftedEvolve (K : EdgeKernel V)
    (C : Connection (fun a b : V => a ⟶ b) G)
    (mass : V → G → ℝ) : ℕ → V → G → ℝ
  | 0 => mass
  | n + 1 => K.liftedStep C (K.liftedEvolve C mass n)

@[simp] theorem EdgeKernel.liftedEvolve_zero (K : EdgeKernel V)
    (C : Connection (fun a b : V => a ⟶ b) G)
    (mass : V → G → ℝ) :
    K.liftedEvolve C mass 0 = mass := rfl

@[simp] theorem EdgeKernel.liftedEvolve_succ (K : EdgeKernel V)
    (C : Connection (fun a b : V => a ⟶ b) G)
    (mass : V → G → ℝ) (n : ℕ) :
    K.liftedEvolve C mass (n + 1) =
      K.liftedStep C (K.liftedEvolve C mass n) := rfl

/-- Every lifted iterate preserves nonnegative fiberwise densities. -/
theorem EdgeKernel.liftedEvolve_nonneg (K : EdgeKernel V)
    (C : Connection (fun a b : V => a ⟶ b) G)
    (mass : V → G → ℝ) (hmass : ∀ a x, 0 ≤ mass a x)
    (n : ℕ) (a : V) (x : G) :
    0 ≤ K.liftedEvolve C mass n a x := by
  induction n generalizing a x with
  | zero => exact hmass a x
  | succ n ih =>
      change 0 ≤ K.liftedStep C (K.liftedEvolve C mass n) a x
      exact K.liftedStep_nonneg C _ (fun b y => ih b y) a x

/-- The complete lifted total is conserved for an arbitrary finite number
of steps; no ergodicity or irreducibility premise is introduced. -/
theorem EdgeKernel.liftedEvolve_total (K : EdgeKernel V)
    (C : Connection (fun a b : V => a ⟶ b) G)
    (mass : V → G → ℝ) (n : ℕ) :
    (∑ a : V, ∑ x : G, K.liftedEvolve C mass n a x) =
      ∑ a : V, ∑ x : G, mass a x := by
  induction n with
  | zero => rfl
  | succ n ih =>
      change (∑ a : V, ∑ x : G,
        K.liftedStep C (K.liftedEvolve C mass n) a x) = _
      exact (K.lifted_total C (K.liftedEvolve C mass n)).trans ih

/-- The vertex marginal of the group lift is EXACTLY the ordinary
finite-time vertex diffusion on the existing edge kernel. -/
theorem EdgeKernel.liftedEvolve_marginal (K : EdgeKernel V)
    (C : Connection (fun a b : V => a ⟶ b) G)
    (mass : V → G → ℝ) (n : ℕ) (b : V) :
    (∑ y : G, K.liftedEvolve C mass n b y) =
      K.evolve (fun a => ∑ x : G, mass a x) n b := by
  induction n generalizing b with
  | zero => rfl
  | succ n ih =>
      change (∑ y : G,
        K.liftedStep C (K.liftedEvolve C mass n) b y) =
          K.step (K.evolve (fun a => ∑ x : G, mass a x) n) b
      rw [K.lifted_marginal]
      have hcurrent :
          (fun a : V => ∑ x : G, K.liftedEvolve C mass n a x) =
            K.evolve (fun a => ∑ x : G, mass a x) n := by
        funext a
        exact ih a
      rw [hcurrent]

/-- A local gauge frame is an invertible relabeling of each group fiber. -/
theorem reframe_inverse (frame : V → G) (mass : V → G → ℝ) :
    reframe (fun a => (frame a)⁻¹) (reframe frame mass) = mass := by
  funext a y
  change mass a ((y * ((frame a)⁻¹)⁻¹) * (frame a)⁻¹) = mass a y
  simp [mul_assoc]

/-- A frame permutation cannot change even the individual vertex marginal. -/
theorem reframe_marginal (frame : V → G)
    (mass : V → G → ℝ) (a : V) :
    (∑ y : G, reframe frame mass a y) =
      ∑ x : G, mass a x := by
  exact Fintype.sum_equiv (Equiv.mulRight (frame a)⁻¹)
    (fun y : G => mass a (y * (frame a)⁻¹)) (mass a) (fun y => rfl)

/-- Invertible coordinate changes intertwine EVERY finite stochastic
iterate; the single-step gauge law is the required inductive input. -/
theorem EdgeKernel.liftedEvolve_gauge (K : EdgeKernel V)
    (C : Connection (fun a b : V => a ⟶ b) G)
    (frame : V → G) (mass : V → G → ℝ) (n : ℕ) :
    K.liftedEvolve (C.gauge frame) (reframe frame mass) n =
      reframe frame (K.liftedEvolve C mass n) := by
  induction n with
  | zero => rfl
  | succ n ih =>
      funext b y
      change K.liftedStep (C.gauge frame)
          (K.liftedEvolve (C.gauge frame) (reframe frame mass) n) b y =
        reframe frame (K.liftedStep C (K.liftedEvolve C mass n)) b y
      rw [ih]
      exact K.liftedStep_gauge C frame _ b y

/-- A typed path acts on the finite group fiber by its TRUE chronological
holonomy, not by a product averaged over alternative arrows. -/
def Connection.actOnFiber
    (C : Connection (fun a b : V => a ⟶ b) G)
    {a b : V} (p : QuiverWalk a b) (x : G) : G :=
  x * C.transport p

theorem Connection.actOnFiber_append
    (C : Connection (fun a b : V => a ⟶ b) G)
    {a b c : V} (p : QuiverWalk a b) (q : QuiverWalk b c)
    (x : G) :
    C.actOnFiber (Walk.append p q) x =
      C.actOnFiber q (C.actOnFiber p x) := by
  simp [Connection.actOnFiber, C.transport_append, mul_assoc]

/-- The fiber action changes coordinates at the ACTUAL endpoints, not at
an arbitrarily chosen root or an erased intermediate vertex. -/
theorem Connection.actOnFiber_gauge
    (C : Connection (fun a b : V => a ⟶ b) G)
    (frame : V → G) {a b : V} (p : QuiverWalk a b) (x : G) :
    (C.gauge frame).actOnFiber p (x * frame a) =
      C.actOnFiber p x * frame b := by
  simp only [Connection.actOnFiber, C.transport_gauge]
  group

/-- A path's group action is identical on the complete valid
tagged-edge trace furnished by the existing exact equivalence. -/
theorem Connection.actOnFiber_eq_trace
    (C : Connection (fun a b : V => a ⟶ b) G)
    {a b : V} (p : QuiverWalk a b) (x : G) :
    C.actOnFiber p x =
      x * pathTransport (taggedWeight C) (walkTrace p) := by
  simp only [Connection.actOnFiber, walk_transport_eq_trace]

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.EdgeIndexedStochasticHolonomy
end
