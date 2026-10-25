# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Exfalso.Variant15a137bf7821eecfdfb7171b6af602735aabbf61ddae864ee284d0590d88b4e9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3a821aa0f321cd08d9703c4a8bde70d74bbcb184` · SHA-256 `15a137bf7821eecfdfb7171b6af602735aabbf61ddae864ee284d0590d88b4e9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Batteries.Tactic.Basic

private axiom test_sorry : ∀ {α}, α

example {A} (h : False) : A := by
  exfalso
  exact h

example {A} : False → A := by
  exfalso
  show False -- exfalso is not supposed to close the goal yet
  exact test_sorry
```
