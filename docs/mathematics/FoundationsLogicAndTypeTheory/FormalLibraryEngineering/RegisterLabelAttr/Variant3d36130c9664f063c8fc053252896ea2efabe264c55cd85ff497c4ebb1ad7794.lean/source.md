# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RegisterLabelAttr.Variant3d36130c9664f063c8fc053252896ea2efabe264c55cd85ff497c4ebb1ad7794

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `23222849380e45d4737af70bae8d95895be53082` · SHA-256 `3d36130c9664f063c8fc053252896ea2efabe264c55cd85ff497c4ebb1ad7794`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Std.Test.Internal.DummyLabelAttr
import Std.Tactic.GuardMsgs

set_option linter.missingDocs false

open Std.Tactic.LabelAttr

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
