# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Change.Variant3c2569310c9b24fcf9381beaebfaebac1e7af0ff6c13a578bd4c89413685236c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a221341553adaf2dc4cb3eb72c1bedd1f8501cd6` · SHA-256 `3c2569310c9b24fcf9381beaebfaebac1e7af0ff6c13a578bd4c89413685236c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Tactic.Change

set_option linter.style.setOption false
set_option pp.unicode.fun true
set_option autoImplicit true

/--
info: Try this: change 0 = 1
---
info: Try this: change (fun x ↦ x) 0 = 1
---
info: Try this: change (fun x ↦ x) 0 = 1
---
error: The term
  1 = 0
is not defeq to the goal:
  (fun x ↦ x) 0 = 1
-/
#guard_msgs in
example : (fun x : Nat => x) 0 = 1 := by
  change? 0 = _  -- change 0 = 1
  change?        -- change (fun x ↦ x) 0 = 1
  change? _      -- change (fun x ↦ x) 0 = 1
  change? 1 = 0
    -- The term
    --   1 = 0
    -- is not defeq to the goal:
    --   (fun x ↦ x) 0 = 1
```
