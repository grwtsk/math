import Think.Bit1.Bit1.Bit1.Bit0.Bit0.Bit0.Bit1.Bit0.Bit0.M506970656c696e652f42617369632e6c65616e


/- source-tree-label: STL1|L|addr=0001101|role=proof_code_atom|slug=pipeline-phaseid|owner=canonical_owner|core=Pipeline/PhaseId.lean|leaf=M506970656c696e652f506861736549642e6c65616e.lean -/

set_option autoImplicit false

namespace Think

abbrev PhaseId := FWR.Pipeline.CenterWeighted.Phase
abbrev PhaseRecord := FWR.Pipeline.CenterWeighted.PhaseRecord
abbrev SpineStep := FWR.Pipeline.CenterWeighted.SpineStep

def allPhaseIds : List PhaseId :=
  FWR.Pipeline.CenterWeighted.allPhases

theorem allPhaseIds_count :
    allPhaseIds.length = 61 := by
  rfl

theorem allPhaseIds_complete (p : PhaseId) :
    p ∈ allPhaseIds := by
  exact FWR.Pipeline.CenterWeighted.allPhases_complete p

theorem allPhaseIds_nodup :
    allPhaseIds.Nodup := by
  exact FWR.Pipeline.CenterWeighted.allPhases_nodup

end Think
