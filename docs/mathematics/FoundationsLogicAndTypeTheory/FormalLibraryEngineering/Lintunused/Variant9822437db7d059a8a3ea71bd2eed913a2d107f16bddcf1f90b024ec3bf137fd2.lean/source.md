# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lintunused.Variant9822437db7d059a8a3ea71bd2eed913a2d107f16bddcf1f90b024ec3bf137fd2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `48e93bace5f84f84b2f9e88a876446b202a9b027` · SHA-256 `9822437db7d059a8a3ea71bd2eed913a2d107f16bddcf1f90b024ec3bf137fd2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Std.Tactic.Lint

-- should be ignored as the proof contains sorry
theorem Foo (h : 1 = 1) : True :=
  sorry

#lint- only unusedArguments
```
