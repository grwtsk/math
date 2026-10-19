
/- source-tree-label: STL1|L|addr=0111011|role=proof_code_atom|slug=pipeline-core-digest|owner=canonical_owner|core=Pipeline/Core/Digest.lean|leaf=M506970656c696e652f436f72652f4469676573742e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Pipeline.Core.Digest

def surfaceId : String := "Pipeline/Core/Digest"
def ownsDeclaredSurface : Bool := true
def crossLeafReasoningRequiresGlue : Bool := true

theorem surface_id_declared :
    surfaceId = "Pipeline/Core/Digest" := by
  rfl

theorem owns_declared_surface :
    ownsDeclaredSurface = true := by
  rfl

end Think.Pipeline.Core.Digest
