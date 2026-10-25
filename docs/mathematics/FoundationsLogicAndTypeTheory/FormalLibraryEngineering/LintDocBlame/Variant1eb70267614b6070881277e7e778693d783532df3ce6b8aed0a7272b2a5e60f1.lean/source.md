# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LintDocBlame.Variant1eb70267614b6070881277e7e778693d783532df3ce6b8aed0a7272b2a5e60f1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b5891d7aeffe39030782f2a01d64991a6db4807d` · SHA-256 `1eb70267614b6070881277e7e778693d783532df3ce6b8aed0a7272b2a5e60f1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Std.Tactic.Lint

set_option linter.missingDocs false

/-- A docstring is needed here -/
structure AtLeastThirtySeven where
  /-- and here -/
  val : Nat := 1
  -- but not here
  prop : 37 ≤ val

-- or here
theorem AtLeastThirtySeven.lt (x : AtLeastThirtySeven) : 36 < x.val := x.prop

#lint- only docBlame
```
