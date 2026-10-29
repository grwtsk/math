import Folder.Bitspace.Checkerboard

/-!
# Folder.Theorem.BinaryMatrix.Checkerboard

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports proved facts or contract exposures for the BinaryMatrix radiation program.
Ontology: proof.binary_matrix.checkerboard
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: infrastructure
-/


namespace Folder
namespace Theorem
namespace BinaryMatrix

theorem checkerboard_isProper2Coloring
    (m n : Nat) :
    Bitspace.IsProper2Coloring (Bitspace.checkerboard m n) :=
  Bitspace.checkerboard_isProper2Coloring m n

end BinaryMatrix
end Theorem
end Folder
