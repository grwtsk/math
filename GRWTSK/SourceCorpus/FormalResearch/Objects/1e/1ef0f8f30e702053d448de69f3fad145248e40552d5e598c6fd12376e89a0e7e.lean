import Think.Bit1.Bit0.Bit0.Bit0.Bit1.Bit0.Bit0.M506970656c696e652f50686173654f726465722e6c65616e


/- source-tree-label: STL1|L|addr=00001001|role=proof_code_atom|slug=pipeline-residue|owner=canonical_owner|core=Pipeline/Residue.lean|leaf=M506970656c696e652f526573696475652e6c65616e.lean -/

set_option autoImplicit false

namespace Think

def phaseResidues : List Residue :=
  FWR.Pipeline.CenterWeighted.phaseResidues

def checkpointResidues : List Residue :=
  FWR.Pipeline.CenterWeighted.checkpointResidues

def pipelineResidues : List Residue :=
  phaseResidues ++ checkpointResidues

theorem phaseResidues_targets_correct :
    ∀ r ∈ phaseResidues, r.target = FWR.Target.CenterWeightedPipeline := by
  exact FWR.Pipeline.CenterWeighted.phaseResidues_targets_correct

theorem checkpointResidues_targets_correct :
    ∀ r ∈ checkpointResidues, r.target = FWR.Target.CenterWeightedPipeline := by
  exact FWR.Pipeline.CenterWeighted.checkpointResidues_targets_correct

theorem pipelineResidues_count :
    pipelineResidues.length = 71 := by
  rfl

theorem pipelineResidues_targets_correct :
    ∀ r ∈ pipelineResidues, r.target = FWR.Target.CenterWeightedPipeline := by
  intro r h
  simp [pipelineResidues] at h
  cases h with
  | inl hp => exact phaseResidues_targets_correct r hp
  | inr hc => exact checkpointResidues_targets_correct r hc

end Think
