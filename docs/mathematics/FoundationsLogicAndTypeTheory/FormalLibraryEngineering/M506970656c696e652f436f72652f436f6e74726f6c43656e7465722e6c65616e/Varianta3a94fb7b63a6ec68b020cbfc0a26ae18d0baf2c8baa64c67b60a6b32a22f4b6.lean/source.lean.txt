
/- source-tree-label: STL1|L|addr=00111010|role=proof_code_atom|slug=pipeline-core-controlcenter|owner=canonical_owner|core=Pipeline/Core/ControlCenter.lean|leaf=M506970656c696e652f436f72652f436f6e74726f6c43656e7465722e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Pipeline.Core.ControlCenter

def surfaceId : String := "Pipeline/Core/ControlCenter"
def ownsDeclaredSurface : Bool := true
def crossLeafReasoningRequiresGlue : Bool := true

theorem surface_id_declared :
    surfaceId = "Pipeline/Core/ControlCenter" := by
  rfl

theorem owns_declared_surface :
    ownsDeclaredSurface = true := by
  rfl

end Think.Pipeline.Core.ControlCenter
