# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CoreNegative.Variant40fb847d9b313035c0017e95a57c5a9d2697b85bc7e54f7545fafa2318ded8fd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8354226703c0a80aee8bffc7dfbe4e3f16ff173e` · SHA-256 `40fb847d9b313035c0017e95a57c5a9d2697b85bc7e54f7545fafa2318ded8fd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Init

/- Deliberately ill-typed qualification input; an actual compiler must reject it. -/
example : (0 : Nat) = 1 := rfl
```
