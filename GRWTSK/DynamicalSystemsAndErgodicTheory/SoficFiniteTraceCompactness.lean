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
# Finite-state compactness for ACTUAL source-labeled infinite traces

A finite graph's whole finite-factor language contains each finite
initial block of a given trace. Those original WordPath witnesses
may have different starting vertices and intermediate states.
The missing mathematical step is a compatible infinite state run
emitting EXACTLY the given trace, with no letter changes.

First convert each genuine original WordPath into a finite-prefix
state trajectory. Nested nonempty subsets of a FINITE state carrier
have a common vertex: select the maximum of finitely many putative
failure depths and contradict that depth's finite witness.
Apply the same argument to compatible successor vertices and
use dependent Nat recursion on the resulting viable state choices.

This proves that ALL initial finite graph prefixes imply one
true RunsOnGraph. In particular, the complete every-factor
condition of the original topological subshift supplies a run
with exactly that infinite label trace, not merely arbitrarily
long unrelated paths.

The construction neither changes G.edge nor postulates
compactness, deterministic transitions, a fresh research axiom,
periodicity, or a topological graph conjugacy.
-/

namespace GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficFiniteTraceCompactness

open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.ExactSoficLanguageCover
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficTopologicalFactorSpace

universe u v
variable {State : Type u} {Alphabet : Type v}
variable [Fintype State] [DecidableEq State] [Fintype Alphabet]

/-- A length-n original source state trajectory from a fixed
start, carrying the ACTUAL trace labels at each of its n edges.
Its later state values are irrelevant. -/
def FiniteTraceLift
    (G : LabeledGraph State Alphabet)
    (trace : ℕ → Alphabet) (s : State) (n : ℕ) : Prop :=
  ∃ states : ℕ → State,
    states 0 = s ∧
    ∀ k, k < n →
      G.edge (states k) (trace k) (states (k + 1))

/-- Shorten an actual finite source trajectory without selecting
new vertices, edges or labels. -/
theorem finiteTraceLift_mono
    (G : LabeledGraph State Alphabet)
    (trace : ℕ → Alphabet) (s : State) {n m : ℕ}
    (hnm : n ≤ m) :
    FiniteTraceLift G trace s m →
      FiniteTraceLift G trace s n := by
  rintro ⟨states, hstart, hedge⟩
  exact ⟨states, hstart, fun k hk =>
    hedge k (lt_of_lt_of_le hk hnm)⟩

/-- Actual finite state trajectories arise from original
cons-inductive WordPath, preserving the complete emitted
ordered finite word. State values beyond the endpoint may be
arbitrary and are not part of the path observation. -/
private theorem states_of_original_wordPath
    (G : LabeledGraph State Alphabet) :
    ∀ {s t : State} {word : List Alphabet},
      WordPath G s word t →
        ∃ states : ℕ → State,
          states 0 = s ∧
          ∀ k (hk : k < word.length),
            G.edge (states k)
              (word.get ⟨k, hk⟩) (states (k + 1)) := by
  intro s t word hpath
  induction hpath with
  | nil s =>
      refine ⟨fun _ => s, rfl, ?_⟩
      intro k hk
      omega
  | cons (s := s) a rest hedge tail ih =>
      obtain ⟨tailStates, h0, htail⟩ := ih
      let states : ℕ → State :=
        fun | 0 => s | k + 1 => tailStates k
      refine ⟨states, rfl, ?_⟩
      intro k hk
      cases k with
      | zero =>
          simpa [states, h0] using hedge
      | succ k =>
          have hlt : k < rest.length := by
            simpa using hk
          have hword :
              (a :: rest).get ⟨k + 1, hk⟩ =
                rest.get ⟨k, hlt⟩ := rfl
          simpa only [states, hword] using (htail k hlt)

/-- An actual original WordPath spelling precisely the first n
source labels supplies an actual length-n finite trace lift. -/
theorem finiteTraceLift_of_graph_prefix
    (G : LabeledGraph State Alphabet)
    (trace : ℕ → Alphabet) (n : ℕ)
    (hpath : GraphLanguage G
      (List.ofFn (fun i : Fin n => trace i.val))) :
    ∃ s : State, FiniteTraceLift G trace s n := by
  obtain ⟨s, t, hp⟩ := hpath
  obtain ⟨states, hstart, hedge⟩ :=
    states_of_original_wordPath G hp
  refine ⟨s, states, hstart, ?_⟩
  intro k hk
  have hlt : k <
      (List.ofFn (fun i : Fin n => trace i.val)).length := by
    simpa using hk
  have h := hedge k hlt
  simpa using h

/-! ## The finite nested-candidate pigeonhole argument -/

/-- FINITE intersection compactness for decreasing source
candidate sets. If each depth has a valid original state and
validity at larger depths implies validity at smaller depths,
then one ACTUAL state works at ALL finite depths. -/
theorem finite_nested_state
    (P : State → ℕ → Prop)
    (hdown : ∀ s n m, n ≤ m → P s m → P s n)
    (hcover : ∀ n, ∃ s, P s n) :
    ∃ s, ∀ n, P s n := by
  classical
  by_contra hnone
  push_neg at hnone
  let bad (s : State) : ℕ := Classical.choose (hnone s)
  have hbad (s : State) : ¬ P s (bad s) :=
    Classical.choose_spec (hnone s)
  let N : ℕ := Finset.univ.sup bad
  obtain ⟨s, hs⟩ := hcover N
  have hle : bad s ≤ N :=
    Finset.le_sup (Finset.mem_univ s)
  exact hbad s (hdown s (bad s) N hle hs)

