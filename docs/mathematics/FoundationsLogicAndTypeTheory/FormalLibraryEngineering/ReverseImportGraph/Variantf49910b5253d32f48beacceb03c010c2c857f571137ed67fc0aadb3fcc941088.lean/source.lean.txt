import Surface.Incremental.ImportGraph

namespace Surface
namespace Incremental

def reverseImports
    (G : ImportGraph)
    (I M : ModuleKey) : Prop :=
  imports G M I

theorem reverseImports_iff_imports
    (G : ImportGraph)
    (I M : ModuleKey) :
    reverseImports G I M ↔ imports G M I := by
  rfl

end Incremental
end Surface
