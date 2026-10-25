# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.M506970656c696e652f43656e7465722f436f6d70616374506970656c696e652e6c65616e.Varianta418317cac426be9cc6cb6ac3e0df542bb543f94645b19bced8a76ba92e2c8c4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6e6454a97053255f4d3bd2f761b0eaca7bb4dbe4` · SHA-256 `a418317cac426be9cc6cb6ac3e0df542bb543f94645b19bced8a76ba92e2c8c4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean

/- source-tree-label: STL1|L|addr=1001110|role=proof_code_atom|slug=pipeline-center-compactpipeline|owner=canonical_owner|core=Pipeline/Center/CompactPipeline.lean|leaf=M506970656c696e652f43656e7465722f436f6d70616374506970656c696e652e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Compact

structure CompactPipelineMachine where
  phaseCount : Nat
  centerOrdered : Bool
  emitsResidue : Bool
deriving Repr

def compactPipelineMachine : CompactPipelineMachine :=
  { phaseCount := 61
    centerOrdered := true
    emitsResidue := true }

theorem compactPipelineMachine_phaseCount :
    compactPipelineMachine.phaseCount = 61 := by
  rfl

theorem compactPipelineMachine_centerOrdered :
    compactPipelineMachine.centerOrdered = true := by
  rfl

theorem compactPipelineMachine_emitsResidue :
    compactPipelineMachine.emitsResidue = true := by
  rfl

end Think.Compact
```
