# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.M506970656c696e652f4c65617665732f4c6561664e6f6e4f7665726c61702e6c65616e.Variantec72d7c56cbdc0e2ee144ecc94cd58ff8feaa04789f6debcac77c36940f53c5b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `499b2303a2bff9e08b6a7caee45df55f965127ca` · SHA-256 `ec72d7c56cbdc0e2ee144ecc94cd58ff8feaa04789f6debcac77c36940f53c5b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean

/- source-tree-label: STL1|L|addr=00001000|role=proof_code_atom|slug=pipeline-leaves-leafnonoverlap|owner=canonical_owner|core=Pipeline/Leaves/LeafNonOverlap.lean|leaf=M506970656c696e652f4c65617665732f4c6561664e6f6e4f7665726c61702e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Pipeline.Leaves.LeafNonOverlap

def surfaceId : String := "Pipeline/Leaves/LeafNonOverlap"
def ownsDeclaredSurface : Bool := true
def crossLeafReasoningRequiresGlue : Bool := true

theorem surface_id_declared :
    surfaceId = "Pipeline/Leaves/LeafNonOverlap" := by
  rfl

theorem owns_declared_surface :
    ownsDeclaredSurface = true := by
  rfl

end Think.Pipeline.Leaves.LeafNonOverlap
```
