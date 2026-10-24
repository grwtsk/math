# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Heat.Variant69ecb08b99cc6ab794e3f34e9c845b18eed0bafc416a3385153b9eafe56037d0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c229c8aa86bb24a6c475daae23a61c352584bb5e` · SHA-256 `69ecb08b99cc6ab794e3f34e9c845b18eed0bafc416a3385153b9eafe56037d0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.Projection

set_option autoImplicit false

namespace Think.RadoProjectedModularHeatflow

structure HeatGraphPolicy where
  usesTreeEdges : Bool
  usesPhasePoleEdges : Bool
  usesTargetWitnessEdges : Bool
  usesAggregatorEdges : Bool
deriving DecidableEq, Repr

def selectedHeatGraph : HeatGraphPolicy :=
  { usesTreeEdges := true
    usesPhasePoleEdges := true
    usesTargetWitnessEdges := true
    usesAggregatorEdges := true }

def dominantHeatCluster : List String :=
  [ "formal/Think/Pipeline"
  , "formal/Think/Pipeline/Center"
  , "formal/Think/Pipeline/Phases"
  , "formal/Think/Poles"
  , "formal/Think/Residues"
  , "formal/Think/SourceTree"
  ]

theorem dominantHeatCluster_count :
    dominantHeatCluster.length = 6 := by
  rfl

end Think.RadoProjectedModularHeatflow
```
