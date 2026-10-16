/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Imported Lean/Mathlib APIs retain named author credit and Apache-2.0 terms;
Mathlib List.Basic: Parikshit Khanna, Jeremy Avigad, Leonardo de Moura,
Floris van Doorn, Mario Carneiro. Existing local codecs retain their source credits. -/
import GRWTSK.Combinatorics.DirectedGraph.PrefixTableState

/-!
# Compaction of rooted prefix tables

The old stored state supplies an actual successful checked decoding. Its valid
real traces are recovered to existing rooted path occurrences, then rebuilt by
the existing complete-prefix producer. Root, complete keyed histories, order
and repetitions are preserved. Unreferenced branches can disappear, so the
mapping from old numeric slots is partial; retained parents and real references
must be reindexed. No runtime codec, unchanged-slot or byte-optimality claim is made.
-/

set_option autoImplicit false

namespace GRWTSK.Combinatorics.DirectedGraph.PrefixTableCompaction

open Quiver PathUnfolding OccurrencePrefix PrefixInventory ParentTraceDictionary PrefixTableState
open GRWTSK.Logic.FiniteSequences IndexedDictionary DecisionCertificate RootedTraceRevision

variable {V Key : Type*} [Quiver V] {root : V}

/-- The reverse actual trace/recovery roundtrip follows from the actual edge decoder. -/
theorem traceRows_recoverRows (entries : List (Key × List (EdgeTrace.TotalEdge V)))
    (hvalid : ∀ entry ∈ entries, EdgeTrace.ValidFrom root entry.2) :
    traceRows (recoverRows entries hvalid) = entries := by
  unfold traceRows recoverRows
  rw [List.map_map]
  calc
    _ = entries.attach.map (fun entry => entry.1) := by
      apply List.map_congr_left
      intro entry _
      apply Prod.ext
      · rfl
      · exact EdgeTrace.encode_decode root entry.1.2 (hvalid entry.1 entry.2)
    _ = entries := List.attach_map_subtype_val entries

variable [DecidableEq (EdgeTrace.TotalEdge V)]

/-- Choose the actual successful real-row output derived from the structural invariant. -/
noncomputable def realEntries (state : State V Key) (hstate : WellFormed state) :
    List (Key × List (EdgeTrace.TotalEdge V)) :=
  Classical.choose (decode_success state hstate)

theorem decode_realEntries (state : State V Key) (hstate : WellFormed state) :
    decode state = some (realEntries state hstate) :=
  (Classical.choose_spec (decode_success state hstate)).1

theorem realEntries_valid (state : State V Key) (hstate : WellFormed state) :
    ∀ entry ∈ realEntries state hstate, EdgeTrace.ValidFrom state.root entry.2 :=
  (Classical.choose_spec (decode_success state hstate)).2

noncomputable def realRows (state : State V Key) (hstate : WellFormed state) :
    List (Key × Occurrence state.root) :=
  recoverRows (realEntries state hstate) (realEntries_valid state hstate)

theorem traceRows_realRows (state : State V Key) (hstate : WellFormed state) :
    traceRows (realRows state hstate) = realEntries state hstate :=
  traceRows_recoverRows _ _

/-- Binding supplied actual old occurrences to actual decoding identifies the recovered rows. -/
theorem realRows_of_decode (state : State V Key) (hstate : WellFormed state)
    (rows : List (Key × Occurrence state.root)) (hdecoded : decode state = some (traceRows rows)) :
    realRows state hstate = rows := by
  have hequal : realEntries state hstate = traceRows rows :=
    Option.some.inj ((decode_realEntries state hstate).symm.trans hdecoded)
  unfold realRows
  simp only [hequal]
  exact recoverRows_traceRows rows

/-- Rebuild only prefixes needed by the actual real histories, using the existing producer. -/
noncomputable def compact (state : State V Key) (hstate : WellFormed state) : State V Key :=
  ofOneStep (realRows state hstate) []

theorem compact_root (state : State V Key) (hstate : WellFormed state) :
    (compact state hstate).root = state.root := rfl

theorem compact_wellFormed (state : State V Key) (hstate : WellFormed state) :
    WellFormed (compact state hstate) := ofOneStep_wellFormed _ _

