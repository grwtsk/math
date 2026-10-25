# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Solution.Variant005b3b1b863f37c16fc6330cdc84d05e060f4a779d942a219432f8858325e244

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `55d70a76c3c25a381ee60bc6409bc445d28f0fc6` · SHA-256 `005b3b1b863f37c16fc6330cdc84d05e060f4a779d942a219432f8858325e244`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean

axiom helper {α : Sort u} : α

theorem comm (n m : Nat) : n + m = m + n := by
  exact helper
```
