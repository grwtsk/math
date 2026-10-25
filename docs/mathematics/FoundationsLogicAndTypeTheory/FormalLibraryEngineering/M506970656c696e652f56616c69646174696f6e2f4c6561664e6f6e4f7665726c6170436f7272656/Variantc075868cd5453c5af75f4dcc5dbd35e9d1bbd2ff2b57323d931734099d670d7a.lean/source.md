# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.M506970656c696e652f56616c69646174696f6e2f4c6561664e6f6e4f7665726c6170436f7272656.Variantc075868cd5453c5af75f4dcc5dbd35e9d1bbd2ff2b57323d931734099d670d7a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5929812deff3fa93afab01971f9ac0b6d5816700` · SHA-256 `c075868cd5453c5af75f4dcc5dbd35e9d1bbd2ff2b57323d931734099d670d7a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean

/- source-tree-label: STL1|L|addr=00110100|role=proof_code_atom|slug=pipeline-validation-leafnonoverlapcorrect|owner=canonical_owner|core=Pipeline/Validation/LeafNonOverlapCorrect.lean|leaf=M506970656c696e652f56616c69646174696f6e2f4c6561664e6f6e4f7665726c6170436f72726563742e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Pipeline.Validation.LeafNonOverlapCorrect

def surfaceId : String := "Pipeline/Validation/LeafNonOverlapCorrect"
def ownsDeclaredSurface : Bool := true
def crossLeafReasoningRequiresGlue : Bool := true

theorem surface_id_declared :
    surfaceId = "Pipeline/Validation/LeafNonOverlapCorrect" := by
  rfl

theorem owns_declared_surface :
    ownsDeclaredSurface = true := by
  rfl

end Think.Pipeline.Validation.LeafNonOverlapCorrect
```
