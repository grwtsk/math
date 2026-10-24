import GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteSequences.DictionaryRevision

open GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteSequences.IndexedDictionary

-- Expected type mismatch: the old round-trip theorem cannot certify a reordered dictionary.
-- The dictionary lengths, reference count, and valid index bounds are unchanged.
example :
    unpack (⟨[8, 7], [(11, 0), (12, 1)]⟩ : Packed Nat Nat) =
      some [(11, 7), (12, 8)] :=
  unpack_pack [(11, 7), (12, 8)]
