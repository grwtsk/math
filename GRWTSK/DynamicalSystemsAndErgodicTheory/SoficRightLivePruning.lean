/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.DynamicalSystemsAndErgodicTheory.SoficRightInfiniteContinuation
import Mathlib

set_option autoImplicit false
noncomputable section

/-!
# The exact right-live subgraph of an original finite sofic presentation

A RIGHT-LIVE state is a real original state with a full original
infinite labeled run starting at that exact vertex. The right-live
graph restricts only the carrier: its alphabet, emitted letters
and indexed edge predicate are unchanged.

We prove in BOTH directions that its finite graph words are exactly
the finite original words whose terminal vertex admits an infinite
continuation, using real inductive original WordPaths and no new
graph interpretation. The right-live graph is NONBLOCKING, even if
the original graph contains dead vertices. Therefore every finite
word in the right-live graph has a true infinite realization in
its EXISTING closed topological subshift.

This establishes a source-preserving mathematical essentialization:
a finite original right-extendable language is realized exactly by
the right-live restriction. Its realized subshift language is
contained in that of the ORIGINAL graph. The remaining comparison
for every original topological stream requires a separate
finite-state compactness/König bridge and is NOT inferred here.

Unlike a brute graph-state quotient, this restriction keeps all
original source states and letters as subtype values and does not
equate based graph-cycle multiplicity with distinct label points.
-/

namespace GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficRightLivePruning

open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.ExactSoficLanguageCover
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficRightInfiniteContinuation
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficTopologicalFactorSpace
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficTopologicalLanguageBoundary

universe u v
variable {State : Type u} {Alphabet : Type v}

