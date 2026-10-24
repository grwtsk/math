# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Basic.Variant3da5af0427f419c5fd546ef7995d8ea58b34d8d96bd8d3790a1541e3c07bce78

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e680831724ba38cdc1151d5da26c965b4c08f35f` · SHA-256 `3da5af0427f419c5fd546ef7995d8ea58b34d8d96bd8d3790a1541e3c07bce78`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.Pipeline.Residue

set_option autoImplicit false

namespace Think.Residues

def allPipelineResidues : List Think.Residue :=
  Think.pipelineResidues

theorem allPipelineResidues_count :
    allPipelineResidues.length = 71 := by
  rfl

end Think.Residues
```
