import Mathematics.Refactor.Constraint

/-! # Deterministic constrained partitions -/

namespace Mathematics.Refactor

open Mathematics

structure LexicographicObjective where
  hardPolicyFailures : Nat
  elementCountPenalty : Nat
  largestElement : Nat
  contextFrontierSize : Nat
  additionalImports : Nat
  compatibilityFacades : Nat
  changedBytes : Nat
  stableTieBreak : String
  deriving DecidableEq, Repr, Inhabited

structure Partition where
  assignments : Array Mathematics.Element.ModuleAssignment
  constraints : Array Constraint
  objective : LexicographicObjective
  importGraphDigest : Digest
  deterministic : Bool
  acyclic : Bool
  deriving DecidableEq, Repr

end Mathematics.Refactor
