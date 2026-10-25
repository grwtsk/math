import Folder.Basic

/-!
# Folder.Carrier.Bit

Radiation role: core-carrier
BinaryMatrix spine: This module sits on or immediately beside Folder.Carrier.BinaryMatrix as finite carrier infrastructure for the radiation program.
Ontology: carrier.bit
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: carrier
-/


namespace Folder
namespace Carrier

abbrev Bit := ZMod 2

namespace Bit

def zero : Bit := 0
def one : Bit := 1
def flip (b : Bit) : Bit := b + 1

@[simp]
theorem flip_ne_self (b : Bit) : flip b ≠ b := by
  intro h
  have h1 : (1 : Bit) = 0 := by
    have hc := congrArg (fun x : Bit => x - b) h
    simp [flip] at hc
  norm_num at h1

@[simp]
theorem flip_flip (b : Bit) : flip (flip b) = b := by
  unfold flip
  have htwo : (1 : Bit) + 1 = 0 := by
    change ((2 : Nat) : Bit) = 0
    exact ZMod.natCast_self 2
  rw [add_assoc, htwo, add_zero]

end Bit
end Carrier
end Folder
