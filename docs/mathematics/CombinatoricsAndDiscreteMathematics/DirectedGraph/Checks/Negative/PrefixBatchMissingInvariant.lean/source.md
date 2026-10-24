# Complete source: GRWTSK.Combinatorics.DirectedGraph.Checks.Negative.PrefixBatchMissingInvariant

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `813990fc42a6c346bfa73ec1e9830d02c1404a63` · SHA-256 `1e157ba8ce42a5072f9010d0670e0198b930e29555f626a988b9c623f93ce59c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Imported Lean/Mathlib authorship and Apache-2.0 licensing remain attached to their imports. -/
import GRWTSK.Combinatorics.DirectedGraph.Checks.Positive.PrefixTableBatch

set_option autoImplicit false

open GRWTSK.Combinatorics.DirectedGraph
open PrefixTableBatch PrefixTableState PrefixInventory
open PrefixTableBatch.Checks.Positive

/-- Validity of the empty state cannot certify the actual hostile initial reference. -/
example : PrefixTableState.decode (run invalid [singletonRows]) =
    (PrefixTableState.decode invalid).map
      (fun entries => entries ++ [singletonRows].flatMap traceRows) :=
  decode_run invalid (empty_wellFormed vertexA) [singletonRows]
```
