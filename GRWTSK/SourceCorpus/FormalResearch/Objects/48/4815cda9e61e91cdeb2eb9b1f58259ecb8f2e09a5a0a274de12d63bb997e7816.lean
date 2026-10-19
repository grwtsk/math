import Think.Bit0.Bit0.Bit0.Bit0.Bit0.Bit1.Bit1.M506970656c696e652f43656e7465722f436f6d7072657373656453657175656e63652e6c65616e


/- source-tree-label: STL1|L|addr=001111010|role=proof_code_atom|slug=pipeline-center-checkpoints|owner=canonical_owner|core=Pipeline/Center/Checkpoints.lean|leaf=M506970656c696e652f43656e7465722f436865636b706f696e74732e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Pipeline.Center

abbrev Checkpoint := FWR.Pipeline.CenterWeighted.Checkpoint

def strictCheckpoints : List Checkpoint :=
  FWR.Pipeline.CenterWeighted.strictCheckpoints

def checkpointResidue (c : Checkpoint) : Think.Residue :=
  c.residue

theorem strictCheckpoints_count :
    strictCheckpoints.length = 9 := by
  rfl

end Think.Pipeline.Center
