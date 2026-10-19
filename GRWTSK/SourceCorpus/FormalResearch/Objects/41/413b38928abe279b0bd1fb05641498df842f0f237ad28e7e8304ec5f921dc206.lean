
/- source-tree-label: STL1|L|addr=10111010|role=proof_code_atom|slug=pipeline-reports-refereeverdict|owner=canonical_owner|core=Pipeline/Reports/RefereeVerdict.lean|leaf=M506970656c696e652f5265706f7274732f52656665726565566572646963742e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Pipeline.Reports.RefereeVerdict

def surfaceId : String := "Pipeline/Reports/RefereeVerdict"
def ownsDeclaredSurface : Bool := true
def crossLeafReasoningRequiresGlue : Bool := true

theorem surface_id_declared :
    surfaceId = "Pipeline/Reports/RefereeVerdict" := by
  rfl

theorem owns_declared_surface :
    ownsDeclaredSurface = true := by
  rfl

end Think.Pipeline.Reports.RefereeVerdict
