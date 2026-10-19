import Think.SourceTree.Legacy.Residues.Ledger

set_option autoImplicit false

namespace Think.Residues

def contains (r : Think.Residue) : Prop :=
  r ∈ ledger

theorem contained_target (r : Think.Residue) :
    contains r -> r.target = FWR.Target.CenterWeightedPipeline := by
  intro h
  unfold contains ledger allPipelineResidues at h
  rw [Think.pipelineResidues] at h
  rcases List.mem_append.mp h with hp | hc
  · exact Think.phaseResidues_targets_correct r hp
  · exact Think.checkpointResidues_targets_correct r hc

end Think.Residues
