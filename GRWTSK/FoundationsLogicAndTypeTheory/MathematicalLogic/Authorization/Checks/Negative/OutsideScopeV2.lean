import GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Authorization.Basic

-- Independently specified bad grant: the compiler must reject this assertion.
example : GRWTSK.Genesis.MayAct True True (fun (_ : Unit) => False) () := by
  unfold GRWTSK.Genesis.MayAct
  decide
