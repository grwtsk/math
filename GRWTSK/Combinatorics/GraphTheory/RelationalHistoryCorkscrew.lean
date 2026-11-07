/- Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / LEAN_ELABORATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN /
INDEPENDENT_ANALYTICAL_REVIEW_NOT_RUN. -/
import GRWTSK.Combinatorics.GraphTheory.RelationalHolonomyReview
import GRWTSK.Combinatorics.GraphTheory.SpinHolonomyFiniteDiffusion
import Mathlib.Tactic

/-!
# Relational-history corkscrew: invariant typing and spin-space extension

Base: grwtsk/math@4df23f2ad3fd8924d5c96657dc6aceefd66d2278.
This is a finite typed mathematical model, not a physical theory of
consciousness, empathy, death, neural energy or a proof of RH/GRH.

A closed, composable history retains each original tagged quiver arrow.
Only conjugacy-invariant functions of its holonomy are observer independent.
Registry membership is proof-bearing, not inferred from equality of labels.
When no existing type applies, an equality-matched NEW label is PROVISIONAL:
it supplies an address for renewed work, NOT a semantic certificate.

A missed type extends the graph by one vertex and two spin sheets. Its
original field embeds by zero padding, with exact inverse restriction.
Old edges stay literally old arrows in the extended quiver; preservation
of old transport requires a separately stated edge-weight agreement.

Analytic comparison: telescope endpoint gauge factors; induct on original
edge lists; and split the finite orthogonal sum. Nontrivial loops are not
reconstructed by endpoints. A new coupling may alter old Laplacian energy,
even when old Hilbert norm is unchanged. No automatic algorithmic
termination, Markov normalization, or source-to-Weil bridge is claimed.
The elementary gauge/graph/direct-sum facts are standard; novelty unassessed.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators
open Quiver

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationalHistoryCorkscrew

open GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.EdgeTrace
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationalHolonomyReview

universe u w z

structure ClosedHistory (V : Type u) [Quiver V] where
  root : V
  events : List (TotalEdge V)
  valid : ValidFrom root events
  closed : finish root events = root

section Observer
variable {V : Type u} [Quiver V]
variable {G : Type w} [Group G] {A : Type z}

def invariantObservation (W : TotalEdge V → G)
    (readout : G → A) (history : ClosedHistory V) : A :=
  readout (pathTransport W history.events)

theorem invariantObservation_gauge
    (W : TotalEdge V → G) (frame : V → G)
    (readout : G → A) (history : ClosedHistory V)
    (hinvariant : ConjugacyInvariant readout) :
    invariantObservation (gaugedEdge W frame) readout history =
      invariantObservation W readout history := by
  exact closed_walk_observer_independent W frame history.root
    history.events readout history.valid history.closed hinvariant

theorem typing_gauge_invariant {Tag : Type*}
    (W : TotalEdge V → G) (frame : V → G)
    (readout : G → A) (history : ClosedHistory V)
    (hinvariant : ConjugacyInvariant readout)
    (recognizes : Tag → A → Prop) (tag : Tag) :
    recognizes tag (invariantObservation (gaugedEdge W frame) readout history) ↔
      recognizes tag (invariantObservation W readout history) := by
  rw [invariantObservation_gauge W frame readout history hinvariant]

end Observer

section Registry
variable {Tag : Type u} {A : Type z}

