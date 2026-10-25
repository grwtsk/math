# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.M506970656c696e652f4c65617665732f5261646f2f5261646f48656174666c6f772e6c65616e.Variant181e76a2e6d186b2270fa14b6e031599e6f46724e00416e3f5930f8b682b20e6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b283c0cfa5d6bb9c28e39799d3eb9712fbce1c3a` · SHA-256 `181e76a2e6d186b2270fa14b6e031599e6f46724e00416e3f5930f8b682b20e6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean

/- source-tree-label: STL1|L|addr=0110100110|role=proof_code_atom|slug=pipeline-leaves-rado-radoheatflow|owner=canonical_owner|core=Pipeline/Leaves/Rado/RadoHeatflow.lean|leaf=M506970656c696e652f4c65617665732f5261646f2f5261646f48656174666c6f772e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Pipeline.Leaves.Rado.RadoHeatflow

def surfaceId : String := "Pipeline/Leaves/Rado/RadoHeatflow"
def ownsDeclaredSurface : Bool := true
def crossLeafReasoningRequiresGlue : Bool := true

theorem surface_id_declared :
    surfaceId = "Pipeline/Leaves/Rado/RadoHeatflow" := by
  rfl

theorem owns_declared_surface :
    ownsDeclaredSurface = true := by
  rfl

end Think.Pipeline.Leaves.Rado.RadoHeatflow
```
