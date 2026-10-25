# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OutputLimit.Variant26bdcbeea44c89ae34a142442f473160b52af63d21c03dfa1029c432707dfc07

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `21a3e5890e39c33f63002c63220c1f97cc74b792` · SHA-256 `26bdcbeea44c89ae34a142442f473160b52af63d21c03dfa1029c432707dfc07`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Synthetic output overflow: all raw output must remain private and bounded. -/
import Lean

#eval IO.println (String.ofList (List.replicate 262144 'x'))
```
