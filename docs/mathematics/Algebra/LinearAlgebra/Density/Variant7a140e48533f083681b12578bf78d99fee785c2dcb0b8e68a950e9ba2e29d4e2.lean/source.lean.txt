import Folder.Bitspace.Density

/-!
# Folder.Theorem.BinaryMatrix.Density

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports proved facts or contract exposures for the BinaryMatrix radiation program.
Ontology: proof.binary_matrix.density
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: infrastructure
-/


namespace Folder
namespace Theorem
namespace BinaryMatrix

theorem checkerboard_count_imbalance_abs_le_one
    (m n : Nat) :
    Int.natAbs (Bitspace.imbalance (Bitspace.checkerboard m n)) ≤ 1 :=
  Bitspace.checkerboard_count_imbalance_abs_le_one m n

end BinaryMatrix
end Theorem
end Folder
