/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors.
Source-level formalization assistance: OpenAI ChatGPT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.Combinatorics.GraphTheory.SourceOccurrenceShiftConjugacy
import GRWTSK.DynamicalSystemsAndErgodicTheory.SoficLiveRepresentationIntegration

/-!
# Exact finite original source-occurrence right-live pruning connection

The original finite source-occurrence table already retains every distinct
owner/ordinal and every original incidence (source, edge-slot, target).
The actual edge proposition is simply the conjunction of two endpoint
equalities. Given DecidableEq for the original finite state carrier, that
exact predicate has its OWN executable decision procedure: there is no
need to guess a new source-edge oracle or collapse parallel edges.

The original SoficDeadEndPruning and SoficLiveRepresentationIntegration
providers prove that q = card(State) rounds of finite dead-end pruning
preserve all actual infinite graph runs, full infinite factor predicates,
and genuine periodic label streams. We specialize those SAME theorems to
original occurrence labels, after the explicit owner/ordinal key encoding.

This source does not claim that the entire Noe Git/SQLite index has been
constructed as a checked Lean FiniteSourceOccurrenceTable, nor that the
bounded prefix search establishes any infinite-run hypothesis. Finite
dead-end words MAY disappear. The source does not identify distinct
factor-language points with based cycles or delete missing/surplus lifts.
No zeta or RH implication is inferred.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SourceOccurrenceLivePruningBridge

open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SourceOccurrenceSoficBridge
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SourceOccurrenceKeyRefinement
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SourceOccurrenceShiftConjugacy
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics

universe u v w

variable {State : Type u} {Owner : Type v} {Payload : Type w} {n : Nat}
variable [Fintype State] [DecidableEq State]

/-- A finite original source occurrence has an EXACT executable edge
decider from its original endpoints and decidable equality on states.
This is not a heuristic syntactic import resolver. -/
def finiteSourceEdgeDecider
    (table : FiniteSourceOccurrenceTable State Owner Payload n) :
    SoficDeadEndPruning.SourceEdgeDecider
      (occurrenceGraph table.source table.target) := by
  intro start slot finish
  change Decidable (table.source slot = start ∧ table.target slot = finish)
  infer_instance

/-- Specialize the ORIGINAL q-round finite-pruned graph to the exact
source-occurrence table and its own original-edge decider. -/
noncomputable def finiteSourcePrunedGraph
    (table : FiniteSourceOccurrenceTable State Owner Payload n) :=
  SoficLiveRepresentationIntegration.finitePrunedGraph
    (occurrenceGraph table.source table.target)
    (finiteSourceEdgeDecider table)

/-- Every admitted original owner/ordinal infinite label stream is admitted
by the q-round finite-pruned graph after the exact original slot encoding,
and conversely. The graph-state carrier changes to a live-state subtype;
the original occurrence labels do not change. -/
theorem observedKeyRuns_iff_finitePruned
    (table : FiniteSourceOccurrenceTable State Owner Payload n)
    (trace : ℕ → table.ObservedKey) :
    ExactSoficLanguageCover.RunsOnGraph
      (rawGraph table.observedKeyRefinement) trace ↔
    ExactSoficLanguageCover.RunsOnGraph
      (finiteSourcePrunedGraph table)
      (observedKeyTraceEquiv table trace) := by
  exact (observedKey_runsOnGraph_iff table trace).trans
    (SoficLiveRepresentationIntegration.originalRuns_iff_finitePrunedRuns
      (occurrenceGraph table.source table.target)
      (finiteSourceEdgeDecider table)
      (observedKeyTraceEquiv table trace))

/-- Periodicity refers to the exact original owner/ordinal LABEL TRACE.
A periodic label trace need not induce a same-period graph-state cycle.
The admitted source-key trace and the actual pruned original graph agree
precisely on graph admission and period-n shift periodicity together. -/
theorem observedKeyAdmittedPeriodic_iff_finitePruned
    (table : FiniteSourceOccurrenceTable State Owner Payload n)
    (trace : ℕ → table.ObservedKey) (period : ℕ) :
    (ExactSoficLanguageCover.RunsOnGraph
        (rawGraph table.observedKeyRefinement) trace ∧
      Function.IsPeriodicPt
        (SoficShiftPeriodicPointBridge.oneSidedShift
          (Alphabet := table.ObservedKey)) period trace) ↔
    (ExactSoficLanguageCover.RunsOnGraph
        (finiteSourcePrunedGraph table)
        (observedKeyTraceEquiv table trace) ∧
      Function.IsPeriodicPt
        (SoficShiftPeriodicPointBridge.oneSidedShift
          (Alphabet := Fin n)) period
        (observedKeyTraceEquiv table trace)) := by
  constructor
  · rintro ⟨hrun, hperiod⟩
    exact ⟨(observedKeyRuns_iff_finitePruned table trace).mp hrun,
      (observedKey_shiftPeriodic_iff table trace period).mp hperiod⟩
  · rintro ⟨hrun, hperiod⟩
    exact ⟨(observedKeyRuns_iff_finitePruned table trace).mpr hrun,
      (observedKey_shiftPeriodic_iff table trace period).mpr hperiod⟩

/-- The ORIGINAL complete finite-factor predicate for one infinite
occurrence-label trace survives q-round right-live pruning exactly.
This does not assert equality of every finite graph-path language;
terminal-edge-only words may disappear from the pruned graph. -/
theorem occurrenceAllFiniteFactors_iff_finitePruned
    (table : FiniteSourceOccurrenceTable State Owner Payload n)
    (trace : ℕ → Fin n) :
    (∀ word : List (Fin n),
      ExactSoficLanguageCover.HasFiniteBlock trace word →
      ExactSoficLanguageCover.GraphLanguage
        (occurrenceGraph table.source table.target) word) ↔
    (∀ word : List (Fin n),
      ExactSoficLanguageCover.HasFiniteBlock trace word →
      ExactSoficLanguageCover.GraphLanguage
        (finiteSourcePrunedGraph table) word) :=
  SoficLiveRepresentationIntegration.allFiniteFactors_original_iff_finitePruned
    (occurrenceGraph table.source table.target)
    (finiteSourceEdgeDecider table) trace

/-- The SAME original finite-word liveness query is preserved by
right-live pruning, including the selected empty and terminal-source cases.
This reuses the source's concrete Boolean factor decision theorem; it does
NOT identify all original finite graph paths with pruned finite paths. -/
theorem originalSourceRealizedFactor_iff_pruned
    (table : FiniteSourceOccurrenceTable State Owner Payload n)
    (word : List (Fin n)) :
    SoficDeadEndPruning.isRealizedFactor
      (occurrenceGraph table.source table.target)
      (finiteSourceEdgeDecider table) word = true ↔
    SoficDeadEndPruning.isRealizedFactor
      (finiteSourcePrunedGraph table)
      (SoficLiveRepresentationIntegration.finitePrunedGraph_decider
        (occurrenceGraph table.source table.target)
        (finiteSourceEdgeDecider table)) word = true :=
  SoficLiveRepresentationIntegration.isRealizedFactor_true_iff_pruned_true
    (occurrenceGraph table.source table.target)
    (finiteSourceEdgeDecider table) word

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SourceOccurrenceLivePruningBridge
