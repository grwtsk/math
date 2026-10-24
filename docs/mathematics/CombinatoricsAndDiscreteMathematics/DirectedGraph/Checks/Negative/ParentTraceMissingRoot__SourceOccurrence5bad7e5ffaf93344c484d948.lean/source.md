# Complete source: GRWTSK.Combinatorics.DirectedGraph.Checks.Negative.ParentTraceMissingRoot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bd34c18fe44694934cc3db3bd7bbe4a2015fe3e5` · SHA-256 `4436470f0453880d7b56b523bb548da2b26070bd495897ae7f2ca582d0bd271d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Imported Lean/Mathlib authorship and Apache-2.0 licensing remain attached to their imports. -/
import GRWTSK.Combinatorics.DirectedGraph.Checks.Positive.ParentTraceDictionary

set_option autoImplicit false

open GRWTSK.Combinatorics.DirectedGraph.PathUnfolding
open GRWTSK.Combinatorics.DirectedGraph.ParentTraceDictionary.Checks.Positive

/- Equal empty words cannot supply the missing identity of their retained roots. -/
example : (origin false).endpoint = (origin true).endpoint :=
  same_empty_words
```
