# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.M506970656c696e652f41727469666163742e6c65616e.Variant3a32511fa0b7c97aeb60d6ed925946f415359cf550f90dcd27b4f9f43f49b3c3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `291e21787f2c60783615f30a4aebaa0f2102bc80` · SHA-256 `3a32511fa0b7c97aeb60d6ed925946f415359cf550f90dcd27b4f9f43f49b3c3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.Bit0.Bit1.Bit0.Bit1.Bit1.Bit0.M506970656c696e652f436172726965722e6c65616e


/- source-tree-label: STL1|L|addr=1110011|role=proof_code_atom|slug=pipeline-artifact|owner=canonical_owner|core=Pipeline/Artifact.lean|leaf=M506970656c696e652f41727469666163742e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Pipeline

structure Artifact where
  phase : Think.PhaseId
  residueFree : Bool

def Artifact.centerControlled (a : Artifact) : Prop :=
  a.phase ∈ Think.centerSpine

theorem Artifact.centerControlled_of_artifact (a : Artifact) :
    a.centerControlled := by
  exact Think.centerSpine_complete a.phase

end Think.Pipeline
```
