import Think.Bit1.Bit1.Bit1.Bit0.Bit0.Bit0.Bit0.Bit0.M506970656c696e652f43656e7465722f4d756c74696e6f6d69616c506c6163656d656e742e6c65616e


/- source-tree-label: STL1|L|addr=00111000|role=proof_code_atom|slug=pipeline-center-braid|owner=canonical_owner|core=Pipeline/Center/Braid.lean|leaf=M506970656c696e652f43656e7465722f42726169642e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Pipeline.Center

abbrev CenterPole := FWR.Pipeline.CenterWeighted.Pole

def phasePole (p : Think.PhaseId) : CenterPole :=
  p.pole

theorem phase_tied_to_spine (p : Think.PhaseId) :
    p ∈ spine := by
  exact spine_complete p

end Think.Pipeline.Center
