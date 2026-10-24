/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Imported Lean/Mathlib authorship and Apache-2.0 licensing remain attached to their imports. -/
import GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.PrefixTableReindex

set_option autoImplicit false

open Quiver
open GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph
open RoleRelationTable RoleRelationReindex PrefixTableReindex
open PathUnfolding OccurrencePrefix PrefixInventory ParentTraceDictionary PrefixTableState
open GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteSequences IndexedDictionary DecisionCertificate

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.PrefixTableReindex.Checks.Positive

def original : Table Bool Bool 4 where
  source index := if index.1 < 2 then false else true
  target index := if index.1 < 2 then true else false
  kind index := index.1 == 3

def swapIndex : Fin 4 ≃ Fin 4 := Equiv.swap 0 2

def updated : Table Bool Bool 4 where
  source index := original.source (swapIndex index)
  target index := original.target (swapIndex index)
  kind index := original.kind (swapIndex index)

def translation : Reindex original updated where
  index := swapIndex
  source index := congrArg original.source (Equiv.swap_apply_self 0 2 index)
  target index := congrArg original.target (Equiv.swap_apply_self 0 2 index)
  kind index := congrArg original.kind (Equiv.swap_apply_self 0 2 index)

theorem translation_bijective : Function.Bijective translation.index := swapIndex.bijective

def vertexA : Vertex original false := ⟨false⟩
def vertexB : Vertex original false := ⟨true⟩
def id0 : RoleId original false := ⟨0, by decide⟩
def id1 : RoleId original false := ⟨1, by decide⟩
def new0 : RoleId updated false := ⟨0, by decide⟩
def new1 : RoleId updated false := ⟨1, by decide⟩
def new2 : RoleId updated false := ⟨2, by decide⟩

def oldTag0 := fullEdge original false id0
def oldTag1 := fullEdge original false id1
def newTag0 := fullEdge updated false new0
def newTag1 := fullEdge updated false new1
def newTag2 := fullEdge updated false new2

noncomputable instance oldTagDecidableEq :
    DecidableEq (EdgeTrace.TotalEdge (Vertex original false)) := Classical.decEq _

noncomputable instance newTagDecidableEq :
    DecidableEq (EdgeTrace.TotalEdge (Vertex updated false)) := Classical.decEq _

theorem old_tags_distinct : oldTag0 ≠ oldTag1 := by
  intro hequal
  have hid := congrArg (edgeId original false) hequal
  have hindex := congrArg (fun index : RoleId original false => index.1.1) hid
  change 0 = 1 at hindex
  omega

def arrow0 : vertexA ⟶ vertexB := ⟨0, by decide, by decide, by decide⟩
def arrow1 : vertexA ⟶ vertexB := ⟨1, by decide, by decide, by decide⟩
def single0 : PathStar vertexA := ⟨vertexB, arrow0.toPath⟩
def single1 : PathStar vertexA := ⟨vertexB, arrow1.toPath⟩

noncomputable def seedRows : List (Nat × Occurrence vertexA) :=
  [(1, ofPath single0.2), (2, ofPath single1.2)]

noncomputable def seed : State (Vertex original false) Nat := update (empty vertexA) seedRows

/-- A genuinely stored, noncanonical state: only the first parallel history is referenced. -/
noncomputable def before : State (Vertex original false) Nat :=
  { seed with references := [(11, 0), (11, 0)] }

theorem seed_inventory : inventory seedRows = [[oldTag0], [], [oldTag1]] := by
  change ([[], [oldTag0], [], [oldTag1]] :
    List (List (EdgeTrace.TotalEdge (Vertex original false)))).dedup = _
  simp [old_tags_distinct]

theorem before_dictionary : before.dictionary = [[oldTag0], [], [oldTag1]] := by
  simp [before, seed, update, extendedDictionary, empty,
    IncrementalDictionary.expandedDictionary, IncrementalDictionary.missingPayloads,
    IncrementalPrefixTable.prefixEntries, seed_inventory]
  simp [old_tags_distinct]

theorem before_wellFormed : WellFormed before := by
  have hseed : WellFormed seed := update_wellFormed _ (empty_wellFormed _) _
  refine ⟨hseed.nodup, hseed.closed, hseed.rooted, hseed.cells, ?_⟩
  intro reference hreference
  have hequal : reference = (11, 0) := by simpa [rawPacked, before] using hreference
  subst reference
  rw [show (rawPacked before).dictionary = before.dictionary from rfl, before_dictionary]
  decide

theorem before_nodes : before.nodes =
    [(1, some (1, oldTag0)), (0, none), (1, some (1, oldTag1))] := by
  rw [before_wellFormed.cells, before_dictionary]
  simp [IncrementalPrefixTable.cell]

theorem before_actual_decode :
    PrefixTableState.decode before = some [(11, [oldTag0]), (11, [oldTag0])] := by
  rw [decode_eq_unpack before before_wellFormed]
  change unpack (⟨before.dictionary, [(11, 0), (11, 0)]⟩ : Packed Nat _) = _
  rw [before_dictionary]
  rfl

noncomputable def after : State (Vertex updated false) Nat := transport translation false before

theorem after_wellFormed : WellFormed after :=
  transport_wellFormed translation false translation_bijective.1 before before_wellFormed

theorem after_dictionary : after.dictionary = [[newTag2], [], [newTag1]] := by
  change before.dictionary.map (mapTrace translation false) = _
  rw [before_dictionary]
  rfl

theorem after_nodes : after.nodes =
    [(1, some (1, newTag2)), (0, none), (1, some (1, newTag1))] := by
  change before.nodes.map (mapNode translation false) = _
  rw [before_nodes]
  rfl

