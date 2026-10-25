# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.M506970656c696e652f5265706f7274732f526573696475654c65646765722e6c65616e.Variant600d2e3ac4d0cc201110a6bb85d7c1d5ce300aac761888d4653766b09d5f59a9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `164f82e0a297c24badef6dd7c1c6283e55b69ec7` · SHA-256 `600d2e3ac4d0cc201110a6bb85d7c1d5ce300aac761888d4653766b09d5f59a9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean

/- source-tree-label: STL1|L|addr=11100000|role=proof_code_atom|slug=pipeline-reports-residueledger|owner=canonical_owner|core=Pipeline/Reports/ResidueLedger.lean|leaf=M506970656c696e652f5265706f7274732f526573696475654c65646765722e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Pipeline.Reports.ResidueLedger

def surfaceId : String := "Pipeline/Reports/ResidueLedger"
def ownsDeclaredSurface : Bool := true
def crossLeafReasoningRequiresGlue : Bool := true

theorem surface_id_declared :
    surfaceId = "Pipeline/Reports/ResidueLedger" := by
  rfl

theorem owns_declared_surface :
    ownsDeclaredSurface = true := by
  rfl

end Think.Pipeline.Reports.ResidueLedger
```
