# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.M506970656c696e652f436f72652f436f6e74726f6c43656e7465722e6c65616e.Varianta3a94fb7b63a6ec68b020cbfc0a26ae18d0baf2c8baa64c67b60a6b32a22f4b6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `186d7ceb5ce48e2ca5dac57568b39844d77a9ffc` · SHA-256 `a3a94fb7b63a6ec68b020cbfc0a26ae18d0baf2c8baa64c67b60a6b32a22f4b6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean

/- source-tree-label: STL1|L|addr=00111010|role=proof_code_atom|slug=pipeline-core-controlcenter|owner=canonical_owner|core=Pipeline/Core/ControlCenter.lean|leaf=M506970656c696e652f436f72652f436f6e74726f6c43656e7465722e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Pipeline.Core.ControlCenter

def surfaceId : String := "Pipeline/Core/ControlCenter"
def ownsDeclaredSurface : Bool := true
def crossLeafReasoningRequiresGlue : Bool := true

theorem surface_id_declared :
    surfaceId = "Pipeline/Core/ControlCenter" := by
  rfl

theorem owns_declared_surface :
    ownsDeclaredSurface = true := by
  rfl

end Think.Pipeline.Core.ControlCenter
```
