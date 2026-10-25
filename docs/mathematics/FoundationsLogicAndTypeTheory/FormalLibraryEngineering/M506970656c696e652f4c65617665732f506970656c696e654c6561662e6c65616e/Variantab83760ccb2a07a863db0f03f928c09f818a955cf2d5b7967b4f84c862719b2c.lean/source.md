# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.M506970656c696e652f4c65617665732f506970656c696e654c6561662e6c65616e.Variantab83760ccb2a07a863db0f03f928c09f818a955cf2d5b7967b4f84c862719b2c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a1f65fa15d3c5a6a0dc2ddd9ef12b0af1995b910` · SHA-256 `ab83760ccb2a07a863db0f03f928c09f818a955cf2d5b7967b4f84c862719b2c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean

/- source-tree-label: STL1|L|addr=10111011|role=proof_code_atom|slug=pipeline-leaves-pipelineleaf|owner=canonical_owner|core=Pipeline/Leaves/PipelineLeaf.lean|leaf=M506970656c696e652f4c65617665732f506970656c696e654c6561662e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Pipeline.Leaves.PipelineLeaf

def surfaceId : String := "Pipeline/Leaves/PipelineLeaf"
def ownsDeclaredSurface : Bool := true
def crossLeafReasoningRequiresGlue : Bool := true

theorem surface_id_declared :
    surfaceId = "Pipeline/Leaves/PipelineLeaf" := by
  rfl

theorem owns_declared_surface :
    ownsDeclaredSurface = true := by
  rfl

end Think.Pipeline.Leaves.PipelineLeaf
```
