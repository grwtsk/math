import Think.Pipeline.Center.InnerOuterHeatflow

set_option autoImplicit false

namespace Think.Validation.MemoryBoundaryCorrect

theorem inner_boundary_has_negative_polarity :
    Think.RadoProjectedModularHeatflow.MemoryCore.BoundarySide.inner.polarity = -1 :=
  Think.RadoProjectedModularHeatflow.MemoryCore.inner_polarity

theorem bridge_boundary_has_zero_polarity :
    Think.RadoProjectedModularHeatflow.MemoryCore.BoundarySide.bridge.polarity = 0 :=
  Think.RadoProjectedModularHeatflow.MemoryCore.bridge_polarity

theorem outer_boundary_has_positive_polarity :
    Think.RadoProjectedModularHeatflow.MemoryCore.BoundarySide.outer.polarity = 1 :=
  Think.RadoProjectedModularHeatflow.MemoryCore.outer_polarity

theorem default_boundary_memory_witness_has_residue :
    (Think.Pipeline.Center.InnerOuterHeatflow.finalWitness
      Think.Pipeline.Center.InnerOuterHeatflow.defaultContext).hasResidue = true :=
  Think.Pipeline.Center.InnerOuterHeatflow.finalWitness_hasResidue
    Think.Pipeline.Center.InnerOuterHeatflow.defaultContext

end Think.Validation.MemoryBoundaryCorrect
