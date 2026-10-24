import Folder.Carrier.BinaryMatrix

/-!
# Folder.Bitspace.Energy

Radiation role: shell-filtration
BinaryMatrix spine: This module organizes boundary, shell, or expansion layers radiating out from BinaryMatrix-shaped finite carriers.
Ontology: bitspace.energy
Pivot role: spectral
Zero typology: spectral
Contract boundary: definition
Composite stack role: field
-/


namespace Folder
namespace Bitspace

open Carrier

def bitEnergy (b : Bit) : Nat :=
  if b = 0 then 0 else 1

noncomputable def matrixEnergy (M : BinaryMatrix) : Nat :=
  BinaryMatrix.countOnes M

theorem matrixEnergy_nonnegative (M : BinaryMatrix) :
    0 ≤ matrixEnergy M := by
  omega

end Bitspace
end Folder
