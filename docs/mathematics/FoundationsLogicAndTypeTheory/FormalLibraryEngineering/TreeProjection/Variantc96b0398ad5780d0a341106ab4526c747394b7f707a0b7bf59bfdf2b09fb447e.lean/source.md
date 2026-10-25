# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TreeProjection.Variantc96b0398ad5780d0a341106ab4526c747394b7f707a0b7bf59bfdf2b09fb447e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6fed25ff3b9cd51b2a69a198c88608ede6fc1a48` · SHA-256 `c96b0398ad5780d0a341106ab4526c747394b7f707a0b7bf59bfdf2b09fb447e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Noeoueue.Memory.TypeGraph

namespace Noeoueue.TypeMemory

structure ForestReplayCertificate where
  canonicalDigest : String
  treeDigest : String
  nonTreeDigest : String
  hyperedgeDigest : String
  replayDigest : String

/-- `type-memory://noeoueue/tree-replay@1`: replay is equality to the canonical digest,
not authority transferred to the filesystem. -/
def Replays (c : ForestReplayCertificate) : Prop := c.replayDigest = c.canonicalDigest

end Noeoueue.TypeMemory
```
