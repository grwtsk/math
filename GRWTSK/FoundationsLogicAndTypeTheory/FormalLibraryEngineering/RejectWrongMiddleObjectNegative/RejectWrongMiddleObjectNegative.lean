import GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProofEvidence.GraphHodgePortCore

open GRWTSK.Algebra.KTheory.FormalKK
universe v
variable (T : BivariantTheory.{0,v} Nat)
-- Hostile mutation: the second correspondence starts at 2 rather than 1.
example (α : T.Corr 0 1) (β : T.Corr 2 3) : T.Corr 0 3 :=
  T.product α β
