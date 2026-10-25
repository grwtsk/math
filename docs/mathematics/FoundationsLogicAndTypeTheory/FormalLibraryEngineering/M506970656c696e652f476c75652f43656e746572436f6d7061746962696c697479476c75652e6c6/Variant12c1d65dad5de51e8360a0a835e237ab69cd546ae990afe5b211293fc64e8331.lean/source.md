# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.M506970656c696e652f476c75652f43656e746572436f6d7061746962696c697479476c75652e6c6.Variant12c1d65dad5de51e8360a0a835e237ab69cd546ae990afe5b211293fc64e8331

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0d73a66e8b4ba1e8c5afca4791f5a724450c34ab` · SHA-256 `12c1d65dad5de51e8360a0a835e237ab69cd546ae990afe5b211293fc64e8331`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean

/- source-tree-label: STL1|L|addr=100001010|role=proof_code_atom|slug=pipeline-glue-centercompatibilityglue|owner=canonical_owner|core=Pipeline/Glue/CenterCompatibilityGlue.lean|leaf=M506970656c696e652f476c75652f43656e746572436f6d7061746962696c697479476c75652e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Pipeline.Glue.CenterCompatibilityGlue

def surfaceId : String := "Pipeline/Glue/CenterCompatibilityGlue"
def ownsDeclaredSurface : Bool := true
def crossLeafReasoningRequiresGlue : Bool := true

theorem surface_id_declared :
    surfaceId = "Pipeline/Glue/CenterCompatibilityGlue" := by
  rfl

theorem owns_declared_surface :
    ownsDeclaredSurface = true := by
  rfl

end Think.Pipeline.Glue.CenterCompatibilityGlue
```
