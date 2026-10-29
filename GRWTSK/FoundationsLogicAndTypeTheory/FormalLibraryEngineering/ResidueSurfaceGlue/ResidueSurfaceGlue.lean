
/- source-tree-label: STL1|L|addr=10111010|role=proof_code_atom|slug=pipeline-glue-residuesurfaceglue|owner=canonical_owner|core=Pipeline/Glue/ResidueSurfaceGlue.lean|leaf=M506970656c696e652f476c75652f5265736964756553757266616365476c75652e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Pipeline.Glue.ResidueSurfaceGlue

def surfaceId : String := "Pipeline/Glue/ResidueSurfaceGlue"
def ownsDeclaredSurface : Bool := true
def crossLeafReasoningRequiresGlue : Bool := true

theorem surface_id_declared :
    surfaceId = "Pipeline/Glue/ResidueSurfaceGlue" := by
  rfl

theorem owns_declared_surface :
    ownsDeclaredSurface = true := by
  rfl

end Think.Pipeline.Glue.ResidueSurfaceGlue
