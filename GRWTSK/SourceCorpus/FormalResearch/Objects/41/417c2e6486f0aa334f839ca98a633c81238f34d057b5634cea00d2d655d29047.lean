import Think.Bit0.Bit0.Bit1.Bit1.Bit1.Bit0.Bit0.Bit0.M506970656c696e652f43656e7465722f42726169642e6c65616e


/- source-tree-label: STL1|L|addr=01101011|role=proof_code_atom|slug=pipeline-center-fixedpointloop|owner=canonical_owner|core=Pipeline/Center/FixedPointLoop.lean|leaf=M506970656c696e652f43656e7465722f4669786564506f696e744c6f6f702e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Pipeline.Center

def fixedPointPhases : List Think.PhaseId := [
  FWR.Pipeline.CenterWeighted.Phase.residueExtraction,
  FWR.Pipeline.CenterWeighted.Phase.residueContainment,
  FWR.Pipeline.CenterWeighted.Phase.cleanProjection,
  FWR.Pipeline.CenterWeighted.Phase.reverseSectionReplay,
  FWR.Pipeline.CenterWeighted.Phase.forwardReplay,
  FWR.Pipeline.CenterWeighted.Phase.fixedPointComparison,
  FWR.Pipeline.CenterWeighted.Phase.boundaryReport
]

theorem fixedPointPhases_count :
    fixedPointPhases.length = 7 := by
  rfl

theorem fixedPointPhase_centerControlled :
    ∀ p ∈ fixedPointPhases, p ∈ spine := by
  intro p _hp
  exact spine_complete p

end Think.Pipeline.Center
