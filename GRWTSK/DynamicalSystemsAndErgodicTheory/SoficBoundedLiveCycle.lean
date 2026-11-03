/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.DynamicalSystemsAndErgodicTheory.SoficRightLiveSubgraph
import GRWTSK.DynamicalSystemsAndErgodicTheory.SoficPeriodicMultipleLift
import GRWTSK.DynamicalSystemsAndErgodicTheory.SoficCycleRepetitionFromWalk
import Mathlib

set_option autoImplicit false
noncomputable section

/-!
# Original right-live vertices have bounded finite cycle certificates

An infinite source-labeled graph run in a graph with q states
has q+1 consecutive original vertices and therefore contains
a repeated vertex at indices 0<=i<j<=q. The original run-block
WordPath lemma extracts an actual finite prefix of length i
and a nonempty original closed labeled path of length j-i.

Conversely, convert any nonempty original WordPath cycle to
an ORIGINAL snoc-inductive LabeledWalkData closed cycle, use
the previously proved basedCycleStateStream to repeat it
indefinitely, and prepend the original path reaching it.
No quotient of the original graph, arbitrary accepted language
word or Boolean replacement of its edge predicates is used.

A finite-state source vertex is therefore right-live iff it
has a bounded original path to a nonempty closed original
WordPath, with prefix length plus cycle length <= card State.
Combined with the exact topological right-live graph theorem,
this is a FINITE certificate for each truly realized factor of
the original topological subshift. It does not assert the
original finite graph is right-total or count each cycle only once.
-/

namespace GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficBoundedLiveCycle

open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.ExactSoficLanguageCover
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficPeriodicMatrixTrace
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficBasedCycleCard
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficPeriodicRunFullShift
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficPeriodicMultipleLift
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficCycleRepetitionFromWalk
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficRightLiveSubgraph
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficTopologicalLanguageBoundary

universe u v
variable {State : Type u} {Alphabet : Type v}
  [Fintype State] [DecidableEq State] [Fintype Alphabet]

/-- A bounded and entirely FINITE original source certificate of
an infinite continuation from s. The prefix and closed cycle
retain their exact labeled WordPath witnesses and original states.
The positive cycle cannot be a length-zero identity path. -/
def HasBoundedReachableCycle
    (G : LabeledGraph State Alphabet) (s : State) : Prop :=
  ∃ (prefix cycle : List Alphabet) (center : State),
    0 < cycle.length ∧
    prefix.length + cycle.length ≤ Fintype.card State ∧
    WordPath G s prefix center ∧
    WordPath G center cycle center

/-- Every source-right-live graph state has a NONEMPTY closed
labeled path reachable within q actual source edges. The
pigeonhole counts q+1 consecutive ACTUAL graph vertices. -/
theorem boundedReachableCycle_of_rightLive
    (G : LabeledGraph State Alphabet) (s : State)
    (hLive : RightLive G s) :
    HasBoundedReachableCycle G s := by
  classical
  obtain ⟨trace, states, hstart, hstep⟩ := hLive
  let q : ℕ := Fintype.card State
  obtain ⟨i, j, hne, heq⟩ :=
    Fintype.exists_ne_map_eq_of_card_lt
      (fun k : Fin (q + 1) => states k.val) (by simp [q])
  have hval : i.val ≠ j.val := by
    intro hv
    exact hne (Fin.ext hv)
  obtain ⟨start, stop, hlt, hsame⟩ :
      ∃ start stop : ℕ, start < stop ∧ stop ≤ q ∧
        states start = states stop := by
    by_cases hij : i.val < j.val
    · exact ⟨i.val, j.val, hij,
        Nat.lt_succ_iff.mp j.isLt, heq⟩
    · have hji : j.val < i.val := by omega
      exact ⟨j.val, i.val, hji,
        Nat.lt_succ_iff.mp i.isLt, heq.symm⟩
  let period : ℕ := stop - start
  have hperiod : 0 < period := by dsimp [period]; omega
  have hsum : start + period = stop := by dsimp [period]; omega
  let prefix : List Alphabet :=
    List.ofFn (fun k : Fin start => trace k.val)
  let cycle : List Alphabet :=
    List.ofFn (fun k : Fin period => trace (start + k.val))
  have hprefixLetters :
      ∀ k : Fin prefix.length,
        trace (0 + k.val) = prefix.get k := by
    intro k
    simp [prefix]
  have hcycleLetters :
      ∀ k : Fin cycle.length,
        trace (start + k.val) = cycle.get k := by
    intro k
    simp [cycle]
  have hprefixPath :
      WordPath G s prefix (states start) := by
    have hp := wordPath_of_run_block G trace states hstep 0
      prefix hprefixLetters
    simpa [prefix, hstart] using hp
  have hcyclePath :
      WordPath G (states start) cycle (states start) := by
    have hp := wordPath_of_run_block G trace states hstep start
      cycle hcycleLetters
    have htarget : start + cycle.length = stop := by
      simpa [cycle] using hsum
    rw [htarget] at hp
    rw [← hsame] at hp
    exact hp
  refine ⟨prefix, cycle, states start, ?_, ?_,
    hprefixPath, hcyclePath⟩
  · simpa [cycle] using hperiod
  · have hsize : prefix.length + cycle.length = stop := by
      simpa [prefix, cycle] using hsum
    omega

