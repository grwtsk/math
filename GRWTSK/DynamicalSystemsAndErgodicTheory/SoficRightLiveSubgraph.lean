/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.DynamicalSystemsAndErgodicTheory.SoficFiniteTraceCompactness
import GRWTSK.DynamicalSystemsAndErgodicTheory.SoficTopologicalLanguageBoundary
import GRWTSK.DynamicalSystemsAndErgodicTheory.SoficPeriodicRunFullShift
import Mathlib

set_option autoImplicit false
noncomputable section

/-!
# Original right-live graph and the EXACT realized subshift language

A vertex is right-live when a genuine original labeled graph state
run begins there, with all of its original G.edge predicates.
The right-live subgraph is the original graph restricted to such
states, with unchanged labels and edges.

A finite original graph word is an actual infinite factor iff one
of its ORIGINAL finite WordPath witnesses ends at a right-live state.
The forward direction constructs a genuine graph run from the
ENTIRE original finite-factor-language predicate by the finite-state
compactness theorem. The reverse direction prepends the actual
finite WordPath to an infinite live tail, retaining the original
emitted finite prefix and all graph-state edges.

The language of the right-live subgraph is EXACTLY the language
realized by the previously constructed true topological subshift.
The right-live graph itself has an outgoing labeled edge from every
one of its vertices. In particular an original right-total finite
graph has no finite-path/infinite-factor language loss.

This does not claim every arbitrary finite path is extendable,
does not change original graph-cycle multiplicities, and does not
infer a topological graph-state conjugacy, arithmetic cancellation
or a zeta/Fredholm/analytic result.
-/

namespace GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficRightLiveSubgraph

open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.ExactSoficLanguageCover
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficPeriodicRunFullShift
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficFiniteTraceCompactness
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficTopologicalFactorSpace
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficTopologicalLanguageBoundary

universe u v
variable {State : Type u} {Alphabet : Type v}

/-- RIGHT-LIVE means a real infinite original graph-state run
begins at s. It remembers the original labels, all source edges
and the exact starting vertex. No periodicity is assumed. -/
def RightLive
    (G : LabeledGraph State Alphabet) (s : State) : Prop :=
  ∃ (trace : ℕ → Alphabet) (states : ℕ → State),
    states 0 = s ∧
    ∀ k, G.edge (states k) (trace k) (states (k + 1))

/-- Every suffix of an actual infinite graph run starts at an
original right-live vertex, with the same source labels and edges. -/
theorem rightLive_of_run_suffix
    (G : LabeledGraph State Alphabet)
    (trace : ℕ → Alphabet) (states : ℕ → State)
    (hsteps : ∀ k, G.edge (states k) (trace k) (states (k + 1)))
    (offset : ℕ) :
    RightLive G (states offset) := by
  refine ⟨(fun k => trace (offset + k)),
    (fun k => states (offset + k)), by simp, ?_⟩
  intro k
  simpa [Nat.add_assoc] using hsteps (offset + k)

/-- Prepending an ACTUAL one-letter edge to a right-live tail
makes its original source vertex right-live as well. -/
theorem rightLive_of_edge
    (G : LabeledGraph State Alphabet)
    {s t : State} {a : Alphabet}
    (hedge : G.edge s a t) (ht : RightLive G t) :
    RightLive G s := by
  obtain ⟨trace, states, h0, hsteps⟩ := ht
  let newTrace : ℕ → Alphabet :=
    fun | 0 => a | k + 1 => trace k
  let newStates : ℕ → State :=
    fun | 0 => s | k + 1 => states k
  refine ⟨newTrace, newStates, rfl, ?_⟩
  intro k
  cases k with
  | zero =>
      simpa [newTrace, newStates, h0] using hedge
  | succ k =>
      simpa [newTrace, newStates] using hsteps k

