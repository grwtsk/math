/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.StateTransition.ResearchObservation

/-!
# Structural wire reuse for observation transitions

These lemmas isolate the exact wire-level effect of one `recordObservation` step.
They let a concrete witness reuse already proved source and history encodings rather
than kernel-reducing the complete successor state again.

Nothing here changes `Admitted`: an operation tag and equality of the entire
resulting state are still required. The final admission theorem obtains that
state equality only through injectivity of the existing complete `stateWire`.
No serializer, journal, runtime receipt, source identity, or execution authority
is introduced by this module.
-/

namespace GRWTSK.Logic.StateTransition.ResearchObservation

open ResearchState

/-- The exact successor wire reuses the complete previous source and history
encodings. Only the replacement metadata, successor version, and appended event
are new. -/
theorem stateWire_recordObservation_structural
    (before : ObservationState) (observation : Observation) :
    stateWire (recordObservation before observation) =
      .array [
        .array (before.sources.map sourceWire),
        metadataWire observation.metadata,
        .atom (before.version + 1),
        .array (before.history.map eventWire ++ [eventWire observation.event])
      ] := by
  simp [stateWire, recordObservation, List.map_append]

/-- Reuse separately established source, version, and history wire components
when proving the exact successor tree. This avoids re-encoding unchanged literal
strings inside every successive state witness. -/
theorem stateWire_recordObservation_of_components
    (before : ObservationState) (observation : Observation)
    {sourceTrees : List NatTree} {version : Nat} {historyTrees : List NatTree}
    (sources : before.sources.map sourceWire = sourceTrees)
    (versionEq : before.version = version)
    (history : before.history.map eventWire = historyTrees) :
    stateWire (recordObservation before observation) =
      .array [
        .array sourceTrees,
        metadataWire observation.metadata,
        .atom (version + 1),
        .array (historyTrees ++ [eventWire observation.event])
      ] := by
  simpa [sources, versionEq, history] using
    stateWire_recordObservation_structural before observation

/-- The corresponding normative byte tree follows from the structural tree
identity. Concrete witnesses may still prove the final literal byte list in
bounded chunks; this lemma does not replace or weaken that exact-byte check. -/
theorem renderBytes_recordObservation_of_components
    (before : ObservationState) (observation : Observation)
    {sourceTrees : List NatTree} {version : Nat} {historyTrees : List NatTree}
    (sources : before.sources.map sourceWire = sourceTrees)
    (versionEq : before.version = version)
    (history : before.history.map eventWire = historyTrees) :
    NatTree.renderBytes (stateWire (recordObservation before observation)) =
      NatTree.renderBytes
        (.array [
          .array sourceTrees,
          metadataWire observation.metadata,
          .atom (version + 1),
          .array (historyTrees ++ [eventWire observation.event])
        ]) := by
  exact congrArg NatTree.renderBytes
    (stateWire_recordObservation_of_components before observation sources versionEq history)

/-- Exact equality of the complete state wires is sufficient for admission only
because `stateWire` is already proved injective. A Boolean or serialized status
cannot inhabit this theorem. -/
theorem admitted_of_stateWire
    {before after : ObservationState} {observation : Observation}
    (operation : observation.operation = recordObservationTag)
    (wire : stateWire after = stateWire (recordObservation before observation)) :
    Admitted before observation after :=
  ⟨operation, stateWire_injective wire⟩

/-- Combine reusable predecessor components with one exact successor-wire proof
to obtain the unchanged full-state admission predicate. -/
theorem admitted_of_structural_wires
    {before after : ObservationState} {observation : Observation}
    {sourceTrees : List NatTree} {version : Nat} {historyTrees : List NatTree}
    (operation : observation.operation = recordObservationTag)
    (sources : before.sources.map sourceWire = sourceTrees)
    (versionEq : before.version = version)
    (history : before.history.map eventWire = historyTrees)
    (afterWire :
      stateWire after =
        .array [
          .array sourceTrees,
          metadataWire observation.metadata,
          .atom (version + 1),
          .array (historyTrees ++ [eventWire observation.event])
        ]) :
    Admitted before observation after := by
  apply admitted_of_stateWire operation
  rw [afterWire,
    stateWire_recordObservation_of_components before observation sources versionEq history]

/-- The structural admission still supplies the actual mathematical
`ResearchState.Change.observe` edge. -/
theorem change_of_structural_wires
    {before after : ObservationState} {observation : Observation}
    {sourceTrees : List NatTree} {version : Nat} {historyTrees : List NatTree}
    (operation : observation.operation = recordObservationTag)
    (sources : before.sources.map sourceWire = sourceTrees)
    (versionEq : before.version = version)
    (history : before.history.map eventWire = historyTrees)
    (afterWire :
      stateWire after =
        .array [
          .array sourceTrees,
          metadataWire observation.metadata,
          .atom (version + 1),
          .array (historyTrees ++ [eventWire observation.event])
        ]) :
    Change coreMeaning (realize before) (realize after) :=
  admitted_change
    (admitted_of_structural_wires operation sources versionEq history afterWire)

end GRWTSK.Logic.StateTransition.ResearchObservation
