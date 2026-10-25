# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.M506970656c696e652f476c75652f456d6c426f756e64617279476c75652e6c65616e.Variant644bd09c0e0b8cf9481bece70a023a2f247a39d1d2c185201d38abf0bbeb5dcc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fc55c2c77b867236ed426e5459698df41b60cffd` · SHA-256 `644bd09c0e0b8cf9481bece70a023a2f247a39d1d2c185201d38abf0bbeb5dcc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean

/- source-tree-label: STL1|L|addr=01110100|role=proof_code_atom|slug=pipeline-glue-emlboundaryglue|owner=canonical_owner|core=Pipeline/Glue/EmlBoundaryGlue.lean|leaf=M506970656c696e652f476c75652f456d6c426f756e64617279476c75652e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Pipeline.Glue.EmlBoundaryGlue

def surfaceId : String := "Pipeline/Glue/EmlBoundaryGlue"
def ownsDeclaredSurface : Bool := true
def crossLeafReasoningRequiresGlue : Bool := true

theorem surface_id_declared :
    surfaceId = "Pipeline/Glue/EmlBoundaryGlue" := by
  rfl

theorem owns_declared_surface :
    ownsDeclaredSurface = true := by
  rfl

end Think.Pipeline.Glue.EmlBoundaryGlue
```
