
/- source-tree-label: STL1|L|addr=0110100110|role=proof_code_atom|slug=pipeline-leaves-rado-radoheatflow|owner=canonical_owner|core=Pipeline/Leaves/Rado/RadoHeatflow.lean|leaf=M506970656c696e652f4c65617665732f5261646f2f5261646f48656174666c6f772e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Pipeline.Leaves.Rado.RadoHeatflow

def surfaceId : String := "Pipeline/Leaves/Rado/RadoHeatflow"
def ownsDeclaredSurface : Bool := true
def crossLeafReasoningRequiresGlue : Bool := true

theorem surface_id_declared :
    surfaceId = "Pipeline/Leaves/Rado/RadoHeatflow" := by
  rfl

theorem owns_declared_surface :
    ownsDeclaredSurface = true := by
  rfl

end Think.Pipeline.Leaves.Rado.RadoHeatflow
