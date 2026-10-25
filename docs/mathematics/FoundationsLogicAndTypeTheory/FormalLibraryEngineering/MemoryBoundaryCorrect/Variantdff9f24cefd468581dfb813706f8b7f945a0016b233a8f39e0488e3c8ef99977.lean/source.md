# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MemoryBoundaryCorrect.Variantdff9f24cefd468581dfb813706f8b7f945a0016b233a8f39e0488e3c8ef99977

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6cb2fdff5940200829c800bd2280652adac233d0` · SHA-256 `dff9f24cefd468581dfb813706f8b7f945a0016b233a8f39e0488e3c8ef99977`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
