/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Mathlib Quiver authors David Wärn/Kim Morrison and List authors Parikshit Khanna,
Jeremy Avigad, Leonardo de Moura, Floris van Doorn, Mario Carneiro retain Apache-2.0
credit. Existing local path/trace/dictionary codecs retain their source credits. -/
import GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.RoleRelationReindex

/-!
# Reindexing actual stored rooted prefix tables

Actual full tags, traces, roots and stored final edges are translated by the
actual table prefunctor. Dictionary order, ranks, parent indices and ordered
real references are copied. Their numeric equality follows from this explicit
array transport, not from unchanged relation-table IDs. Injectivity preserves
actual dictionary/cell structure. Numeric fuel expansion and checked real-row
decoding are proved from the existing decoders and actual stored fields.

Compaction commutes semantically. Bijective inverse transport of actual decoded
new State rows precedes any explicit old criterion reuse in a common old rooted
payload. No raw compaction-state equality or external runtime codec is claimed.
-/

set_option autoImplicit false

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.PrefixTableReindex

open Quiver RoleRelationTable RoleRelationReindex PrefixTableState ParentTraceDictionary
open GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteSequences IndexedDictionary DecisionCertificate

variable {V Role Key : Type*} {n m : Nat}
variable {old : Table V Role n} {new : Table V Role m}
variable (translation : Reindex old new) (role : Role)

def mapEdge (edge : EdgeTrace.TotalEdge (Vertex old role)) :
    EdgeTrace.TotalEdge (Vertex new role) :=
  ⟨mapVertex translation role edge.1, mapVertex translation role edge.2.1,
    (prefunctor translation role).map edge.2.2⟩

def mapTrace (initial : List (EdgeTrace.TotalEdge (Vertex old role))) :
    List (EdgeTrace.TotalEdge (Vertex new role)) := initial.map (mapEdge translation role)

theorem mapEdge_injective (hinjective : Function.Injective translation.index) :
    Function.Injective (mapEdge translation role) := by
  intro left right hequal
  apply (edgeEquiv old role).injective
  apply qualified_injective translation role hinjective
  exact congrArg (edgeId new role) hequal

theorem mapTrace_injective (hinjective : Function.Injective translation.index) :
    Function.Injective (mapTrace translation role) :=
  List.map_injective_iff.mpr (mapEdge_injective translation role hinjective)

theorem mapTrace_valid (root : Vertex old role)
    (initial : List (EdgeTrace.TotalEdge (Vertex old role)))
    (hvalid : EdgeTrace.ValidFrom root initial) :
    EdgeTrace.ValidFrom (mapVertex translation role root) (mapTrace translation role initial) := by
  induction initial generalizing root with
  | nil => exact True.intro
  | cons edge rest ih =>
    exact ⟨congrArg (mapVertex translation role) hvalid.1, ih edge.2.1 hvalid.2⟩

/-- Stored rank and parent number remain literal; only the actual final edge is mapped. -/
def mapNode (node : Node (Vertex old role)) : Node (Vertex new role) :=
  (node.1, node.2.map (fun link => (link.1, mapEdge translation role link.2)))

theorem mapNode_rank (node : Node (Vertex old role)) :
    (mapNode translation role node).1 = node.1 := rfl

theorem mapNode_parent (node : Node (Vertex old role)) :
    (mapNode translation role node).2.map Prod.fst = node.2.map Prod.fst := by
  rcases node with ⟨rank, link⟩
  cases link <;> rfl

def transport (state : State (Vertex old role) Key) : State (Vertex new role) Key :=
  ⟨mapVertex translation role state.root, state.dictionary.map (mapTrace translation role),
    state.nodes.map (mapNode translation role), state.references⟩

theorem transport_root (state : State (Vertex old role) Key) :
    (transport translation role state).root.value = state.root.value := rfl

theorem transport_references (state : State (Vertex old role) Key) :
    (transport translation role state).references = state.references := rfl

theorem transport_node_lookup (state : State (Vertex old role) Key) (slot : Nat) :
    (transport translation role state).nodes[slot]? =
      state.nodes[slot]?.map (mapNode translation role) := List.getElem?_map

