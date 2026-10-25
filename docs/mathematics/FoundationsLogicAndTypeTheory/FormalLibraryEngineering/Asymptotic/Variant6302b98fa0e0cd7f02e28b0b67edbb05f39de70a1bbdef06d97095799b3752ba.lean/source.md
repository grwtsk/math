# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Asymptotic.Variant6302b98fa0e0cd7f02e28b0b67edbb05f39de70a1bbdef06d97095799b3752ba

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9dac3d4afb94f612c57e3aba16498290eecb346d` · SHA-256 `6302b98fa0e0cd7f02e28b0b67edbb05f39de70a1bbdef06d97095799b3752ba`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.SourceTree.Legacy.Residues.Basic
import Think.Pipeline.Center.Checkpoints

set_option autoImplicit false

namespace Think.Residues.Asymptotic

def checkpoint : Think.Pipeline.Center.Checkpoint :=
  FWR.Pipeline.CenterWeighted.Checkpoint.asymptotic

def residue : Think.Residue :=
  Think.Pipeline.Center.checkpointResidue checkpoint

theorem residue_target :
    residue.target = FWR.Target.CenterWeightedPipeline := by
  rfl

end Think.Residues.Asymptotic
```
