# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.M506970656c696e652f436f72652f50726f6f665374617475732e6c65616e.Variant8e0adff9d9d229ad5f4aeabed89afbaf87a2de8650ee3c028c74d15291aea13c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `16949c87e66fb1024423ca39f5291f75bad61126` · SHA-256 `8e0adff9d9d229ad5f4aeabed89afbaf87a2de8650ee3c028c74d15291aea13c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean

/- source-tree-label: STL1|L|addr=101000|role=proof_code_atom|slug=pipeline-core-proofstatus|owner=canonical_owner|core=Pipeline/Core/ProofStatus.lean|leaf=M506970656c696e652f436f72652f50726f6f665374617475732e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Pipeline.Core.ProofStatus

def surfaceId : String := "Pipeline/Core/ProofStatus"
def ownsDeclaredSurface : Bool := true
def crossLeafReasoningRequiresGlue : Bool := true

theorem surface_id_declared :
    surfaceId = "Pipeline/Core/ProofStatus" := by
  rfl

theorem owns_declared_surface :
    ownsDeclaredSurface = true := by
  rfl

end Think.Pipeline.Core.ProofStatus
```