theorem compact_dictionary (state : State V Key) (hstate : WellFormed state) :
    (compact state hstate).dictionary = inventory (realRows state hstate) := by
  simp [compact, ofOneStep, IncrementalPrefixTable.dictionary,
    IncrementalPrefixTable.prefixEntries, IncrementalDictionary.expandedDictionary,
    IncrementalDictionary.missingPayloads]

theorem compact_references (state : State V Key) (hstate : WellFormed state) :
    (compact state hstate).references =
      (PrefixInventory.packed (realRows state hstate)).references := by
  simp [compact, ofOneStep, IncrementalPrefixTable.realPacked,
    IncrementalDictionary.appendEntries, IncrementalPrefixTable.oldPacked,
    DictionaryRevision.replaceDictionary, traceRows]

theorem decode_compact (state : State V Key) (hstate : WellFormed state) :
    decode (compact state hstate) = decode state := by
  rw [compact, decode_ofOneStep, List.append_nil, traceRows_realRows, decode_realEntries]

/-- Actual successful outputs recover exactly the original actual real occurrence rows. -/
theorem compact_recovers (state : State V Key) (hstate : WellFormed state)
    (entries : List (Key × List (EdgeTrace.TotalEdge V)))
    (hdecoded : decode (compact state hstate) = some entries) :
    recoverRows entries
        (output_valid _ (compact_wellFormed state hstate) entries hdecoded) =
      realRows state hstate := by
  have hequal : entries = realEntries state hstate :=
    Option.some.inj (hdecoded.symm.trans
      ((decode_compact state hstate).trans (decode_realEntries state hstate)))
  subst entries
  rfl

/-- Relate each old numeric reference to its actual checked decoded full history. -/
theorem references_decoded (state : State V Key) (hstate : WellFormed state) :
    List.Forall₂ (fun reference entry => reference.1 = entry.1 ∧
      state.dictionary[reference.2]? = some entry.2)
      state.references (realEntries state hstate) := by
  have main (references : List (Key × Nat)) :
      ∀ entries, references.mapM (decodeReference state.dictionary) = some entries →
        List.Forall₂ (fun reference entry => reference.1 = entry.1 ∧
          state.dictionary[reference.2]? = some entry.2) references entries := by
    induction references with
    | nil =>
      intro entries hdecoded
      have hequal : entries = [] := (Option.some.inj hdecoded).symm
      subst entries
      exact List.Forall₂.nil
    | cons reference references ih =>
      intro entries hdecoded
      cases hlookup : state.dictionary[reference.2]? with
      | none => simp [List.mapM_cons, decodeReference, hlookup] at hdecoded
      | some initial =>
        cases htail : references.mapM (decodeReference state.dictionary) with
        | none => simp [List.mapM_cons, decodeReference, hlookup, htail] at hdecoded
        | some tail =>
          simp only [List.mapM_cons, decodeReference, hlookup, Option.map_some,
            Option.bind_eq_bind, Option.bind, htail] at hdecoded
          have hequal : entries = (reference.1, initial) :: tail :=
            (Option.some.inj hdecoded).symm
          subst entries
          exact List.Forall₂.cons ⟨rfl, hlookup⟩ (ih tail htail)
  apply main state.references
  change unpack (rawPacked state) = some (realEntries state hstate)
  rw [← decode_eq_unpack state hstate]
  exact decode_realEntries state hstate

theorem realEntries_mem_old_dictionary (state : State V Key) (hstate : WellFormed state) :
    ∀ entry ∈ realEntries state hstate, entry.2 ∈ state.dictionary := by
  have main (references : List (Key × Nat))
      (entries : List (Key × List (EdgeTrace.TotalEdge V)))
      (hpairs : List.Forall₂ (fun reference entry => reference.1 = entry.1 ∧
        state.dictionary[reference.2]? = some entry.2) references entries) :
      ∀ entry ∈ entries, entry.2 ∈ state.dictionary := by
    induction hpairs with
    | nil => simp
    | @cons reference entry references entries hpair hpairs ih =>
      intro candidate hmem
      rcases List.mem_cons.mp hmem with rfl | htail
      · exact List.mem_of_getElem? hpair.2
      · exact ih candidate htail
  exact main state.references (realEntries state hstate) (references_decoded state hstate)

