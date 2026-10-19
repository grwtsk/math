import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.Heat
import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.ModularWeight

set_option autoImplicit false

namespace Think.RadoProjectedModularHeatflow

def projectedCore : String :=
  "formal/Think/Pipeline/Center"

def centralFixedPhase : Nat :=
  30

theorem centralFixedPhase_isFixed :
    phaseMirror centralFixedPhase = centralFixedPhase := by
  rfl

end Think.RadoProjectedModularHeatflow
