# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ImportGraph.Variant86dd729ea581c0f7f5b98ccf02ae24ac5a5923b8906ea8dfce4ea88f85454e48

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a1e4f310011dd6c528ccfae34ef01e476f5f6fc4` · SHA-256 `86dd729ea581c0f7f5b98ccf02ae24ac5a5923b8906ea8dfce4ea88f85454e48`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
