# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Bit.Variantaf45a827a95c67ba200b7e4ca5e73717296069050970fd073f9740369e475ae7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a2ff327ba492dc03af7d55ffacf99001d66fd1ed` · SHA-256 `af45a827a95c67ba200b7e4ca5e73717296069050970fd073f9740369e475ae7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
