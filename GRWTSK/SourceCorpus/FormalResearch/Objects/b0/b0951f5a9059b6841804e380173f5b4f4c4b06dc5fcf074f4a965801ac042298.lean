import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.MemoryCore.Witness

set_option autoImplicit false

namespace Think.Validation.WitnessResolutionCorrect

theorem inserted_boundary_witness_is_bridge
    (w : Think.RadoProjectedModularHeatflow.MemoryCore.BoundaryWitness) :
    w.witness.side = Think.RadoProjectedModularHeatflow.MemoryCore.BoundarySide.bridge :=
  Think.RadoProjectedModularHeatflow.MemoryCore.boundary_witness_is_bridge w

theorem inserted_boundary_witness_targets_residue
    (w : Think.RadoProjectedModularHeatflow.MemoryCore.BoundaryWitness)
    (R : Think.RadoProjectedModularHeatflow.MemoryCore.BoundaryResidue)
    (h : w.targetTreeNode = R.treeNode) :
    w.insertedForResidue R :=
  h

end Think.Validation.WitnessResolutionCorrect
