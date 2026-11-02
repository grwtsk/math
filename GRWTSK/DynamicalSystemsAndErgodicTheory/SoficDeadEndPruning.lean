/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.DynamicalSystemsAndErgodicTheory.SoficBoundedLiveCycle
import GRWTSK.DynamicalSystemsAndErgodicTheory.SoficFiniteSupportAutomaton
import Mathlib

set_option autoImplicit false

/-!
# Finite dead-end pruning with an explicit decidable original edge oracle

The true original graph has edge : State → Alphabet → State → Prop.
We require an explicit decision procedure for that SAME edge predicate
rather than silently replacing it by a decidable approximate graph.

Starting from the whole original state carrier, prune one round by
keeping precisely the vertices with a genuine labeled edge into
the retained set. This is a finite-set algorithm with executable
definitions (no noncomputable declarations in the pruning core).

The retained sets decrease. They stabilize after q=card State
rounds, since an equality persists and q+1 strict decreases
would contradict the original finite cardinal. At the stable
fixed point, classical extraction of certified original edges
constructs a real infinite original graph-state run. Conversely
every genuine infinite run survives every pruning round.

The exact result is:
  s ∈ prune G edgeDecision q ↔ RightLive G s.

A second executable word-support fold returns the original
finite endpoint set under the same genuine edge oracle.
Intersecting it with the stable retained set gives a Boolean
decision for ACTUAL finite factors realized by the original
infinite topological subshift. This intentionally preserves
the original path/cycle multiplicities in separate Nat matrices;
the Boolean decision is only a support query.

The proved mathematics does not by itself establish native
Lean compiler execution, kernel checking, performance benchmarks,
or an arithmetic/PDE/zeta/RH consequence.
-/

namespace GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficDeadEndPruning

open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.ExactSoficLanguageCover
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficFiniteSupportAutomaton
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficRightLiveSubgraph
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficBoundedLiveCycle
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficTopologicalLanguageBoundary

universe u v
variable {State : Type u} {Alphabet : Type v}
variable [Fintype State] [DecidableEq State] [Fintype Alphabet]

/-- An actual source-edge decision supplier, not a guessed Boolean
graph or a finite candidate relation from repository search. -/
def SourceEdgeDecider (G : LabeledGraph State Alphabet) :=
  (s : State) → (a : Alphabet) → (t : State) → Decidable (G.edge s a t)

/-- One executable round: retain s precisely when there is an
ACTUAL original labeled edge s--a-->t into the previous set. -/
def pruneStep (G : LabeledGraph State Alphabet)
    (decEdge : SourceEdgeDecider G) (keep : Finset State) :
    Finset State := by
  letI : (s : State) → (a : Alphabet) → (t : State) →
      Decidable (G.edge s a t) := decEdge
  exact Finset.univ.filter (fun s =>
    ∃ a : Alphabet, ∃ t ∈ keep, G.edge s a t)

theorem mem_pruneStep_iff
    (G : LabeledGraph State Alphabet)
    (decEdge : SourceEdgeDecider G)
    (keep : Finset State) (s : State) :
    s ∈ pruneStep G decEdge keep ↔
      ∃ a : Alphabet, ∃ t ∈ keep, G.edge s a t := by
  simp [pruneStep]

/-- Finite edge pruning is monotone as a map on sets. -/
theorem pruneStep_mono
    (G : LabeledGraph State Alphabet)
    (decEdge : SourceEdgeDecider G)
    {S T : Finset State} (hst : S ⊆ T) :
    pruneStep G decEdge S ⊆ pruneStep G decEdge T := by
  intro s hs
  obtain ⟨a,t,ht,hedge⟩ :=
    (mem_pruneStep_iff G decEdge S s).mp hs
  exact (mem_pruneStep_iff G decEdge T s).mpr
    ⟨a,t,hst ht,hedge⟩

/-- Exactly n rounds of finite dead-end pruning. This source
definition uses a supplied decision procedure and finite iteration,
rather than noncomputable testing of RightLive. -/
def retainedAfter (G : LabeledGraph State Alphabet)
    (decEdge : SourceEdgeDecider G) : ℕ → Finset State
  | 0 => Finset.univ
  | n + 1 => pruneStep G decEdge (retainedAfter G decEdge n)

