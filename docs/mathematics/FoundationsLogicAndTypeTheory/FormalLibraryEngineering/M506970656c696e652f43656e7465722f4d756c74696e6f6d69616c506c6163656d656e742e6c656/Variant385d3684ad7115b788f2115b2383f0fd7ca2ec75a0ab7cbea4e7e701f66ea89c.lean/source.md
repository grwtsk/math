# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.M506970656c696e652f43656e7465722f4d756c74696e6f6d69616c506c6163656d656e742e6c656.Variant385d3684ad7115b788f2115b2383f0fd7ca2ec75a0ab7cbea4e7e701f66ea89c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `27df63abd5de849897d512529c8297dac32bf2e2` · SHA-256 `385d3684ad7115b788f2115b2383f0fd7ca2ec75a0ab7cbea4e7e701f66ea89c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.Bit1.Bit0.Bit1.Bit0.Bit0.Bit1.M506970656c696e652f43656e7465722f576569676874656443656e7465722e6c65616e


/- source-tree-label: STL1|L|addr=11100000|role=proof_code_atom|slug=pipeline-center-multinomialplacement|owner=canonical_owner|core=Pipeline/Center/MultinomialPlacement.lean|leaf=M506970656c696e652f43656e7465722f4d756c74696e6f6d69616c506c6163656d656e742e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Pipeline.Center

abbrev BraidWeight := FWR.Pipeline.CenterWeighted.BraidWeight

def braidWeight (p : Think.PhaseId) : BraidWeight :=
  p.braidWeight

def multinomialWeight (p : Think.PhaseId) : Nat :=
  (braidWeight p).multinomial

theorem multinomial_denominator_pos (w : BraidWeight) :
    0 <
      FWR.Pipeline.CenterWeighted.BraidWeight.factorial w.left *
      FWR.Pipeline.CenterWeighted.BraidWeight.factorial w.center *
      FWR.Pipeline.CenterWeighted.BraidWeight.factorial w.right := by
  exact FWR.Pipeline.CenterWeighted.multinomial_denominator_pos w

end Think.Pipeline.Center
```
