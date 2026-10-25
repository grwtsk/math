# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Find.Variant53946b76afbd3e44e6180ab4dfce2257606633bcdf3d28faeab1857a95de39af

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bf4c0cb63cb49e7d38777a4008ab988605337644` · SHA-256 `53946b76afbd3e44e6180ab4dfce2257606633bcdf3d28faeab1857a95de39af`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Tactic.Find

theorem add_comm_zero {n} : 0 + n = n + 0 := Nat.add_comm _ _

#find _ + _ = _ + _
#find ?n + _ = _ + ?n
#find (_ : Nat) + _ = _ + _
#find Nat → Nat
#find ?n ≤ ?m → ?n + _ ≤ ?m + _
```
