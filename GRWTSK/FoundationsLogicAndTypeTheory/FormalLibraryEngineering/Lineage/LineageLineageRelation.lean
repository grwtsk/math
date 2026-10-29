import Mathematics.Federation.GlobalId

/-! # Declaration lineage -/

namespace Mathematics.Federation

inductive LineageRelation
  | unchanged
  | renamed
  | moved
  | generalized
  | specialized
  | split
  | merged
  | deleted
  deriving DecidableEq, Repr

/-- Lineage records evolution without identifying different declarations. -/
structure DeclarationLineageEdge where
  source : GlobalDeclarationId
  target : GlobalDeclarationId
  relation : LineageRelation
  evidenceDigest : Digest
  authority : String
  deriving DecidableEq, Repr

end Mathematics.Federation
