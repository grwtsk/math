/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors; AI-assisted Lean drafting.
SOURCE_PROOF_CANDIDATE / LEAN_ELABORATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.Combinatorics.GraphTheory.EdgeIndexedHolonomyIteration
import GRWTSK.Combinatorics.GraphTheory.SpinHolonomyFiniteDiffusion
import Mathlib.Tactic

/-!
# Forward/backward duality for exact edge-indexed holonomy diffusion

There are TWO different conventions in the existing mathematical sources:

* `SpinHolonomyFiniteDiffusion.EventDiffusion.plainStep` averages a
  function over the actual outgoing tagged edges at each vertex.
  It is a backward Markov operator on observables.
* `EdgeIndexedStochasticHolonomy.EdgeKernel.step` moves densities into
  their incoming destinations. It is a forward mass-transport operator.

A row-stochastic operator on observables does NOT automatically preserve
the sum of an observable's entries. Conversely, the forward density
operator conserves mass, but need not preserve the constant observable as
a density. The correct comparison is FINITE PAIRING ADJOINTNESS.

We first prove an adjointness formula for an edge kernel with explicit
stay probability, then construct an exact adapter from the existing
stay-free `EventDiffusion` to `EdgeKernel`. Its source normalization is
recovered by summing the SAME tagged arrows through their actual source
and target dependent sigma fibers. The adapter does NOT identify the
two operators pointwise: it proves their duality.

We also record the finite-time adjointness of a forward density process
and its recursively defined backward expectation process. This is a
consumer-backed comparison to the prior two-sheet spin development;
its signed odd sector is not promoted to a Markov kernel.

Proof comparison: finite sum exchange, distributivity and a complete
tagged-edge sigma reindexing. Boundary: with two parallel arrows, their
individual phases and probabilities can differ while their vertex-pair
aggregate agrees; losing the tag is not a reversible operation. The
stationary kernel is permitted. No analytic heat-semigroup, cofinal Weil
sign or physical energy interpretation follows.

Proof scripts await fresh Lean elaboration, kernel checking, transitive
axiom audit and independent review.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.EdgeIndexedHolonomyDuality

open Quiver
open GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.EdgeTrace
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationalHolonomyReview
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationalHolonomyPathEquivalence
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.EdgeIndexedStochasticHolonomy
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SpinHolonomyFiniteDiffusion

universe u

variable {V : Type u} [Quiver V] [Fintype V]
    [∀ a b : V, Fintype (a ⟶ b)]

/-- The backward expectation of an observable, including genuine stays. -/
def expectation (K : EdgeKernel V) (observable : V → ℝ)
    (a : V) : ℝ :=
  K.stay a * observable a +
    ∑ b : V, ∑ e : a ⟶ b, K.edge e * observable b

/-- Row normalization implies constants are fixed by backward expectation. -/
theorem expectation_one (K : EdgeKernel V) (a : V) :
    expectation K (fun _ => (1 : ℝ)) a = 1 := by
  simpa [expectation] using K.row_sum a

/-- Positive observables remain positive under backward expectation. -/
theorem expectation_nonneg (K : EdgeKernel V)
    (observable : V → ℝ) (hobs : ∀ a, 0 ≤ observable a) (a : V) :
    0 ≤ expectation K observable a := by
  unfold expectation
  apply add_nonneg
  · exact mul_nonneg (K.stay_nonneg a) (hobs a)
  · apply Finset.sum_nonneg
    intro b _
    apply Finset.sum_nonneg
    intro e _
    exact mul_nonneg (K.edge_nonneg e) (hobs b)

/-- Finite pairing of a density and an observable. -/
def pairing (mass observable : V → ℝ) : ℝ :=
  ∑ a : V, mass a * observable a

/-- Forward incoming-density transport is adjoint, not equal, to the
outgoing-observable expectation. All parallel-edge terms are retained. -/
theorem step_expectation_adjoint (K : EdgeKernel V)
    (mass observable : V → ℝ) :
    pairing (K.step mass) observable =
      pairing mass (expectation K observable) := by
  classical
  have hstay :
      (∑ b : V, (K.stay b * mass b) * observable b) =
        ∑ a : V, mass a * (K.stay a * observable a) := by
    apply Finset.sum_congr rfl
    intro a _
    ring
  have hedges :
      (∑ b : V, (∑ a : V, ∑ e : a ⟶ b, K.edge e * mass a) *
          observable b) =
        ∑ a : V, mass a *
          (∑ b : V, ∑ e : a ⟶ b, K.edge e * observable b) := by
    calc
      (∑ b : V, (∑ a : V, ∑ e : a ⟶ b, K.edge e * mass a) *
          observable b) =
        ∑ b : V, ∑ a : V, ∑ e : a ⟶ b,
          (K.edge e * mass a) * observable b := by
            simp only [Finset.sum_mul]
      _ = ∑ a : V, ∑ b : V, ∑ e : a ⟶ b,
          mass a * (K.edge e * observable b) := by
            rw [Finset.sum_comm]
            apply Finset.sum_congr rfl
            intro a _
            apply Finset.sum_congr rfl
            intro b _
            apply Finset.sum_congr rfl
            intro e _
            ring
      _ = ∑ a : V, mass a *
          (∑ b : V, ∑ e : a ⟶ b, K.edge e * observable b) := by
            simp only [Finset.mul_sum]
  calc
    pairing (K.step mass) observable =
      (∑ b : V, (K.stay b * mass b) * observable b) +
        (∑ b : V, (∑ a : V, ∑ e : a ⟶ b,
          K.edge e * mass a) * observable b) := by
            simp only [pairing, EdgeKernel.step, add_mul,
              Finset.sum_add_distrib]
    _ = (∑ a : V, mass a * (K.stay a * observable a)) +
        (∑ a : V, mass a *
          (∑ b : V, ∑ e : a ⟶ b, K.edge e * observable b)) := by
            rw [hstay, hedges]
    _ = pairing mass (expectation K observable) := by
          simp only [pairing, expectation, mul_add,
            Finset.sum_add_distrib]

