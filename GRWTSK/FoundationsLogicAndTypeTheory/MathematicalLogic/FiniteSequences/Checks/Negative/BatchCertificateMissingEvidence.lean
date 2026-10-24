import GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteSequences.BatchCertificate

open GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteSequences.DecisionCertificate
open GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteSequences.BatchCertificate

-- Expected type mismatch: old evidence proves length zero of [], not of the full appended history.
example : Certificate Nat Nat :=
  { entries := [(11, 7)]
    predicate := emptyHistoryCertificate.predicate
    evidence := emptyHistoryCertificate.evidence }
