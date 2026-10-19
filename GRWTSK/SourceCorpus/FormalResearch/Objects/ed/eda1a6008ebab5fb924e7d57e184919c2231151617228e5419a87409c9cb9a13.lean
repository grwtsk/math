import Surface.Legacy.BinaryLogicMatrix.Stream.CurvatureBalance

namespace Surface.Legacy
namespace BinaryLogicMatrix
namespace Stream

structure TheoremCreationRequest where
  obligation : TheoremCreationObligation
  sourceWitnesses : List String
  proposedDeclarationName : String
  requiredClaimBoundaries : List String
  claimBoundary : List String

theorem theoremCreationRequest_boundary_visible
    (R : TheoremCreationRequest) :
    R.claimBoundary = R.claimBoundary :=
  rfl

end Stream
end BinaryLogicMatrix
end Surface.Legacy
