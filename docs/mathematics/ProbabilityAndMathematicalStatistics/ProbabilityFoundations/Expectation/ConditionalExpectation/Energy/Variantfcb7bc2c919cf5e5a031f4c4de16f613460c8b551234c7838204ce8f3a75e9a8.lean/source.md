# Complete source: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.ConditionalExpectation.Energy.Variantfcb7bc2c919cf5e5a031f4c4de16f613460c8b551234c7838204ce8f3a75e9a8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `78be0c175d0c5477946b78470ecb64b654464e88` · SHA-256 `fcb7bc2c919cf5e5a031f4c4de16f613460c8b551234c7838204ce8f3a75e9a8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
