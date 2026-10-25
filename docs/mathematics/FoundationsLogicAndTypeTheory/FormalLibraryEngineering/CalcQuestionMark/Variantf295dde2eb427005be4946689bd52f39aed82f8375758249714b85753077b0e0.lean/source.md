# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CalcQuestionMark.Variantf295dde2eb427005be4946689bd52f39aed82f8375758249714b85753077b0e0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8c21093cd4fd95a573deaac2f280930d08cc47b3` · SHA-256 `f295dde2eb427005be4946689bd52f39aed82f8375758249714b85753077b0e0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Tactic.Widget.Calc

/-!
Note that while the suggestions look incorrectly indented here,
this is an artifact of the rendering to a string for `guard_msgs` (leanprover/lean4#7191).

When used from the widget that appears in VSCode, they insert correctly-indented code.
-/

/--
info: Create calc tactic:
• calc
    1 = 1 := by sorry
---
warning: declaration uses 'sorry'
-/
#guard_msgs in
example : 1 = 1 := by
  have := 0
  calc?


/--
info: Create calc tactic:
• calc
    a ≤ a := by sorry
---
warning: declaration uses 'sorry'
-/
#guard_msgs in
example (a : Nat) : a ≤ a := by
  calc?

-- an indented `calc?`

/--
info: Create calc tactic:
• calc
    a ≤ a := by sorry
---
warning: declaration uses 'sorry'
-/
#guard_msgs in
example (a : Nat) : a ≤ a := by
  all_goals
    calc?

-- a deliberately long line
/--
info: Create calc tactic:
• calc
    1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 +
              1 +
            1 +
          1 =
        8 + 8 + 8 + 8 :=
      by sorry
---
warning: declaration uses 'sorry'
-/
#guard_msgs in
example :
    1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 +
    1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 +
    1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 +
    1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 = 8 + 8 + 8 + 8 := by
  calc?
```
