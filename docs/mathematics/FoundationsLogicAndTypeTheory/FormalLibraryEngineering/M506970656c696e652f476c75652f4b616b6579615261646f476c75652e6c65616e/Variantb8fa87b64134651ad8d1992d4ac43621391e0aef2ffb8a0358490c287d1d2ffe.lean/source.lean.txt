
/- source-tree-label: STL1|L|addr=010111111|role=proof_code_atom|slug=pipeline-glue-kakeyaradoglue|owner=canonical_owner|core=Pipeline/Glue/KakeyaRadoGlue.lean|leaf=M506970656c696e652f476c75652f4b616b6579615261646f476c75652e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Pipeline.Glue.KakeyaRadoGlue

def surfaceId : String := "Pipeline/Glue/KakeyaRadoGlue"
def ownsDeclaredSurface : Bool := true
def crossLeafReasoningRequiresGlue : Bool := true

theorem surface_id_declared :
    surfaceId = "Pipeline/Glue/KakeyaRadoGlue" := by
  rfl

theorem owns_declared_surface :
    ownsDeclaredSurface = true := by
  rfl

end Think.Pipeline.Glue.KakeyaRadoGlue
