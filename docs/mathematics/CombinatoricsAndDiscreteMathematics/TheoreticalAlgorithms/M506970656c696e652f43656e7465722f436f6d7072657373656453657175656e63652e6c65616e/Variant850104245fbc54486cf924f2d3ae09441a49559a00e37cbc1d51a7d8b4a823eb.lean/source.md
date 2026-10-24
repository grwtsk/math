# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.M506970656c696e652f43656e7465722f436f6d7072657373656453657175656e63652e6c65616e.Variant850104245fbc54486cf924f2d3ae09441a49559a00e37cbc1d51a7d8b4a823eb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `09f507cf73c71e69db7a388404005c4854d726db` · SHA-256 `850104245fbc54486cf924f2d3ae09441a49559a00e37cbc1d51a7d8b4a823eb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.Bit1.Bit1.Bit0.Bit1.Bit1.Bit1.Bit0.Bit1.Bit1.M506970656c696e652f43656e7465722f5370696e652e6c65616e


/- source-tree-label: STL1|L|addr=0000011|role=proof_code_atom|slug=pipeline-center-compressedsequence|owner=canonical_owner|core=Pipeline/Center/CompressedSequence.lean|leaf=M506970656c696e652f43656e7465722f436f6d7072657373656453657175656e63652e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Pipeline.Center

abbrev CompressedStep := Think.SpineStep

def compressedSequence : List CompressedStep :=
  FWR.Pipeline.CenterWeighted.compressedSpine

theorem compressedSequence_count :
    compressedSequence.length = 20 := by
  rfl

end Think.Pipeline.Center
```
