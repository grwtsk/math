# Complete source: GRWTSK.Algebra.LinearAlgebra.CubeBridge.Variant376dca78f5c9ebc2f173c8fdca4b3cf81824d4ae05b9cfb6638393dd610ca1c2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `71ba36c4282957e997824344d98ad445dcd11aae` · SHA-256 `376dca78f5c9ebc2f173c8fdca4b3cf81824d4ae05b9cfb6638393dd610ca1c2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Carrier.BinaryMatrix
import Folder.Cellular.Cube

/-!
# Folder.BinaryMatrix.CubeBridge

Radiation role: core-carrier
BinaryMatrix spine: This module sits on or immediately beside Folder.Carrier.BinaryMatrix as finite carrier infrastructure for the radiation program.
Ontology: bm.cube_bridge
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: carrier
-/


namespace Folder
namespace BinaryMatrix

def IsPowerTwoSquare (M : Carrier.BinaryMatrix) : Prop :=
  ∃ k, M.m = 2 ^ k ∧ M.n = 2 ^ k

structure BinaryCubeLevel (M : Carrier.BinaryMatrix) where
  level : Nat
  rows_eq : M.m = 2 ^ level
  cols_eq : M.n = 2 ^ level

theorem binaryCubeLevel_shape
    (M : Carrier.BinaryMatrix)
    (L : BinaryCubeLevel M) :
    M.m = 2 ^ L.level ∧ M.n = 2 ^ L.level :=
  ⟨L.rows_eq, L.cols_eq⟩

abbrev BinaryCubeSignal
    (M : Carrier.BinaryMatrix)
    (L : BinaryCubeLevel M) :=
  Cellular.CubeAddress 2 L.level → Carrier.Bit

end BinaryMatrix
end Folder
```
