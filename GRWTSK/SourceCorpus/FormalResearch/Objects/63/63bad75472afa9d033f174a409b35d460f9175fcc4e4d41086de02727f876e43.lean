import Think.Validation.TargetNonclaims

set_option autoImplicit false

namespace Think.Validation

structure ImportClosureWitness where
  root : Think.Target
  phaseCount : Nat
  residueCount : Nat

def importClosureWitness : ImportClosureWitness :=
  { root := FWR.Target.CenterWeightedPipeline
    phaseCount := Think.centerSpine.length
    residueCount := Think.Residues.ledger.length }

theorem importClosureWitness_root :
    importClosureWitness.root = FWR.Target.CenterWeightedPipeline := by
  rfl

end Think.Validation