theorem realEntries_mem_compact_dictionary (state : State V Key) (hstate : WellFormed state) :
    ∀ entry ∈ realEntries state hstate, entry.2 ∈ (compact state hstate).dictionary := by
  intro entry hmem
  rw [compact_dictionary]
  rw [← traceRows_realRows state hstate] at hmem
  obtain ⟨row, hrow, rfl⟩ := List.mem_map.mp hmem
  exact trace_mem_inventory _ row hrow

/-- No new full prefix is invented; only prefixes of retained real histories remain. -/
theorem compact_dictionary_subset (state : State V Key) (hstate : WellFormed state) :
    (compact state hstate).dictionary ⊆ state.dictionary := by
  intro initial hmem
  rw [compact_dictionary, mem_inventory_iff] at hmem
  obtain ⟨row, hrow, hprefix⟩ := hmem
  have hentry : (row.1, trace row.2) ∈ realEntries state hstate := by
    rw [← traceRows_realRows state hstate]
    exact List.mem_map.mpr ⟨row, hrow, rfl⟩
  exact hstate.closed (realEntries_mem_old_dictionary state hstate _ hentry) hprefix

/-- Unused old slots need not survive: lookup and retained full trace membership are checked. -/
noncomputable def remap (state : State V Key) (hstate : WellFormed state) (slot : Nat) :
    Option Nat :=
  match state.dictionary[slot]? with
  | none => none
  | some initial =>
    if initial ∈ (compact state hstate).dictionary then
      some (@List.idxOf _ instBEqOfDecidableEq initial (compact state hstate).dictionary)
    else none

theorem remap_retained (state : State V Key) (hstate : WellFormed state) (slot : Nat)
    (initial : List (EdgeTrace.TotalEdge V))
    (hlookup : state.dictionary[slot]? = some initial)
    (hretained : initial ∈ (compact state hstate).dictionary) :
    remap state hstate slot = some (position (realRows state hstate) initial) := by
  simp only [remap, hlookup]
  rw [if_pos hretained, compact_dictionary]
  rfl

theorem remap_removed (state : State V Key) (hstate : WellFormed state) (slot : Nat)
    (initial : List (EdgeTrace.TotalEdge V))
    (hlookup : state.dictionary[slot]? = some initial)
    (hremoved : initial ∉ (compact state hstate).dictionary) :
    remap state hstate slot = none := by
  simp only [remap, hlookup, if_neg hremoved]

theorem remap_lookup (state : State V Key) (hstate : WellFormed state) (slot target : Nat)
    (hremap : remap state hstate slot = some target) :
    (compact state hstate).dictionary[target]? = state.dictionary[slot]? := by
  cases hlookup : state.dictionary[slot]? with
  | none => simp [remap, hlookup] at hremap
  | some initial =>
    by_cases hmem : initial ∈ (compact state hstate).dictionary
    · have hequal : position (realRows state hstate) initial = target :=
        Option.some.inj ((remap_retained state hstate slot initial hlookup hmem).symm.trans hremap)
      rw [← hequal, compact_dictionary]
      exact position_lookup _ initial (by simpa only [compact_dictionary] using hmem)
    · rw [remap_removed state hstate slot initial hlookup hmem] at hremap
      cases hremap

/-- Every retained nonempty node's actual old parent receives the new canonical parent slot. -/
theorem retained_parent_reindex (state : State V Key) (hstate : WellFormed state)
    (slot : Nat) (initial : List (EdgeTrace.TotalEdge V))
    (hlookup : state.dictionary[slot]? = some initial)
    (hretained : initial ∈ (compact state hstate).dictionary) (hnil : initial ≠ []) :
    remap state hstate (@List.idxOf _ instBEqOfDecidableEq initial.dropLast state.dictionary) =
        some (position (realRows state hstate) initial.dropLast) ∧
      (compact state hstate).nodes[position (realRows state hstate) initial]? =
        some (initial.length, some (position (realRows state hstate) initial.dropLast,
          initial.getLast hnil)) := by
  have hparent := (compact_wellFormed state hstate).closed hretained (List.dropLast_prefix initial)
  refine ⟨remap_retained state hstate _ _
    (parent_lookup state hstate initial (List.mem_of_getElem? hlookup)) hparent, ?_⟩
  have hnewLookup : (compact state hstate).dictionary[position (realRows state hstate) initial]? =
      some initial := by
    rw [compact_dictionary]
    exact position_lookup _ initial (by simpa only [compact_dictionary] using hretained)
  rw [node_lookup _ (compact_wellFormed state hstate) _ _ hnewLookup]
  simp only [IncrementalPrefixTable.cell, dif_neg hnil, compact_dictionary, position]

