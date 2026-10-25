# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.M506970656c696e652f436f72652f49642e6c65616e.Variantaa4ac0857eff3cf825ef997e87f7d820b1c115d8ddca49e8a046fa389d0da8bc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8e795162664465543b3177e68e8e0c90b02b65f1` · SHA-256 `aa4ac0857eff3cf825ef997e87f7d820b1c115d8ddca49e8a046fa389d0da8bc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean

/- source-tree-label: STL1|L|addr=0101110|role=proof_code_atom|slug=pipeline-core-id|owner=canonical_owner|core=Pipeline/Core/Id.lean|leaf=M506970656c696e652f436f72652f49642e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Pipeline.Core.Id

def surfaceId : String := "Pipeline/Core/Id"
def ownsDeclaredSurface : Bool := true
def crossLeafReasoningRequiresGlue : Bool := true

theorem surface_id_declared :
    surfaceId = "Pipeline/Core/Id" := by
  rfl

theorem owns_declared_surface :
    ownsDeclaredSurface = true := by
  rfl

end Think.Pipeline.Core.Id
```
