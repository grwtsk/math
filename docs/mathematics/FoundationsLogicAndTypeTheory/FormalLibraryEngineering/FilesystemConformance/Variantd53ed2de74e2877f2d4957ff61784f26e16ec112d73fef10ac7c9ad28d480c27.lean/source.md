# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FilesystemConformance.Variantd53ed2de74e2877f2d4957ff61784f26e16ec112d73fef10ac7c9ad28d480c27

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `33eed954b27f8a2425a2cd673143eeda21e1c2fd` · SHA-256 `d53ed2de74e2877f2d4957ff61784f26e16ec112d73fef10ac7c9ad28d480c27`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Noeoueue.Memory.TreeProjection

namespace Noeoueue.TypeMemory

/-- Traversal cannot change admission status because the replay certificate contains no writer. -/
theorem filesystem_replay_preserves_digest (c : ForestReplayCertificate) (h : Replays c) :
    c.replayDigest = c.canonicalDigest := h

end Noeoueue.TypeMemory
```
