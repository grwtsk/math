import Think.SourceTree.Legacy.Residues.Basic
import Think.Pipeline.Center.Checkpoints

set_option autoImplicit false

namespace Think.Residues.Decode

def checkpoint : Think.Pipeline.Center.Checkpoint :=
  FWR.Pipeline.CenterWeighted.Checkpoint.decode

def residue : Think.Residue :=
  Think.Pipeline.Center.checkpointResidue checkpoint

theorem residue_target :
    residue.target = FWR.Target.CenterWeightedPipeline := by
  rfl

end Think.Residues.Decode
