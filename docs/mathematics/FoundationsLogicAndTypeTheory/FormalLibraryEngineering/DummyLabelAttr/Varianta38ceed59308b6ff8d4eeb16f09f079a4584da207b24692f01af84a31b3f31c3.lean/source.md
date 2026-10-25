# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DummyLabelAttr.Varianta38ceed59308b6ff8d4eeb16f09f079a4584da207b24692f01af84a31b3f31c3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7203be2557abc60502adfe82a943cd5f790a2d2c` · SHA-256 `a38ceed59308b6ff8d4eeb16f09f079a4584da207b24692f01af84a31b3f31c3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Std.Tactic.LabelAttr

/-- A dummy label attribute, which can be used for testing. -/
-- This can't live in `Std.Tactic.LabelAttr`
-- (because we can't use the extension in the same file it is initialized)
-- and it can't live in `test/`, because files there can not import other files in `test/`.
register_label_attr dummy_label_attr
```
