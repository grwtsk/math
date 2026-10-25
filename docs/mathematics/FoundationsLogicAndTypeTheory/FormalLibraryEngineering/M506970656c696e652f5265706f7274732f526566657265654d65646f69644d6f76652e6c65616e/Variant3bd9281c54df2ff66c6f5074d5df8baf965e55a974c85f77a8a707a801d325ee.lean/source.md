# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.M506970656c696e652f5265706f7274732f526566657265654d65646f69644d6f76652e6c65616e.Variant3bd9281c54df2ff66c6f5074d5df8baf965e55a974c85f77a8a707a801d325ee

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8175d2e3a8bff39f4ae9b6711d1ae3da8bf63f83` · SHA-256 `3bd9281c54df2ff66c6f5074d5df8baf965e55a974c85f77a8a707a801d325ee`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.Bit0.Bit1.Bit1.Bit0.Bit1.Bit0.Bit1.Bit0.M506970656c696e652f56616c69646174696f6e2f4d65646f6964526562616c616e63652e6c65616e


/- source-tree-label: STL1|L|addr=11011010|role=proof_code_atom|slug=pipeline-reports-refereemedoidmove|owner=canonical_owner|core=Pipeline/Reports/RefereeMedoidMove.lean|leaf=M506970656c696e652f5265706f7274732f526566657265654d65646f69644d6f76652e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Pipeline.Reports.RefereeMedoidMove

inductive RefereeMedoidMoveStatus where
  | finiteWitnessGuidance
  | checkedByValidator
  | explicitResidue
deriving DecidableEq, Repr

def acceptedStatus : String := "PipelineToposBoundary"

def forbiddenStatusUnlessConstructed : String := "PipelineTopos := Sh(PipelineSite, J_pipeline)"

theorem accepted_status_exact : acceptedStatus = "PipelineToposBoundary" := by
  rfl

theorem full_topos_status_not_accepted : forbiddenStatusUnlessConstructed = "PipelineTopos := Sh(PipelineSite, J_pipeline)" := by
  rfl

end Think.Pipeline.Reports.RefereeMedoidMove
```
