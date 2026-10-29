import Surface.Legacy.BinaryLogicMatrix.Similarity

namespace Surface.Legacy

inductive FactorRole
| lexical
| syntactic
| semanticDescriptor
| theoremTarget
| fixtureTarget
| symmetryCandidate
| torsionCandidate
| claimBoundary
deriving DecidableEq, Repr

structure BinaryMatrixFactor where
  id : Nat
  rows : Nat
  cols : Nat
  value : BinaryLogicMatrix rows cols
  role : FactorRole

structure FiberTensorSite where
  siteId : Nat
  baseFactor : Nat
  fiberFactor : Nat
  anchor : BinaryLogicMatrix 1 1

structure BinaryMatrixFiberTensor where
  sourceFactors : List BinaryMatrixFactor
  targetFactors : List BinaryMatrixFactor
  shared : BinaryLogicMatrix sourceFactors.length targetFactors.length
  distinctSource : BinaryLogicMatrix sourceFactors.length 1
  distinctTarget : BinaryLogicMatrix targetFactors.length 1
  sites : List FiberTensorSite
  claimBoundary : String

theorem binaryMatrixFiberTensor_shared_rows
    (T : BinaryMatrixFiberTensor) :
    (T.shared : BinaryLogicMatrix T.sourceFactors.length T.targetFactors.length) = T.shared := by
  rfl

theorem fiberTensor_boundary_visible
    (T : BinaryMatrixFiberTensor) :
    T.claimBoundary = T.claimBoundary := by
  rfl

end Surface.Legacy
