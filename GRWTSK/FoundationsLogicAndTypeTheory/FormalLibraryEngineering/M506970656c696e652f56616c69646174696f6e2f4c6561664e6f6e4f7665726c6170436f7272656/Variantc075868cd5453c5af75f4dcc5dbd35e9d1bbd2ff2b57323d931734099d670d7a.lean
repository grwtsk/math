
/- source-tree-label: STL1|L|addr=00110100|role=proof_code_atom|slug=pipeline-validation-leafnonoverlapcorrect|owner=canonical_owner|core=Pipeline/Validation/LeafNonOverlapCorrect.lean|leaf=M506970656c696e652f56616c69646174696f6e2f4c6561664e6f6e4f7665726c6170436f72726563742e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Pipeline.Validation.LeafNonOverlapCorrect

def surfaceId : String := "Pipeline/Validation/LeafNonOverlapCorrect"
def ownsDeclaredSurface : Bool := true
def crossLeafReasoningRequiresGlue : Bool := true

theorem surface_id_declared :
    surfaceId = "Pipeline/Validation/LeafNonOverlapCorrect" := by
  rfl

theorem owns_declared_surface :
    ownsDeclaredSurface = true := by
  rfl

end Think.Pipeline.Validation.LeafNonOverlapCorrect