/-- Actual rank/fuel checks and optional lookups commute, even for malformed numeric tables. -/
theorem expand_map (nodes : List (Node (Vertex old role))) (fuel slot : Nat) :
    expand (nodes.map (mapNode translation role)) fuel slot =
      (expand nodes fuel slot).map (mapTrace translation role) := by
  induction fuel generalizing slot with
  | zero =>
    cases hnode : nodes[slot]? with
    | none => simp [expand, List.getElem?_map, hnode]
    | some node =>
      rcases node with ⟨rank, link⟩
      cases link with
      | none => simp [expand, List.getElem?_map, hnode, mapNode, mapTrace]
      | some parent => simp [expand, List.getElem?_map, hnode, mapNode]
  | succ fuel ih =>
    cases hnode : nodes[slot]? with
    | none => simp [expand, List.getElem?_map, hnode]
    | some node =>
      rcases node with ⟨rank, link⟩
      cases link with
      | none => simp [expand, List.getElem?_map, hnode, mapNode, mapTrace]
      | some parent =>
        rcases parent with ⟨parent, edge⟩
        cases hparent : nodes[parent]? with
        | none => simp [expand, List.getElem?_map, hnode, mapNode, hparent]
        | some parentNode =>
          by_cases hdecrease : parentNode.1 < rank
          · simp only [expand, List.getElem?_map, hnode, Option.map_some, mapNode,
              Option.bind_eq_bind, Option.bind, hparent, if_pos hdecrease]
            rw [ih]
            cases hword : expand nodes fuel parent <;>
              simp [mapTrace, List.map_append]
          · simp [expand, List.getElem?_map, hnode, mapNode, hparent, hdecrease]

theorem decodeSlot_map (nodes : List (Node (Vertex old role))) (slot : Nat) :
    decodeSlot (nodes.map (mapNode translation role)) slot =
      (decodeSlot nodes slot).map (mapTrace translation role) := by
  cases hnode : nodes[slot]? with
  | none => simp [decodeSlot, List.getElem?_map, hnode]
  | some node =>
    simp only [decodeSlot, List.getElem?_map, hnode, Option.map_some, Option.bind_eq_bind,
      Option.bind, mapNode]
    exact expand_map translation role nodes node.1 slot

/-- Actual ordered keyed row mapping, without removing occurrences. -/
def mapRows (entries : List (Key × List (EdgeTrace.TotalEdge (Vertex old role)))) :
    List (Key × List (EdgeTrace.TotalEdge (Vertex new role))) :=
  entries.map (fun entry => (entry.1, mapTrace translation role entry.2))

/-- Actual dictionary lookup and ordered reference decoding commute with copied indices. -/
theorem unpack_transport (state : State (Vertex old role) Key) :
    unpack (rawPacked (transport translation role state)) =
      (unpack (rawPacked state)).map (mapRows translation role) := by
  rcases state with ⟨root, dictionary, nodes, references⟩
  induction references with
  | nil => rfl
  | cons reference references ih =>
    simp only [unpack, rawPacked, transport, List.mapM_cons, decodeReference,
      List.getElem?_map] at *
    cases hlookup : dictionary[reference.2]? with
    | none => simp
    | some initial =>
      simp only [Option.map_some, Option.bind_eq_bind, Option.bind]
      rw [ih]
      cases htail : references.mapM (decodeReference dictionary) <;> simp [mapRows]

variable [DecidableEq (EdgeTrace.TotalEdge (Vertex old role))]
variable [DecidableEq (EdgeTrace.TotalEdge (Vertex new role))]

/-- Derive position preservation from injectivity and the actual list search recursion. -/
theorem mapTrace_idxOf (hinjective : Function.Injective translation.index)
    (dictionary : List (List (EdgeTrace.TotalEdge (Vertex old role))))
    (initial : List (EdgeTrace.TotalEdge (Vertex old role))) :
    @List.idxOf _ instBEqOfDecidableEq (mapTrace translation role initial)
        (dictionary.map (mapTrace translation role)) =
      @List.idxOf _ instBEqOfDecidableEq initial dictionary := by
  let : BEq (List (EdgeTrace.TotalEdge (Vertex old role))) := instBEqOfDecidableEq
  let : BEq (List (EdgeTrace.TotalEdge (Vertex new role))) := instBEqOfDecidableEq
  induction dictionary with
  | nil => rfl
  | cons first rest ih =>
    by_cases hequal : first = initial
    · subst first
      simp
    · have hnew : mapTrace translation role first ≠ mapTrace translation role initial :=
        fun hequalNew => hequal (mapTrace_injective translation role hinjective hequalNew)
      simp [hequal, hnew, ih]

