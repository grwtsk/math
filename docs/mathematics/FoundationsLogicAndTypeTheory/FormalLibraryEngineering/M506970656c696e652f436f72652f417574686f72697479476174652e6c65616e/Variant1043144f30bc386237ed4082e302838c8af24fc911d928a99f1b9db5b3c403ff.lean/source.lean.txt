
/- source-tree-label: STL1|L|addr=1110011|role=proof_code_atom|slug=pipeline-core-authoritygate|owner=canonical_owner|core=Pipeline/Core/AuthorityGate.lean|leaf=M506970656c696e652f436f72652f417574686f72697479476174652e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Pipeline.Core.AuthorityGate

def surfaceId : String := "Pipeline/Core/AuthorityGate"
def ownsDeclaredSurface : Bool := true
def crossLeafReasoningRequiresGlue : Bool := true

theorem surface_id_declared :
    surfaceId = "Pipeline/Core/AuthorityGate" := by
  rfl

theorem owns_declared_surface :
    ownsDeclaredSurface = true := by
  rfl

end Think.Pipeline.Core.AuthorityGate
