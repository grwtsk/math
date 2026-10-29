
/- source-tree-label: STL1|L|addr=11000011|role=proof_code_atom|slug=pipeline-glue-leaftolatticeglue|owner=canonical_owner|core=Pipeline/Glue/LeafToLatticeGlue.lean|leaf=M506970656c696e652f476c75652f4c656166546f4c617474696365476c75652e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Pipeline.Glue.LeafToLatticeGlue

def surfaceId : String := "Pipeline/Glue/LeafToLatticeGlue"
def ownsDeclaredSurface : Bool := true
def crossLeafReasoningRequiresGlue : Bool := true

theorem surface_id_declared :
    surfaceId = "Pipeline/Glue/LeafToLatticeGlue" := by
  rfl

theorem owns_declared_surface :
    ownsDeclaredSurface = true := by
  rfl

end Think.Pipeline.Glue.LeafToLatticeGlue
