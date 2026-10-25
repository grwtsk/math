# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AddSuggestion.Variantc21f4b7558ce4829e41db2efaab905f37ea7616d2d1d09989c325b94beede7cd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3f9971e24cb6f8873892950d1969fe43db07e237` · SHA-256 `c21f4b7558ce4829e41db2efaab905f37ea7616d2d1d09989c325b94beede7cd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Std.Tactic.TryThis

set_option linter.unusedVariables false
set_option linter.missingDocs false

section width
-- here we test that the width of try this suggestions is not too big

-- simulate a long and complicated term
def longdef (a b : Nat) (h h h h h h h h h h h h h h h h h
    h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h
    h h h h h h h h h h h h h h h h h h h h h h h
    h h h h h h h h h h h h h h h h h h h h h : a = b) :
  2 * a = 2 * b := by rw [h]

namespace Std.Tactic.TryThis
open Lean Elab Tactic

set_option hygiene false in
elab "test" : tactic => do
  addSuggestion (← getRef) (←
  `(tactic| exact longdef a b h h h h h h h h h h h h h h
      h h h h h h h h h h h h h h h h h h h h h h
      h h h h h h h h h h h h h h h h h h h h h h
      h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h))

end Std.Tactic.TryThis

-- ideally we would have a #guard_widgets or #guard_infos too, but instead we can simply check by
-- hand that the widget suggestion (not the message) fits into 100 columns
theorem asda (a b : Nat) (h : a = b) : 2 * a = 2 * b := by
  test
--exact
--  longdef a b h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h
--    h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h
--    h h h h h
  have : 2 * a = 2 * b := by
    test
--  exact
--    longdef a b h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h
--      h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h
--      h h h h h h h
    sorry
  sorry
```
