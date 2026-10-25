# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Transition.Variant4b0b0695de0a16d303bc3c39cd9382e3c36ffb5b50146c784cc90f4ade4ffc7e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1c5df8eb6c6ea240723cfc8348047289964d7908` · SHA-256 `4b0b0695de0a16d303bc3c39cd9382e3c36ffb5b50146c784cc90f4ade4ffc7e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.SourceTree.Legacy.Residues.Basic
import Think.Pipeline.Center.Checkpoints

set_option autoImplicit false

namespace Think.Residues.Transition

def checkpoint : Think.Pipeline.Center.Checkpoint :=
  FWR.Pipeline.CenterWeighted.Checkpoint.transition

def residue : Think.Residue :=
  Think.Pipeline.Center.checkpointResidue checkpoint

theorem residue_target :
    residue.target = FWR.Target.CenterWeightedPipeline := by
  rfl

end Think.Residues.Transition
```
