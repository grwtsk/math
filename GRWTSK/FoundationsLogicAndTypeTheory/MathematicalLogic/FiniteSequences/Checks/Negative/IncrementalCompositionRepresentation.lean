import GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteSequences.IncrementalComposition

open GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteSequences.IndexedDictionary
open GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteSequences.IncrementalDictionary
open GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteSequences.IncrementalComposition

private def firstBatch : List (Nat × Nat) := [(11, 7), (12, 8)]
private def secondBatch : List (Nat × Nat) := [(13, 7)]

-- Expected type mismatch: equality after decoding does not prove packed representation equality.
example :
    appendEntries (appendEntries (pack ([] : List (Nat × Nat))) firstBatch) secondBatch =
      appendEntries (pack []) (firstBatch ++ secondBatch) :=
  unpack_appendEntries_compose (pack []) firstBatch secondBatch (pack_valid [])
