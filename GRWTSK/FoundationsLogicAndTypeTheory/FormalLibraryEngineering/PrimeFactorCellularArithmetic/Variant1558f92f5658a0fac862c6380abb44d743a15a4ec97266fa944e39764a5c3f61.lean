import Folder.Core.PrimeFactorCellularArithmetic

/-!
# Folder.Theorem.Core.PrimeFactorCellularArithmetic

Radiation role: theorem-wrapper
BinaryMatrix spine: This module participates in the finite carrier, cellular, spectral, torsion, or proof layer radiating from the BinaryMatrix spine.
Ontology: proof.core.prime_factor_cellular_arithmetic
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: infrastructure
-/

namespace Folder
namespace Theorem
namespace Core

theorem prime_factor_cellular_decode_encode
    (n : Folder.NumberTheory.PositiveNat) :
    (Folder.CellularArithmetic.encodePositiveNat n).decode = n.val :=
  Folder.Core.prime_factor_cellular_decode_encode n

end Core
end Theorem
end Folder
