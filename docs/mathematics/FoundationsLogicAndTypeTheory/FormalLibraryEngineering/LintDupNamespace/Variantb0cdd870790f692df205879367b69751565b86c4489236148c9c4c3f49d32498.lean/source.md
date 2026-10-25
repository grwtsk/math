# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LintDupNamespace.Variantb0cdd870790f692df205879367b69751565b86c4489236148c9c4c3f49d32498

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9446b63d4074b31bc652fbf689a8f77dc85827c2` · SHA-256 `b0cdd870790f692df205879367b69751565b86c4489236148c9c4c3f49d32498`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Std.Tactic.Lint

-- internal names should be ignored
theorem Foo.Foo._bar : True := trivial

#lint- only dupNamespace
```
