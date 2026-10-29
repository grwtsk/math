import Mathematics.Core.SemanticIdentity

/-! # Oracle progression kinds -/

namespace Mathematics.Progression

inductive StateKind
  | prompt
  | oracleQuery
  | oracleResult
  | modelProposal
  | agreement
  | validation
  | acceptedEffect
  deriving DecidableEq, Repr

end Mathematics.Progression
