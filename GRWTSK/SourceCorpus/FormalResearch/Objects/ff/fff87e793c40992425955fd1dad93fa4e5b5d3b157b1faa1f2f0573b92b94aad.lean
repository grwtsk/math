import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.Projection

set_option autoImplicit false

namespace Think.RadoProjectedModularHeatflow

inductive OrbitGenerator where
  | typedWreath
  | phaseReflection
  | orbitQuotient
deriving DecidableEq, Repr

structure OrbitPolicy where
  generators : List OrbitGenerator
  exactWeightSymmetry : Prop
  modularLabelsMayBeNonfaithful : Prop
deriving Repr

def sourceTreeOrbitPolicy : OrbitPolicy :=
  { generators := [ .typedWreath, .phaseReflection, .orbitQuotient ]
    exactWeightSymmetry := True
    modularLabelsMayBeNonfaithful := True }

theorem sourceTreeOrbitPolicy_hasReflection :
    OrbitGenerator.phaseReflection ∈ sourceTreeOrbitPolicy.generators := by
  decide

end Think.RadoProjectedModularHeatflow