/-- A NONEMPTY original closed WordPath produces an actual
original BasedCycleData with its complete snoc-inductive
intermediate state and label witnesses. Its previously
constructed periodic state stream provides an infinite run
based at the SAME original state. -/
private theorem rightLive_of_nonempty_closedPath
    (G : LabeledGraph State Alphabet)
    {s : State} {cycle : List Alphabet}
    (hpositive : 0 < cycle.length)
    (hpath : WordPath G s cycle s) :
    RightLive G s := by
  obtain ⟨data, hlabels⟩ := actual_walk_of_wordPath G hpath
  let c : BasedCycleData G cycle.length := ⟨s, data⟩
  refine ⟨repeatBlock hpositive (basedCycleWord G cycle.length c),
    basedCycleStateStream G cycle.length hpositive c, ?_, ?_⟩
  · exact basedCycleStateStream_zero G cycle.length hpositive c
  · intro k
    exact basedCycleStateStream_edge G cycle.length hpositive c k

/-- An ACTUAL finite path to a bounded nonempty original
closed graph cycle guarantees a compatible infinite labeled
graph-state run from the original input state. -/
theorem rightLive_of_boundedReachableCycle
    (G : LabeledGraph State Alphabet) (s : State)
    (h : HasBoundedReachableCycle G s) :
    RightLive G s := by
  obtain ⟨prefix, cycle, center, hpositive, hbound,
    hprefix, hcycle⟩ := h
  exact rightLive_of_wordPath G hprefix
    (rightLive_of_nonempty_closedPath G hpositive hcycle)

/-- MAIN finite-state source criterion, using the ORIGINAL source
graph and actual labeled paths in BOTH directions. -/
theorem rightLive_iff_boundedReachableCycle
    (G : LabeledGraph State Alphabet) (s : State) :
    RightLive G s ↔ HasBoundedReachableCycle G s :=
  ⟨boundedReachableCycle_of_rightLive G s,
    rightLive_of_boundedReachableCycle G s⟩

/-- The graph restricted to ACTUAL right-live vertices recognizes
precisely the original finite words whose final state can reach
a nonempty closed source cycle within q further original edges. -/
theorem rightLiveSubgraph_language_iff_boundedReachableCycle
    (G : LabeledGraph State Alphabet) (word : List Alphabet) :
    GraphLanguage (rightLiveSubgraph G) word ↔
      ∃ s t : State, WordPath G s word t ∧
        HasBoundedReachableCycle G t := by
  constructor
  · intro h
    obtain ⟨s, t, hp, hLive⟩ :=
      (rightLiveSubgraph_language_iff G word).mp h
    exact ⟨s, t, hp,
      (rightLive_iff_boundedReachableCycle G t).mp hLive⟩
  · rintro ⟨s, t, hp, hcycle⟩
    exact (rightLiveSubgraph_language_iff G word).mpr
      ⟨s, t, hp,
        (rightLive_iff_boundedReachableCycle G t).mpr hcycle⟩

/-- The complete ACTUAL infinite-factor language of the original
topological subshift now has an entirely FINITE witness
characterization: an original path spelling word followed
by a nonempty source cycle reachable within at most q edges.
The witness is source-preserving, not an unlabeled graph cycle. -/
theorem realizedTopologicalFactorLanguage_iff_boundedCycleExtension
    [TopologicalSpace Alphabet] [DiscreteTopology Alphabet]
    [Inhabited Alphabet]
    (G : LabeledGraph State Alphabet) (word : List Alphabet) :
    realizedTopologicalFactorLanguage (GraphLanguage G) word ↔
      ∃ s t : State, WordPath G s word t ∧
        HasBoundedReachableCycle G t := by
  exact (realizedTopologicalFactorLanguage_eq_rightLiveGraphLanguage
    G word).trans
      (rightLiveSubgraph_language_iff_boundedReachableCycle G word)

/-- Finite original graph-language equality with the actual
topological realized language is now explicitly equivalent
to the existence of a bounded nonempty-cycle continuation
for EVERY finite accepted word. This is a GRAPH PROPERTY,
not a free analytic remainder or an automatic premise. -/
theorem realizedLanguage_eq_graphLanguage_iff_everyWordCycleExtendable
    [TopologicalSpace Alphabet] [DiscreteTopology Alphabet]
    [Inhabited Alphabet]
    (G : LabeledGraph State Alphabet) :
    (∀ word : List Alphabet,
      realizedTopologicalFactorLanguage (GraphLanguage G) word ↔
        GraphLanguage G word) ↔
    (∀ word : List Alphabet, GraphLanguage G word →
      ∃ s t : State, WordPath G s word t ∧
        HasBoundedReachableCycle G t) := by
  constructor
  · intro heq word hword
    exact (realizedTopologicalFactorLanguage_iff_boundedCycleExtension
      G word).mp ((heq word).mpr hword)
  · intro hall word
    constructor
    · exact realizedTopologicalFactorLanguage_subset
        (GraphLanguage G) word
    · intro hword
      exact (realizedTopologicalFactorLanguage_iff_boundedCycleExtension
        G word).mpr (hall word hword)

end GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficBoundedLiveCycle
