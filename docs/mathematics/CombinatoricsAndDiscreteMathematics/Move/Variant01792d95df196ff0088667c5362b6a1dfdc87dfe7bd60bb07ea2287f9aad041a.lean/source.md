# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Move.Variant01792d95df196ff0088667c5362b6a1dfdc87dfe7bd60bb07ea2287f9aad041a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c490ba5c92d984dd674caa36492e03bb75fb330a` · SHA-256 `01792d95df196ff0088667c5362b6a1dfdc87dfe7bd60bb07ea2287f9aad041a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import DAF.Terrain.Boundary

/-!
# Globally located terrain moves

A terrain move identifies endpoints and an exact global locus, while retaining
before/after boundary and resource states.  This is declarative move data, not
yet a certificate of complete cross-domain legality.
-/

universe u v

namespace DAF.Terrain

inductive TerrainMoveKind
  | transfer
  | boundaryUpdate
  | obstacleUpdate
  | adjacencyUpdate
  | localReplacement
  deriving DecidableEq, Repr

/-- One finite move located inside a fixed maximal coordinate frame. -/
structure TerrainMove {State : Type u} (G : KnownMaximalState State)
    (V : Type v) [Fintype V] [DecidableEq V] where
  kind : TerrainMoveKind
  source : V
  target : V
  locus : AbsoluteRegion G
  vertexGlobal : V ↪ G.Coord
  source_in_locus :
    letI := G.coordDecEq
    vertexGlobal source ∈ locus.coordinates
  target_in_locus :
    letI := G.coordDecEq
    vertexGlobal target ∈ locus.coordinates
  beforeTerrain : Terrain V
  afterTerrain : Terrain V
  beforeBoundary : BoundaryState V
  afterBoundary : BoundaryState V
  beforeResources : ResourceState V
  afterResources : ResourceState V
  movedAmount : Real

namespace TerrainMove

variable {State : Type u} {G : KnownMaximalState State}
  {V : Type v} [Fintype V] [DecidableEq V]

theorem endpoints_have_absolute_loci (M : TerrainMove G V) :
    letI := G.coordDecEq
    M.vertexGlobal M.source ∈ M.locus.coordinates ∧
      M.vertexGlobal M.target ∈ M.locus.coordinates := by
  letI := G.coordDecEq
  exact ⟨M.source_in_locus, M.target_in_locus⟩

end TerrainMove

end DAF.Terrain
```
