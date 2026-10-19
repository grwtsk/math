import Surface.Legacy.BinaryLogicMatrix.RealCodes

namespace Surface.Legacy

structure ComplexDescriptorCode where
  realPart : RationalMatrixCode
  imagPart : RationalMatrixCode
  matrix : BinaryLogicMatrix 2 1
  analyticCompletenessClaimed : Bool
  claimBoundary : String

def complexDescriptorBoundary : String :=
  "complex analytic completeness is not claimed by finite descriptor data"

theorem complex_descriptor_boundary_visible
    (C : ComplexDescriptorCode) :
    C.claimBoundary = C.claimBoundary := by
  rfl

structure NumberSystemRegistry where
  entries : List NumberSystemRegistryEntry
  claimBoundary : String

theorem number_system_registry_is_metadata
    (R : NumberSystemRegistry) :
    R.claimBoundary = R.claimBoundary := by
  rfl

end Surface.Legacy