abbrev Registry (Tag A : Type*) := Tag → A → Prop
abbrev TypeWitness (R : Registry Tag A) (observation : A) :=
  {tag : Tag // R tag observation}

def candidateRegistry (R : Registry Tag A) (focus : A) :
    Registry (Tag ⊕ Unit) A
  | Sum.inl tag, observed => R tag observed
  | Sum.inr (), observed => observed = focus

@[simp] theorem old_registry_unchanged (R : Registry Tag A)
    (focus observed : A) (tag : Tag) :
    candidateRegistry R focus (Sum.inl tag) observed ↔
      R tag observed := Iff.rfl

@[simp] theorem fresh_candidate_matches (R : Registry Tag A)
    (focus : A) :
    candidateRegistry R focus (Sum.inr ()) focus := rfl

theorem old_miss_stays_missed (R : Registry Tag A) (focus : A)
    (missing : ¬ ∃ tag : Tag, R tag focus) (tag : Tag) :
    ¬ candidateRegistry R focus (Sum.inl tag) focus := by
  intro h
  exact missing ⟨tag, h⟩

theorem fresh_candidate_resumes (R : Registry Tag A)
    (focus : A) :
    ∃ tag : Tag ⊕ Unit, candidateRegistry R focus tag focus :=
  ⟨Sum.inr (), rfl⟩

end Registry

section GraphExtension
variable (V : Type u) [Quiver V]

def expandedQuiver : Quiver (V ⊕ Unit) where
  Hom source target :=
    match source, target with
    | Sum.inl a, Sum.inl b => a ⟶ b
    | Sum.inl _, Sum.inr _ => Unit
    | Sum.inr _, Sum.inl _ => Unit
    | Sum.inr _, Sum.inr _ => Unit

abbrev ExpandedEvent := @TotalEdge (V ⊕ Unit) (expandedQuiver V)

def embedOldEvent (e : TotalEdge V) : ExpandedEvent V :=
  ⟨Sum.inl e.1, Sum.inl e.2.1, e.2.2⟩

@[simp] theorem embedOldEvent_source (e : TotalEdge V) :
    (embedOldEvent V e).1 = Sum.inl e.1 := rfl

@[simp] theorem embedOldEvent_target (e : TotalEdge V) :
    (embedOldEvent V e).2.1 = Sum.inl e.2.1 := rfl

theorem embedOldHistory_valid (root : V)
    (events : List (TotalEdge V)) (hv : ValidFrom root events) :
    @ValidFrom (V ⊕ Unit) (expandedQuiver V) (Sum.inl root)
      (events.map (embedOldEvent V)) := by
  induction events generalizing root with
  | nil => trivial
  | cons e tail ih =>
    rcases hv with ⟨hs, ht⟩
    exact ⟨congrArg Sum.inl hs, ih e.2.1 ht⟩

theorem embedOldHistory_finish (root : V)
    (events : List (TotalEdge V)) :
    @finish (V ⊕ Unit) (expandedQuiver V) (Sum.inl root)
      (events.map (embedOldEvent V)) =
        Sum.inl (finish root events) := by
  induction events generalizing root with
  | nil => rfl
  | cons e tail ih => exact ih e.2.1

def embedClosedHistory (history : ClosedHistory V) :
    @ClosedHistory (V ⊕ Unit) (expandedQuiver V) where
  root := Sum.inl history.root
  events := history.events.map (embedOldEvent V)
  valid := embedOldHistory_valid V history.root history.events history.valid
  closed := by
    simpa only [embedOldHistory_finish] using
      congrArg Sum.inl history.closed

end GraphExtension

section TransportReturn
variable {V : Type u} [Quiver V]
variable {G : Type w} [Group G]

theorem old_transport_preserved (W : TotalEdge V → G)
    (Wnew : ExpandedEvent V → G)
    (hagrees : ∀ e : TotalEdge V, Wnew (embedOldEvent V e) = W e)
    (events : List (TotalEdge V)) :
    @pathTransport (V ⊕ Unit) (expandedQuiver V) G _ Wnew
      (events.map (embedOldEvent V)) =
        pathTransport W events := by
  induction events with
  | nil => simp
  | cons e tail ih =>
    simp only [List.map_cons, pathTransport_cons]
    rw [hagrees e, ih]

theorem preserved_history_readout {A : Type z}
    (W : TotalEdge V → G) (Wnew : ExpandedEvent V → G)
    (hagrees : ∀ e : TotalEdge V, Wnew (embedOldEvent V e) = W e)
    (history : ClosedHistory V) (readout : G → A) :
    readout (@pathTransport (V ⊕ Unit) (expandedQuiver V) G _ Wnew
      (embedClosedHistory V history).events) =
      invariantObservation W readout history := by
  exact congrArg readout
    (old_transport_preserved W Wnew hagrees history.events)

end TransportReturn

section SpinSpace
variable {V : Type u}

abbrev SpinField (V : Type u) := V × Bool → ℝ

def padSpin (f : SpinField V) : SpinField (V ⊕ Unit) :=
  fun p => match p.1 with
    | Sum.inl old => f (old, p.2)
    | Sum.inr () => 0

def restrictSpin (f : SpinField (V ⊕ Unit)) : SpinField V :=
  fun p => f (Sum.inl p.1, p.2)

@[simp] theorem restrict_padSpin (f : SpinField V) :
    restrictSpin (padSpin f) = f := by
  funext p
  cases p with
  | mk v b => rfl

theorem padSpin_injective :
    Function.Injective (padSpin (V := V)) := by
  intro f g h
  have h' := congrArg restrictSpin h
  simpa only [restrict_padSpin] using h'

def spinSquareMass [Fintype V] (f : SpinField V) : ℝ :=
  ∑ p : V × Bool, (f p) ^ 2

theorem padSpin_squareMass [Fintype V] (f : SpinField V) :
    spinSquareMass (padSpin f) = spinSquareMass f := by
  classical
  simp [spinSquareMass, padSpin, Fintype.sum_prod_type,
    Fintype.sum_sum_type]

end SpinSpace

section Corkscrew
variable {Tag : Type u} {A : Type z} {V : Type w}

structure PendingTurn (R : Registry Tag A) (observation : A)
    (oldField : SpinField V) where
  oldMissing : ¬ ∃ tag : Tag, R tag observation
  label : Tag ⊕ Unit
  label_candidate : candidateRegistry R observation label observation
  expandedField : SpinField (V ⊕ Unit)
  decoded_old : restrictSpin expandedField = oldField

/-- A specification-level search. Classical choice is not a finite
algorithm or a certificate of semantic type admission. -/
noncomputable def corkscrewTurn (R : Registry Tag A)
    (observation : A) (oldField : SpinField V) :
    TypeWitness R observation ⊕ PendingTurn R observation oldField := by
  classical
  by_cases h : ∃ tag : Tag, R tag observation
  · obtain ⟨tag, ht⟩ := h
    exact Sum.inl ⟨tag, ht⟩
  · exact Sum.inr {
      oldMissing := h
      label := Sum.inr ()
      label_candidate := rfl
      expandedField := padSpin oldField
      decoded_old := restrict_padSpin oldField
    }

theorem pending_resumes (R : Registry Tag A)
    (observation : A) (oldField : SpinField V)
    (pending : PendingTurn R observation oldField) :
    (∃ label : Tag ⊕ Unit,
      candidateRegistry R observation label observation) ∧
      restrictSpin pending.expandedField = oldField := by
  exact ⟨⟨pending.label, pending.label_candidate⟩,
    pending.decoded_old⟩

end Corkscrew

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationalHistoryCorkscrew
