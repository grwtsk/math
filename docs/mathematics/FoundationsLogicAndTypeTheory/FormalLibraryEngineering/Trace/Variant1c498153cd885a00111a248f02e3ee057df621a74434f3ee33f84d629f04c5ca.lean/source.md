# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Trace.Variant1c498153cd885a00111a248f02e3ee057df621a74434f3ee33f84d629f04c5ca

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d20529031f71d8566017fa1aba53bdaf7e1ae427` · SHA-256 `1c498153cd885a00111a248f02e3ee057df621a74434f3ee33f84d629f04c5ca`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.SourceTree.Legacy.Residues.Basic
import Think.Pipeline.Center.Checkpoints

set_option autoImplicit false

namespace Think.Residues.Trace

def checkpoint : Think.Pipeline.Center.Checkpoint :=
  FWR.Pipeline.CenterWeighted.Checkpoint.trace

def residue : Think.Residue :=
  Think.Pipeline.Center.checkpointResidue checkpoint

theorem residue_target :
    residue.target = FWR.Target.CenterWeightedPipeline := by
  rfl

end Think.Residues.Trace
```
