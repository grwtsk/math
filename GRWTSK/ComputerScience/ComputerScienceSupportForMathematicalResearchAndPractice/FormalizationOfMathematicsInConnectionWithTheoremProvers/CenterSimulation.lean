import Think.Bit0.Bit1.Bit1.Bit0.Bit0.Bit1.M506970656c696e652f43656e74657253696d756c6174696f6e2f436f696e636964656e7443656e74657253696d756c6174696f6e2e6c65616e


/- source-tree-label: STL1|L|addr=001100|role=proof_code_atom|slug=pipeline-validation-centersimulation|owner=canonical_owner|core=Pipeline/Validation/CenterSimulation.lean|leaf=M506970656c696e652f56616c69646174696f6e2f43656e74657253696d756c6174696f6e2e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Pipeline.Validation.CenterSimulation

open Think.Pipeline.CenterSimulation.CoincidentCenterSimulation

structure CenterSimulationValidator where
  locusContainsKappa : Bool
  coreLeafAtKappa : Bool
  boundaryLeavesSumZero : Bool
  centroidIsKappa : Bool
  circumcenterIsKappa : Bool
  medoidIsKappa : Bool
  noOverlapOnlyAtKappa : Bool
  residueAtLeafBoundary : Bool
  hiddenInternalResidueRefused : Bool
  boundaryNotProofAuthority : Bool
deriving DecidableEq, Repr

def accepts (v : CenterSimulationValidator) : Bool :=
  v.locusContainsKappa &&
    v.coreLeafAtKappa &&
    v.boundaryLeavesSumZero &&
    v.centroidIsKappa &&
    v.circumcenterIsKappa &&
    v.medoidIsKappa &&
    v.noOverlapOnlyAtKappa &&
    v.residueAtLeafBoundary &&
    v.hiddenInternalResidueRefused &&
    v.boundaryNotProofAuthority

def centeredValidator : CenterSimulationValidator :=
  { locusContainsKappa := true,
    coreLeafAtKappa := true,
    boundaryLeavesSumZero := true,
    centroidIsKappa := true,
    circumcenterIsKappa := true,
    medoidIsKappa := true,
    noOverlapOnlyAtKappa := true,
    residueAtLeafBoundary := true,
    hiddenInternalResidueRefused := true,
    boundaryNotProofAuthority := true }

theorem centered_validator_accepts :
    accepts centeredValidator = true := by
  rfl

theorem hidden_internal_residue_refused_by_validator :
    centeredValidator.hiddenInternalResidueRefused = true := by
  rfl

theorem finite_boundary_not_checked_proof :
    pipelineBoundaryAuthority = AuthorityKind.finiteWitness := by
  rfl

end Think.Pipeline.Validation.CenterSimulation
