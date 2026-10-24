import Mathematics.SemiLocalDefect.WP0.Identifiers

/-!
# Exact matrix custody references

These records identify exact finite matrices and positivity-checking receipts.
They do not themselves prove positivity.
-/

namespace Mathematics.SemiLocalDefect.SoninCore

inductive PSDDecompositionKind
  | exactCholesky
  | exactLDL
  | matrixSOS
  | stieltjesRepresentation
  | intervalLDL
  | principalMinors
deriving DecidableEq, Repr

structure ExactCoefficientRingRef where
  id : CoefficientRingId
  name : String
  revision : Nat
  digest : Digest
deriving DecidableEq, Repr

structure ExactMatrixRef where
  id : MatrixId
  coefficientRing : CoefficientRingId
  rows : Nat
  cols : Nat
  basisRevision : BasisRevision
  digest : Digest
deriving DecidableEq, Repr

structure ExactPSDCompressionRef where
  matrix : ExactMatrixRef
  factor : Option ExactMatrixRef
  mechanism : PSDDecompositionKind
  proofRef : ProofId
  checkerRef : CheckerId
  checkerRevision : Nat
deriving Repr

end Mathematics.SemiLocalDefect.SoninCore