theorem after_references : after.references = [(11, 0), (11, 0)] := rfl

theorem after_root : after.root.value = false := rfl

/-- Relation ID 0 becomes 2, while the unrelated parent slot remains 1. -/
theorem child_before_parent :
    expand after.nodes 1 0 = some [newTag2] ∧ decodeSlot after.nodes 0 = some [newTag2] := by
  rw [after_nodes]
  exact ⟨rfl, rfl⟩

theorem after_actual_decode :
    PrefixTableState.decode after = some [(11, [newTag2]), (11, [newTag2])] := by
  rw [after, decode_transport translation false translation_bijective.1 before before_wellFormed,
    before_actual_decode]
  rfl

noncomputable def mappedOccurrenceRows : List (Nat × Occurrence after.root) :=
  [(11, ofPath (mapStar translation false vertexA single0).2),
    (11, ofPath (mapStar translation false vertexA single0).2)]

/-- Successful checked rows recover actual mapped paths, with repeated keys and occurrences. -/
theorem actual_occurrences_recovered :
    PrefixTableCompaction.realRows after after_wellFormed = mappedOccurrenceRows := by
  apply PrefixTableCompaction.realRows_of_decode
  exact after_actual_decode

example : PrefixTableState.decode (transport translation false
      (PrefixTableCompaction.compact before before_wellFormed)) =
    PrefixTableState.decode (PrefixTableCompaction.compact after after_wellFormed) :=
  compact_decode_commutes translation false translation_bijective.1 before before_wellFormed

theorem before_realEntries : PrefixTableCompaction.realEntries before before_wellFormed =
    [(11, [oldTag0]), (11, [oldTag0])] :=
  Option.some.inj ((PrefixTableCompaction.decode_realEntries before before_wellFormed).symm.trans
    before_actual_decode)

noncomputable def oldCertificate :
    Certificate Nat (Bool × List (EdgeTrace.TotalEdge (Vertex original false))) where
  entries := [(11, (false, [oldTag0])), (11, (false, [oldTag0]))]
  predicate entries := ∀ entry ∈ entries, entry.2.2 = [oldTag0]
  evidence := by simp

theorem certificate_entries : oldCertificate.entries =
    PrefixTableReindex.rootedRows false before.root.value
      (PrefixTableCompaction.realEntries before before_wellFormed) := by
  rw [before_realEntries]
  rfl

/-- The certificate consumes actual decoded new state, then inverse old-rooted repacking. -/
example : after.root.value = before.root.value ∧
    ∃ restored, restoreState translation false translation_bijective after = some restored ∧
      DecodesSatisfying restored oldCertificate.predicate :=
  certified_transport translation false translation_bijective before before_wellFormed
    oldCertificate certificate_entries

/-- Preserve numeric parent/reference fields, but incorrectly retain old numeric relation IDs. -/
def stale : State (Vertex updated false) Nat :=
  ⟨mapVertex translation false vertexA, [[newTag0], [], [newTag1]],
    [(1, some (1, newTag0)), (0, none), (1, some (1, newTag1))], [(11, 0), (11, 0)]⟩

theorem stale_actual_decode :
    PrefixTableState.decode stale = some [(11, [newTag0]), (11, [newTag0])] := rfl

theorem stale_reference_bounds : Valid (rawPacked stale) := by
  intro reference hreference
  have hequal : reference = (11, 0) := by simpa [rawPacked, stale] using hreference
  subst reference
  decide

theorem stale_ranks : ValidRanks stale.nodes := by
  intro slot node hlookup
  cases slot with
  | zero =>
    have hequal : (1, some (1, newTag0)) = node := Option.some.inj hlookup
    subst node
    exact ⟨(0, none), rfl, by decide⟩
  | succ slot =>
    cases slot with
    | zero =>
      have hequal : (0, none) = node := Option.some.inj hlookup
      subst node
      rfl
    | succ slot =>
      cases slot with
      | zero =>
        have hequal : (1, some (1, newTag1)) = node := Option.some.inj hlookup
        subst node
        exact ⟨(0, none), rfl, by decide⟩
      | succ slot =>
        have hnone : stale.nodes[slot + 1 + 1 + 1]? = none := rfl
        rw [hnone] at hlookup
        cases hlookup

theorem stale_root_rejected : ¬ EdgeTrace.ValidFrom stale.root [newTag0] := by
  intro hvalid
  have hbool : true = false := congrArg Vertex.value hvalid.1
  cases hbool

theorem stale_not_wellFormed : ¬ WellFormed stale := by
  intro hstate
  exact stale_root_rejected (hstate.rooted [newTag0] (by simp [stale]))

/-- Numeric decoding itself does not establish root or edge-join validity. -/
theorem actual_numeric_checks_insufficient :
    ValidRanks stale.nodes ∧ Valid (rawPacked stale) ∧
      PrefixTableState.decode stale = some [(11, [newTag0]), (11, [newTag0])] ∧
      ¬ EdgeTrace.ValidFrom stale.root [newTag0] :=
  ⟨stale_ranks, stale_reference_bounds, stale_actual_decode, stale_root_rejected⟩

/-- Empty real histories still retain the external root in the actual State field. -/
example : (transport translation false (empty vertexA : State _ Nat)).root.value ≠
    (transport translation false (empty vertexB : State _ Nat)).root.value := Bool.false_ne_true

example : PrefixTableState.decode
    (transport translation false (empty vertexA : State _ Nat)) = some [] := by
  rw [decode_transport translation false translation_bijective.1 _ (empty_wellFormed _),
    decode_empty]
  rfl

end GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.PrefixTableReindex.Checks.Positive