noncomputable def reindexReferences (state : State V Key) (hstate : WellFormed state) :
    Option (List (Key × Nat)) :=
  state.references.mapM (fun reference =>
    (remap state hstate reference.2).map (fun slot => (reference.1, slot)))

/-- All ordered real references are actually remapped; keys and repetitions are retained. -/
theorem reindexReferences_eq (state : State V Key) (hstate : WellFormed state) :
    reindexReferences state hstate = some (compact state hstate).references := by
  have main (references : List (Key × Nat)) (entries : List (Key × List (EdgeTrace.TotalEdge V)))
      (hpairs : List.Forall₂ (fun reference entry => reference.1 = entry.1 ∧
        state.dictionary[reference.2]? = some entry.2) references entries) :
      (∀ entry ∈ entries, entry.2 ∈ (compact state hstate).dictionary) →
      references.mapM (fun reference =>
        (remap state hstate reference.2).map (fun slot => (reference.1, slot))) =
          some (entries.map
            (fun entry => (entry.1, position (realRows state hstate) entry.2))) := by
    induction hpairs with
    | nil => intro _; rfl
    | @cons reference entry references entries hpair hpairs ih =>
      intro hmem
      have hretained := hmem entry (List.mem_cons_self ..)
      have hstep := remap_retained state hstate reference.2 entry.2 hpair.2 hretained
      have htail := ih (fun entry hentry => hmem entry (List.mem_cons_of_mem _ hentry))
      simp only [List.mapM_cons, hstep, Option.map_some, Option.bind_eq_bind, Option.bind,
        htail, List.map_cons, hpair.1]
      rfl
  rw [compact_references]
  change _ = some ((traceRows (realRows state hstate)).map
    (fun entry => (entry.1, position (realRows state hstate) entry.2)))
  rw [traceRows_realRows]
  exact main state.references (realEntries state hstate) (references_decoded state hstate)
    (realEntries_mem_compact_dictionary state hstate)

/-- Root-lifted actual checked unpacking is unchanged, including the outer empty-data root. -/
theorem rooted_unpack_compact (state : State V Key) (hstate : WellFormed state) :
    (compact state hstate).root = state.root ∧
      unpack (liftPacked (compact state hstate).root (rawPacked (compact state hstate))) =
        unpack (liftPacked state.root (rawPacked state)) := by
  refine ⟨rfl, ?_⟩
  rw [unpack_liftPacked, unpack_liftPacked,
    ← decode_eq_unpack _ (compact_wellFormed state hstate), ← decode_eq_unpack state hstate,
    decode_compact]
  rfl

variable [DecidableEq V]

/-- Reuse explicit criterion evidence through the certificate's own actual packed decoding. -/
theorem certified_compact (state : State V Key) (hstate : WellFormed state)
    (certificate : Certificate Key (RootedTrace V))
    (hentries : certificate.entries = rootedRows state.root (realEntries state hstate)) :
    (compact state hstate).root = state.root ∧
      DecodesSatisfying (liftPacked (compact state hstate).root
        (rawPacked (compact state hstate))) certificate.predicate := by
  refine ⟨rfl, certificate.reuse_of_same_decoding _ ?_⟩
  rw [(rooted_unpack_compact state hstate).2, unpack_liftPacked,
    ← decode_eq_unpack state hstate, decode_realEntries, Option.map_some,
    certificate.unpack_packed, hentries]

end GRWTSK.Combinatorics.DirectedGraph.PrefixTableCompaction
