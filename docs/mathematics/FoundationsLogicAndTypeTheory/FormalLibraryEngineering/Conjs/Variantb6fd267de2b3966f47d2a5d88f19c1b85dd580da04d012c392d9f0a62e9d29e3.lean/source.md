# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Conjs.Variantb6fd267de2b3966f47d2a5d88f19c1b85dd580da04d012c392d9f0a62e9d29e3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9204571c027491621ea2803fdc5dd9f19ec17e86` · SHA-256 `b6fd267de2b3966f47d2a5d88f19c1b85dd580da04d012c392d9f0a62e9d29e3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Qq
open Qq Lean Elab Meta Tactic

elab "print_conjs" : tactic => do
  for ldecl in ← getLCtx do
    if let some ty ← checkTypeQ (u := Level.one) ldecl.type q(Prop) then
      if let ~q($p ∧ $q) := ty then
        logInfo m!"left = {p}, right = {q}"

/--
info: left = true = true, right = False
-/
#guard_msgs in
example (_ : true ∧ False) : true := by
  print_conjs
  trivial
```
