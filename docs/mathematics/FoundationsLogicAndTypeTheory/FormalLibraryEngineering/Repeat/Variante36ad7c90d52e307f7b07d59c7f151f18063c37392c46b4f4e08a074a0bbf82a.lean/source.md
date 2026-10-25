# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Repeat.Variante36ad7c90d52e307f7b07d59c7f151f18063c37392c46b4f4e08a074a0bbf82a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `009fd168411dc4ba0b727916ddc68f5c347baa2e` · SHA-256 `e36ad7c90d52e307f7b07d59c7f151f18063c37392c46b4f4e08a074a0bbf82a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Std.Tactic.Basic
import Std.Tactic.GuardMsgs

open Lean Elab Tactic Meta

elab "foo" : tactic => liftMetaTactic fun g => do
  g.assign (← mkFreshExprMVar (← g.getType))
  throwError ""

#guard_msgs in
example : True := by
  repeat' foo
  trivial
```
