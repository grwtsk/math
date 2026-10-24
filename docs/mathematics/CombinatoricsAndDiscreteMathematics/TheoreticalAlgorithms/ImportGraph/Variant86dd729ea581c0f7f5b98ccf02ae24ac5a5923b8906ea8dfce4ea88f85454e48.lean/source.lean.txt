import Surface.Incremental.Core

namespace Surface
namespace Incremental

open Surface.AST

structure ImportEdge where
  importer : ModuleKey
  imported : ModuleKey
  importString : String
  source : LeanSource
  claimBoundary : List String
deriving Repr

structure ImportGraph where
  modules : List ModuleKey
  edges : List ImportEdge
  graphHash : ContentHash
  claimBoundary : List String
deriving Repr

def imports
    (G : ImportGraph)
    (M I : ModuleKey) : Prop :=
  ∃ e ∈ G.edges, e.importer = M ∧ e.imported = I

theorem importEdge_boundary_visible
    (e : ImportEdge) :
    e.claimBoundary = e.claimBoundary :=
  rfl

end Incremental
end Surface
