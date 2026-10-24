# Complete source: GRWTSK.LinearAlgebra.OrientedRealLine.Checks.Negative.SomeNormalizationToAll

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `22820df684aad494a517d113fa8171cdb6bb94e5` · SHA-256 `6f145330b9a17f1602ce6bddd9432a1080b8c690d29395cfe76ce496ca1a05df`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT. Intended type rejection. -/
import GRWTSK.LinearAlgebra.OrientedRealLine.Coherence

set_option autoImplicit false

open GRWTSK.LinearAlgebra.OrientedRealLine

example {L M : Line} (P : PolyIsomorphism L M) (x : L.Carrier)
    (h : ∃ f ∈ P, M.coordinate (f.linearEquiv x) ≤ 1) :
    ∀ f ∈ P, M.coordinate (f.linearEquiv x) ≤ 1 := by
  exact h
```
