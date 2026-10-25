# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SorryWarning.Variante52c45e0839087115d4347d33d23227155f60e018af2ca0640ccb2ce5078ab13

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b18182b6b351022f1a3bee7c0f1fe2c13ee163f8` · SHA-256 `e52c45e0839087115d4347d33d23227155f60e018af2ca0640ccb2ce5078ab13`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Init

/- Intentionally unsound synthetic input. A warning or sorryAx must never be
   treated as accepted mathematics, even if the compiler returns zero. -/
example : False := by
  sorry
```
