# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.M506970656c696e652f417574686f726974792e6c65616e.Variantc4408c658d4fefd676c18079ae5d960920c8692eb084047b2f56be881cbbbe44

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `826e882712077d7501be9aac3ac30478df7495d8` · SHA-256 `c4408c658d4fefd676c18079ae5d960920c8692eb084047b2f56be881cbbbe44`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.Bit1.Bit1.Bit1.Bit0.Bit0.Bit1.Bit1.M506970656c696e652f41727469666163742e6c65616e


/- source-tree-label: STL1|L|addr=010100111|role=proof_code_atom|slug=pipeline-authority|owner=canonical_owner|core=Pipeline/Authority.lean|leaf=M506970656c696e652f417574686f726974792e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Pipeline

inductive AuthorityClass where
  | finite
  | external
  | conjectural
  | refused
deriving DecidableEq, Repr

structure AuthorityLabel where
  phase : Think.PhaseId
  authority : AuthorityClass

end Think.Pipeline
```
