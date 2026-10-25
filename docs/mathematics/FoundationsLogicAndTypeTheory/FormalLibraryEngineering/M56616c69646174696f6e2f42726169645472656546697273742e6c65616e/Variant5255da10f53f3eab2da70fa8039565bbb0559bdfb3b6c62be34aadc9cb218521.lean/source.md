# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.M56616c69646174696f6e2f42726169645472656546697273742e6c65616e.Variant5255da10f53f3eab2da70fa8039565bbb0559bdfb3b6c62be34aadc9cb218521

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `69fabaf7de2499123f02e0df087c95bbe494aaba` · SHA-256 `5255da10f53f3eab2da70fa8039565bbb0559bdfb3b6c62be34aadc9cb218521`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.Bit1.Bit1.Bit0.Bit1.Bit1.Bit0.Bit0.Bit0.M56616c69646174696f6e2f4272616964436f6e666f726d616e63652e6c65616e

/- source-tree-label: STL1|L|addr=010101111|role=proof_code_atom|slug=validation-braidtreefirst|owner=canonical_owner|core=Validation/BraidTreeFirst.lean|leaf=M56616c69646174696f6e2f42726169645472656546697273742e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Braid.Validation

def treeFirstLocallyGrounded (v : TreeValidation) : Prop :=
  ∀ m ∈ v.modules, moduleLocallyGrounded m

theorem tree_first_locally_grounded_is_V10
    (v : TreeValidation) :
    treeFirstLocallyGrounded v = V10_not_registry_string_only v := rfl

end Think.Braid.Validation
```
