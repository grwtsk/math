import Think.Bit0.Bit0.Bit0.Bit1.Bit1.Bit0.Bit0.M506970656c696e652f5068617365732f5068617365537065632e6c65616e


/- source-tree-label: STL1|L|addr=0101001101|role=proof_code_atom|slug=pipeline-phases-phasetable|owner=canonical_owner|core=Pipeline/Phases/PhaseTable.lean|leaf=M506970656c696e652f5068617365732f50686173655461626c652e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Pipeline.Phases

def phaseTable : List PhaseSpec :=
  Think.centerSpine.map PhaseSpec.ofPhase

def allPhaseModules : List Think.PhaseId :=
  Think.centerSpine

theorem phaseTable_count :
    phaseTable.length = 61 := by
  rfl

theorem allPhaseModules_count :
    allPhaseModules.length = 61 := by
  rfl

theorem allPhaseModules_eq_centerSpine :
    allPhaseModules = Think.centerSpine := by
  rfl

def phase37Spec : PhaseSpec :=
  PhaseSpec.ofPhase FWR.Pipeline.CenterWeighted.Phase.weightScoring

theorem phase37Spec_mirror :
    phase37Spec.mirror = 23 := by
  rfl

theorem phase37Spec_weight :
    phase37Spec.weight = 12 := by
  rfl

end Think.Pipeline.Phases
