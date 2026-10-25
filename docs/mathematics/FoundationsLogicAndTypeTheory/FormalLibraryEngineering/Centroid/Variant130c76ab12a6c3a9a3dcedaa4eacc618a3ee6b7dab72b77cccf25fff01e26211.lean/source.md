# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Centroid.Variant130c76ab12a6c3a9a3dcedaa4eacc618a3ee6b7dab72b77cccf25fff01e26211

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2176e0333c96cb1cdb303245e35e0c1a8d7f6822` · SHA-256 `130c76ab12a6c3a9a3dcedaa4eacc618a3ee6b7dab72b77cccf25fff01e26211`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.Heat
import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.ModularWeight

set_option autoImplicit false

namespace Think.RadoProjectedModularHeatflow

def projectedCore : String :=
  "formal/Think/Pipeline/Center"

def centralFixedPhase : Nat :=
  30

theorem centralFixedPhase_isFixed :
    phaseMirror centralFixedPhase = centralFixedPhase := by
  rfl

end Think.RadoProjectedModularHeatflow
```
