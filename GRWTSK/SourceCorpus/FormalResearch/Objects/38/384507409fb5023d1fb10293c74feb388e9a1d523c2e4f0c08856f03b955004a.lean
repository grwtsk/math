
/- source-tree-label: STL1|L|addr=00001011|role=proof_code_atom|slug=pipeline-residuetree-residuesurface|owner=canonical_owner|core=Pipeline/ResidueTree/ResidueSurface.lean|leaf=M506970656c696e652f52657369647565547265652f52657369647565537572666163652e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Pipeline.ResidueTree.ResidueSurface

def surfaceId : String := "Pipeline/ResidueTree/ResidueSurface"
def ownsDeclaredSurface : Bool := true
def crossLeafReasoningRequiresGlue : Bool := true

theorem surface_id_declared :
    surfaceId = "Pipeline/ResidueTree/ResidueSurface" := by
  rfl

theorem owns_declared_surface :
    ownsDeclaredSurface = true := by
  rfl

end Think.Pipeline.ResidueTree.ResidueSurface
