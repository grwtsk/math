# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LintDocBlameThm.Variantd347767db0db2d546082628010df6fa69a2907d00816db3e65ea9dd5e8c96239

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `afb4d586f23685712c6f761735e4bb8fcecef5aa` · SHA-256 `d347767db0db2d546082628010df6fa69a2907d00816db3e65ea9dd5e8c96239`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Batteries.Tactic.Lint

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
