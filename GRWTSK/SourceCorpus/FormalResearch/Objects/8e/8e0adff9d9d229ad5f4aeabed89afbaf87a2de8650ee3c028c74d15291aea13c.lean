
/- source-tree-label: STL1|L|addr=101000|role=proof_code_atom|slug=pipeline-core-proofstatus|owner=canonical_owner|core=Pipeline/Core/ProofStatus.lean|leaf=M506970656c696e652f436f72652f50726f6f665374617475732e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Pipeline.Core.ProofStatus

def surfaceId : String := "Pipeline/Core/ProofStatus"
def ownsDeclaredSurface : Bool := true
def crossLeafReasoningRequiresGlue : Bool := true

theorem surface_id_declared :
    surfaceId = "Pipeline/Core/ProofStatus" := by
  rfl

theorem owns_declared_surface :
    ownsDeclaredSurface = true := by
  rfl

end Think.Pipeline.Core.ProofStatus
