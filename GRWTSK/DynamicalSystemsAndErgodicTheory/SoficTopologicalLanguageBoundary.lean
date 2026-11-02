/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.DynamicalSystemsAndErgodicTheory.SoficTopologicalPeriodicReturn
import Mathlib

set_option autoImplicit false
noncomputable section

/-!
# Realized subshift finite-factor language versus finite graph-path language

The existing original GraphLanguage is an EXISTENTIAL finite
labeled WordPath, without a promise of infinite continuation.
The topological Subshift obtained from its forbidden words instead
contains complete infinite label sequences satisfying every factor.

Every actually realized subshift factor belongs to the specified
source language, and every initial-support pattern in the
topological languageOn belongs to that same source language.
The converse requires an independently supplied realization
(or extendibility) hypothesis; this is not part of the original
ExactLanguagePresentation.

A concrete two-state terminal-edge graph admits a one-step
original word but cannot realize it in any infinite trajectory.
This hostile example explains precisely why the topological
factor language cannot be identified with the finite graph's
GraphLanguage merely from exact finite-word presentation data.
-/

namespace GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficTopologicalLanguageBoundary

open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.ExactSoficLanguageCover
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficTopologicalFactorSpace

universe v
variable {Alphabet : Type v}
  [TopologicalSpace Alphabet] [DiscreteTopology Alphabet] [Inhabited Alphabet]

/-- The actually REALIZED finite-factor language of the true
closed topological subshift, not all finite-path graph words. -/
def realizedTopologicalFactorLanguage
    (language : List Alphabet → Prop) (word : List Alphabet) : Prop :=
  ∃ trace : ℕ → Alphabet,
    trace ∈ (completeFactorSubshift language).carrier ∧
      HasFiniteBlock trace word

/-- Every truly realized finite factor belongs to the complete
specified source language, without any extra graph hypotheses. -/
theorem realizedTopologicalFactorLanguage_subset
    (language : List Alphabet → Prop) (word : List Alphabet) :
    realizedTopologicalFactorLanguage language word → language word := by
  rintro ⟨trace, hcarrier, hblock⟩
  exact (mem_completeFactorSubshift_iff language trace).mp
    hcarrier word hblock

/-- A separately proved actual realization of EVERY admitted word
is sufficient and necessary for equality with the realized
infinite-stream language. This premise may fail for finite graphs. -/
theorem realizedTopologicalFactorLanguage_eq_of_realized
    (language : List Alphabet → Prop)
    (hRealized : ∀ word, language word →
      realizedTopologicalFactorLanguage language word)
    (word : List Alphabet) :
    realizedTopologicalFactorLanguage language word ↔ language word :=
  ⟨realizedTopologicalFactorLanguage_subset language word,
    hRealized word⟩

/-- Direct comparison with the existing upstream LanguageOn for
literal initial-support patterns. A pattern arising in the
topological subshift must spell a word admitted by the original
complete source language. Only this direction is automatic. -/
theorem sourceWordPattern_languageOn_implies_sourceWord
    (language : List Alphabet → Prop)
    (word : List Alphabet)
    (hPattern : sourceWordPattern word ∈
      SymbolicDynamics.FullShift.LanguageOn
        (completeFactorSubshift language).carrier
        (Finset.range word.length)) :
    language word := by
  obtain ⟨trace, hcarrier, heq⟩ := hPattern
  have hblock : HasFiniteBlock trace word := by
    refine ⟨0, ?_⟩
    intro i
    have hcoordinate := congrArg
      (fun p : SymbolicDynamics.FullShift.Pattern Alphabet ℕ =>
        p.config i.val) heq
    simpa [SymbolicDynamics.FullShift.Pattern.fromConfig,
      sourceWordPattern, Finset.mem_range, i.isLt] using hcoordinate
  exact (mem_completeFactorSubshift_iff language trace).mp
    hcarrier word hblock

/-- The original full-shift graph has NO extra restriction: every
infinite sequence belongs to its actual complete-factor subshift.
This is a constructive, nonvacuous positive control. -/
theorem fullShiftGraph_completeFactorSubshift_all
    (trace : ℕ → Alphabet) :
    trace ∈
      (completeFactorSubshift
        (GraphLanguage (fullShiftGraph Alphabet))).carrier := by
  apply (mem_completeFactorSubshift_iff _ trace).mpr
  intro word _
  exact fullShiftGraph_language_all word

/-! ## Hostile finite graph: source word accepted, no infinite continuation -/

/-- The only available source edge goes from false to true. There
is NO edge leaving true. Both graph states and alphabet are finite. -/
def terminalEdgeGraph : LabeledGraph Bool Unit where
  edge := fun s _ t => s = false ∧ t = true

private theorem terminalEdgeGraph_singleton_iff
    (s t : Bool) :
    WordPath terminalEdgeGraph s [()] t ↔
      s = false ∧ t = true := by
  constructor
  · intro h
    cases h with
    | cons _ _ hedge tail =>
        cases tail
        exact hedge
  · rintro ⟨hs, ht⟩
    exact WordPath.cons () [] ⟨hs, ht⟩ (WordPath.nil t)

/-- An ACTUAL original finite graph path spells a nonempty word. -/
theorem terminalEdgeGraph_accepts_singleton :
    GraphLanguage terminalEdgeGraph [()] := by
  exact ⟨false, true,
    (terminalEdgeGraph_singleton_iff false true).2 ⟨rfl, rfl⟩⟩

/-- A two-step word is impossible because its intermediate state
would simultaneously have to equal true and false. -/
theorem terminalEdgeGraph_rejects_two :
    ¬ GraphLanguage terminalEdgeGraph [(), ()] := by
  rintro ⟨s, t, hpath⟩
  obtain ⟨middle, hfirst, hsecond⟩ :=
    wordPath_split_append terminalEdgeGraph [()] [()] hpath
  have hf := (terminalEdgeGraph_singleton_iff s middle).1 hfirst
  have hs := (terminalEdgeGraph_singleton_iff middle t).1 hsecond
  have htrue : middle = true := hf.2
  have hfalse : middle = false := hs.1
  cases htrue
  cases hfalse

/-- The finite accepted word does not appear in ANY true infinite
admissible stream, since every Unit stream contains two consecutive
Unit symbols and the finite graph forbids that two-letter word. -/
theorem terminalEdgeGraph_word_not_realized :
    ¬ realizedTopologicalFactorLanguage
        (GraphLanguage terminalEdgeGraph) [()] := by
  rintro ⟨trace, hcarrier, _⟩
  have hblock : HasFiniteBlock trace [(), ()] := by
    refine ⟨0, ?_⟩
    intro i
    fin_cases i <;> rfl
  exact terminalEdgeGraph_rejects_two
    ((mem_completeFactorSubshift_iff
      (GraphLanguage terminalEdgeGraph) trace).mp
      hcarrier [(), ()] hblock)

/-- The strict loss is visible with the SAME original
finite labeled graph and finite alphabet. No alternate path
representation, missing limit or exotic source is used. -/
theorem terminalEdgeGraph_strict_language_loss :
    GraphLanguage terminalEdgeGraph [()] ∧
      ¬ realizedTopologicalFactorLanguage
        (GraphLanguage terminalEdgeGraph) [()] :=
  ⟨terminalEdgeGraph_accepts_singleton,
    terminalEdgeGraph_word_not_realized⟩

end GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficTopologicalLanguageBoundary
