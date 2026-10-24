import Mathematics.Projects.Profile

/-! # Tao-associated auxiliary project fibers -/

namespace Mathematics.Projects.Tao

inductive AuxiliaryFiberKind
  | problemRegistry
  | estimateComputation
  | optimization
  | researchLog
  deriving DecidableEq, Repr

structure AuxiliaryProfile where
  base : Projects.ProjectProfile
  kind : AuxiliaryFiberKind
  candidateStatementIds : List StableId
  parameterDataIds : List StableId
  benchmarkIds : List StableId
  counterexampleSearchIds : List StableId
  theoremAuthorityExcluded : Bool := true
  profileDigest : Digest

end Mathematics.Projects.Tao
