/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.Combinatorics.GraphTheory.SourceOccurrenceSoficBridge

/-!
# Owner-and-ordinal refinement of an exact finite source occurrence table

This is a precise bridge between the actual finite slot index and the
original source key consisting of owner and ordinal. The key carrier is
EXACTLY the image of the table's original keys, not an arbitrary set of
strings; parallel occurrences with identical payload text and endpoints
remain distinct.

The table's existing key-injectivity premise supplies an equivalence between
these observed raw keys and the actual slot carrier `Fin n`. The existing
ExactSourceRefinement now has an explicitly constructed instance for this
finite key carrier, with checked-by-construction endpoint transport.

Crucially, these statements do NOT prove that a real Git/SQLite/Python
extraction is complete, correctly parsed, or bound to a particular table.
They do not establish Lean kernel acceptance, semantic theorem dependency,
a periodic factor-point bijection, or an analytic zeta/RH theorem.
-/

set_option autoImplicit false
noncomputable section
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SourceOccurrenceSoficBridge
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SourceOccurrenceKeyRefinement

universe u v w
variable {State : Type u} {Owner : Type v} {Payload : Type w} {n : Nat}

/-- Raw source identity is the actual observed (owner, ordinal), restricted
to the exact original finite inventory. No payload/text equality is used. -/
def FiniteSourceOccurrenceTable.ObservedKey
    (table : FiniteSourceOccurrenceTable State Owner Payload n) : Type v :=
  {key : Owner × Nat // key ∈ Set.range
    (fun slot : Fin n => (table.owner slot, table.ordinal slot))}

/-- An injective original-key inventory gives a TOTAL equivalence between
its exact observed key subtype and the original indexed occurrence slots. -/
noncomputable def FiniteSourceOccurrenceTable.observedKeyEquiv
    (table : FiniteSourceOccurrenceTable State Owner Payload n) :
    table.ObservedKey ≃ Fin n :=
  (Equiv.ofInjective
    (fun slot : Fin n => (table.owner slot, table.ordinal slot))
    table.owner_ordinal_injective).symm

/-- Decoding an observed original owner-and-ordinal key produces a slot whose
original key is EXACTLY that same raw key. No endpoint-only quotient appears. -/
theorem FiniteSourceOccurrenceTable.observedKey_decode
    (table : FiniteSourceOccurrenceTable State Owner Payload n)
    (key : table.ObservedKey) :
    (table.owner (table.observedKeyEquiv key),
      table.ordinal (table.observedKeyEquiv key)) = key.1 := by
  simpa only [FiniteSourceOccurrenceTable.observedKeyEquiv,
    FiniteSourceOccurrenceTable.ObservedKey] using
      (Equiv.apply_ofInjective_symm
        (f := fun slot : Fin n =>
          (table.owner slot, table.ordinal slot))
        table.owner_ordinal_injective key)

/-- Encoding the concrete source key of any slot and decoding it returns
the ORIGINAL slot, even when payload, line, and endpoints are identical. -/
theorem FiniteSourceOccurrenceTable.observedKey_slot_roundtrip
    (table : FiniteSourceOccurrenceTable State Owner Payload n)
    (slot : Fin n) :
    table.observedKeyEquiv
      (⟨(table.owner slot, table.ordinal slot), ⟨slot, rfl⟩⟩ :
        table.ObservedKey) = slot := by
  apply table.owner_ordinal_injective
  exact table.observedKey_decode
    (⟨(table.owner slot, table.ordinal slot), ⟨slot, rfl⟩⟩ :
      table.ObservedKey)

/-- Explicit checked finite raw-key-to-occurrence refinement. The two
endpoint functions are defined from the SAME original slot table. -/
noncomputable def FiniteSourceOccurrenceTable.observedKeyRefinement
    (table : FiniteSourceOccurrenceTable State Owner Payload n) :
    ExactSourceRefinement table.ObservedKey (Fin n) State where
  encoding := table.observedKeyEquiv
  rawSource := fun key => table.source (table.observedKeyEquiv key)
  rawTarget := fun key => table.target (table.observedKeyEquiv key)
  occurrenceSource := table.source
  occurrenceTarget := table.target
  source_correct := by
    intro key
    rfl
  target_correct := by
    intro key
    rfl

/-- Each original source-key transition has the exact incidence of its
decoded occurrence slot, with both endpoints retained. -/
theorem FiniteSourceOccurrenceTable.observedKey_edge_iff
    (table : FiniteSourceOccurrenceTable State Owner Payload n)
    (key : table.ObservedKey) (start finish : State) :
    (occurrenceGraph table.source table.target).edge
      start (table.observedKeyEquiv key) finish ↔
    table.source (table.observedKeyEquiv key) = start ∧
      table.target (table.observedKeyEquiv key) = finish :=
  encoded_edge_iff table.observedKeyRefinement key start finish

/-- Transport a complete ORIGINAL key-word path to the unchanged exact
labeled graph, retaining the order of each occurrence and both endpoints. -/
theorem FiniteSourceOccurrenceTable.observedKey_wordPath_exact
    (table : FiniteSourceOccurrenceTable State Owner Payload n)
    {start finish : State} {word : List table.ObservedKey}
    (path : ExactSoficLanguageCover.WordPath
      (rawGraph table.observedKeyRefinement) start word finish) :
    ExactSoficLanguageCover.WordPath
      (occurrenceGraph table.source table.target)
      start (word.map table.observedKeyEquiv) finish :=
  raw_wordPath_to_occurrence table.observedKeyRefinement path

/-- The SAME original key-word path also transports to the existing
SearchSoficLanguage WordPath. This is a source-graph interface,
NOT proof-certification of a Noe import or theorem application. -/
theorem FiniteSourceOccurrenceTable.observedKey_wordPath_search
    (table : FiniteSourceOccurrenceTable State Owner Payload n)
    {start finish : State} {word : List table.ObservedKey}
    (path : ExactSoficLanguageCover.WordPath
      (rawGraph table.observedKeyRefinement) start word finish) :
    SearchSoficLanguage.WordPath
      (occurrenceEdge table.source table.target)
      start (word.map table.observedKeyEquiv) finish := by
  apply (search_wordPath_iff_exact table.source table.target).mpr
  exact table.observedKey_wordPath_exact path

/-- The existing natural-number adjacency theorem counts all selected
original slots, including equal-payload parallel edges. The additional
Noe extraction-correctness and global-coverage proofs remain OPEN. -/
theorem FiniteSourceOccurrenceTable.observedKey_walkCounts_eq_matrixRowSum
    [Fintype State] [DecidableEq State]
    (table : FiniteSourceOccurrenceTable State Owner Payload n)
    (starts : Finset State) (length : Nat) :
    (∑ start ∈ starts, ∑ finish : State,
      SoficPeriodicMatrixTrace.labeledWalkCount
        (occurrenceGraph table.source table.target) length start finish) =
    (∑ start ∈ starts, ∑ finish : State,
      (SoficPeriodicMatrixTrace.labeledAdjacency
        (occurrenceGraph table.source table.target) ^ length) start finish) :=
  table.walkCounts_eq_matrixRowSum starts length

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SourceOccurrenceKeyRefinement
