# Complete source: GRWTSK.Combinatorics.DirectedGraph.Checks.Positive.PrefixTableState

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `15ddb30db958044de25e4a32529f69da8fc13aba` · SHA-256 `5ed6c35cdab173e6c3c313b380c5094a905f4b6573e67fb2a62d35f539a65452`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Imported Lean/Mathlib authorship and Apache-2.0 licensing remain attached to their imports. -/
import GRWTSK.Combinatorics.DirectedGraph.PrefixTableState

set_option autoImplicit false

open Quiver
open GRWTSK.Combinatorics.DirectedGraph
open PathUnfolding OccurrencePrefix PrefixInventory ParentTraceDictionary PrefixTableState
open GRWTSK.Logic.FiniteSequences IndexedDictionary

namespace GRWTSK.Combinatorics.DirectedGraph.PrefixTableState.Checks.Positive

noncomputable instance loopVertexDecidableEq : DecidableEq (SingleObj Bool) :=
  Classical.decEq _

noncomputable instance loopTagDecidableEq :
    DecidableEq (EdgeTrace.TotalEdge (SingleObj Bool)) := Classical.decEq _

def falseTag : EdgeTrace.TotalEdge (SingleObj Bool) :=
  ⟨SingleObj.star Bool, SingleObj.star Bool, SingleObj.toHom false⟩

def trueTag : EdgeTrace.TotalEdge (SingleObj Bool) :=
  ⟨SingleObj.star Bool, SingleObj.star Bool, SingleObj.toHom true⟩

theorem tags_distinct : falseTag ≠ trueTag := by
  intro hequal
  have harrow := eq_of_heq (Sigma.mk.inj (eq_of_heq (Sigma.mk.inj hequal).2)).2
  have hbool : false = true := harrow
  cases hbool

noncomputable def falseOccurrence : Occurrence (SingleObj.star Bool) :=
  ofPath (PathOccurrences.parallelLoop false)

noncomputable def trueOccurrence : Occurrence (SingleObj.star Bool) :=
  ofPath (PathOccurrences.parallelLoop true)

noncomputable def firstRows : List (Nat × Occurrence (SingleObj.star Bool)) :=
  [(11, falseOccurrence), (12, trueOccurrence)]

noncomputable def secondRows : List (Nat × Occurrence (SingleObj.star Bool)) :=
  [(11, falseOccurrence)]

noncomputable def initial : State (SingleObj Bool) Nat := empty (SingleObj.star Bool)
noncomputable def sequential : State (SingleObj Bool) Nat :=
  update (update initial firstRows) secondRows
noncomputable def combined : State (SingleObj Bool) Nat :=
  update initial (firstRows ++ secondRows)

theorem first_inventory : inventory firstRows = [[falseTag], [], [trueTag]] := by
  change ([[], [falseTag], [], [trueTag]] :
    List (List (EdgeTrace.TotalEdge (SingleObj Bool)))).dedup = _
  simp [tags_distinct]

theorem second_inventory : inventory secondRows = [[], [falseTag]] := by
  change ([[], [falseTag]] : List (List (EdgeTrace.TotalEdge (SingleObj Bool)))).dedup = _
  simp

theorem combined_inventory : inventory (firstRows ++ secondRows) =
    [[trueTag], [], [falseTag]] := by
  change ([[], [falseTag], [], [trueTag], [], [falseTag]] :
    List (List (EdgeTrace.TotalEdge (SingleObj Bool)))).dedup = _
  simp [tags_distinct, Ne.symm tags_distinct]

theorem first_dictionary : (update initial firstRows).dictionary =
    [[falseTag], [], [trueTag]] := by
  simp [update, extendedDictionary, initial, empty, IncrementalDictionary.expandedDictionary,
    IncrementalDictionary.missingPayloads, IncrementalPrefixTable.prefixEntries, first_inventory]
  simp [tags_distinct]

theorem sequential_dictionary : sequential.dictionary = [[falseTag], [], [trueTag]] := by
  change extendedDictionary (update initial firstRows) secondRows = _
  simp [extendedDictionary, IncrementalDictionary.expandedDictionary,
    IncrementalDictionary.missingPayloads, IncrementalPrefixTable.prefixEntries,
    first_dictionary, second_inventory]

theorem combined_dictionary : combined.dictionary = [[trueTag], [], [falseTag]] := by
  simp [combined, update, extendedDictionary, initial, empty,
    IncrementalDictionary.expandedDictionary, IncrementalDictionary.missingPayloads,
    IncrementalPrefixTable.prefixEntries, combined_inventory]
  simp [Ne.symm tags_distinct]

theorem sequential_wellFormed : WellFormed sequential :=
  update_wellFormed _ (update_wellFormed _ (empty_wellFormed _) _) _

theorem combined_wellFormed : WellFormed combined :=
  update_wellFormed _ (empty_wellFormed _) _

theorem sequential_actual_decode : decode sequential =
    some [(11, [falseTag]), (12, [trueTag]), (11, [falseTag])] := by
  rw [sequential, initial, decode_two_updates _ (empty_wellFormed _), decode_empty]
  rfl

theorem combined_actual_decode : decode combined =
    some [(11, [falseTag]), (12, [trueTag]), (11, [falseTag])] := by
  rw [combined, initial, decode_update _ (empty_wellFormed _), decode_empty]
  rfl

