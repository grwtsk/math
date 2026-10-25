# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.M56616c69646174696f6e2f50686173654f72646572436f72726563742e6c65616e.Variantafc04a14085028f72c44cad9f945107eadaa8a10f68bb4413a40038254fa99c0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `92b3b93b18c3638d3fc9b037485b2e13149a42bd` · SHA-256 `afc04a14085028f72c44cad9f945107eadaa8a10f68bb4413a40038254fa99c0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.Bit0.Bit0.Bit0.Bit0.Bit1.Bit0.Bit1.Bit1.M56616c69646174696f6e2f5068617365436f7665726167652e6c65616e


/- source-tree-label: STL1|L|addr=01111110|role=proof_code_atom|slug=validation-phaseordercorrect|owner=canonical_owner|core=Validation/PhaseOrderCorrect.lean|leaf=M56616c69646174696f6e2f50686173654f72646572436f72726563742e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Validation

theorem phaseOrderComplete :
    Think.centerSpine.length = 61 := by
  rfl

theorem phaseOrderNoDup :
    Think.centerSpine.Nodup := by
  exact Think.centerSpine_nodup

end Think.Validation
```
