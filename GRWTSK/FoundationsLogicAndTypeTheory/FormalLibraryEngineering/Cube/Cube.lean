import Folder.Cellular.Cube

/-!
# Folder.Theorem.Cellular.Cube

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports proved facts or contract exposures for the BinaryMatrix radiation program.
Ontology: proof.cellular.cube
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: infrastructure
-/


namespace Folder
namespace Theorem
namespace Cellular
namespace Cube

theorem cubeSide_succ
    (k : Nat) :
    Folder.Cellular.cubeSide (k + 1) =
      2 * Folder.Cellular.cubeSide k :=
  Folder.Cellular.cubeSide_succ k

theorem appendBits_coord_val
    {d k : Nat}
    (x : Folder.Cellular.CubeAddress d k)
    (b : Fin d → Fin 2)
    (i : Fin d) :
    (Folder.Cellular.appendBits x b i).val =
      2 * (x i).val + (b i).val :=
  Folder.Cellular.appendBits_coord_val x b i

theorem embedLow_coord_val
    {d k : Nat}
    (x : Folder.Cellular.CubeAddress d k)
    (i : Fin d) :
    (Folder.Cellular.embedLow x i).val = 2 * (x i).val :=
  Folder.Cellular.embedLow_coord_val x i

end Cube
end Cellular
end Theorem
end Folder
