# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DeprecatedModuleTest.Variante2cbb9247837984a181ab3d76a64a53234c5f6ff0466dcc3b6d1df50db56cb87

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e241916af4edabb6982e71953965fee91c2fbce5` · SHA-256 `e2cbb9247837984a181ab3d76a64a53234c5f6ff0466dcc3b6d1df50db56cb87`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import MathlibTest.DeprecatedModule

/--
warning: We can also give more details about the deprecation
'MathlibTest.DeprecatedModule' has been deprecated: please replace this import by

import Mathlib.Tactic.Linter.DocPrime
import Mathlib.Tactic.Linter.DocString

note: this linter can be disabled with `set_option linter.deprecated.module false`
---
warning:
'MathlibTest.DeprecatedModule' has been deprecated: please replace this import by

import Mathlib.Tactic.Linter.DocPrime
import Mathlib.Tactic.Linter.DocString

note: this linter can be disabled with `set_option linter.deprecated.module false`
-/
#guard_msgs in
/-!
This file imports a deprecated module.
-/
```