theorem map_cell (hinjective : Function.Injective translation.index)
    (dictionary : List (List (EdgeTrace.TotalEdge (Vertex old role))))
    (initial : List (EdgeTrace.TotalEdge (Vertex old role))) :
    mapNode translation role (IncrementalPrefixTable.cell dictionary initial) =
      IncrementalPrefixTable.cell (dictionary.map (mapTrace translation role))
        (mapTrace translation role initial) := by
  by_cases hnil : initial = []
  · subst initial
    rfl
  · have hnew : mapTrace translation role initial ≠ [] := by
      intro hequal
      apply hnil
      apply List.eq_nil_of_length_eq_zero
      have hlength := congrArg List.length hequal
      simpa only [mapTrace, List.length_map, List.length_nil] using hlength
    simp only [IncrementalPrefixTable.cell, dif_neg hnil, dif_neg hnew, mapNode, Option.map_some]
    rw [show (mapTrace translation role initial).dropLast =
        mapTrace translation role initial.dropLast from List.map_dropLast.symm,
      mapTrace_idxOf translation role hinjective]
    simp only [mapTrace, List.length_map, List.getLast_map]

/-- The copied stored array satisfies exact new cell equations, not a rebuilt approximation. -/
theorem transport_wellFormed (hinjective : Function.Injective translation.index)
    (state : State (Vertex old role) Key) (hstate : WellFormed state) :
    WellFormed (transport translation role state) := by
  refine ⟨List.Nodup.map (mapTrace_injective translation role hinjective) hstate.nodup,
    ?_, ?_, ?_, ?_⟩
  · intro first second hmem hprefix
    change second ∈ state.dictionary.map (mapTrace translation role) at hmem
    obtain ⟨oldSecond, holdMem, rfl⟩ := List.mem_map.mp hmem
    obtain ⟨oldFirst, holdPrefix, rfl⟩ := List.prefix_map_iff.mp hprefix
    exact List.mem_map.mpr ⟨oldFirst, hstate.closed holdMem holdPrefix, rfl⟩
  · intro initial hmem
    change initial ∈ state.dictionary.map (mapTrace translation role) at hmem
    obtain ⟨oldInitial, holdMem, rfl⟩ := List.mem_map.mp hmem
    exact mapTrace_valid translation role state.root oldInitial (hstate.rooted oldInitial holdMem)
  · change state.nodes.map (mapNode translation role) =
      (state.dictionary.map (mapTrace translation role)).map
        (IncrementalPrefixTable.cell (state.dictionary.map (mapTrace translation role)))
    rw [hstate.cells, List.map_map, List.map_map]
    apply List.map_congr_left
    intro initial _
    exact map_cell translation role hinjective state.dictionary initial
  · intro reference hmem
    change reference.2 < (state.dictionary.map (mapTrace translation role)).length
    rw [List.length_map]
    exact hstate.references reference hmem

theorem expandDictionary_transport (hinjective : Function.Injective translation.index)
    (state : State (Vertex old role) Key) (hstate : WellFormed state) :
    expandDictionary (transport translation role state).nodes =
      (expandDictionary state.nodes).map (List.map (mapTrace translation role)) := by
  rw [expandDictionary_state _ (transport_wellFormed translation role hinjective state hstate),
    expandDictionary_state state hstate]
  rfl

/-- Actual checked parent/reference decoding of arbitrary well-formed stored data. -/
theorem decode_transport (hinjective : Function.Injective translation.index)
    (state : State (Vertex old role) Key) (hstate : WellFormed state) :
    PrefixTableState.decode (transport translation role state) =
      (PrefixTableState.decode state).map (mapRows translation role) := by
  rw [decode_eq_unpack _ (transport_wellFormed translation role hinjective state hstate),
    decode_eq_unpack state hstate, unpack_transport]

