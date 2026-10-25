# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CompleteMatchQueue.Variantc376a00d4f4c60e4948b7a8f1a1fa955d64cb08c235d3d2930c48b9a61fc14d8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `17898c100d1cf4d6a89cd876752d3b619882c493` · SHA-256 `c376a00d4f4c60e4948b7a8f1a1fa955d64cb08c235d3d2930c48b9a61fc14d8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Batteries.Data.BinomialHeap.Basic
import Aesop.Forward.Match

set_option linter.missingDocs true

namespace Aesop

open Batteries (BinomialHeap)

/-- A complete match queue. -/
abbrev CompleteMatchQueue := BinomialHeap ForwardRuleMatch ForwardRuleMatch.le

namespace CompleteMatchQueue

/-- Drop elements satisfying `f` from the front of `queue` until we reach
an element that does not satisfy `f` (or until the queue is empty). -/
partial def dropInitial (queue : CompleteMatchQueue)
    (f : ForwardRuleMatch → Bool) : CompleteMatchQueue :=
  match queue.deleteMin with
  | none => queue
  | some (m, queue') =>
    if f m then
      dropInitial queue' f
    else
      queue

end Aesop.CompleteMatchQueue
```
