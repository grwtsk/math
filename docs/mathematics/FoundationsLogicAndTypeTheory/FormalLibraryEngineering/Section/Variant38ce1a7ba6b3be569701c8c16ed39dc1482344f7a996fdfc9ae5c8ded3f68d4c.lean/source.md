# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Section.Variant38ce1a7ba6b3be569701c8c16ed39dc1482344f7a996fdfc9ae5c8ded3f68d4c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `178b3683a235350c6c90c6f078e14ffc966ff364` · SHA-256 `38ce1a7ba6b3be569701c8c16ed39dc1482344f7a996fdfc9ae5c8ded3f68d4c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.SourceTree.Legacy.Residues.Basic
import Think.Pipeline.Center.Checkpoints

set_option autoImplicit false

namespace Think.Residues.Section

def checkpoint : Think.Pipeline.Center.Checkpoint :=
  FWR.Pipeline.CenterWeighted.Checkpoint.section

def residue : Think.Residue :=
  Think.Pipeline.Center.checkpointResidue checkpoint

theorem residue_target :
    residue.target = FWR.Target.CenterWeightedPipeline := by
  rfl

end Think.Residues.Section
```
