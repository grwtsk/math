
/- source-tree-label: STL1|L|addr=0101001011|role=proof_code_atom|slug=pipeline-core-residue|owner=canonical_owner|core=Pipeline/Core/Residue.lean|leaf=M506970656c696e652f436f72652f526573696475652e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Pipeline.Core.Residue

def surfaceId : String := "Pipeline/Core/Residue"
def ownsDeclaredSurface : Bool := true
def crossLeafReasoningRequiresGlue : Bool := true

theorem surface_id_declared :
    surfaceId = "Pipeline/Core/Residue" := by
  rfl

theorem owns_declared_surface :
    ownsDeclaredSurface = true := by
  rfl

end Think.Pipeline.Core.Residue
