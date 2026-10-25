# Complete source: GRWTSK.Logic.FiniteSequences.IncrementalComposition

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `144af631ff04a1fd7d7c5a672ff19405a957d875` · SHA-256 `7d28159f9585d711ec34af5856a2e82c4b21a998c90ff688a1f85c66f3bd6564`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Mathlib and Lean imports retain upstream authorship and licensing. -/
import GRWTSK.Logic.FiniteSequences.IncrementalDictionary

/-!
# Decoded composition of incremental dictionaries

Appending two batches in succession and appending their concatenation reconstruct
the same history, assuming valid original references. This follows from the actual
incremental decoder law, valid-reference preservation, and list associativity.

The packed representations can still differ: new-slot order is determined by
rightmost payload occurrences within each batch. The concrete counterexample
below has different dictionaries and references while decoding the same complete
history. Decoder equality therefore supplies a semantic composition law, not
equality of numeric representations, serialized bytes, or external cache states.
No runtime/hash/compression/filesystem refinement is asserted.
-/

set_option autoImplicit false

namespace GRWTSK.Logic.FiniteSequences.IncrementalComposition

open IndexedDictionary IncrementalDictionary

variable {Key Payload : Type*} [DecidableEq Payload]

/-- The actual incremental decoder composes under valid original references. -/
theorem unpack_appendEntries_compose (original : Packed Key Payload)
    (first second : List (Key × Payload)) (hvalid : Valid original) :
    unpack (appendEntries (appendEntries original first) second) =
      unpack (appendEntries original (first ++ second)) := by
  rw [unpack_appendEntries _ _ (appendEntries_valid original first hvalid),
    unpack_appendEntries original first hvalid,
    unpack_appendEntries original (first ++ second) hvalid]
  simp only [Option.map_map, Function.comp_def, List.append_assoc]

/-- Starting with the actual exact pack reconstructs all old and appended occurrences. -/
theorem unpack_appendEntries_twice_pack (oldRows first second : List (Key × Payload)) :
    unpack (appendEntries (appendEntries (pack oldRows) first) second) =
      some (oldRows ++ (first ++ second)) := by
  rw [unpack_appendEntries_compose _ _ _ (pack_valid oldRows), unpack_appendEntries_pack]

/-- Equal actual decoded histories need not identify their dictionary slots or references. -/
theorem sequential_representation_counterexample :
    let original : Packed Nat Nat := pack []
    let first : List (Nat × Nat) := [(11, 7), (12, 8)]
    let second : List (Nat × Nat) := [(13, 7)]
    let sequential := appendEntries (appendEntries original first) second
    let combined := appendEntries original (first ++ second)
    sequential.dictionary = [7, 8] ∧
      combined.dictionary = [8, 7] ∧
      sequential.references = [(11, 0), (12, 1), (13, 0)] ∧
      combined.references = [(11, 1), (12, 0), (13, 1)] ∧
      unpack sequential = some [(11, 7), (12, 8), (13, 7)] ∧
      unpack combined = some [(11, 7), (12, 8), (13, 7)] ∧
      unpack sequential = unpack combined ∧
      sequential ≠ combined := by
  refine ⟨rfl, rfl, rfl, rfl, rfl, rfl, rfl, ?_⟩
  intro hequal
  have hdictionary := congrArg Packed.dictionary hequal
  change ([7, 8] : List Nat) = [8, 7] at hdictionary
  simp at hdictionary

end GRWTSK.Logic.FiniteSequences.IncrementalComposition
```