/-- A state admitting finite original source-trace paths at
EVERY length has a successor that admits paths of every
length along the unchanged tail trace. This is the crucial
finite-branching compatibility step, not a free choice of
inconsistent paths at successive lengths. -/
theorem viableTraceLift_successor
    (G : LabeledGraph State Alphabet)
    (trace : ℕ → Alphabet) (s : State)
    (hviable : ∀ n, FiniteTraceLift G trace s n) :
    ∃ t : State,
      G.edge s (trace 0) t ∧
      ∀ n, FiniteTraceLift G
        (fun k => trace (k + 1)) t n := by
  have hcover (n : ℕ) :
      ∃ t : State, G.edge s (trace 0) t ∧
        FiniteTraceLift G (fun k => trace (k + 1)) t n := by
    obtain ⟨states, h0, hedge⟩ := hviable (n + 1)
    refine ⟨states 1, ?_, ?_⟩
    · have hfirst := hedge 0 (by omega)
      simpa [h0] using hfirst
    · refine ⟨fun k => states (k + 1), rfl, ?_⟩
      intro k hk
      have hnext := hedge (k + 1) (by omega)
      simpa [Nat.add_assoc] using hnext
  have hdown (t : State) (n m : ℕ) (hnm : n ≤ m)
      (h : G.edge s (trace 0) t ∧
        FiniteTraceLift G (fun k => trace (k + 1)) t m) :
      G.edge s (trace 0) t ∧
        FiniteTraceLift G (fun k => trace (k + 1)) t n :=
    ⟨h.1, finiteTraceLift_mono G _ t hnm h.2⟩
  exact finite_nested_state
    (P := fun t n =>
      G.edge s (trace 0) t ∧
      FiniteTraceLift G (fun k => trace (k + 1)) t n)
    hdown hcover

/-! ## Construct the one original infinite run -/

/-- Given a genuine labeled graph path for EVERY initial finite
prefix of ONE FIXED trace, construct a compatible infinite
sequence of actual source states emitting exactly that trace.
Finite state compactness is proved above and not assumed here. -/
theorem runsOnGraph_of_all_graph_prefixes
    (G : LabeledGraph State Alphabet)
    (trace : ℕ → Alphabet)
    (hall : ∀ n, GraphLanguage G
      (List.ofFn (fun i : Fin n => trace i.val))) :
    RunsOnGraph G trace := by
  classical
  have hcover (n : ℕ) :
      ∃ s : State, FiniteTraceLift G trace s n :=
    finiteTraceLift_of_graph_prefix G trace n (hall n)
  obtain ⟨first, hfirst⟩ :=
    finite_nested_state
      (P := fun s n => FiniteTraceLift G trace s n)
      (fun s n m hnm h =>
        finiteTraceLift_mono G trace s hnm h)
      hcover
  let shifted (k : ℕ) : ℕ → Alphabet :=
    fun j => trace (k + j)
  let Good (k : ℕ) (s : State) : Prop :=
    ∀ n, FiniteTraceLift G (shifted k) s n
  have hgood0 : Good 0 first := by
    intro n
    simpa [Good, shifted] using hfirst n
  have hnext (k : ℕ) (s : State) (hgood : Good k s) :
      ∃ t : State, G.edge s (trace k) t ∧ Good (k + 1) t := by
    obtain ⟨t, hedge, htail⟩ :=
      viableTraceLift_successor G (shifted k) s hgood
    refine ⟨t, ?_, ?_⟩
    · simpa [shifted] using hedge
    · intro n
      have hshift :
          (fun j => shifted k (j + 1)) = shifted (k + 1) := by
        funext j
        simp [shifted, Nat.add_assoc, Nat.add_comm, Nat.add_left_comm]
      simpa only [hshift] using htail n
  let advance (k : ℕ) (p : {s : State // Good k s}) :
      {s : State // Good (k + 1) s} :=
    ⟨Classical.choose (hnext k p.val p.property),
      (Classical.choose_spec (hnext k p.val p.property)).2⟩
  let statesAt : (k : ℕ) → {s : State // Good k s} :=
    Nat.rec ⟨first, hgood0⟩ (fun k p => advance k p)
  refine ⟨fun k => (statesAt k).val, ?_⟩
  intro k
  have hedge :=
    (Classical.choose_spec
      (hnext k (statesAt k).val (statesAt k).property)).1
  change G.edge (statesAt k).val (trace k)
    (advance k (statesAt k)).val
  exact hedge

/-- An actual graph presentation accepting EVERY finite factor
of ONE infinite source trace supplies a genuine compatible
infinite graph-state run. This is the source-preserving
finite-graph compactness theorem missing from mere finite
factor admission. -/
theorem runsOnGraph_of_all_factors
    (G : LabeledGraph State Alphabet)
    (trace : ℕ → Alphabet)
    (hall : ∀ w : List Alphabet,
      HasFiniteBlock trace w → GraphLanguage G w) :
    RunsOnGraph G trace := by
  apply runsOnGraph_of_all_graph_prefixes G trace
  intro n
  apply hall
  refine ⟨0, ?_⟩
  intro i
  simp

end GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficFiniteTraceCompactness
