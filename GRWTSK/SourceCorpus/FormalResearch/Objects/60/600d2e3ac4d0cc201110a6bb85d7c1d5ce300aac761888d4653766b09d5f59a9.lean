
/- source-tree-label: STL1|L|addr=11100000|role=proof_code_atom|slug=pipeline-reports-residueledger|owner=canonical_owner|core=Pipeline/Reports/ResidueLedger.lean|leaf=M506970656c696e652f5265706f7274732f526573696475654c65646765722e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Pipeline.Reports.ResidueLedger

def surfaceId : String := "Pipeline/Reports/ResidueLedger"
def ownsDeclaredSurface : Bool := true
def crossLeafReasoningRequiresGlue : Bool := true

theorem surface_id_declared :
    surfaceId = "Pipeline/Reports/ResidueLedger" := by
  rfl

theorem owns_declared_surface :
    ownsDeclaredSurface = true := by
  rfl

end Think.Pipeline.Reports.ResidueLedger
