import Genesis

-- Independently specified bad grant: the compiler must reject this assertion.
example : GRWTSK.Genesis.MayAct True False (fun (_ : Unit) => True) () := by
  unfold GRWTSK.Genesis.MayAct
  decide