/-- A genuine original vertex carrying an ACTUAL infinite
original edge/label run from that exact starting vertex. -/
abbrev RightLiveState (G : LabeledGraph State Alphabet) :=
  {s : State // GraphRunFrom G s}

/-- The literal original labeled edge predicate restricted to
right-live original vertices, with no new edge or source label. -/
def rightLiveGraph (G : LabeledGraph State Alphabet) :
    LabeledGraph (RightLiveState G) Alphabet where
  edge := fun s a t => G.edge s.val a t.val

/-- Each original labeled live-state path projects to a real
path of the ORIGINAL graph with the same word and endpoints. -/
theorem liveWordPath_to_original
    (G : LabeledGraph State Alphabet) :
    ∀ {s t : RightLiveState G} {word : List Alphabet},
      WordPath (rightLiveGraph G) s word t →
        WordPath G s.val word t.val := by
  intro s t word hPath
  induction hPath with
  | nil s =>
      exact WordPath.nil s.val
  | cons a word hEdge hTail ih =>
      exact WordPath.cons a word hEdge ih

/-- Lifting a real original path with a right-live terminal
vertex to the right-live subgraph preserves EVERY intermediate
original state and original letter. Each earlier vertex is live
because the remaining path precedes an infinite tail. -/
theorem originalWordPath_to_live
    (G : LabeledGraph State Alphabet) :
    ∀ {s t : State} {word : List Alphabet},
      (hPath : WordPath G s word t) →
      (hFinal : GraphRunFrom G t) →
      ∃ (s' t' : RightLiveState G),
        s'.val = s ∧ t'.val = t ∧
          WordPath (rightLiveGraph G) s' word t' := by
  intro s t word hPath
  induction hPath with
  | nil s =>
      intro hFinal
      exact ⟨⟨s, hFinal⟩, ⟨s, hFinal⟩, rfl, rfl, WordPath.nil _⟩
  | cons a word hEdge hTail ih =>
      intro hFinal
      obtain ⟨middle, finish, hMiddle, hFinish, hTailLive⟩ :=
        ih hFinal
      have hMidRun : GraphRunFrom G middle.val := middle.property
      have hMidSource : GraphRunFrom G _ := by
        simpa only [hMiddle] using hMidRun
      have hStart : GraphRunFrom G _ :=
        graphRunFrom_prepend G hEdge hMidSource
      refine ⟨⟨_, hStart⟩, finish, rfl, hFinish, ?_⟩
      have hEdgeLive :
          (rightLiveGraph G).edge (⟨_, hStart⟩ : RightLiveState G)
            a middle := by
        change G.edge _ a middle.val
        simpa only [hMiddle] using hEdge
      exact WordPath.cons a word hEdgeLive hTailLive

/-- The finite language of the exact original right-live graph is
precisely the original finite paths with an actual infinite
continuation. This is an IFF over the same source path data,
not a claim of all finite original graph paths being extendable. -/
theorem rightLiveGraph_language_iff_rightExtendable
    (G : LabeledGraph State Alphabet) (word : List Alphabet) :
    GraphLanguage (rightLiveGraph G) word ↔
      RightExtendableGraphWord G word := by
  constructor
  · rintro ⟨s, t, hLive⟩
    exact ⟨s.val, t.val, liveWordPath_to_original G hLive, t.property⟩
  · rintro ⟨s, t, hPath, hFinal⟩
    obtain ⟨start, finish, _, _, hLive⟩ :=
      originalWordPath_to_live G hPath hFinal
    exact ⟨start, finish, hLive⟩

/-- Every right-live vertex admits a TRUE outgoing original edge
to another right-live vertex, namely the next edge in one
actual infinite labeled source run. -/
theorem rightLiveGraph_allOutgoing
    (G : LabeledGraph State Alphabet) :
    AllVerticesHaveOutgoing (rightLiveGraph G) := by
  intro s
  obtain ⟨trace, states, hStart, hEdge⟩ := s.property
  have hTail : GraphRunFrom G (states 1) := by
    refine ⟨(fun k => trace (k + 1)),
      (fun k => states (k + 1)), rfl, ?_⟩
    intro k
    exact hEdge (k + 1)
  refine ⟨trace 0, ⟨states 1, hTail⟩, ?_⟩
  change G.edge s.val (trace 0) (states 1)
  simpa only [hStart, Nat.zero_add] using hEdge 0

variable [Fintype State] [DecidableEq State] [Fintype Alphabet]
variable [TopologicalSpace Alphabet] [DiscreteTopology Alphabet]
  [Inhabited Alphabet]

/-- The right-live graph inherits a finite vertex set from
the ORIGINAL finite state carrier; only Prop-valued liveness
proofs are added to each retained original vertex. -/
noncomputable instance rightLiveState_fintype
    (G : LabeledGraph State Alphabet) : Fintype (RightLiveState G) := by
  classical
  exact Fintype.ofFinite _

/-- The nonblocking original right-live graph realizes its ENTIRE
finite path language as finite factors of its genuine closed
topological subshift, even when the original graph has dead ends. -/
theorem rightLiveGraph_language_iff_realized
    (G : LabeledGraph State Alphabet) (word : List Alphabet) :
    GraphLanguage (rightLiveGraph G) word ↔
      realizedTopologicalFactorLanguage
        (GraphLanguage (rightLiveGraph G)) word := by
  classical
  letI : DecidableEq (RightLiveState G) := Classical.decEq _
  exact graphLanguage_iff_realized_of_allOutgoing
    (rightLiveGraph G) (rightLiveGraph_allOutgoing G) word

/-- Exact finite-language realization of all and only
RIGHT-EXTENDABLE original source words, by the source's
actual right-live subgraph. This is stronger than mere inclusion. -/
theorem rightExtendable_iff_liveGraph_realized
    (G : LabeledGraph State Alphabet) (word : List Alphabet) :
    RightExtendableGraphWord G word ↔
      realizedTopologicalFactorLanguage
        (GraphLanguage (rightLiveGraph G)) word := by
  calc
    RightExtendableGraphWord G word ↔
        GraphLanguage (rightLiveGraph G) word :=
      (rightLiveGraph_language_iff_rightExtendable G word).symm
    _ ↔ realizedTopologicalFactorLanguage
        (GraphLanguage (rightLiveGraph G)) word :=
      rightLiveGraph_language_iff_realized G word

/-- No original right-live word is lost by interpreting the
complete factor-language of the ORIGINAL graph: a genuine live
source path is already a genuine original finite path. -/
theorem liveGraph_realized_implies_original_realized
    (G : LabeledGraph State Alphabet) (word : List Alphabet) :
    realizedTopologicalFactorLanguage
      (GraphLanguage (rightLiveGraph G)) word →
    realizedTopologicalFactorLanguage (GraphLanguage G) word := by
  rintro ⟨trace, hLiveCarrier, hBlock⟩
  refine ⟨trace, ?_, hBlock⟩
  apply (mem_completeFactorSubshift_iff (GraphLanguage G) trace).2
  intro w hW
  have hWordLive : GraphLanguage (rightLiveGraph G) w :=
    (mem_completeFactorSubshift_iff
      (GraphLanguage (rightLiveGraph G)) trace).1 hLiveCarrier w hW
  rcases hWordLive with ⟨s, t, hPath⟩
  exact ⟨s.val, t.val, liveWordPath_to_original G hPath⟩

end GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficRightLivePruning
