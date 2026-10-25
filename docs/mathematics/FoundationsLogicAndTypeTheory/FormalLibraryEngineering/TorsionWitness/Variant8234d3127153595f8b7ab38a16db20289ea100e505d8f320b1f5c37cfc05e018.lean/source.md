# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TorsionWitness.Variant8234d3127153595f8b7ab38a16db20289ea100e505d8f320b1f5c37cfc05e018

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `20464d24a2fd38908cb2db2a45a71214b4f4b620` · SHA-256 `8234d3127153595f8b7ab38a16db20289ea100e505d8f320b1f5c37cfc05e018`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
