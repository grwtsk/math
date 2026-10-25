# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LintDocBlameThm.Variant67255151da44a503f5f55a19b3fb9fdbc8f5cd0d6126516485cac0394eb4fc01

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9df31baea4e8378a279ff3556854c1dbe39745d1` · SHA-256 `67255151da44a503f5f55a19b3fb9fdbc8f5cd0d6126516485cac0394eb4fc01`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Std.Tactic.Lint

set_option linter.missingDocs false

-- A docstring is not needed here
structure AtLeastThirtySeven where
  -- or here
  val : Nat := 1
  /-- but is needed here -/
  prop : 37 ≤ val

/-- and here -/
theorem AtLeastThirtySeven.lt (x : AtLeastThirtySeven) : 36 < x.val := x.prop

#lint- only docBlameThm
```
