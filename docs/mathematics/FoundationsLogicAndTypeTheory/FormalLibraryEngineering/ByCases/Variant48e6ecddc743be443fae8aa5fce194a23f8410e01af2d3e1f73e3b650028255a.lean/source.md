# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ByCases.Variant48e6ecddc743be443fae8aa5fce194a23f8410e01af2d3e1f73e3b650028255a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b2ad2bfec2fec8df4a04b095695fdecf0480843a` · SHA-256 `48e6ecddc743be443fae8aa5fce194a23f8410e01af2d3e1f73e3b650028255a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Std.Tactic.ByCases

example : True := by
  if 1 + 1 = 2 then _ else ?_
  case pos => trivial
  fail_if_success case neg => contradiction
  · contradiction

example (p : Prop) : True := by
  if p then ?foo else trivial
  case foo => trivial
```
