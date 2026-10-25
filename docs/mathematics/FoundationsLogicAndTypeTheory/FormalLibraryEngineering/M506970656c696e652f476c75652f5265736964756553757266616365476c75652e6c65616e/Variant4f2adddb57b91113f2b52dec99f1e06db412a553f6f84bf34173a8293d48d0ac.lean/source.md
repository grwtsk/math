# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.M506970656c696e652f476c75652f5265736964756553757266616365476c75652e6c65616e.Variant4f2adddb57b91113f2b52dec99f1e06db412a553f6f84bf34173a8293d48d0ac

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b9c6928e4524f769f3045c4894b772a59e9a6c76` · SHA-256 `4f2adddb57b91113f2b52dec99f1e06db412a553f6f84bf34173a8293d48d0ac`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean

/- source-tree-label: STL1|L|addr=10111010|role=proof_code_atom|slug=pipeline-glue-residuesurfaceglue|owner=canonical_owner|core=Pipeline/Glue/ResidueSurfaceGlue.lean|leaf=M506970656c696e652f476c75652f5265736964756553757266616365476c75652e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Pipeline.Glue.ResidueSurfaceGlue

def surfaceId : String := "Pipeline/Glue/ResidueSurfaceGlue"
def ownsDeclaredSurface : Bool := true
def crossLeafReasoningRequiresGlue : Bool := true

theorem surface_id_declared :
    surfaceId = "Pipeline/Glue/ResidueSurfaceGlue" := by
  rfl

theorem owns_declared_surface :
    ownsDeclaredSurface = true := by
  rfl

end Think.Pipeline.Glue.ResidueSurfaceGlue
```
