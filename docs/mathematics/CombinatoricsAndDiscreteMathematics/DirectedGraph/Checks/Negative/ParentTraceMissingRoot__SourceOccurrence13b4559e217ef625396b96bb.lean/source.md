# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.Checks.Negative.ParentTraceMissingRoot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9fdc59df630afcdfe5d7beb052dd4eb27e5c5a3b` · SHA-256 `aede42155363a6ec8ba92ddbc17184843a2ab79294e70dec0ef3b38eef37d1fb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Imported Lean/Mathlib authorship and Apache-2.0 licensing remain attached to their imports. -/
import GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.Checks.Positive.ParentTraceDictionary

set_option autoImplicit false

open GRWTSK.Combinatorics.DirectedGraph.PathUnfolding
open GRWTSK.Combinatorics.DirectedGraph.ParentTraceDictionary.Checks.Positive

/- Equal empty words cannot supply the missing identity of their retained roots. -/
example : (origin false).endpoint = (origin true).endpoint :=
  same_empty_words
```
