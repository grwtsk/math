import Folder.CellularArithmetic.CellularRepresentation

/-!
# Folder.Theorem.CellularArithmetic.Representation

Radiation role: theorem-wrapper
BinaryMatrix spine: This module participates in the finite carrier, cellular, spectral, torsion, or proof layer radiating from the BinaryMatrix spine.
Ontology: proof.cellular_arithmetic.representation
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: infrastructure
-/

namespace Folder
namespace Theorem
namespace CellularArithmetic

theorem decode_encode_positiveNat
    (n : Folder.NumberTheory.PositiveNat) :
    (Folder.CellularArithmetic.encodePositiveNat n).decode = n.val :=
  Folder.CellularArithmetic.decode_encode_positiveNat n

theorem factorMap_unique_of_same_number
    (A B : Folder.CellularArithmetic.CellularArithmeticRepresentation)
    (h : A.number.val = B.number.val) :
    A.factorMapRep.factorMap = B.factorMapRep.factorMap :=
  Folder.CellularArithmetic.factorMap_unique_of_same_number A B h

end CellularArithmetic
end Theorem
end Folder
