
/- source-tree-label: STL1|L|addr=0110001|role=proof_code_atom|slug=pipeline-validation-noforbiddenclaims|owner=canonical_owner|core=Pipeline/Validation/NoForbiddenClaims.lean|leaf=M506970656c696e652f56616c69646174696f6e2f4e6f466f7262696464656e436c61696d732e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Pipeline.Validation.NoForbiddenClaims

def surfaceId : String := "Pipeline/Validation/NoForbiddenClaims"
def ownsDeclaredSurface : Bool := true
def crossLeafReasoningRequiresGlue : Bool := true

theorem surface_id_declared :
    surfaceId = "Pipeline/Validation/NoForbiddenClaims" := by
  rfl

theorem owns_declared_surface :
    ownsDeclaredSurface = true := by
  rfl

end Think.Pipeline.Validation.NoForbiddenClaims
