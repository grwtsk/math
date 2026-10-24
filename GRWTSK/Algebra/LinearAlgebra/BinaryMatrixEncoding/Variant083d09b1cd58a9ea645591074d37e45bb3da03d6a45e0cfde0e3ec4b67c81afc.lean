import Folder.CellularArithmetic.BinaryMatrixEncoding

/-!
# Folder.Theorem.CellularArithmetic.BinaryMatrixEncoding

Radiation role: theorem-wrapper
BinaryMatrix spine: This module participates in the finite carrier, cellular, spectral, torsion, or proof layer radiating from the BinaryMatrix spine.
Ontology: proof.cellular_arithmetic.binary_matrix_encoding
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: infrastructure
-/

namespace Folder
namespace Theorem
namespace CellularArithmetic

theorem unaryBinaryMatrix_shape
    (n : Folder.NumberTheory.PositiveNat) :
    (Folder.CellularArithmetic.unaryBinaryMatrixOfNat n).m = 1 ∧
    (Folder.CellularArithmetic.unaryBinaryMatrixOfNat n).n = n.val :=
  Folder.CellularArithmetic.unaryBinaryMatrix_shape n

end CellularArithmetic
end Theorem
end Folder
