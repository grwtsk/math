import Folder.Carrier.BinaryMatrix
import Folder.Carrier.Grid

/-!
# Folder.BinaryMatrix.Radiation

Radiation role: core-carrier
BinaryMatrix spine: This module sits on or immediately beside Folder.Carrier.BinaryMatrix as finite carrier infrastructure for the radiation program.
Ontology: bm.radiation
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: carrier
-/


namespace Folder
namespace BinaryMatrix

structure RadiationSpine where
  carrier : Type _
  description : String

def binaryMatrixSpine : RadiationSpine where
  carrier := Carrier.BinaryMatrix
  description :=
    "BinaryMatrix is the finite cellular carrier from which cube address spaces, shell filtrations, spectral heat fields, finite phase connections, and torsion compatibility modules radiate."

end BinaryMatrix
end Folder
