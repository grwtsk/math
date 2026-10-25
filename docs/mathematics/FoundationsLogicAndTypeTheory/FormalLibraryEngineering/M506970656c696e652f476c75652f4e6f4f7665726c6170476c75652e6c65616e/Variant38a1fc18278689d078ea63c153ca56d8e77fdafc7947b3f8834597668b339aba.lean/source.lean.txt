
/- source-tree-label: STL1|L|addr=0001100|role=proof_code_atom|slug=pipeline-glue-nooverlapglue|owner=canonical_owner|core=Pipeline/Glue/NoOverlapGlue.lean|leaf=M506970656c696e652f476c75652f4e6f4f7665726c6170476c75652e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Pipeline.Glue.NoOverlapGlue

def surfaceId : String := "Pipeline/Glue/NoOverlapGlue"
def ownsDeclaredSurface : Bool := true
def crossLeafReasoningRequiresGlue : Bool := true

theorem surface_id_declared :
    surfaceId = "Pipeline/Glue/NoOverlapGlue" := by
  rfl

theorem owns_declared_surface :
    ownsDeclaredSurface = true := by
  rfl

end Think.Pipeline.Glue.NoOverlapGlue
