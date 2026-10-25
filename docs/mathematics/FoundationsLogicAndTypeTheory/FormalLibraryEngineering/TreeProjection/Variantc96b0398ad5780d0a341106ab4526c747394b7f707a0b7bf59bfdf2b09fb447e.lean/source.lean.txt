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
