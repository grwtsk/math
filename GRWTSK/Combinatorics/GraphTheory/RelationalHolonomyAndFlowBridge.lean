/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors; AI-assisted Lean source drafting.
SOURCE_PROOF_CANDIDATE / LEAN_COMPILATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.Combinatorics.GraphTheory.RelationalHolonomyReview
import GRWTSK.DifferentialGeometry.RelationalHolonomyAndConservativeFlow
import Mathlib.Tactic

/-!
# Exact relational-holonomy trace and conservative-diffusion bridges

This module connects two already published mathematical source interfaces rather
than introducing another independently defined notion of holonomy.

* The dependent 'Walk' of 'RelationalHolonomyAndConservativeFlow' is specialized
  to actual quiver arrows and serialized into the EXISTING lossless, endpoint-
  tagged 'TotalEdge' and 'ValidFrom' trace interface. Every valid tagged list
  decodes to a typed walk, and re-encoding gives the identical list, including
  parallel-arrow identity, chronological order, empty histories and cycles.
* The noncommutative group transport agrees exactly with the existing tagged
  'pathTransport'; local gauge changes agree edge by edge. Thus the existing
  closed-walk conjugacy-invariant readout applies without replacing either
  model or discarding a group commutator.
* An existing row-stochastic 'NetworkFlux', given NONNEGATIVE initial vertex
  intensity, determines an affordable 'ConservativeFlow' by actual directed
  pair transfers 'initial a * weight a b'. Its 'after' field equals the
  stochastic one-step update pointwise, not merely after summation.

The source's 'NetworkFlux' aggregates parallel edges by endpoint pair; the
first transport bridge does NOT make it edge-indexed. Stochasticity remains an
assumption independent of the connection; no gauge field creates a Markov
kernel by definition. Conversely an arbitrary affordable flow need not arise
from a row-stochastic flux without additional data (including retention).

The typed graph and abstract conservation statements are not empirical models
of neural energy, consciousness, life reviews or theology. The arithmetic
prime-orbit and CM residue holonomies are distinct carriers; no map from this
module to the Weil source, RH or GRH is inferred. The results are elementary
trace recursion, noncommutative gauge telescoping and finite-sum bookkeeping,
not claims of theorem-level novelty. A complete mathematical interchange
argument is recorded in the statements below; Lean and independent analytic
review are not claimed by source publication.

Source identities: 'RelationalHolonomyReview.lean',
'RelationalHolonomyAndConservativeFlow.lean', and
'DirectedGraphEdgeTrace.lean' as imported at the pinned repository revision.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationalHolonomyAndFlowBridge

open Quiver
open GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.EdgeTrace
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationalHolonomyReview
open GRWTSK.DifferentialGeometry.RelationalHolonomy

universe u w z

section TypedTrace

variable {V : Type u} [Quiver V]

/-- Specialize the original dependent 'Walk' to the source's actual arrows. -/
abbrev QuiverWalk (a b : V) := Walk (fun x y : V => x ⟶ y) a b

/-- No edge occurrence, direction, or parallel arrow is forgotten. -/
def toTagged {a b : V} : QuiverWalk a b → List (TotalEdge V)
  | .nil _ => []
  | .step edge rest => ⟨_, _, edge⟩ :: toTagged rest

@[simp] theorem toTagged_nil (a : V) :
    toTagged (Walk.nil a : QuiverWalk a a) = [] := rfl

@[simp] theorem toTagged_step {a b c : V}
    (edge : a ⟶ b) (rest : QuiverWalk b c) :
    toTagged (Walk.step edge rest) =
      (⟨a, b, edge⟩ : TotalEdge V) :: toTagged rest := rfl

/-- A dependent walk is a valid fully tagged chronological event list. -/
theorem toTagged_valid {a b : V} (p : QuiverWalk a b) :
    ValidFrom a (toTagged p) := by
  induction p with
  | nil _ => trivial
  | step edge rest ih => exact ⟨rfl, ih⟩

/-- The existing 'finish' recovers the *typed* endpoint, including for nil. -/
theorem toTagged_finish {a b : V} (p : QuiverWalk a b) :
    finish a (toTagged p) = b := by
  induction p with
  | nil _ => rfl
  | step edge rest ih => exact ih

/-- Adapter from a validated original tagged trace back to a dependent walk.
Its endpoint is the EXISTING 'finish', not a newly inferred endpoint. -/
noncomputable def fromTagged :
    (root : V) → (events : List (TotalEdge V)) →
      ValidFrom root events → QuiverWalk root (finish root events)
  | root, [], _ => Walk.nil root
  | _, ⟨source, target, edge⟩ :: rest, hvalid =>
    hvalid.1 ▸
      (Walk.step edge (fromTagged target rest hvalid.2) :
        QuiverWalk source (finish target rest))

/-- Exact reconstruction on every validated source trace. No hash or
endpoint-only observation substitutes for the full edge sequence. -/
theorem toTagged_fromTagged (root : V) (events : List (TotalEdge V))
    (hvalid : ValidFrom root events) :
    toTagged (fromTagged root events hvalid) = events := by
  induction events generalizing root with
  | nil => rfl
  | cons edge rest ih =>
    rcases edge with ⟨source, target, edge⟩
    rcases hvalid with ⟨rfl, hrest⟩
    change (⟨source, target, edge⟩ : TotalEdge V) ::
      toTagged (fromTagged target rest hrest) = _
    rw [ih]
    rfl

