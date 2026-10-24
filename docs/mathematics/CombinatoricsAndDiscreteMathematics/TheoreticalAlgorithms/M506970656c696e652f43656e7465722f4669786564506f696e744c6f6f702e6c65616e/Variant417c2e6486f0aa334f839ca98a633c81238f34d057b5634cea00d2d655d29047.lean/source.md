# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.M506970656c696e652f43656e7465722f4669786564506f696e744c6f6f702e6c65616e.Variant417c2e6486f0aa334f839ca98a633c81238f34d057b5634cea00d2d655d29047

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c203c98291612359d115d7a4ea8611fc09e5c818` · SHA-256 `417c2e6486f0aa334f839ca98a633c81238f34d057b5634cea00d2d655d29047`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.Bit0.Bit0.Bit1.Bit1.Bit1.Bit0.Bit0.Bit0.M506970656c696e652f43656e7465722f42726169642e6c65616e


/- source-tree-label: STL1|L|addr=01101011|role=proof_code_atom|slug=pipeline-center-fixedpointloop|owner=canonical_owner|core=Pipeline/Center/FixedPointLoop.lean|leaf=M506970656c696e652f43656e7465722f4669786564506f696e744c6f6f702e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Pipeline.Center

def fixedPointPhases : List Think.PhaseId := [
  FWR.Pipeline.CenterWeighted.Phase.residueExtraction,
  FWR.Pipeline.CenterWeighted.Phase.residueContainment,
  FWR.Pipeline.CenterWeighted.Phase.cleanProjection,
  FWR.Pipeline.CenterWeighted.Phase.reverseSectionReplay,
  FWR.Pipeline.CenterWeighted.Phase.forwardReplay,
  FWR.Pipeline.CenterWeighted.Phase.fixedPointComparison,
  FWR.Pipeline.CenterWeighted.Phase.boundaryReport
]

theorem fixedPointPhases_count :
    fixedPointPhases.length = 7 := by
  rfl

theorem fixedPointPhase_centerControlled :
    ∀ p ∈ fixedPointPhases, p ∈ spine := by
  intro p _hp
  exact spine_complete p

end Think.Pipeline.Center
```
