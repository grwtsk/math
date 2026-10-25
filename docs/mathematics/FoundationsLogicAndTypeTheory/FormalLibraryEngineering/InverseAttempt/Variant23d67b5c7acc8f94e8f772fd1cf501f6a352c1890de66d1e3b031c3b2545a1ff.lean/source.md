# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.InverseAttempt.Variant23d67b5c7acc8f94e8f772fd1cf501f6a352c1890de66d1e3b031c3b2545a1ff

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2b352135c7988d7924c7b80c42b12400e8381659` · SHA-256 `23d67b5c7acc8f94e8f772fd1cf501f6a352c1890de66d1e3b031c3b2545a1ff`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import formal.c2.C1
open C2
/- Deliberately incomplete research attempt, excluded from accepted compilation.
   Failure is not refutation. Full composition obligations remain open. -/
theorem full_record_inverse (r : Record) (h : Supported r) : decode (bytes r) = some r := by
  simp only [decode, bytes, envelope]

theorem canonical_reconstruction (b : Bytes) (r : Record) (h : decode b = some r) : bytes r = b := by
  simp only [bytes, envelope]
```
