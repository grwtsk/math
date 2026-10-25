# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.M506970656c696e652f476c75652f4e6f4f7665726c6170476c75652e6c65616e.Variant38a1fc18278689d078ea63c153ca56d8e77fdafc7947b3f8834597668b339aba

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6987171e959b8e03d78604ffb66a869cd707fc51` · SHA-256 `38a1fc18278689d078ea63c153ca56d8e77fdafc7947b3f8834597668b339aba`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean

/- source-tree-label: STL1|L|addr=0001100|role=proof_code_atom|slug=pipeline-glue-nooverlapglue|owner=canonical_owner|core=Pipeline/Glue/NoOverlapGlue.lean|leaf=M506970656c696e652f476c75652f4e6f4f7665726c6170476c75652e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Pipeline.Glue.NoOverlapGlue

def surfaceId : String := "Pipeline/Glue/NoOverlapGlue"
def ownsDeclaredSurface : Bool := true
def crossLeafReasoningRequiresGlue : Bool := true

theorem surface_id_declared :
    surfaceId = "Pipeline/Glue/NoOverlapGlue" := by
  rfl

theorem owns_declared_surface :
    ownsDeclaredSurface = true := by
  rfl

end Think.Pipeline.Glue.NoOverlapGlue
```
