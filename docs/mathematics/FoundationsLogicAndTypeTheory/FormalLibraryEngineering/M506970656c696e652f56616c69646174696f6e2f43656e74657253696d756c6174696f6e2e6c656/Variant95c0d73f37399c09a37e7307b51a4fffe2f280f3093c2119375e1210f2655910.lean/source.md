# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.M506970656c696e652f56616c69646174696f6e2f43656e74657253696d756c6174696f6e2e6c656.Variant95c0d73f37399c09a37e7307b51a4fffe2f280f3093c2119375e1210f2655910

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4d6904bea0a62699558070d7182e5bd9000b8aec` · SHA-256 `95c0d73f37399c09a37e7307b51a4fffe2f280f3093c2119375e1210f2655910`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
