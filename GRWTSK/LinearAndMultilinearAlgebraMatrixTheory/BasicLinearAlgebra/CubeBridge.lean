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
