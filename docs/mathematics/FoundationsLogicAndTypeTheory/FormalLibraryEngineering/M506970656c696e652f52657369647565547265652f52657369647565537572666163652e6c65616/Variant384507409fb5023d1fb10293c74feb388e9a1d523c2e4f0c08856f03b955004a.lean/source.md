# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.M506970656c696e652f52657369647565547265652f52657369647565537572666163652e6c65616.Variant384507409fb5023d1fb10293c74feb388e9a1d523c2e4f0c08856f03b955004a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fa19140065940cd8cc6aa43d9ae3c36a2a6eb14d` · SHA-256 `384507409fb5023d1fb10293c74feb388e9a1d523c2e4f0c08856f03b955004a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean

/- source-tree-label: STL1|L|addr=00001011|role=proof_code_atom|slug=pipeline-residuetree-residuesurface|owner=canonical_owner|core=Pipeline/ResidueTree/ResidueSurface.lean|leaf=M506970656c696e652f52657369647565547265652f52657369647565537572666163652e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Pipeline.ResidueTree.ResidueSurface

def surfaceId : String := "Pipeline/ResidueTree/ResidueSurface"
def ownsDeclaredSurface : Bool := true
def crossLeafReasoningRequiresGlue : Bool := true

theorem surface_id_declared :
    surfaceId = "Pipeline/ResidueTree/ResidueSurface" := by
  rfl

theorem owns_declared_surface :
    ownsDeclaredSurface = true := by
  rfl

end Think.Pipeline.ResidueTree.ResidueSurface
```
