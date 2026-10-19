
/- source-tree-label: STL1|L|addr=10010001|role=proof_code_atom|slug=pipeline-glue-spectralsphericalglue|owner=canonical_owner|core=Pipeline/Glue/SpectralSphericalGlue.lean|leaf=M506970656c696e652f476c75652f537065637472616c53706865726963616c476c75652e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Pipeline.Glue.SpectralSphericalGlue

def surfaceId : String := "Pipeline/Glue/SpectralSphericalGlue"
def ownsDeclaredSurface : Bool := true
def crossLeafReasoningRequiresGlue : Bool := true

theorem surface_id_declared :
    surfaceId = "Pipeline/Glue/SpectralSphericalGlue" := by
  rfl

theorem owns_declared_surface :
    ownsDeclaredSurface = true := by
  rfl

end Think.Pipeline.Glue.SpectralSphericalGlue
