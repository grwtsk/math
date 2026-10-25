# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.M506970656c696e652f436f72652f4e6f6e436c61696d2e6c65616e.Variant8b72639f56b4f72fbb54cea9d8e519af83783c63e359d1c0b25e247ef1b56b7d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6d97a1cf24d545335f195cb90a0e0bd4b902ecad` · SHA-256 `8b72639f56b4f72fbb54cea9d8e519af83783c63e359d1c0b25e247ef1b56b7d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean

/- source-tree-label: STL1|L|addr=000101|role=proof_code_atom|slug=pipeline-core-nonclaim|owner=canonical_owner|core=Pipeline/Core/NonClaim.lean|leaf=M506970656c696e652f436f72652f4e6f6e436c61696d2e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Pipeline.Core.NonClaim

def surfaceId : String := "Pipeline/Core/NonClaim"
def ownsDeclaredSurface : Bool := true
def crossLeafReasoningRequiresGlue : Bool := true

theorem surface_id_declared :
    surfaceId = "Pipeline/Core/NonClaim" := by
  rfl

theorem owns_declared_surface :
    ownsDeclaredSurface = true := by
  rfl

end Think.Pipeline.Core.NonClaim
```