/-- Each round removes vertices or leaves the set unchanged. -/
theorem retainedAfter_antitone_step
    (G : LabeledGraph State Alphabet)
    (decEdge : SourceEdgeDecider G) (n : ℕ) :
    retainedAfter G decEdge (n + 1) ⊆
      retainedAfter G decEdge n := by
  induction n with
  | zero =>
      exact Finset.subset_univ _
  | succ n ih =>
      change
        pruneStep G decEdge (retainedAfter G decEdge (n + 1)) ⊆
        pruneStep G decEdge (retainedAfter G decEdge n)
      exact pruneStep_mono G decEdge ih

/-- Equality at one round propagates through all later rounds
because each round applies the SAME original finite-set map. -/
private theorem retainedAfter_stable_next
    (G : LabeledGraph State Alphabet)
    (decEdge : SourceEdgeDecider G)
    (n : ℕ)
    (h : retainedAfter G decEdge (n + 1) =
      retainedAfter G decEdge n) :
    retainedAfter G decEdge (n + 2) =
      retainedAfter G decEdge (n + 1) := by
  change pruneStep G decEdge
      (retainedAfter G decEdge (n + 1)) =
    pruneStep G decEdge (retainedAfter G decEdge n)
  rw [h]

private theorem retainedAfter_stable_add
    (G : LabeledGraph State Alphabet)
    (decEdge : SourceEdgeDecider G)
    (n : ℕ)
    (h : retainedAfter G decEdge (n + 1) =
      retainedAfter G decEdge n) :
    ∀ m : ℕ,
      retainedAfter G decEdge (n + m + 1) =
        retainedAfter G decEdge (n + m) := by
  intro m
  induction m with
  | zero =>
      simpa using h
  | succ m ih =>
      have hnext := retainedAfter_stable_next
        G decEdge (n + m) ih
      simpa [Nat.add_assoc] using hnext

/-- Sharp termination bound: q=card State rounds are enough,
including q=0. The proof uses the cardinality of the ORIGINAL
state set, not a fabricated graph-state bound. -/
theorem retainedAfter_stable_card
    (G : LabeledGraph State Alphabet)
    (decEdge : SourceEdgeDecider G) :
    retainedAfter G decEdge (Fintype.card State + 1) =
      retainedAfter G decEdge (Fintype.card State) := by
  classical
  let q : ℕ := Fintype.card State
  by_contra hneq
  have hstrict (k : ℕ) (hk : k ≤ q) :
      (retainedAfter G decEdge (k + 1)).card <
        (retainedAfter G decEdge k).card := by
    have hn : retainedAfter G decEdge (k + 1) ≠
        retainedAfter G decEdge k := by
      intro heq
      have hlate := retainedAfter_stable_add
        G decEdge k heq (q - k)
      have hsum : k + (q - k) = q := Nat.add_sub_of_le hk
      exact hneq (by simpa [q, hsum] using hlate)
    exact Finset.card_lt_card
      (Finset.ssubset_iff_subset_ne.mpr
        ⟨retainedAfter_antitone_step G decEdge k, hn⟩)
  have hcard (k : ℕ) :
      k ≤ q + 1 →
        (retainedAfter G decEdge k).card + k ≤ q := by
    induction k with
    | zero =>
        intro _
        simp [retainedAfter, q]
    | succ k ih =>
        intro hk
        have hlt := hstrict k (by omega)
        have hprior := ih (by omega)
        omega
  have hlast := hcard (q + 1) (by omega)
  omega

/-- The source pruning set is a FIXED point at the sharp bound q.
Every retained vertex has a real edge to ANOTHER retained vertex. -/
theorem retainedAfter_card_has_successor
    (G : LabeledGraph State Alphabet)
    (decEdge : SourceEdgeDecider G)
    (s : State)
    (hs : s ∈ retainedAfter G decEdge (Fintype.card State)) :
    ∃ a : Alphabet, ∃ t : State,
      t ∈ retainedAfter G decEdge (Fintype.card State) ∧
      G.edge s a t := by
  have hsnext :
      s ∈ retainedAfter G decEdge (Fintype.card State + 1) := by
    rw [retainedAfter_stable_card G decEdge]
    exact hs
  exact (mem_pruneStep_iff G decEdge
    (retainedAfter G decEdge (Fintype.card State)) s).mp hsnext

