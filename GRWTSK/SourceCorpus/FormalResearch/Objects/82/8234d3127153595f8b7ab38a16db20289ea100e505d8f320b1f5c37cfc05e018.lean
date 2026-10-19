import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.PrimeCompact
import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.MemoryCore.Witness

set_option autoImplicit false

namespace Think.RadoProjectedModularHeatflow.TorsionWitness

structure TorsionRadoWitness where
  witness : Think.RadoProjectedModularHeatflow.MemoryCore.BoundaryWitness
  compactLabel : String
  torsionResidueClass : String
  coefficientTarget : Int
  attachedToBridge : witness.witness.side = Think.RadoProjectedModularHeatflow.MemoryCore.BoundarySide.bridge
  cancelsTorsionResidue : Prop

def TorsionRadoWitness.admitted (W : TorsionRadoWitness) : Prop :=
  W.cancelsTorsionResidue

theorem torsion_witness_is_bridge
    (W : TorsionRadoWitness) :
    W.witness.witness.side = Think.RadoProjectedModularHeatflow.MemoryCore.BoundarySide.bridge := by
  exact W.attachedToBridge

end Think.RadoProjectedModularHeatflow.TorsionWitness
