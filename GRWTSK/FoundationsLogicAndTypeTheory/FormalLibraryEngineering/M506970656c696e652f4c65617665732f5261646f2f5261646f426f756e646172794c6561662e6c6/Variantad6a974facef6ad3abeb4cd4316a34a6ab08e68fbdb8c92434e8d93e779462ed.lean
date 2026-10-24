
/- source-tree-label: STL1|L|addr=01100001|role=proof_code_atom|slug=pipeline-leaves-rado-radoboundaryleaf|owner=canonical_owner|core=Pipeline/Leaves/Rado/RadoBoundaryLeaf.lean|leaf=M506970656c696e652f4c65617665732f5261646f2f5261646f426f756e646172794c6561662e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Pipeline.Leaves.Rado.RadoBoundaryLeaf

def surfaceId : String := "Pipeline/Leaves/Rado/RadoBoundaryLeaf"
def ownsDeclaredSurface : Bool := true
def crossLeafReasoningRequiresGlue : Bool := true

theorem surface_id_declared :
    surfaceId = "Pipeline/Leaves/Rado/RadoBoundaryLeaf" := by
  rfl

theorem owns_declared_surface :
    ownsDeclaredSurface = true := by
  rfl

end Think.Pipeline.Leaves.Rado.RadoBoundaryLeaf
