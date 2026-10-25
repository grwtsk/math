# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.M506970656c696e652f43656e7465722f576569676874656443656e7465722e6c65616e.Variant9785256fdce9f93715c60ae65a10af646852a28c971bd469bb59f2a14f78f265

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d2d039543c499eeb7b6f3cc20ac435e180903dcd` · SHA-256 `9785256fdce9f93715c60ae65a10af646852a28c971bd469bb59f2a14f78f265`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.Bit0.Bit0.Bit1.Bit1.Bit1.Bit1.Bit0.Bit1.Bit0.M506970656c696e652f43656e7465722f436865636b706f696e74732e6c65616e


/- source-tree-label: STL1|L|addr=101001|role=proof_code_atom|slug=pipeline-center-weightedcenter|owner=canonical_owner|core=Pipeline/Center/WeightedCenter.lean|leaf=M506970656c696e652f43656e7465722f576569676874656443656e7465722e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Pipeline.Center

def centerIndex : Nat :=
  FWR.Pipeline.CenterWeighted.Phase.centerIndex

def phaseCount : Nat :=
  FWR.Pipeline.CenterWeighted.Phase.phaseCount

def centerWeight (p : Think.PhaseId) : Nat :=
  p.centerWeight

theorem centerWeight_positive (p : Think.PhaseId) :
    0 < centerWeight p := by
  exact FWR.Pipeline.CenterWeighted.centerWeight_positive p

end Think.Pipeline.Center
```