/-- Actual compaction and actual stored transport commute at their checked decoded histories. -/
theorem compact_decode_commutes (hinjective : Function.Injective translation.index)
    (state : State (Vertex old role) Key) (hstate : WellFormed state) :
    PrefixTableState.decode
        (transport translation role (PrefixTableCompaction.compact state hstate)) =
      PrefixTableState.decode (PrefixTableCompaction.compact (transport translation role state)
        (transport_wellFormed translation role hinjective state hstate)) := by
  rw [decode_transport translation role hinjective _
      (PrefixTableCompaction.compact_wellFormed state hstate),
    PrefixTableCompaction.decode_compact, PrefixTableCompaction.decode_compact,
    decode_transport translation role hinjective state hstate]

omit [DecidableEq (EdgeTrace.TotalEdge (Vertex old role))]
  [DecidableEq (EdgeTrace.TotalEdge (Vertex new role))] in
/-- The actual bijective inverse reconstructs full old typed edges, including their identities. -/
theorem inverse_mapEdge (hbijective : Function.Bijective translation.index)
    (edge : EdgeTrace.TotalEdge (Vertex old role)) :
    mapEdge (inverse translation hbijective) role (mapEdge translation role edge) = edge := by
  apply (edgeEquiv old role).injective
  exact inverse_qualified translation role hbijective (edgeId old role edge)

omit [DecidableEq (EdgeTrace.TotalEdge (Vertex old role))]
  [DecidableEq (EdgeTrace.TotalEdge (Vertex new role))] in
theorem inverse_mapRows (hbijective : Function.Bijective translation.index)
    (entries : List (Key × List (EdgeTrace.TotalEdge (Vertex old role)))) :
    mapRows (inverse translation hbijective) role (mapRows translation role entries) = entries := by
  simp only [mapRows, mapTrace, List.map_map, Function.comp_def]
  calc
    _ = entries.map (fun entry => entry) := by
      apply List.map_congr_left
      intro entry _
      simp only [inverse_mapEdge, List.map_id_fun']
      rfl
    _ = entries := by simp only [List.map_id_fun']; rfl

def rootedRows (root : V) (entries : List (Key × List (EdgeTrace.TotalEdge (Vertex old role)))) :
    List (Key × (V × List (EdgeTrace.TotalEdge (Vertex old role)))) :=
  entries.map (fun entry => (entry.1, (root, entry.2)))

variable [DecidableEq V]

/-- Actually decode the NEW stored parent table, inverse-map, then repack common OLD payloads. -/
noncomputable def restoreState (hbijective : Function.Bijective translation.index)
    (state : State (Vertex new role) Key) :
    Option (Packed Key (V × List (EdgeTrace.TotalEdge (Vertex old role)))) :=
  match PrefixTableState.decode state with
  | none => none
  | some entries => some (pack (rootedRows role state.root.value
      (mapRows (inverse translation hbijective) role entries)))

theorem restore_transport (hbijective : Function.Bijective translation.index)
    (state : State (Vertex old role) Key) (hstate : WellFormed state) :
    restoreState translation role hbijective (transport translation role state) =
      some (pack (rootedRows role state.root.value
        (PrefixTableCompaction.realEntries state hstate))) := by
  rw [restoreState, decode_transport translation role hbijective.1 state hstate,
    PrefixTableCompaction.decode_realEntries, Option.map_some]
  change some (pack (rootedRows role state.root.value
    (mapRows (inverse translation hbijective) role
      (mapRows translation role (PrefixTableCompaction.realEntries state hstate))))) = _
  rw [inverse_mapRows]

theorem certified_transport (hbijective : Function.Bijective translation.index)
    (state : State (Vertex old role) Key) (hstate : WellFormed state)
    (certificate : Certificate Key (V × List (EdgeTrace.TotalEdge (Vertex old role))))
    (hentries : certificate.entries =
      rootedRows role state.root.value (PrefixTableCompaction.realEntries state hstate)) :
    (transport translation role state).root.value = state.root.value ∧
      ∃ restored, restoreState translation role hbijective (transport translation role state) =
          some restored ∧ DecodesSatisfying restored certificate.predicate := by
  refine ⟨rfl, pack (rootedRows role state.root.value
    (PrefixTableCompaction.realEntries state hstate)),
    restore_transport translation role hbijective state hstate,
    certificate.reuse_of_same_decoding _ ?_⟩
  rw [unpack_pack, certificate.unpack_packed, hentries]

end GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.PrefixTableReindex
