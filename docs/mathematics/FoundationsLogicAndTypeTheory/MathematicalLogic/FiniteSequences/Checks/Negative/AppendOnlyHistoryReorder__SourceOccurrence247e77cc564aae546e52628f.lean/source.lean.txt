import GRWTSK.Logic.FiniteSequences.AppendOnlyHistory

open GRWTSK.Logic.FiniteSequences.AppendOnlyHistory

-- Expected type mismatch: reflexive prefix acceptance cannot certify reordered history.
example : checkPrefix ([1, 2] : List Nat) [2, 1] = true :=
  checkPrefix_refl ([1, 2] : List Nat)
