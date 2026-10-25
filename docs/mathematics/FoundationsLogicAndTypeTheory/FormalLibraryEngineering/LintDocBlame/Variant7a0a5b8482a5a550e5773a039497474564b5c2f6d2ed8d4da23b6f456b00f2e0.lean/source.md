# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LintDocBlame.Variant7a0a5b8482a5a550e5773a039497474564b5c2f6d2ed8d4da23b6f456b00f2e0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b426acde4837436a2aa91d4e52cb12e666aa06dd` · SHA-256 `7a0a5b8482a5a550e5773a039497474564b5c2f6d2ed8d4da23b6f456b00f2e0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

import Batteries.Tactic.Lint

set_option linter.missingDocs false

public section

-- A docstring is needed here
structure AtLeastThirtySeven where
  -- and here
  val : Nat := 1
  -- but not here
  prop : 37 ≤ val

-- or here (due to being a theorem)
theorem AtLeastThirtySeven.lt (x : AtLeastThirtySeven) : 36 < x.val := x.prop

def foo_bad := 3 -- Needs a docstring
private def foo_ok := 7 -- Doesn't (due to being private)

/--
error: /- The `docBlame` linter reports:
DEFINITIONS ARE MISSING DOCUMENTATION STRINGS:
This linter can be disabled with `@[nolint docBlame]`. -/
#check AtLeastThirtySeven /- inductive missing documentation string -/
#check AtLeastThirtySeven.val /- definition missing documentation string -/
#check foo_bad /- definition missing documentation string -/
-/
#guard_msgs in
#lint- only docBlame
```
