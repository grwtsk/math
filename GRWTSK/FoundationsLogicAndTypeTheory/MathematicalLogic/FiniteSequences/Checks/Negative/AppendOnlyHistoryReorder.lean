import GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteSequences.AppendOnlyHistory

open GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteSequences.AppendOnlyHistory

-- Expected type mismatch: reflexive prefix acceptance cannot certify reordered history.
example : checkPrefix ([1, 2] : List Nat) [2, 1] = true :=
  checkPrefix_refl ([1, 2] : List Nat)
