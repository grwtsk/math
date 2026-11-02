/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.DynamicalSystemsAndErgodicTheory.SoficTopologicalLanguageBoundary
import GRWTSK.DynamicalSystemsAndErgodicTheory.SoficPeriodicRunFullShift
import Mathlib

set_option autoImplicit false
noncomputable section

/-!
# Exact forward infinite continuation of original finite sofic paths

The ORIGINAL graph language admits any finite WordPath, including paths
ending at dead vertices. An actual infinite continuation is an additional
source object, not an automatic consequence of finite path acceptance.

We define a right-live vertex by an actual Nat-indexed original graph
run starting AT that vertex. Original WordPaths prepend to actual
right-live runs, preserving every emitted label and edge predicate.
This proves that every original finite word with a right-live terminal
vertex is realized by the existing closed topological factor subshift.

An explicit nonblocking condition (each vertex has a real labeled
outgoing edge) constructs a run from every vertex using the same graph
and proves equality of its entire finite-path language with the
actual infinite-realized topological factor language. More generally,
the exact right-extension hypothesis is kept visible and does not
change any original finite graph, label, trace or fiber defect.

There is no claim that arbitrary graphs are nonblocking, that all
admitted streams have a source graph run without a finite-state
compactness argument, or that analytic zeta/energy/PDE conclusions
follow from this finite-source continuation theorem.
-/

namespace GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficRightInfiniteContinuation

open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.ExactSoficLanguageCover
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficPeriodicRunFullShift
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficTopologicalFactorSpace
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficTopologicalLanguageBoundary

universe u v
variable {State : Type u} {Alphabet : Type v}

/-- An actual ORIGINAL infinite labeled state path whose zero-th vertex
is exactly s. It supplies both all state occurrences and all letters. -/
def GraphRunFrom
    (G : LabeledGraph State Alphabet) (s : State) : Prop :=
  ∃ (trace : ℕ → Alphabet) (states : ℕ → State),
    states 0 = s ∧
      ∀ k, G.edge (states k) (trace k) (states (k + 1))

/-- Literal prefixing of an emitted letter to an infinite trace. -/
private def prependTrace
    (a : Alphabet) (trace : ℕ → Alphabet) : ℕ → Alphabet
  | 0 => a
  | k + 1 => trace k

/-- Literal prefixing of an original starting state to the unchanged
sequence of all later original state occurrences. -/
private def prependStates
    (s : State) (states : ℕ → State) : ℕ → State
  | 0 => s
  | k + 1 => states k

/-- A real original labeled edge followed by an actual infinite
source run gives an actual infinite run from the edge's source. -/
theorem graphRunFrom_prepend
    (G : LabeledGraph State Alphabet)
    {s t : State} {a : Alphabet}
    (hEdge : G.edge s a t)
    (hTail : GraphRunFrom G t) :
    GraphRunFrom G s := by
  obtain ⟨trace, states, hZero, hEdges⟩ := hTail
  refine ⟨prependTrace a trace, prependStates s states, rfl, ?_⟩
  intro k
  cases k with
  | zero =>
      simpa [prependTrace, prependStates, hZero] using hEdge
  | succ k =>
      simpa [prependTrace, prependStates] using hEdges k

/-- Every vertex of the ORIGINAL finite labeled path is right-live
as soon as its final vertex has a genuine infinite continuation. -/
theorem graphRunFrom_of_wordPath
    (G : LabeledGraph State Alphabet) :
    ∀ {s t : State} {word : List Alphabet},
      WordPath G s word t → GraphRunFrom G t → GraphRunFrom G s := by
  intro s t word hPath
  induction hPath with
  | nil _ =>
      intro hTail
      exact hTail
  | cons a word hEdge hTail ih =>
      intro hRun
      exact graphRunFrom_prepend G hEdge (ih hRun)

/-- An actual finite source path followed by a right-infinite
source run can be joined with no omitted seam. In particular
the WHOLE original finite word is emitted at time zero. -/
theorem wordPath_prefix_of_graphRunFrom
    (G : LabeledGraph State Alphabet) :
    ∀ {s t : State} {word : List Alphabet},
      (hPath : WordPath G s word t) →
      GraphRunFrom G t →
      ∃ (trace : ℕ → Alphabet) (states : ℕ → State),
        states 0 = s ∧
        (∀ k, G.edge (states k) (trace k) (states (k + 1))) ∧
        ∀ i : Fin word.length, trace i.val = word.get i := by
  intro s t word hPath
  induction hPath with
  | nil s =>
      intro hRun
      obtain ⟨trace, states, hZero, hEdges⟩ := hRun
      refine ⟨trace, states, hZero, hEdges, ?_⟩
      intro i
      exact Fin.elim0 i
  | cons a word hEdge hTail ih =>
      intro hRun
      obtain ⟨trace, states, hZero, hEdges, hWord⟩ := ih hRun
      refine ⟨prependTrace a trace, prependStates _ states, rfl, ?_, ?_⟩
      · intro k
        cases k with
        | zero =>
            simpa [prependTrace, prependStates, hZero] using hEdge
        | succ k =>
            simpa [prependTrace, prependStates] using hEdges k
      · intro i
        refine Fin.cases ?_ ?_ i
        · rfl
        · intro j
          simpa [prependTrace] using hWord j

