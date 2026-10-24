import Folder.CellularArithmetic.Grammar

/-!
# Folder.Theorem.CellularArithmetic.Grammar

Radiation role: theorem-wrapper
BinaryMatrix spine: This module participates in the finite carrier, cellular, spectral, torsion, or proof layer radiating from the BinaryMatrix spine.
Ontology: proof.cellular_arithmetic.grammar
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: infrastructure
-/

namespace Folder
namespace Theorem
namespace CellularArithmetic

theorem cellularToArithmetic_arithmeticToCellular
    (t : Folder.CellularArithmetic.ArithmeticFactorTerm) :
    Folder.CellularArithmetic.cellularToArithmetic
        (Folder.CellularArithmetic.arithmeticToCellular t) = t :=
  Folder.CellularArithmetic.cellularToArithmetic_arithmeticToCellular t

theorem arithmeticToCellular_cellularToArithmetic
    (t : Folder.CellularArithmetic.CellularFactorTerm) :
    Folder.CellularArithmetic.arithmeticToCellular
        (Folder.CellularArithmetic.cellularToArithmetic t) = t :=
  Folder.CellularArithmetic.arithmeticToCellular_cellularToArithmetic t

theorem decode_arithmeticToCellular
    (t : Folder.CellularArithmetic.ArithmeticFactorTerm) :
    (Folder.CellularArithmetic.arithmeticToCellular t).decode = t.eval :=
  Folder.CellularArithmetic.decode_arithmeticToCellular t

end CellularArithmetic
end Theorem
end Folder
