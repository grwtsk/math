# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.Checks.Negative.PrefixInventoryMissingIdentity

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `00e443ab24b076683f1628c079d180b9a5b1c1d2` · SHA-256 `b87f549dc5d0675d9139cab69bdd7fd1c8d21486510741e73e7fa915e0012d90`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Upstream Mathlib and Lean authorship and Apache-2.0 licensing are preserved. -/
import GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.Checks.Positive.PrefixInventory

set_option autoImplicit false

open GRWTSK.Combinatorics.DirectedGraph.PrefixInventory.Checks.Positive

/- Equal endpoints cannot supply the missing equality of complete actual histories. -/
example : falseOccurrence = trueOccurrence :=
  parallel_same_endpoint
```