/-- The source vertex of any REAL original finite WordPath ending
at a right-live vertex is also right-live. -/
theorem rightLive_of_wordPath
    (G : LabeledGraph State Alphabet)
    {s t : State} {word : List Alphabet}
    (hpath : WordPath G s word t)
    (ht : RightLive G t) :
    RightLive G s := by
  induction hpath with
  | nil _ => exact ht
  | cons a word hedge tail ih =>
      exact rightLive_of_edge G hedge (ih ht)

/-- From a genuine original finite WordPath and a right-live
terminal vertex, concatenate the true tail to obtain an
infinite source graph run whose FIRST letters are EXACTLY the
original word. No new path labels or intermediate states. -/
private theorem run_with_original_prefix
    (G : LabeledGraph State Alphabet) :
    ∀ {s t : State} {word : List Alphabet},
      WordPath G s word t →
      RightLive G t →
        ∃ (trace : ℕ → Alphabet) (states : ℕ → State),
          states 0 = s ∧
          (∀ k, G.edge (states k) (trace k) (states (k + 1))) ∧
          (∀ i : Fin word.length,
            trace i.val = word.get i) := by
  intro s t word hpath
  induction hpath with
  | nil s =>
      intro hlive
      obtain ⟨trace, states, hstart, hedge⟩ := hlive
      exact ⟨trace, states, hstart, hedge,
        by intro i; exact Fin.elim0 i⟩
  | cons (s := s) a word hedge tail ih =>
      intro hlive
      obtain ⟨trace, states, hstart, hstep, hprefix⟩ := ih hlive
      let tr : ℕ → Alphabet :=
        fun | 0 => a | k + 1 => trace k
      let st : ℕ → State :=
        fun | 0 => s | k + 1 => states k
      refine ⟨tr, st, rfl, ?_, ?_⟩
      · intro k
        cases k with
        | zero => simpa [tr, st, hstart] using hedge
        | succ k => simpa [tr, st] using hstep k
      · intro i
        refine Fin.cases ?_ (fun j => ?_) i
        · rfl
        · simpa [tr, List.get_cons_succ'] using hprefix j

/-- EVERY original finite WordPath ending at a right-live state
appears as an ACTUAL factor (at offset zero) of a genuine
topological-subshift trace. The entire infinite trace is source
graph-realized, so ALL its finite factors are admitted. -/
theorem realized_of_wordPath_rightLive
    [Fintype State] [DecidableEq State] [Fintype Alphabet]
    [TopologicalSpace Alphabet] [DiscreteTopology Alphabet]
    [Inhabited Alphabet]
    (G : LabeledGraph State Alphabet)
    {s t : State} {word : List Alphabet}
    (hpath : WordPath G s word t)
    (ht : RightLive G t) :
    realizedTopologicalFactorLanguage (GraphLanguage G) word := by
  obtain ⟨trace, states, hstart, hsteps, hprefix⟩ :=
    run_with_original_prefix G hpath ht
  have hrun : RunsOnGraph G trace := ⟨states, hsteps⟩
  have hcarrier :
      trace ∈ (completeFactorSubshift (GraphLanguage G)).carrier := by
    apply (mem_completeFactorSubshift_iff _ trace).2
    intro other hblock
    exact graphLanguage_of_run_block G trace hrun other hblock
  exact ⟨trace, hcarrier, ⟨0, by simpa using hprefix⟩⟩

/-- FINITE-STATE COMPACTNESS makes the converse exact. Any actual
infinite stream in the topological subshift yields ONE compatible
original graph-state run; the observed finite word then has its
original source path terminating at a right-live vertex. -/
theorem realized_iff_path_to_rightLive
    [Fintype State] [DecidableEq State] [Fintype Alphabet]
    [TopologicalSpace Alphabet] [DiscreteTopology Alphabet]
    [Inhabited Alphabet]
    (G : LabeledGraph State Alphabet) (word : List Alphabet) :
    realizedTopologicalFactorLanguage (GraphLanguage G) word ↔
      ∃ s t : State, WordPath G s word t ∧ RightLive G t := by
  constructor
  · rintro ⟨trace, hcarrier, ⟨offset, hletters⟩⟩
    have hall : ∀ other : List Alphabet,
        HasFiniteBlock trace other → GraphLanguage G other :=
      (mem_completeFactorSubshift_iff (GraphLanguage G) trace).1 hcarrier
    obtain ⟨states, hstep⟩ :=
      runsOnGraph_of_all_factors G trace hall
    refine ⟨states offset, states (offset + word.length), ?_, ?_⟩
    · exact wordPath_of_run_block G trace states hstep
        offset word hletters
    · exact rightLive_of_run_suffix G trace states hstep
        (offset + word.length)
  · rintro ⟨s, t, hpath, ht⟩
    exact realized_of_wordPath_rightLive G hpath ht

/-! ## The original right-live graph and its exact language -/

/-- Restrict the ORIGINAL vertex carrier to right-live vertices,
with precisely the original label-indexed edge predicate. -/
def rightLiveSubgraph
    (G : LabeledGraph State Alphabet) :
    LabeledGraph {s : State // RightLive G s} Alphabet where
  edge := fun s a t => G.edge s.val a t.val

/-- Forget only the proof that vertices are right-live. Every
original edge, symbol and endpoint is retained. -/
private theorem original_path_of_rightLive_path
    (G : LabeledGraph State Alphabet) :
    ∀ {s t : {x : State // RightLive G x}} {word : List Alphabet},
      WordPath (rightLiveSubgraph G) s word t →
        WordPath G s.val word t.val := by
  intro s t word hpath
  induction hpath with
  | nil s =>
      exact WordPath.nil s.val
  | cons a word hedge tail ih =>
      exact WordPath.cons a word hedge ih

/-- Any original finite WordPath ending right-live lifts
componentwise into the ACTUAL right-live restricted graph,
with every intermediate original state and edge retained. -/
private theorem rightLive_path_of_original_path
    (G : LabeledGraph State Alphabet) :
    ∀ {s t : State} {word : List Alphabet},
      (hpath : WordPath G s word t) →
      (ht : RightLive G t) →
        ∃ (source target : {x : State // RightLive G x}),
          source.val = s ∧ target.val = t ∧
          WordPath (rightLiveSubgraph G) source word target := by
  intro s t word hpath
  induction hpath with
  | nil s =>
      intro ht
      exact ⟨⟨s, ht⟩, ⟨s, ht⟩, rfl, rfl,
        WordPath.nil ⟨s, ht⟩⟩
  | cons (s := s) a word hedge tail ih =>
      intro ht
      obtain ⟨middleLive, targetLive, hmid, hfinish, htail⟩ := ih ht
      have hsource : RightLive G s :=
        rightLive_of_wordPath G
          (WordPath.cons a word hedge tail) ht
      let sourceLive : {x : State // RightLive G x} :=
        ⟨s, hsource⟩
      have hedge' :
          (rightLiveSubgraph G).edge sourceLive a middleLive := by
        change G.edge s a middleLive.val
        rw [hmid]
        exact hedge
      exact ⟨sourceLive, targetLive, rfl, hfinish,
        WordPath.cons a word hedge' htail⟩

/-- The complete finite-word language of the actual right-live
subgraph is precisely the original finite-path language restricted
to paths whose ending state admits an infinite continuation. -/
theorem rightLiveSubgraph_language_iff
    (G : LabeledGraph State Alphabet) (word : List Alphabet) :
    GraphLanguage (rightLiveSubgraph G) word ↔
      ∃ s t : State, WordPath G s word t ∧ RightLive G t := by
  constructor
  · rintro ⟨source, target, hpath⟩
    exact ⟨source.val, target.val,
      original_path_of_rightLive_path G hpath, target.property⟩
  · rintro ⟨source, target, hpath, ht⟩
    obtain ⟨s, t, hs, ht', hLivePath⟩ :=
      rightLive_path_of_original_path G hpath ht
    exact ⟨s, t, hLivePath⟩

/-- MAIN exact language theorem: finite factors realized by true
infinite points of the original topological subshift are EXACTLY
the finite words of its original right-live graph restriction.
This is an unconditional theorem for every finite graph, with no
separate infinite-realization premise or global right-totality. -/
theorem realizedTopologicalFactorLanguage_eq_rightLiveGraphLanguage
    [Fintype State] [DecidableEq State] [Fintype Alphabet]
    [TopologicalSpace Alphabet] [DiscreteTopology Alphabet]
    [Inhabited Alphabet]
    (G : LabeledGraph State Alphabet) (word : List Alphabet) :
    realizedTopologicalFactorLanguage (GraphLanguage G) word ↔
      GraphLanguage (rightLiveSubgraph G) word := by
  exact (realized_iff_path_to_rightLive G word).trans
    (rightLiveSubgraph_language_iff G word).symm

/-- Right-live graph vertices always have a genuine outgoing
source edge to another right-live vertex. Hence the pruning
is dynamically right-total, even if the original graph has
dead ends and disconnected terminal components. -/
theorem rightLiveSubgraph_has_outgoing
    (G : LabeledGraph State Alphabet)
    (source : {s : State // RightLive G s}) :
    ∃ a : Alphabet, ∃ target : {s : State // RightLive G s},
      (rightLiveSubgraph G).edge source a target := by
  obtain ⟨trace, states, h0, hstep⟩ := source.property
  have htail : RightLive G (states 1) :=
    rightLive_of_run_suffix G trace states hstep 1
  refine ⟨trace 0, ⟨states 1, htail⟩, ?_⟩
  change G.edge source.val (trace 0) (states 1)
  simpa [h0] using hstep 0

/-! ## A direct, independently useful sufficient condition -/

/-- The original edge relation has at least one ACTUAL labeled
outgoing edge from every state. This is stronger than necessary
for one selected word but sufficient for ALL finite words. -/
def RightTotal (G : LabeledGraph State Alphabet) : Prop :=
  ∀ s : State, ∃ a : Alphabet, ∃ t : State, G.edge s a t

/-- Every original vertex of a right-total graph is actually
right-live. A classically chosen successor pair defines the
entire original state and emitted-label trajectory. -/
theorem rightLive_of_rightTotal
    (G : LabeledGraph State Alphabet)
    (htotal : RightTotal G) (start : State) :
    RightLive G start := by
  classical
  have hpair (s : State) :
      ∃ p : Alphabet × State, G.edge s p.1 p.2 := by
    obtain ⟨a, t, hedge⟩ := htotal s
    exact ⟨(a, t), hedge⟩
  let chooseStep (s : State) : Alphabet × State :=
    Classical.choose (hpair s)
  have hstep (s : State) :
      G.edge s (chooseStep s).1 (chooseStep s).2 :=
    Classical.choose_spec (hpair s)
  let states : ℕ → State :=
    Nat.rec start (fun _ s => (chooseStep s).2)
  let trace : ℕ → Alphabet :=
    fun k => (chooseStep (states k)).1
  refine ⟨trace, states, rfl, ?_⟩
  intro k
  change G.edge (states k) (chooseStep (states k)).1
    (chooseStep (states k)).2
  exact hstep (states k)

/-- For any right-total original finite graph, the finite-path
GraphLanguage is exactly the finite-factor language realized
by the original true topological subshift. The converse still
fails for non-right-total graphs, as the prior terminal-edge
fixture demonstrates. -/
theorem realized_eq_GraphLanguage_of_rightTotal
    [Fintype State] [DecidableEq State] [Fintype Alphabet]
    [TopologicalSpace Alphabet] [DiscreteTopology Alphabet]
    [Inhabited Alphabet]
    (G : LabeledGraph State Alphabet)
    (htotal : RightTotal G) (word : List Alphabet) :
    realizedTopologicalFactorLanguage (GraphLanguage G) word ↔
      GraphLanguage G word := by
  constructor
  · exact realizedTopologicalFactorLanguage_subset
      (GraphLanguage G) word
  · rintro ⟨s, t, hpath⟩
    exact realized_of_wordPath_rightLive G hpath
      (rightLive_of_rightTotal G htotal t)

end GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficRightLiveSubgraph
