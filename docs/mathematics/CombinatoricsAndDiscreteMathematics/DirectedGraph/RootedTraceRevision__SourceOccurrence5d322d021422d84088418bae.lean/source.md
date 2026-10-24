# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.RootedTraceRevision

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8f8f768bad2ef62bfedba9a39d366ed33279cc18` · SHA-256 `720e671b3d6e8e08683481b938eefd243f12fc3f89b51798ac78dfbd5c5e1578`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Imported Lean/Mathlib list and Option definitions retain their named author credit
and Apache-2.0 terms. Existing local codecs and certificates retain their source credits. -/
import GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.ParentTraceDictionary
import GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteSequences.DecisionCertificate

/-!
# Root-aware certified revisions of expanded parent dictionaries

Expand actual parent dictionaries, retain the old ordered references, and lift
each full trace to a pair with its retained root. Root equality and exact lookup
agreement at the old references imply actual successful rooted decoding. The
existing decision certificate then reuses its evidence via equality with its
own actual packed decoding, whose numeric slots need not be prefix slots.

The outer roots are required to agree even for an empty row list. Actual decoded
full traces recover the old occurrences through the existing valid-trace codec.
No predicate of all new rows, automatic slot stability, generic raw-table semantic
validation, runtime refinement or proof authority follows from this construction.
-/

set_option autoImplicit false

namespace GRWTSK.Combinatorics.DirectedGraph.RootedTraceRevision

open Quiver PathUnfolding OccurrencePrefix PrefixInventory ParentTraceDictionary
open GRWTSK.Logic.FiniteSequences IndexedDictionary DictionaryRevision DecisionCertificate

variable {V Key : Type*} [Quiver V] {beforeRoot afterRoot : V}

/-- A complete edge word together with its root, including the empty word. -/
abbrev RootedTrace (V : Type*) [Quiver V] := V × List (EdgeTrace.TotalEdge V)

def rootedRows (root : V) (entries : List (Key × List (EdgeTrace.TotalEdge V))) :
    List (Key × RootedTrace V) := entries.map (fun entry => (entry.1, (root, entry.2)))

def eraseRoots (entries : List (Key × RootedTrace V)) :
    List (Key × List (EdgeTrace.TotalEdge V)) := entries.map (fun entry => (entry.1, entry.2.2))

@[simp]
theorem eraseRoots_rootedRows (root : V) (entries : List (Key × List (EdgeTrace.TotalEdge V))) :
    eraseRoots (rootedRows root entries) = entries := by
  simp [eraseRoots, rootedRows, Function.comp_def]

/-- Lift actual dictionary payloads while retaining every original ordered reference. -/
def liftPacked (root : V) (packed : Packed Key (List (EdgeTrace.TotalEdge V))) :
    Packed Key (RootedTrace V) :=
  ⟨packed.dictionary.map (fun initial => (root, initial)), packed.references⟩

/-- Root lifting commutes with the existing actual checked reference decoder. -/
theorem unpack_liftPacked (root : V) (packed : Packed Key (List (EdgeTrace.TotalEdge V))) :
    unpack (liftPacked root packed) = (unpack packed).map (rootedRows root) := by
  rcases packed with ⟨dictionary, references⟩
  induction references with
  | nil => rfl
  | cons reference references ih =>
    simp only [unpack, liftPacked, List.mapM_cons, decodeReference, List.getElem?_map] at *
    cases hlookup : dictionary[reference.2]? with
    | none => simp
    | some initial =>
      simp only [Option.map_some, Option.bind_eq_bind, Option.bind]
      rw [ih]
      cases htail : references.mapM (decodeReference dictionary) <;>
        simp [rootedRows]

/-- Actually expand the after table, lift its payloads, and retain the before references. -/
noncomputable def expandRevision (before after : Representation V Key) :
    Option (Packed Key (RootedTrace V)) :=
  (expandedPacked after).map (fun packed =>
    ⟨packed.dictionary.map (fun initial => (after.root, initial)), before.references⟩)

variable [DecidableEq (EdgeTrace.TotalEdge V)]

noncomputable def beforePacked (rows : List (Key × Occurrence beforeRoot)) :
    Packed Key (RootedTrace V) := liftPacked beforeRoot (PrefixInventory.packed rows)

/-- The revised expanded dictionary retains the old ordered reference list. -/
noncomputable def afterPacked (beforeRows : List (Key × Occurrence beforeRoot))
    (afterRows : List (Key × Occurrence afterRoot)) : Packed Key (RootedTrace V) :=
  replaceDictionary (beforePacked beforeRows)
    ((inventory afterRows).map (fun initial => (afterRoot, initial)))

theorem expandRevision_encode (beforeRows : List (Key × Occurrence beforeRoot))
    (afterRows : List (Key × Occurrence afterRoot)) :
    expandRevision (encode beforeRows) (encode afterRows) =
      some (afterPacked beforeRows afterRows) := by
  rw [expandRevision, expandedPacked_encode]
  rfl

theorem unpack_before (beforeRows : List (Key × Occurrence beforeRoot)) :
    unpack (beforePacked beforeRows) = some (rootedRows beforeRoot (traceRows beforeRows)) := by
  rw [beforePacked, unpack_liftPacked, unpack_packed]
  rfl

/-- Root equality and actual full-trace lookup agreement imply rooted payload agreement. -/
theorem lifted_agreement (beforeRows : List (Key × Occurrence beforeRoot))
    (afterRows : List (Key × Occurrence afterRoot)) (hroot : beforeRoot = afterRoot)
    (hagreement : AgreesOnReferences (inventory beforeRows) (inventory afterRows)
      (PrefixInventory.packed beforeRows).references) :
    AgreesOnReferences (beforePacked beforeRows).dictionary
      ((inventory afterRows).map (fun initial => (afterRoot, initial)))
      (beforePacked beforeRows).references := by
  intro reference hreference
  simp only [beforePacked, liftPacked, PrefixInventory.packed, List.getElem?_map]
  cases hroot
  rw [hagreement reference hreference]

/-- Actual dictionary replacement and actual unpacking recover exactly the old rooted trace rows. -/
theorem unpack_after (beforeRows : List (Key × Occurrence beforeRoot))
    (afterRows : List (Key × Occurrence afterRoot)) (hroot : beforeRoot = afterRoot)
    (hagreement : AgreesOnReferences (inventory beforeRows) (inventory afterRows)
      (PrefixInventory.packed beforeRows).references) :
    unpack (afterPacked beforeRows afterRows) =
      some (rootedRows beforeRoot (traceRows beforeRows)) := by
  rw [afterPacked, unpack_replaceDictionary _ _ (lifted_agreement _ _ hroot hagreement)]
  exact unpack_before beforeRows

/-- Successful actual revision decoding supplies full old-root and edge-join validity. -/
theorem revised_valid (beforeRows : List (Key × Occurrence beforeRoot))
    (afterRows : List (Key × Occurrence afterRoot)) (hroot : beforeRoot = afterRoot)
    (hagreement : AgreesOnReferences (inventory beforeRows) (inventory afterRows)
      (PrefixInventory.packed beforeRows).references)
    (revised : Packed Key (RootedTrace V))
    (hexpand : expandRevision (encode beforeRows) (encode afterRows) = some revised)
    (entries : List (Key × RootedTrace V)) (hdecoded : unpack revised = some entries) :
    ∀ entry ∈ eraseRoots entries, EdgeTrace.ValidFrom beforeRoot entry.2 := by
  have hrevised : revised = afterPacked beforeRows afterRows :=
    Option.some.inj (hexpand.symm.trans (expandRevision_encode beforeRows afterRows))
  subst revised
  have hentries : entries = rootedRows beforeRoot (traceRows beforeRows) :=
    Option.some.inj (hdecoded.symm.trans (unpack_after _ _ hroot hagreement))
  subst entries
  rw [eraseRoots_rootedRows]
  exact traceRows_valid beforeRows

/-- Full actual old occurrences, keys, order and repetitions survive an agreed revision. -/
theorem revised_recovers (beforeRows : List (Key × Occurrence beforeRoot))
    (afterRows : List (Key × Occurrence afterRoot)) (hroot : beforeRoot = afterRoot)
    (hagreement : AgreesOnReferences (inventory beforeRows) (inventory afterRows)
      (PrefixInventory.packed beforeRows).references)
    (revised : Packed Key (RootedTrace V))
    (hexpand : expandRevision (encode beforeRows) (encode afterRows) = some revised)
    (entries : List (Key × RootedTrace V)) (hdecoded : unpack revised = some entries) :
    recoverRows (eraseRoots entries)
      (revised_valid beforeRows afterRows hroot hagreement revised hexpand entries hdecoded) =
      beforeRows := by
  have hrevised : revised = afterPacked beforeRows afterRows :=
    Option.some.inj (hexpand.symm.trans (expandRevision_encode beforeRows afterRows))
  subst revised
  have hentries : entries = rootedRows beforeRoot (traceRows beforeRows) :=
    Option.some.inj (hdecoded.symm.trans (unpack_after _ _ hroot hagreement))
  subst entries
  simp only [eraseRoots_rootedRows]
  exact recoverRows_traceRows beforeRows

variable [DecidableEq V]

/-- An actual existing certificate reuses evidence against its own proved packed decoding.
The conclusion explicitly retains outer root agreement, even for empty rows. -/
theorem certified_revision (beforeRows : List (Key × Occurrence beforeRoot))
    (afterRows : List (Key × Occurrence afterRoot)) (hroot : beforeRoot = afterRoot)
    (hagreement : AgreesOnReferences (inventory beforeRows) (inventory afterRows)
      (PrefixInventory.packed beforeRows).references)
    (certificate : Certificate Key (RootedTrace V))
    (hentries : certificate.entries = rootedRows beforeRoot (traceRows beforeRows)) :
    (encode beforeRows).root = (encode afterRows).root ∧
      ∃ revised : Packed Key (RootedTrace V),
        expandRevision (encode beforeRows) (encode afterRows) = some revised ∧
        DecodesSatisfying revised certificate.predicate := by
  refine ⟨hroot, afterPacked beforeRows afterRows, expandRevision_encode _ _, ?_⟩
  apply certificate.reuse_of_same_decoding
  have hcertificate := certificate.unpack_packed
  rw [hentries] at hcertificate
  exact (unpack_after beforeRows afterRows hroot hagreement).trans hcertificate.symm

end GRWTSK.Combinatorics.DirectedGraph.RootedTraceRevision
```
