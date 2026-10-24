# Complete source: GRWTSK.Combinatorics.DirectedGraph.Checks.Positive.ParentTraceDictionary

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8369a330ad79d25f773c72ccd8d00e7a1881fbe4` · SHA-256 `8f102dc60a1ea23aaf0a04162da3e5fa0e0552ae19d1d8139b39fda6a0d5960c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Imported Lean/Mathlib authorship and Apache-2.0 licensing remain attached to their imports. -/
import GRWTSK.Combinatorics.DirectedGraph.ParentTraceDictionary

set_option autoImplicit false

open Quiver
open GRWTSK.Combinatorics.DirectedGraph
open PathUnfolding OccurrencePrefix PrefixInventory ParentTraceDictionary

namespace GRWTSK.Combinatorics.DirectedGraph.ParentTraceDictionary.Checks.Positive

noncomputable instance loopTagDecidableEq :
    DecidableEq (EdgeTrace.TotalEdge (SingleObj Bool)) := Classical.decEq _

def falseTag : EdgeTrace.TotalEdge (SingleObj Bool) :=
  ⟨SingleObj.star Bool, SingleObj.star Bool, SingleObj.toHom false⟩

def trueTag : EdgeTrace.TotalEdge (SingleObj Bool) :=
  ⟨SingleObj.star Bool, SingleObj.star Bool, SingleObj.toHom true⟩

noncomputable def falseOccurrence : Occurrence (SingleObj.star Bool) :=
  ofPath (PathOccurrences.parallelLoop false)

noncomputable def trueOccurrence : Occurrence (SingleObj.star Bool) :=
  ofPath (PathOccurrences.parallelLoop true)

noncomputable def twiceOccurrence : Occurrence (SingleObj.star Bool) :=
  extend falseOccurrence (SingleObj.toHom false)

noncomputable def backwardRows : List (Nat × Occurrence (SingleObj.star Bool)) :=
  [(11, twiceOccurrence), (12, falseOccurrence)]

/-- This exact rightmost inventory puts the two-edge child before its one-edge parent. -/
theorem backward_inventory : inventory backwardRows = [[falseTag, falseTag], [], [falseTag]] := by
  change ([[], [falseTag], [falseTag, falseTag], [], [falseTag]] :
    List (List (EdgeTrace.TotalEdge (SingleObj Bool)))).dedup = _
  simp

theorem backward_nodes : encodedNodes backwardRows =
    [(2, some (2, falseTag)), (0, none), (1, some (1, falseTag))] := by
  simp [encodedNodes, backward_inventory, nodeFor, position]

theorem actual_parent_index_later :
    (encodedNodes backwardRows)[0]? = some (2, some (2, falseTag)) ∧ 0 < 2 := by
  rw [backward_nodes]
  exact ⟨rfl, by decide⟩

example : ValidRanks (encodedNodes backwardRows) := encoded_validRanks backwardRows

example : decodeSlot (encodedNodes backwardRows) 0 = some [falseTag, falseTag] := by
  rw [backward_nodes]
  rfl

example : expandDictionary (encodedNodes backwardRows) =
    some [[falseTag, falseTag], [], [falseTag]] := by
  rw [expandDictionary_encoded, backward_inventory]

example : decodeReferences (encode backwardRows) =
    some [(11, [falseTag, falseTag]), (12, [falseTag])] := decodeReferences_encode backwardRows

example (entries : List (Nat × List (EdgeTrace.TotalEdge (SingleObj Bool))))
    (hdecoded : decodeReferences (encode backwardRows) = some entries) :
    recoverRows entries (decoded_valid backwardRows entries hdecoded) = backwardRows :=
  decoded_recovers backwardRows entries hdecoded

example : (encode ([] : List (Nat × Occurrence (SingleObj.star Bool)))).nodes = [] := rfl

example : decodeReferences (encode ([] : List (Nat × Occurrence (SingleObj.star Bool)))) =
    some [] := decodeReferences_encode []

example : (encode [(3, origin (SingleObj.star Bool))]).nodes = [(0, none)] := by
  simp [encode, encodedNodes, inventory_singleton_origin, nodeFor]

