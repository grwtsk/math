import Surface.Legacy.BinaryLogicMatrix.Gamma
import Surface.Legacy.BinaryLogicMatrix.Comparison

namespace Surface
namespace Legacy
namespace AffineTopos

structure AffineClaimBoundary where
  label : String

inductive CoverageModality
| theoremChecked
| fixtureValidated
| runtimeValidated
| visualizationOnly
| boundaryOnly
deriving DecidableEq, Repr

structure Context where
  gamma : Gamma
  foundation : LogicalFoundation
  claimBoundary : AffineClaimBoundary
  foundationVisible : foundation = gamma.logicalFoundation → True

structure Object where
  name : String
  context : Context
  trusted : Bool
  proofStatus : ClaimStatus
  claimBoundary : AffineClaimBoundary

structure Morphism (source target : Object) where
  name : String
  modality : CoverageModality
  claimBoundary : AffineClaimBoundary
  checked : Prop

structure ComparisonObject where
  left : Object
  right : Object
  metricName : String
  claimBoundary : AffineClaimBoundary
  checked : Prop

structure ComparisonTopologyDescriptor where
  comparisons : List ComparisonObject
  generatedByRelaxation : Bool
  claimBoundary : AffineClaimBoundary

theorem affineTopos_claimBoundary_visible
    (O : Object) :
    O.claimBoundary = O.claimBoundary := by
  rfl

theorem affineTopos_comparison_boundary_visible
    (C : ComparisonObject) :
    C.claimBoundary = C.claimBoundary := by
  rfl

end AffineTopos
end Legacy
end Surface
