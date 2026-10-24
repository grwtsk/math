# Complete source: GRWTSK.Combinatorics.DirectedGraph.Checks.Negative.PrefixInventoryMissingIdentity

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d0a009b6cad2ac8ce40600dad1c3a9efc6305dea` · SHA-256 `348537a1ba82e4430ee3f1b5d79df0e873619d1658b1a370588c9e6d94765cdf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Upstream Mathlib and Lean authorship and Apache-2.0 licensing are preserved. -/
import GRWTSK.Combinatorics.DirectedGraph.Checks.Positive.PrefixInventory

set_option autoImplicit false

open GRWTSK.Combinatorics.DirectedGraph.PrefixInventory.Checks.Positive

/- Equal endpoints cannot supply the missing equality of complete actual histories. -/
example : falseOccurrence = trueOccurrence :=
  parallel_same_endpoint
```