/-- The exact full-edge inventory with a selected source equals its
dependent sum over all target fibers and actual arrows. -/
private theorem sum_tagged_outgoing
    [Fintype (TotalEdge V)] [DecidableEq V]
    (weight : TotalEdge V → ℝ) (root : V) :
    (∑ e : TotalEdge V, if e.1 = root then weight e else 0) =
      ∑ b : V, ∑ e : root ⟶ b, weight ⟨root, b, e⟩ := by
  classical
  calc
    (∑ e : TotalEdge V, if e.1 = root then weight e else 0) =
        ∑ a : V, ∑ b : V, ∑ e : a ⟶ b,
          if a = root then weight ⟨a, b, e⟩ else 0 := by
            simp only [Fintype.sum_sigma]
    _ = ∑ a : V, if a = root then
        (∑ b : V, ∑ e : a ⟶ b, weight ⟨a, b, e⟩) else 0 := by
          apply Finset.sum_congr rfl
          intro a _
          by_cases h : a = root
          · simp [h]
          · simp [h]
    _ = ∑ b : V, ∑ e : root ⟶ b, weight ⟨root, b, e⟩ := by
          simp

section SpinAdapter

variable [DecidableEq V] [Fintype (TotalEdge V)]

/-- The original `EventDiffusion` has NO independently specified stay
probability. Its row-stochastic tagged weights give the stay-free edge
kernel without inventing new events or renormalization. -/
def asEdgeKernel (D : EventDiffusion V) : EdgeKernel V where
  stay _ := 0
  edge := fun {a b} e => D.weight ⟨a, b, e⟩
  stay_nonneg := by intro a; norm_num
  edge_nonneg := by intro a b e; exact D.weight_nonneg ⟨a, b, e⟩
  row_sum := by
    intro a
    have h := sum_tagged_outgoing D.weight a
    simpa only [zero_add] using h.symm.trans (D.row_mass_one a)

/-- The older spin module's plain step is exactly the backward expectation
of the matching NEW edge kernel, not its forward density step. -/
theorem plainStep_eq_expectation
    (D : EventDiffusion V) (observable : V → ℝ) (a : V) :
    D.plainStep observable a =
      expectation (asEdgeKernel D) observable a := by
  have h := sum_tagged_outgoing
      (fun e : TotalEdge V => D.weight e * observable e.2.1) a
  change
    (∑ e : TotalEdge V,
      if e.1 = a then D.weight e * observable e.2.1 else 0) =
        (0 : ℝ) * observable a +
          (∑ b : V, ∑ e : a ⟶ b,
            D.weight ⟨a, b, e⟩ * observable b)
  simpa using h

/-- Exact duality of the two pre-existing source conventions. The
outgoing operator is not silently applied as a density pushforward. -/
theorem plainStep_dual
    (D : EventDiffusion V) (mass observable : V → ℝ) :
    pairing ((asEdgeKernel D).step mass) observable =
      pairing mass (D.plainStep observable) := by
  calc
    pairing ((asEdgeKernel D).step mass) observable =
      pairing mass (expectation (asEdgeKernel D) observable) :=
        step_expectation_adjoint (asEdgeKernel D) mass observable
    _ = pairing mass (D.plainStep observable) := by
        have hfunctions :
            expectation (asEdgeKernel D) observable =
              D.plainStep observable := by
          funext a
          exact (plainStep_eq_expectation D observable a).symm
        rw [hfunctions]

end SpinAdapter

/-- A finite number of backward observation steps. The successor recurses
on the observation first, matching the order required for duality with
the previous forward density iteration. -/
def expectationEvolve (K : EdgeKernel V)
    (observable : V → ℝ) : ℕ → V → ℝ
  | 0 => observable
  | n + 1 => expectationEvolve K (expectation K observable) n

/-- Pairing adjointness persists through EVERY finite iterate. -/
theorem evolve_expectationEvolve_adjoint (K : EdgeKernel V)
    (mass observable : V → ℝ) (n : ℕ) :
    pairing (K.evolve mass n) observable =
      pairing mass (expectationEvolve K observable n) := by
  induction n generalizing observable with
  | zero => rfl
  | succ n ih =>
      change pairing (K.step (K.evolve mass n)) observable =
        pairing mass (expectationEvolve K (expectation K observable) n)
      exact (step_expectation_adjoint K (K.evolve mass n) observable).trans
        (ih (expectation K observable))

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.EdgeIndexedHolonomyDuality
end
