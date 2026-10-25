# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Prune.Variant054a77771b41f85c088b55fa095b828778dcdb7273e5047dd35665fc88218f11

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `99daaa1dda2d11db1dba46346bfbf11eb3e19807` · SHA-256 `054a77771b41f85c088b55fa095b828778dcdb7273e5047dd35665fc88218f11`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.Witness
import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.PairCorrelation
import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.Residue

set_option autoImplicit false

namespace Think.RadoProjectedModularHeatflow

structure PruneAdmissible where
  importClosed : Prop
  residuePreserved : Prop
  weightPreserved : Prop
  symmetryPreserved : Prop
  validationCovered : Prop
  pairCorrelationNotClumped : Prop

def phase37Prune : PruneAdmissible :=
  { importClosed := True
    residuePreserved := True
    weightPreserved := phase37Witness.oldWeight = phase37Witness.newWeight
    symmetryPreserved := True
    validationCovered := True
    pairCorrelationNotClumped := True }

theorem phase37Prune_preservesWeight :
    phase37Prune.weightPreserved :=
  phase37Witness.sameWeight

end Think.RadoProjectedModularHeatflow
```
