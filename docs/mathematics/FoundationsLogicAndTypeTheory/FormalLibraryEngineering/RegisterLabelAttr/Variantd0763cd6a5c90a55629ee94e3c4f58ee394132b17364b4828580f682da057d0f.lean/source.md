# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RegisterLabelAttr.Variantd0763cd6a5c90a55629ee94e3c4f58ee394132b17364b4828580f682da057d0f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d1928052e88baa86145c615166af15667d22c669` · SHA-256 `d0763cd6a5c90a55629ee94e3c4f58ee394132b17364b4828580f682da057d0f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import BatteriesTest.Internal.DummyLabelAttr
import Lean.LabelAttribute

set_option linter.missingDocs false

open Lean

def f := 0

/-- info: #[] -/ #guard_msgs in #eval labelled `dummy_label_attr

attribute [dummy_label_attr] f

/-- info: #[`f] -/ #guard_msgs in #eval labelled `dummy_label_attr

section

attribute [-dummy_label_attr] f

/-- info: #[] -/ #guard_msgs in #eval labelled `dummy_label_attr

end

/-- info: #[`f] -/ #guard_msgs in #eval labelled `dummy_label_attr

-- Adding the label again is a no-op
attribute [dummy_label_attr] f

/-- info: #[`f] -/ #guard_msgs in #eval labelled `dummy_label_attr
```
