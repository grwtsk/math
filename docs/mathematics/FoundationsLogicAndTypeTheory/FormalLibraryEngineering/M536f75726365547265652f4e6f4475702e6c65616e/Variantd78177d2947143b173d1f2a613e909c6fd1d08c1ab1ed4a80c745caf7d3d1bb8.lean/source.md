# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.M536f75726365547265652f4e6f4475702e6c65616e.Variantd78177d2947143b173d1f2a613e909c6fd1d08c1ab1ed4a80c745caf7d3d1bb8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a9daa523ce9eb8bd9d52bc25a9e5428c7776d957` · SHA-256 `d78177d2947143b173d1f2a613e909c6fd1d08c1ab1ed4a80c745caf7d3d1bb8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.Bit0.Bit0.Bit0.Bit1.Bit1.Bit1.Bit1.M536f75726365547265652f436f7665726167652e6c65616e


/- source-tree-label: STL1|L|addr=00000000|role=proof_code_atom|slug=sourcetree-nodup|owner=canonical_owner|core=SourceTree/NoDup.lean|leaf=M536f75726365547265652f4e6f4475702e6c65616e.lean -/

set_option autoImplicit false

namespace Think.SourceTree

theorem coveredPhases_nodup :
    coveredPhases.Nodup := by
  rw [coveredPhases_eq_centerSpine]
  exact Think.centerSpine_nodup

end Think.SourceTree
```