end TypedTrace

section Transport

variable {V : Type u} [Quiver V]
variable {G : Type w} [Group G]

/-- Return a typed connection to the existing edge-trace transport weights. -/
def connectionWeight (C : Connection (fun a b : V => a ⟶ b) G) :
    TotalEdge V → G
  | ⟨_, _, edge⟩ => C.edgeTransport edge

@[simp] theorem connectionWeight_edge
    (C : Connection (fun a b : V => a ⟶ b) G)
    {a b : V} (edge : a ⟶ b) :
    connectionWeight C (⟨a, b, edge⟩ : TotalEdge V) =
      C.edgeTransport edge := rfl

/-- The two already-published transport laws describe the SAME ordered
product on every original tagged graph history. -/
theorem transport_as_trace
    (C : Connection (fun a b : V => a ⟶ b) G)
    {a b : V} (p : QuiverWalk a b) :
    C.transport p = pathTransport (connectionWeight C) (toTagged p) := by
  induction p with
  | nil a => simp
  | step edge rest ih =>
      simp only [Connection.transport_step, toTagged_step,
        pathTransport_cons, connectionWeight_edge, ih]

/-- Local change of frame agrees EXACTLY on both edge representations. -/
theorem connectionWeight_gauge
    (C : Connection (fun a b : V => a ⟶ b) G)
    (frame : V → G) :
    connectionWeight (C.gauge frame) =
      gaugedEdge (connectionWeight C) frame := by
  funext edge
  rcases edge with ⟨a, b, arrow⟩
  rfl

/-- Source-preserving application of the graph-trace observer theorem to the
dependent walk: only a conjugacy-invariant readout is observer independent. -/
theorem closed_walk_readout_return {A : Type z}
    (C : Connection (fun a b : V => a ⟶ b) G)
    (frame : V → G) (a : V) (p : QuiverWalk a a)
    (readout : G → A) (hinvariant : ConjugacyInvariant readout) :
    readout ((C.gauge frame).holonomy p) = readout (C.holonomy p) := by
  have h := closed_walk_observer_independent
    (connectionWeight C) frame a (toTagged p) readout
    (toTagged_valid p) (toTagged_finish p) hinvariant
  calc
    readout ((C.gauge frame).holonomy p) =
        readout (pathTransport
          (gaugedEdge (connectionWeight C) frame) (toTagged p)) := by
            rw [Connection.holonomy, transport_as_trace,
              connectionWeight_gauge]
    _ = readout (pathTransport (connectionWeight C) (toTagged p)) := h
    _ = readout (C.holonomy p) := by
      rw [Connection.holonomy, transport_as_trace]

end Transport

section StochasticConservation

variable {V : Type u} [Quiver V] [Fintype V]

/-- Every row-stochastic kernel plus nonnegative input determines a genuine
affordable nonnegative pair-flow. The converse is not claimed. -/
def fluxToConservativeFlow (flux : NetworkFlux V)
    (initial : V → ℝ) (h : ∀ a, 0 ≤ initial a) : ConservativeFlow V where
  initial := initial
  flow a b := initial a * flux.weight a b
  flow_nonneg := by
    intro a b
    exact mul_nonneg (h a) (flux.nonneg a b)
  outgoing_le_initial := by
    intro a
    change (∑ b : V, initial a * flux.weight a b) ≤ initial a
    rw [← Finset.mul_sum, flux.row_sum, mul_one]

/-- Stronger than total conservation: the two existing diffusion mechanisms
agree at EACH destination after the full outgoing reserve is charged. -/
theorem flowAfter_eq_fluxStep (flux : NetworkFlux V)
    (initial : V → ℝ) (h : ∀ a, 0 ≤ initial a) (b : V) :
    (fluxToConservativeFlow flux initial h).after b =
      flux.step initial b := by
  change initial b + (∑ a : V, initial a * flux.weight a b) -
    (∑ a : V, initial b * flux.weight b a) =
      ∑ a : V, initial a * flux.weight a b
  rw [← Finset.mul_sum, flux.row_sum, mul_one]
  ring

/-- The existing conservation theorem is transported to the independently
specified affordable-flow interface without treating holonomy as flux. -/
theorem total_after_eq_total (flux : NetworkFlux V)
    (initial : V → ℝ) (h : ∀ a, 0 ≤ initial a) :
    (∑ b : V, (fluxToConservativeFlow flux initial h).after b) =
      ∑ b : V, initial b := by
  calc
    (∑ b : V, (fluxToConservativeFlow flux initial h).after b) =
        ∑ b : V, flux.step initial b := by
          apply Finset.sum_congr rfl
          intro b _
          exact flowAfter_eq_fluxStep flux initial h b
    _ = ∑ b : V, initial b := NetworkFlux.total_step flux initial

end StochasticConservation

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationalHolonomyAndFlowBridge
end