/-- Every survivor at the fixed point starts an ACTUAL infinite
source graph-state path. Choosing edges from the finite fixed
point does not alter their original proof-valued predicates. -/
theorem rightLive_of_mem_retainedAfter_card
    (G : LabeledGraph State Alphabet)
    (decEdge : SourceEdgeDecider G)
    (s : State)
    (hs : s ∈ retainedAfter G decEdge (Fintype.card State)) :
    RightLive G s := by
  classical
  let Q : Finset State :=
    retainedAfter G decEdge (Fintype.card State)
  let Good := {t : State // t ∈ Q}
  have hnext (x : Good) :
      ∃ p : Alphabet × Good, G.edge x.val p.1 p.2.val := by
    obtain ⟨a,t,ht,hedge⟩ :=
      retainedAfter_card_has_successor G decEdge x.val x.property
    exact ⟨(a, ⟨t,ht⟩), hedge⟩
  let choose (x : Good) : Alphabet × Good :=
    Classical.choose (hnext x)
  have hedge (x : Good) :
      G.edge x.val (choose x).1 (choose x).2.val :=
    Classical.choose_spec (hnext x)
  let states : ℕ → Good :=
    Nat.rec ⟨s,hs⟩ (fun _ x => (choose x).2)
  let trace : ℕ → Alphabet :=
    fun k => (choose (states k)).1
  refine ⟨trace, (fun k => (states k).val), rfl, ?_⟩
  intro k
  change G.edge (states k).val
    (choose (states k)).1 (choose (states k)).2.val
  exact hedge (states k)

/-- Every original right-live state survives ALL finite rounds
of pruning; its actual first edge leads to another live state,
and thus survives the required previous round. -/
theorem mem_retainedAfter_of_rightLive
    (G : LabeledGraph State Alphabet)
    (decEdge : SourceEdgeDecider G)
    (s : State) (h : RightLive G s) :
    ∀ n : ℕ, s ∈ retainedAfter G decEdge n := by
  intro n
  induction n generalizing s with
  | zero =>
      simp [retainedAfter]
  | succ n ih =>
      obtain ⟨trace,states,hstart,hstep⟩ := h
      have ht : RightLive G (states 1) :=
        rightLive_of_run_suffix G trace states hstep 1
      have htail : states 1 ∈ retainedAfter G decEdge n :=
        ih (states 1) ht
      apply (mem_pruneStep_iff G decEdge
        (retainedAfter G decEdge n) s).mpr
      refine ⟨trace 0,states 1,htail,?_⟩
      simpa [hstart] using (hstep 0)

/-- MAIN source exactness: this FINITE executable prune output
equals the previously published infinite right-live predicate.
The original edge decision oracle is explicit and mandatory. -/
theorem mem_retainedAfter_card_iff_rightLive
    (G : LabeledGraph State Alphabet)
    (decEdge : SourceEdgeDecider G) (s : State) :
    s ∈ retainedAfter G decEdge (Fintype.card State) ↔
      RightLive G s := by
  constructor
  · exact rightLive_of_mem_retainedAfter_card G decEdge s
  · intro h
    exact mem_retainedAfter_of_rightLive G decEdge s h
      (Fintype.card State)

/-- An executable Boolean membership query for the genuine
original right-live state set. No classical oracle is used in
the *definition*; proofs of correctness may use choice. -/
def isRightLive (G : LabeledGraph State Alphabet)
    (decEdge : SourceEdgeDecider G) (s : State) : Bool :=
  decide (s ∈ retainedAfter G decEdge (Fintype.card State))

theorem isRightLive_iff
    (G : LabeledGraph State Alphabet)
    (decEdge : SourceEdgeDecider G) (s : State) :
    isRightLive G decEdge s = true ↔ RightLive G s := by
  simp only [isRightLive, decide_eq_true_eq]
  exact mem_retainedAfter_card_iff_rightLive G decEdge s

/-! ## Executable original finite-word support and realized factors -/

/-- One executable original-edge support step, with the same
explicit edge decision supplier as dead-end pruning. -/
def supportStep (G : LabeledGraph State Alphabet)
    (decEdge : SourceEdgeDecider G)
    (keep : Finset State) (a : Alphabet) : Finset State := by
  letI : (s : State) → (a : Alphabet) → (t : State) →
    Decidable (G.edge s a t) := decEdge
  exact Finset.univ.filter (fun t =>
    ∃ s ∈ keep, G.edge s a t)

theorem supportStep_eq_original
    (G : LabeledGraph State Alphabet)
    (decEdge : SourceEdgeDecider G)
    (keep : Finset State) (a : Alphabet) :
    supportStep G decEdge keep a =
      sourceSupportStep G keep a := by
  classical
  ext t
  simp [supportStep, sourceSupportStep]

/-- Left-to-right executable exact-word endpoint propagation. -/
def supportAfter (G : LabeledGraph State Alphabet)
    (decEdge : SourceEdgeDecider G)
    (initial : Finset State) (word : List Alphabet) : Finset State :=
  word.foldl (supportStep G decEdge) initial

/-- This executable support fold computes exactly the endpoints
of the previously proved ORIGINAL WordPath support operation. -/
theorem supportAfter_eq_original
    (G : LabeledGraph State Alphabet)
    (decEdge : SourceEdgeDecider G)
    (initial : Finset State) (word : List Alphabet) :
    supportAfter G decEdge initial word =
      sourceSupportAfter G initial word := by
  induction word generalizing initial with
  | nil =>
      rfl
  | cons a word ih =>
      change
        supportAfter G decEdge (supportStep G decEdge initial a) word =
        sourceSupportAfter G (sourceSupportStep G initial a) word
      rw [supportStep_eq_original G decEdge initial a]
      exact ih _

/-- Executable Boolean query: the original word has SOME true
path from ANY original start and ends at a vertex surviving
the q-round dead-end pruning. This does not count witnesses. -/
def isRealizedFactor
    (G : LabeledGraph State Alphabet)
    (decEdge : SourceEdgeDecider G) (word : List Alphabet) : Bool :=
  decide ((supportAfter G decEdge Finset.univ word ∩
    retainedAfter G decEdge (Fintype.card State)).Nonempty)

/-- The endpoint/pruning criterion uses the SAME original
actual edge predicates and word, with no extra extendibility
or source-language hypothesis. -/
theorem isRealizedFactor_iff_path_to_rightLive
    (G : LabeledGraph State Alphabet)
    (decEdge : SourceEdgeDecider G) (word : List Alphabet) :
    isRealizedFactor G decEdge word = true ↔
      ∃ s t : State, WordPath G s word t ∧ RightLive G t := by
  simp only [isRealizedFactor, decide_eq_true_eq]
  rw [Finset.nonempty_iff_ne_empty]
  constructor
  · intro hn
    obtain ⟨t, ht⟩ := Finset.nonempty_iff_ne_empty.mpr hn
    have hboth := Finset.mem_inter.mp ht
    have hOriginal : t ∈ sourceSupportAfter G Finset.univ word := by
      rw [← supportAfter_eq_original G decEdge Finset.univ word]
      exact hboth.1
    obtain ⟨s,hs,hpath⟩ :=
      (sourceSupportAfter_mem_iff G Finset.univ word t).mp hOriginal
    exact ⟨s,t,hpath,
      (mem_retainedAfter_card_iff_rightLive G decEdge t).mp hboth.2⟩
  · rintro ⟨s,t,hpath,ht⟩
    apply Finset.nonempty_iff_ne_empty.mp
    refine ⟨t,Finset.mem_inter.mpr ⟨?_,?_⟩⟩
    · rw [supportAfter_eq_original G decEdge Finset.univ word]
      exact (sourceSupportAfter_mem_iff G Finset.univ word t).mpr
        ⟨s, Finset.mem_univ _, hpath⟩
    · exact (mem_retainedAfter_card_iff_rightLive G decEdge t).mpr ht

/-- Under the existing true discrete topological subshift source,
the executable Boolean query recognizes EXACTLY its ACTUAL
infinite-realizable finite factors, not arbitrary dead-end paths. -/
theorem isRealizedFactor_iff_topologicalFactor
    [TopologicalSpace Alphabet] [DiscreteTopology Alphabet]
    [Inhabited Alphabet]
    (G : LabeledGraph State Alphabet)
    (decEdge : SourceEdgeDecider G) (word : List Alphabet) :
    isRealizedFactor G decEdge word = true ↔
      realizedTopologicalFactorLanguage (GraphLanguage G) word := by
  exact (isRealizedFactor_iff_path_to_rightLive
    G decEdge word).trans (realized_iff_path_to_rightLive G word).symm

end GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficDeadEndPruning
