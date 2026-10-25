# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Observe.Variant50349a9594cc8bbbe21d12a4c431cb137d7183d72f6f244b7811e3ea647e1d95

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dba1f58608cea1c4af8cdf8497d75bad458fdb89` · SHA-256 `50349a9594cc8bbbe21d12a4c431cb137d7183d72f6f244b7811e3ea647e1d95`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Tactic.Observe

set_option linter.unusedVariables false

/-- info: Try this: have h : x + y = y + x := Nat.add_comm x y -/
#guard_msgs in
example (x y : Nat) : True := by
  observe? h : x + y = y + x
  guard_hyp h : x + y = y + x
  trivial
```
