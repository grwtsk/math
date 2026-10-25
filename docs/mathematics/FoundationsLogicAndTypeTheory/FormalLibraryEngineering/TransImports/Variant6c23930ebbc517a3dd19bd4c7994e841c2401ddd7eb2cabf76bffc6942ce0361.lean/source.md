# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TransImports.Variant6c23930ebbc517a3dd19bd4c7994e841c2401ddd7eb2cabf76bffc6942ce0361

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9d9efed9860e03fc9153d79d021fda94b1dc41de` · SHA-256 `6c23930ebbc517a3dd19bd4c7994e841c2401ddd7eb2cabf76bffc6942ce0361`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Util.TransImports

/--
info: 'MathlibTest.TransImports' has at most 1000 transitive imports

2 starting with "Mathlib.Tactic.Linter.H":
[Mathlib.Tactic.Linter.HashCommandLinter, Mathlib.Tactic.Linter.Header]
-/
#guard_msgs in
#trans_imports "Mathlib.Tactic.Linter.H" at_most 1000
```
