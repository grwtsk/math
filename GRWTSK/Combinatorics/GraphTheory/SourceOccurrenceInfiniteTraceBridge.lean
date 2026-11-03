/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors.
Source-level formalization assistance: OpenAI ChatGPT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.Combinatorics.GraphTheory.SourceOccurrenceKeyRefinement
import GRWTSK.DynamicalSystemsAndErgodicTheory.SoficFiniteTraceCompactness

/-!
# Compatible infinite runs from exact original source-occurrence prefixes

The original source graph has one label per actual edge occurrence, not one
label per printed source reference or source/target pair. The original Search
WordPath and ExactSoficLanguageCover WordPath interfaces are already related
in SourceOccurrenceSoficBridge.

SoficFiniteTraceCompactness proves a necessary further result: for one fixed
infinite label trace, admissibility of EVERY finite initial prefix in one
FINITE graph yields a compatible infinite sequence of original graph states.
We reuse that original proof, rather than postulating a new compactness axiom.

The owner-and-ordinal bridge carries the exact observed raw key subtype
through an equivalence to Fin n. In particular no transition is discarded
because two source records share their payload, printed text, or endpoints.

A bounded Noe source search never establishes the all-prefix premise,
including when every displayed source word is decoded. A single finite
source edge does not guarantee any infinite run; the terminal-edge example
below explicitly separates those statements. No theorem about complete
factor-label periodicity, RH or analytic zeta is deduced.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SourceOccurrenceInfiniteTraceBridge

open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SourceOccurrenceSoficBridge
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SourceOccurrenceKeyRefinement
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics

universe u v w

variable {State : Type u} {Owner : Type v} {Payload : Type w}
variable {n : Nat} [Fintype State] [DecidableEq State]

/-- Source Search WordPath witnesses for EVERY prefix of one fixed trace
suffice to construct an actual compatible infinite original-state run.
A bounded-prefix search alone cannot supply the universal hypothesis. -/
theorem originalOccurrence_run_of_all_search_prefixes
    (table : FiniteSourceOccurrenceTable State Owner Payload n)
    (trace : ℕ → Fin n)
    (hprefix : ∀ length : ℕ,
      ∃ start finish : State,
        SearchSoficLanguage.WordPath
          (occurrenceEdge table.source table.target)
          start (List.ofFn (fun i : Fin length => trace i.val)) finish) :
    ExactSoficLanguageCover.RunsOnGraph
      (occurrenceGraph table.source table.target) trace := by
  apply SoficFiniteTraceCompactness.runsOnGraph_of_all_graph_prefixes
    (occurrenceGraph table.source table.target) trace
  intro length
  exact (search_language_iff_exact table.source table.target _).mp
    (hprefix length)

/-- The stronger entire-factor premise, when genuinely established for
one fixed infinite trace, also yields an actual compatible graph run. -/
theorem originalOccurrence_run_of_all_search_factors
    (table : FiniteSourceOccurrenceTable State Owner Payload n)
    (trace : ℕ → Fin n)
    (hfactors : ∀ word : List (Fin n),
      ExactSoficLanguageCover.HasFiniteBlock trace word →
      ∃ start finish : State,
        SearchSoficLanguage.WordPath
          (occurrenceEdge table.source table.target)
          start word finish) :
    ExactSoficLanguageCover.RunsOnGraph
      (occurrenceGraph table.source table.target) trace := by
  apply SoficFiniteTraceCompactness.runsOnGraph_of_all_factors
    (occurrenceGraph table.source table.target) trace
  intro word hword
  exact (search_language_iff_exact table.source table.target word).mp
    (hfactors word hword)

/-- The finite observed raw owner-and-ordinal keys inherit a Fintype
from their exact equivalence with original occurrence slots.
No Fintype of all possible owners or arbitrary unobserved keys is assumed. -/
noncomputable def observedKeyFintype
    (table : FiniteSourceOccurrenceTable State Owner Payload n) :
    Fintype table.ObservedKey :=
  Fintype.ofEquiv (Fin n) table.observedKeyEquiv.symm

/-- If EVERY finite initial word in original observed source keys has a
genuine path in the corresponding original raw-key graph, the resulting
slot-label trace has ONE coherent infinite run in the unchanged original
occurrence graph. The exact endpoint transport is supplied by the original
ObservedKey equiv and ExactSourceRefinement, not by strings or a TUI. -/
theorem observedKey_run_of_all_original_prefixes
    (table : FiniteSourceOccurrenceTable State Owner Payload n)
    (trace : ℕ → table.ObservedKey)
    (hprefix : ∀ length : ℕ,
      ExactSoficLanguageCover.GraphLanguage
        (rawGraph table.observedKeyRefinement)
        (List.ofFn (fun i : Fin length => trace i.val))) :
    ExactSoficLanguageCover.RunsOnGraph
      (occurrenceGraph table.source table.target)
      (fun k => table.observedKeyEquiv (trace k)) := by
  classical
  letI : Fintype table.ObservedKey := observedKeyFintype table
  obtain ⟨states, hedge⟩ :=
    SoficFiniteTraceCompactness.runsOnGraph_of_all_graph_prefixes
      (rawGraph table.observedKeyRefinement) trace hprefix
  refine ⟨states, ?_⟩
  intro k
  exact (encoded_edge_iff table.observedKeyRefinement
    (trace k) (states k) (states (k + 1))).2 (hedge k)

/-- Concrete one-original-edge, two-state finite occurrence table.
The only actual original edge goes from false to true; there is no edge
leaving true. This table satisfies owner/ordinal uniqueness. -/
def terminalOccurrenceTable : FiniteSourceOccurrenceTable Bool Unit Unit 1 where
  payload := fun _ => ()
  owner := fun _ => ()
  ordinal := fun _ => 1
  source := fun _ => false
  target := fun _ => true
  owner_ordinal_injective := by
    intro a b _
    exact Subsingleton.elim a b

/-- One selected original-edge occurrence word is admitted. This is the
exact finite observation a bounded source-index search can legitimately
report, and no infinite extension is asserted from this witness. -/
theorem terminalOccurrenceTable_accepts_one_edge :
    ∃ start finish : Bool,
      SearchSoficLanguage.WordPath
        (occurrenceEdge terminalOccurrenceTable.source
          terminalOccurrenceTable.target)
        start [(0 : Fin 1)] finish := by
  refine ⟨false, true, ?_⟩
  exact SearchSoficLanguage.WordPath.cons
    ⟨rfl, rfl⟩ (SearchSoficLanguage.WordPath.nil true)

/-- Hostile control: the same finite source-edge graph has no compatible
infinite run for ANY infinite occurrence-label trace. This prevents
promoting a single finite observed source word into the all-prefix
compactness premise. -/
theorem terminalOccurrenceTable_has_no_infinite_run
    (trace : ℕ → Fin 1) :
    ¬ ExactSoficLanguageCover.RunsOnGraph
        (occurrenceGraph terminalOccurrenceTable.source
          terminalOccurrenceTable.target) trace := by
  rintro ⟨states, hedge⟩
  have hzero : (true : Bool) = states 1 := by
    have h := hedge 0
    change (false : Bool) = states 0 ∧
      (true : Bool) = states 1 at h
    exact h.2
  have hone : (false : Bool) = states 1 := by
    have h := hedge 1
    change (false : Bool) = states 1 ∧
      (true : Bool) = states 2 at h
    exact h.1
  have impossible : (false : Bool) = true := hone.trans hzero.symm
  cases impossible

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SourceOccurrenceInfiniteTraceBridge