/-- Equal actual ordered histories do not identify grouped stored representations. -/
theorem actual_grouping_counterexample :
    decode sequential = decode combined ∧ sequential ≠ combined := by
  refine ⟨sequential_actual_decode.trans combined_actual_decode.symm, ?_⟩
  intro hequal
  have hdictionary := congrArg State.dictionary hequal
  rw [sequential_dictionary, combined_dictionary] at hdictionary
  exact tags_distinct (List.singleton_inj.mp (List.cons.inj hdictionary).1)

theorem sequential_old_slots_retained :
    (update initial firstRows).dictionary <+: sequential.dictionary ∧
      (update initial firstRows).nodes <+: sequential.nodes ∧
      (update initial firstRows).references <+: sequential.references :=
  prefixes_retained (update initial firstRows) secondRows

example : expandDictionary sequential.nodes = some [[falseTag], [], [trueTag]] := by
  rw [expandDictionary_state sequential sequential_wellFormed, sequential_dictionary]

example (entries : List (Nat × List (EdgeTrace.TotalEdge (SingleObj Bool))))
    (hdecoded : decode sequential = some entries) :
    recoverRows entries (output_valid sequential sequential_wellFormed entries hdecoded) =
      firstRows ++ secondRows := by
  apply update_recovers (update initial firstRows)
    (update_wellFormed _ (empty_wellFormed _) _) firstRows secondRows _ entries hdecoded
  rw [initial, decode_update _ (empty_wellFormed _), decode_empty]
  rfl

noncomputable def seeded : State (SingleObj Bool) Nat :=
  ofOneStep secondRows [(12, trueOccurrence)]

/-- The earlier producer yields a genuinely noncanonical valid stored starting state. -/
theorem seeded_dictionary : seeded.dictionary = [[], [falseTag], [trueTag]] := by
  have htrue : inventory [(12, trueOccurrence)] = [[], [trueTag]] := by
    change ([[], [trueTag]] : List (List (EdgeTrace.TotalEdge (SingleObj Bool)))).dedup = _
    simp
  simp [seeded, ofOneStep, IncrementalPrefixTable.dictionary,
    IncrementalPrefixTable.prefixEntries, second_inventory, htrue,
    IncrementalDictionary.expandedDictionary, IncrementalDictionary.missingPayloads]
  simp [Ne.symm tags_distinct]

theorem seeded_wellFormed : WellFormed seeded := ofOneStep_wellFormed _ _

example : decode (update seeded secondRows) =
    some [(11, [falseTag]), (12, [trueTag]), (11, [falseTag])] := by
  rw [decode_update _ seeded_wellFormed, seeded, decode_ofOneStep]
  rfl

example : WellFormed (update sequential []) := update_wellFormed _ sequential_wellFormed _

example : decode (update sequential []) = decode sequential := by
  rw [decode_update _ sequential_wellFormed]
  simp [traceRows]

/-- A two-edge valid history with its required singleton parent deliberately omitted. -/
noncomputable def missingParent : State (SingleObj Bool) Nat :=
  ⟨SingleObj.star Bool, [[falseTag, trueTag]], [(2, some (1, trueTag))], [(7, 0)]⟩

theorem missingParent_nodup : missingParent.dictionary.Nodup := by
  simp [missingParent]

theorem missingParent_rooted :
    ∀ initial ∈ missingParent.dictionary, EdgeTrace.ValidFrom missingParent.root initial := by
  intro initial hmem
  have hequal : initial = [falseTag, trueTag] := by simpa [missingParent] using hmem
  subst initial
  exact ⟨rfl, rfl, True.intro⟩

theorem missingParent_cells : missingParent.nodes = missingParent.dictionary.map
    (IncrementalPrefixTable.cell missingParent.dictionary) := by
  simp [missingParent, IncrementalPrefixTable.cell]

theorem missingParent_references : Valid (rawPacked missingParent) := by
  intro reference hreference
  have hequal : reference = (7, 0) := by simpa [rawPacked, missingParent] using hreference
  subst reference
  exact Nat.zero_lt_succ 0

theorem missingParent_not_closed : ¬ (∀ {first second}, second ∈ missingParent.dictionary →
    first <+: second → first ∈ missingParent.dictionary) := by
  intro hclosed
  have hbad := hclosed (first := [falseTag]) (second := [falseTag, trueTag])
    (by simp [missingParent]) (by exact ⟨[trueTag], rfl⟩)
  simp [missingParent] at hbad

theorem missingParent_not_wellFormed : ¬ WellFormed missingParent := by
  intro hstate
  exact missingParent_not_closed hstate.closed

/-- Bounded real references and valid full payloads alone do not justify numeric expansion. -/
theorem actual_missing_parent_failure :
    unpack (rawPacked missingParent) = some [(7, [falseTag, trueTag])] ∧
      decode missingParent = none := ⟨rfl, rfl⟩

instance boolQuiver : Quiver Bool := ⟨fun _ _ => Unit⟩

noncomputable instance boolTagDecidableEq : DecidableEq (EdgeTrace.TotalEdge Bool) :=
  Classical.decEq _

example : (empty false : State Bool Nat).nodes = (empty true : State Bool Nat).nodes ∧
    (empty false : State Bool Nat).references = (empty true : State Bool Nat).references ∧
      (empty false : State Bool Nat).root ≠ (empty true : State Bool Nat).root :=
  ⟨rfl, rfl, Bool.false_ne_true⟩

end GRWTSK.Combinatorics.DirectedGraph.PrefixTableState.Checks.Positive
```
