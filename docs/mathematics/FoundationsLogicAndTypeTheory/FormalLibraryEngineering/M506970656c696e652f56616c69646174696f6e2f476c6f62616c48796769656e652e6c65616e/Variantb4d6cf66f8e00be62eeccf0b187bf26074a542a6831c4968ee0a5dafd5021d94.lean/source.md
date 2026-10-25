# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.M506970656c696e652f56616c69646174696f6e2f476c6f62616c48796769656e652e6c65616e.Variantb4d6cf66f8e00be62eeccf0b187bf26074a542a6831c4968ee0a5dafd5021d94

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `86df6ea3a335e7c05abff0687754fb67bcbf662c` · SHA-256 `b4d6cf66f8e00be62eeccf0b187bf26074a542a6831c4968ee0a5dafd5021d94`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean

/- source-tree-label: STL1|L|addr=1001111|role=proof_code_atom|slug=pipeline-validation-globalhygiene|owner=canonical_owner|core=Pipeline/Validation/GlobalHygiene.lean|leaf=M506970656c696e652f56616c69646174696f6e2f476c6f62616c48796769656e652e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Pipeline.Validation.GlobalHygiene

def surfaceId : String := "Pipeline/Validation/GlobalHygiene"
def ownsDeclaredSurface : Bool := true
def crossLeafReasoningRequiresGlue : Bool := true

theorem surface_id_declared :
    surfaceId = "Pipeline/Validation/GlobalHygiene" := by
  rfl

theorem owns_declared_surface :
    ownsDeclaredSurface = true := by
  rfl

end Think.Pipeline.Validation.GlobalHygiene
```