example : decodeReferences (encode [(3, origin (SingleObj.star Bool))]) = some [(3, [])] :=
  decodeReferences_encode _

noncomputable def repeatedRows : List (Nat × Occurrence (SingleObj.star Bool)) :=
  [(21, falseOccurrence), (22, trueOccurrence), (21, falseOccurrence)]

example : decodeReferences (encode repeatedRows) =
    some [(21, [falseTag]), (22, [trueTag]), (21, [falseTag])] :=
  decodeReferences_encode repeatedRows

example : (encode repeatedRows).references.length = 3 := references_length repeatedRows

example (entries : List (Nat × List (EdgeTrace.TotalEdge (SingleObj Bool))))
    (hdecoded : decodeReferences (encode repeatedRows) = some entries) :
    recoverRows entries (decoded_valid repeatedRows entries hdecoded) = repeatedRows :=
  decoded_recovers repeatedRows entries hdecoded

theorem parallel_identity_preserved : falseOccurrence ≠ trueOccurrence := by
  intro hequal
  have hhistory := congrArg Occurrence.history hequal
  exact PathOccurrences.parallel_loops_ne (eq_of_heq (Sigma.mk.inj hhistory).2)

example : falseOccurrence.endpoint = trueOccurrence.endpoint := rfl

example : (inventory backwardRows).count [] = 1 := empty_count backwardRows (by simp [backwardRows])

/-- A missing parent is rejected by the actual numeric decoder, not an assumed validity wrapper. -/
theorem missing_parent_rejected : decodeSlot [(1, some (9, falseTag))] 0 = none := rfl

/-- A self-cycle fails the actual strict-rank check before any recursive expansion. -/
theorem self_cycle_rejected : decodeSlot [(1, some (0, falseTag))] 0 = none := rfl

theorem self_cycle_not_validRanks : ¬ ValidRanks [(1, some (0, falseTag))] := by
  intro hvalid
  obtain ⟨parent, hparent, hlt⟩ := hvalid 0 (1, some (0, falseTag)) rfl
  have hequal : parent = (1, some (0, falseTag)) := (Option.some.inj hparent).symm
  subst parent
  exact Nat.lt_irrefl 1 hlt

/-- A parent of greater rank is rejected even though the parent lookup exists. -/
theorem increasing_rank_rejected :
    decodeSlot [(1, some (1, falseTag)), (2, none)] 0 = none := rfl

/-- An empty marker with a nonzero stored rank is rejected as well. -/
theorem nonzero_empty_rejected : decodeSlot (V := SingleObj Bool) [(1, none)] 0 = none := rfl

instance boolQuiver : Quiver Bool := ⟨fun _ _ => Unit⟩

noncomputable instance boolTagDecidableEq : DecidableEq (EdgeTrace.TotalEdge Bool) :=
  Classical.decEq _

/-- The actual empty histories have equal words at two distinct roots. -/
theorem same_empty_words : trace (origin false) = trace (origin true) := rfl

theorem empty_roots_distinct : (origin false).endpoint ≠ (origin true).endpoint :=
  Bool.false_ne_true

theorem root_loss_counterexample :
    trace (origin false) = trace (origin true) ∧
      (origin false).endpoint ≠ (origin true).endpoint :=
  ⟨same_empty_words, empty_roots_distinct⟩

theorem no_empty_word_root_decoder :
    ¬ ∃ recoverRoot : List (EdgeTrace.TotalEdge Bool) → Bool,
      ∀ vertex : Bool, recoverRoot (trace (origin vertex)) = vertex :=
  no_root_decoder Bool.false_ne_true

/-- Retaining the root distinguishes actual representations with the same empty table. -/
theorem explicit_roots_retained :
    (encode [(0, origin false)] : Representation Bool Nat).root ≠
      (encode [(0, origin true)] : Representation Bool Nat).root := Bool.false_ne_true

example : (encode [(0, origin false)] : Representation Bool Nat).nodes =
    (encode [(0, origin true)] : Representation Bool Nat).nodes := by
  simp [encode, encodedNodes, inventory_singleton_origin, nodeFor]

end GRWTSK.Combinatorics.DirectedGraph.ParentTraceDictionary.Checks.Positive
```
