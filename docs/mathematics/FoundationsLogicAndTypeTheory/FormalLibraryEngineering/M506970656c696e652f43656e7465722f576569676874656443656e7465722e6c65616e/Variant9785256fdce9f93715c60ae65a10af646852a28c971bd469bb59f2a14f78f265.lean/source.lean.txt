import Think.Bit0.Bit0.Bit1.Bit1.Bit1.Bit1.Bit0.Bit1.Bit0.M506970656c696e652f43656e7465722f436865636b706f696e74732e6c65616e


/- source-tree-label: STL1|L|addr=101001|role=proof_code_atom|slug=pipeline-center-weightedcenter|owner=canonical_owner|core=Pipeline/Center/WeightedCenter.lean|leaf=M506970656c696e652f43656e7465722f576569676874656443656e7465722e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Pipeline.Center

def centerIndex : Nat :=
  FWR.Pipeline.CenterWeighted.Phase.centerIndex

def phaseCount : Nat :=
  FWR.Pipeline.CenterWeighted.Phase.phaseCount

def centerWeight (p : Think.PhaseId) : Nat :=
  p.centerWeight

theorem centerWeight_positive (p : Think.PhaseId) :
    0 < centerWeight p := by
  exact FWR.Pipeline.CenterWeighted.centerWeight_positive p

end Think.Pipeline.Center
