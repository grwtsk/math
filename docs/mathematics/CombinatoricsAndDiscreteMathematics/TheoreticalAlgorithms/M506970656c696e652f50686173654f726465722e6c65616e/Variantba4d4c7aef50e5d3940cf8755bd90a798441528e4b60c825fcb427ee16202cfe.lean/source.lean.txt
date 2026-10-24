import Think.Bit0.Bit0.Bit0.Bit1.Bit1.Bit0.Bit1.M506970656c696e652f506861736549642e6c65616e


/- source-tree-label: STL1|L|addr=1000100|role=proof_code_atom|slug=pipeline-phaseorder|owner=canonical_owner|core=Pipeline/PhaseOrder.lean|leaf=M506970656c696e652f50686173654f726465722e6c65616e.lean -/

set_option autoImplicit false

namespace Think

def centerSpine : List PhaseId :=
  allPhaseIds

def phaseIndex (p : PhaseId) : Nat :=
  p.index

def phaseRecord (p : PhaseId) : PhaseRecord :=
  p.record

def phaseSpineStep (p : PhaseId) : SpineStep :=
  p.spineStep

theorem centerSpine_count :
    centerSpine.length = 61 := by
  rfl

theorem centerSpine_complete (p : PhaseId) :
    p ∈ centerSpine := by
  exact allPhaseIds_complete p

theorem centerSpine_nodup :
    centerSpine.Nodup := by
  exact allPhaseIds_nodup

theorem phaseRecord_index (p : PhaseId) :
    (phaseRecord p).index = phaseIndex p := by
  rfl

end Think
