import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.MemoryCore.Episode

set_option autoImplicit false

namespace Think.RadoProjectedModularHeatflow.MemoryCore

structure TimeAwareGist where
  sourceEpisode : MemoryVertex
  gistVertex : MemoryVertex
  resolvedTimestamp : Option String
  sourceIsEpisode : sourceEpisode.kind = MemoryKind.episode
  gistIsBridge : gistVertex.side = BoundarySide.bridge

def TimeAwareGist.validBridge (g : TimeAwareGist) : Prop :=
  g.gistVertex.kind = MemoryKind.gist ∧ g.gistVertex.side = BoundarySide.bridge

end Think.RadoProjectedModularHeatflow.MemoryCore
