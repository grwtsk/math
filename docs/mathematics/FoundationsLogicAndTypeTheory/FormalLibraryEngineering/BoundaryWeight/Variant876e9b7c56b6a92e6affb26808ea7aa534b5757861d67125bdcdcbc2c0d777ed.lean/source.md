# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BoundaryWeight.Variant876e9b7c56b6a92e6affb26808ea7aa534b5757861d67125bdcdcbc2c0d777ed

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `60f8b75f380734bab347d319cc0aa159c7220809` · SHA-256 `876e9b7c56b6a92e6affb26808ea7aa534b5757861d67125bdcdcbc2c0d777ed`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.BoundaryHeat

set_option autoImplicit false

namespace Think.RadoProjectedModularHeatflow.BoundaryMemory

structure BoundaryWeightInput where
  vertex : Think.RadoProjectedModularHeatflow.MemoryCore.MemoryVertex
  heat : Int
  residueMagnitude : Nat
  temporalSpecificity : Nat
  centrality : Nat

def evenProjection (n : Nat) : Nat :=
  2 * ((n + 1) / 2)

def boundaryWeight (input : BoundaryWeightInput) : Nat :=
  evenProjection
    (input.vertex.weight + input.residueMagnitude +
      input.temporalSpecificity + input.centrality)

theorem boundaryWeight_even (input : BoundaryWeightInput) :
    boundaryWeight input % 2 = 0 := by
  unfold boundaryWeight evenProjection
  rw [Nat.mul_mod_right]

structure BoundaryModularShadow where
  form : Think.RadoProjectedModularHeatflow.MemoryCore.ModularMemoryForm
  side : Think.RadoProjectedModularHeatflow.MemoryCore.BoundarySide
  transformationLawDeclared : Bool

end Think.RadoProjectedModularHeatflow.BoundaryMemory
```
