import GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteSequences.IncrementalDictionary

open GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteSequences.IndexedDictionary
open GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteSequences.IncrementalDictionary

private def invalid : Packed Nat Nat := ⟨[], [(11, 0)]⟩

-- Expected type mismatch: this theorem still requires Valid invalid, which is false here.
-- The expansion fills slot zero, so the original none decoding actually changes.
example : unpack (appendEntries invalid [(12, 7)]) =
    (unpack invalid).map (fun rows => rows ++ [(12, 7)]) :=
  unpack_appendEntries invalid [(12, 7)]