/-- A source word really extends to an infinite original labeled
path, with the EXACT same original finite prefix and states. -/
def RightExtendableGraphWord
    (G : LabeledGraph State Alphabet) (word : List Alphabet) : Prop :=
  ∃ s t : State,
    WordPath G s word t ∧ GraphRunFrom G t

/-- Right-extendable source words are in the ORIGINAL finite
graph language, with their original start/end vertices unchanged. -/
theorem rightExtendable_implies_graphLanguage
    (G : LabeledGraph State Alphabet) (word : List Alphabet)
    (h : RightExtendableGraphWord G word) :
    GraphLanguage G word := by
  obtain ⟨s, t, hPath, _⟩ := h
  exact ⟨s, t, hPath⟩

/-- Every source vertex has a genuinely labeled outgoing original
edge. This is stronger than merely accepting a finite word. -/
def AllVerticesHaveOutgoing
    (G : LabeledGraph State Alphabet) : Prop :=
  ∀ s : State, ∃ a : Alphabet, ∃ t : State, G.edge s a t

/-- Under a SOURCE nonblocking hypothesis, build actual infinite
state occurrences by iterating a chosen TRUE outgoing edge.
No finite-state hypothesis or nonempty graph carrier is added. -/
theorem graphRunFrom_of_allOutgoing
    (G : LabeledGraph State Alphabet)
    (hOut : AllVerticesHaveOutgoing G)
    (s : State) : GraphRunFrom G s := by
  classical
  let selectLabel : State → Alphabet := fun t =>
    Classical.choose (hOut t)
  let selectNext : State → State := fun t =>
    Classical.choose (Classical.choose_spec (hOut t))
  have hSelected : ∀ t : State,
      G.edge t (selectLabel t) (selectNext t) := by
    intro t
    exact Classical.choose_spec (Classical.choose_spec (hOut t))
  let states : ℕ → State := Nat.rec s (fun _ t => selectNext t)
  let trace : ℕ → Alphabet := fun k => selectLabel (states k)
  refine ⟨trace, states, rfl, ?_⟩
  intro k
  change G.edge (states k) (selectLabel (states k))
    (selectNext (states k))
  exact hSelected (states k)

variable [Fintype State] [DecidableEq State] [Fintype Alphabet]
variable [TopologicalSpace Alphabet] [DiscreteTopology Alphabet]
  [Inhabited Alphabet]

/-- Every right-extendable ORIGINAL word occurs in a REAL infinite
graph run and therefore in the actual topological subshift generated
by the full finite graph-path language. No compactness converse
or graph essentialization theorem is used. -/
theorem rightExtendable_implies_realizedTopological
    (G : LabeledGraph State Alphabet) (word : List Alphabet)
    (hRight : RightExtendableGraphWord G word) :
    realizedTopologicalFactorLanguage (GraphLanguage G) word := by
  obtain ⟨s, t, hPath, hTail⟩ := hRight
  obtain ⟨trace, states, hZero, hEdges, hPrefix⟩ :=
    wordPath_prefix_of_graphRunFrom G hPath hTail
  have hRun : RunsOnGraph G trace := ⟨states, hEdges⟩
  have hAdmitted : ∀ w : List Alphabet,
      HasFiniteBlock trace w → GraphLanguage G w := by
    intro w hBlock
    exact graphLanguage_of_run_block G trace hRun w hBlock
  have hCarrier :
      trace ∈ (completeFactorSubshift (GraphLanguage G)).carrier :=
    (mem_completeFactorSubshift_iff (GraphLanguage G) trace).2 hAdmitted
  have hBlock : HasFiniteBlock trace word := by
    refine ⟨0, ?_⟩
    intro i
    simpa only [Nat.zero_add] using hPrefix i
  exact ⟨trace, hCarrier, hBlock⟩

/-- An explicit source-level continuation premise suffices to
identify the ORIGINAL finite graph language with the TRUE infinite
realized topological language. No hidden König lemma is assumed. -/
theorem graphLanguage_iff_realized_of_rightExtendable
    (G : LabeledGraph State Alphabet)
    (hExtend : ∀ word : List Alphabet,
      GraphLanguage G word → RightExtendableGraphWord G word)
    (word : List Alphabet) :
    GraphLanguage G word ↔
      realizedTopologicalFactorLanguage (GraphLanguage G) word := by
  constructor
  · intro h
    exact rightExtendable_implies_realizedTopological
      G word (hExtend word h)
  · exact realizedTopologicalFactorLanguage_subset
      (GraphLanguage G) word

/-- A concrete, independently checkable original graph condition
discharges the continuation premise: no state has a terminal end.
The entire original finite path language is then realized by the
true closed topological subshift, not merely contained in it. -/
theorem graphLanguage_iff_realized_of_allOutgoing
    (G : LabeledGraph State Alphabet)
    (hOut : AllVerticesHaveOutgoing G)
    (word : List Alphabet) :
    GraphLanguage G word ↔
      realizedTopologicalFactorLanguage (GraphLanguage G) word := by
  apply graphLanguage_iff_realized_of_rightExtendable G _ word
  intro w hPath
  obtain ⟨s, t, hWordPath⟩ := hPath
  exact ⟨s, t, hWordPath, graphRunFrom_of_allOutgoing G hOut t⟩

end GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficRightInfiniteContinuation
