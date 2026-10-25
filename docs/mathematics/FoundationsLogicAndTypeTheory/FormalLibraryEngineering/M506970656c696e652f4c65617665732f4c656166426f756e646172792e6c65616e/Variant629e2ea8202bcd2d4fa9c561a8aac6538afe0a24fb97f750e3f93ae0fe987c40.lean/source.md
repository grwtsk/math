# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.M506970656c696e652f4c65617665732f4c656166426f756e646172792e6c65616e.Variant629e2ea8202bcd2d4fa9c561a8aac6538afe0a24fb97f750e3f93ae0fe987c40

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `de2acd07de14ecf59433d5e708097e6bdb485232` · SHA-256 `629e2ea8202bcd2d4fa9c561a8aac6538afe0a24fb97f750e3f93ae0fe987c40`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean

/- source-tree-label: STL1|L|addr=1100111010|role=proof_code_atom|slug=pipeline-leaves-leafboundary|owner=canonical_owner|core=Pipeline/Leaves/LeafBoundary.lean|leaf=M506970656c696e652f4c65617665732f4c656166426f756e646172792e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Pipeline.Leaves.LeafBoundary

def surfaceId : String := "Pipeline/Leaves/LeafBoundary"
def ownsDeclaredSurface : Bool := true
def crossLeafReasoningRequiresGlue : Bool := true

theorem surface_id_declared :
    surfaceId = "Pipeline/Leaves/LeafBoundary" := by
  rfl

theorem owns_declared_surface :
    ownsDeclaredSurface = true := by
  rfl

end Think.Pipeline.Leaves.LeafBoundary
```
