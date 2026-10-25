# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WitnessResolutionCorrect.Variantb0951f5a9059b6841804e380173f5b4f4c4b06dc5fcf074f4a965801ac042298

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3e50fe736e7c192d266d61d25669262a3f67a0fd` · SHA-256 `b0951f5a9059b6841804e380173f5b4f4c4b06dc5fcf074f4a965801ac042298`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
