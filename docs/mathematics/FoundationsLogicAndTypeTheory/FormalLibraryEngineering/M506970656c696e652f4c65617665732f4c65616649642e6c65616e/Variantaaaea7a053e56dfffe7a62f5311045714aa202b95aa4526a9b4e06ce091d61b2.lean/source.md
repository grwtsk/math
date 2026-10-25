# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.M506970656c696e652f4c65617665732f4c65616649642e6c65616e.Variantaaaea7a053e56dfffe7a62f5311045714aa202b95aa4526a9b4e06ce091d61b2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1524e47a13539bc8e98a37d6a93075a8ad05105d` · SHA-256 `aaaea7a053e56dfffe7a62f5311045714aa202b95aa4526a9b4e06ce091d61b2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean

/- source-tree-label: STL1|L|addr=11111000|role=proof_code_atom|slug=pipeline-leaves-leafid|owner=canonical_owner|core=Pipeline/Leaves/LeafId.lean|leaf=M506970656c696e652f4c65617665732f4c65616649642e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Pipeline.Leaves.LeafId

def surfaceId : String := "Pipeline/Leaves/LeafId"
def ownsDeclaredSurface : Bool := true
def crossLeafReasoningRequiresGlue : Bool := true

theorem surface_id_declared :
    surfaceId = "Pipeline/Leaves/LeafId" := by
  rfl

theorem owns_declared_surface :
    ownsDeclaredSurface = true := by
  rfl

end Think.Pipeline.Leaves.LeafId
```
