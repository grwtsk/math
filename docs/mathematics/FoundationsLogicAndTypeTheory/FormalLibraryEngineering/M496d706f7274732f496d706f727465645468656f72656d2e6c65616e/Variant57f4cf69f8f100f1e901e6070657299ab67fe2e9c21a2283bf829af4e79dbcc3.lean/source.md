# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.M496d706f7274732f496d706f727465645468656f72656d2e6c65616e.Variant57f4cf69f8f100f1e901e6070657299ab67fe2e9c21a2283bf829af4e79dbcc3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f099f762fe532f63249ab38a26b2b204743df809` · SHA-256 `57f4cf69f8f100f1e901e6070657299ab67fe2e9c21a2283bf829af4e79dbcc3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.Bit1.Bit0.Bit1.Bit1.Bit0.Bit1.Bit0.Bit1.M496d706f7274732f417574686f726974794c6576656c2e6c65616e


/- source-tree-label: STL1|L|addr=1100100|role=proof_code_atom|slug=imports-importedtheorem|owner=canonical_owner|core=Imports/ImportedTheorem.lean|leaf=M496d706f7274732f496d706f727465645468656f72656d2e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Imports

structure ImportedTheorem where
  theoremId : String
  sourceModule : String
  theoremName : String
  importedProp : Prop
  proof : importedProp

end Think.Imports
```
