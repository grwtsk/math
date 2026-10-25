# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.Log.Variant69b42e0f812b41c504cff5c8b632c6000a822220390024dab7a02f36bf97d1f7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `950bfa1034cb44431d629a734ca3e5c96802fcaf` · SHA-256 `69b42e0f812b41c504cff5c8b632c6000a822220390024dab7a02f36bf97d1f7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Data.Nat.Log

/-!
This used to fail (ran out of heartbeats) but with a new faster `Nat.logC` tagged `csimp`, it
succeeds.
-/

/-- info: 10000000 -/
#guard_msgs in
#eval Nat.log 2 (2 ^ 10000000)
```
