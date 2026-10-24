import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.ModularWeight

set_option autoImplicit false

namespace Think.RadoProjectedModularHeatflow

structure FormalQShadow where
  path : String
  truncation : Nat
  weight : Nat
  coefficientTags : List String
  modularShadowOnly : Prop

def phaseShadow (n : Nat) : FormalQShadow :=
  { path := "formal/Think/Pipeline/Phases/PhaseTable.lean"
    truncation := 60
    weight := phaseWeight n
    coefficientTags := [ "phase", "pole", "residue", "witness" ]
    modularShadowOnly := True }

theorem phaseShadow37_weight :
    (phaseShadow 37).weight = 12 := by
  rfl

end Think.RadoProjectedModularHeatflow
