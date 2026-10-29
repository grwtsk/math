
/- source-tree-label: STL1|L|addr=00110100|role=proof_code_atom|slug=pipeline-validation-residuesurfaceatleaves|owner=canonical_owner|core=Pipeline/Validation/ResidueSurfaceAtLeaves.lean|leaf=M506970656c696e652f56616c69646174696f6e2f526573696475655375726661636541744c65617665732e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Pipeline.Validation.ResidueSurfaceAtLeaves

def surfaceId : String := "Pipeline/Validation/ResidueSurfaceAtLeaves"
def ownsDeclaredSurface : Bool := true
def crossLeafReasoningRequiresGlue : Bool := true

theorem surface_id_declared :
    surfaceId = "Pipeline/Validation/ResidueSurfaceAtLeaves" := by
  rfl

theorem owns_declared_surface :
    ownsDeclaredSurface = true := by
  rfl

end Think.Pipeline.Validation.ResidueSurfaceAtLeaves
