
/- source-tree-label: STL1|L|addr=10111011|role=proof_code_atom|slug=pipeline-leaves-pipelineleaf|owner=canonical_owner|core=Pipeline/Leaves/PipelineLeaf.lean|leaf=M506970656c696e652f4c65617665732f506970656c696e654c6561662e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Pipeline.Leaves.PipelineLeaf

def surfaceId : String := "Pipeline/Leaves/PipelineLeaf"
def ownsDeclaredSurface : Bool := true
def crossLeafReasoningRequiresGlue : Bool := true

theorem surface_id_declared :
    surfaceId = "Pipeline/Leaves/PipelineLeaf" := by
  rfl

theorem owns_declared_surface :
    ownsDeclaredSurface = true := by
  rfl

end Think.Pipeline.Leaves.PipelineLeaf
