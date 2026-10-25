# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Decode.Variant0fe72509c3165242865501a9d69ba3fc935762f51112aa300ed3e9bab1350245

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b18792104a38a2be0847bf7ca94b746861f3e7f6` · SHA-256 `0fe72509c3165242865501a9d69ba3fc935762f51112aa300ed3e9bab1350245`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.SourceTree.Legacy.Residues.Basic
import Think.Pipeline.Center.Checkpoints

set_option autoImplicit false

namespace Think.Residues.Decode

def checkpoint : Think.Pipeline.Center.Checkpoint :=
  FWR.Pipeline.CenterWeighted.Checkpoint.decode

def residue : Think.Residue :=
  Think.Pipeline.Center.checkpointResidue checkpoint

theorem residue_target :
    residue.target = FWR.Target.CenterWeightedPipeline := by
  rfl

end Think.Residues.Decode
```
