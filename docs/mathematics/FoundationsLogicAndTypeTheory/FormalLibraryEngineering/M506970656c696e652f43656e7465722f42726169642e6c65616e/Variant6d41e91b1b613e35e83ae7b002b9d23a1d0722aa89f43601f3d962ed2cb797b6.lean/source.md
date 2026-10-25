# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.M506970656c696e652f43656e7465722f42726169642e6c65616e.Variant6d41e91b1b613e35e83ae7b002b9d23a1d0722aa89f43601f3d962ed2cb797b6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1e35dad395d7c7fb7604440d3d4447212344151e` · SHA-256 `6d41e91b1b613e35e83ae7b002b9d23a1d0722aa89f43601f3d962ed2cb797b6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.Bit1.Bit1.Bit1.Bit0.Bit0.Bit0.Bit0.Bit0.M506970656c696e652f43656e7465722f4d756c74696e6f6d69616c506c6163656d656e742e6c65616e


/- source-tree-label: STL1|L|addr=00111000|role=proof_code_atom|slug=pipeline-center-braid|owner=canonical_owner|core=Pipeline/Center/Braid.lean|leaf=M506970656c696e652f43656e7465722f42726169642e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Pipeline.Center

abbrev CenterPole := FWR.Pipeline.CenterWeighted.Pole

def phasePole (p : Think.PhaseId) : CenterPole :=
  p.pole

theorem phase_tied_to_spine (p : Think.PhaseId) :
    p ∈ spine := by
  exact spine_complete p

end Think.Pipeline.Center
```
