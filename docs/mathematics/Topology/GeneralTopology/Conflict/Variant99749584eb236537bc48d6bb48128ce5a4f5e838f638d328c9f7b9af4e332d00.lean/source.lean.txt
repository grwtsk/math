import Mathematics.Federation.Alignment

/-! # Preserved cross-project conflicts -/

namespace Mathematics.Federation

inductive ConflictKind
  | statement
  | definition
  | notation
  | dependency
  | axiomClosure
  | toolchain
  | license
  deriving DecidableEq, Repr

/-- A conflict remains explicit until independently resolved. -/
structure ConflictRecord where
  conflictId : StableId
  left : GlobalDeclarationId
  right : GlobalDeclarationId
  kind : ConflictKind
  evidenceIds : List StableId
  resolution : Option StableId
  conflictDigest : Digest
  deriving DecidableEq, Repr

def ConflictRecord.IsOpen (conflict : ConflictRecord) : Prop :=
  conflict.resolution = none

end Mathematics.Federation
