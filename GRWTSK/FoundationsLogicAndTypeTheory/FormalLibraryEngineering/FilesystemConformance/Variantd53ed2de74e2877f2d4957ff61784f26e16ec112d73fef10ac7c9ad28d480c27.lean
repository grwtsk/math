import Noeoueue.Memory.TreeProjection

namespace Noeoueue.TypeMemory

/-- Traversal cannot change admission status because the replay certificate contains no writer. -/
theorem filesystem_replay_preserves_digest (c : ForestReplayCertificate) (h : Replays c) :
    c.replayDigest = c.canonicalDigest := h

end Noeoueue.TypeMemory
