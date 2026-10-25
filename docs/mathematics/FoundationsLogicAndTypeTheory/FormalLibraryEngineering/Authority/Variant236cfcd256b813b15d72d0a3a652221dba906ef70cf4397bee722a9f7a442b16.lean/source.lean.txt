/-! # Closed authority and geometry vocabularies for square-plane elements. -/

namespace URSM.Contracts

inductive PlaneAuthority
  | kernelTheorem
  | reviewedImportedTheorem
  | checkedBuildEvidence
  | checkedRuntimeEvidence
  | committedPolicyDecision
  | navigationOnly
  deriving DecidableEq, Repr

inductive PlaneShape
  | diagonal
  | directed
  | symmetric
  | equivalenceCandidate
  | arbitrary
  deriving DecidableEq, Repr

structure PlaneDescriptor where
  id : String
  authority : PlaneAuthority
  shape : PlaneShape
  schemaVersion : Nat
  meaningDigest : String
  deriving DecidableEq, Repr

end URSM.Contracts
