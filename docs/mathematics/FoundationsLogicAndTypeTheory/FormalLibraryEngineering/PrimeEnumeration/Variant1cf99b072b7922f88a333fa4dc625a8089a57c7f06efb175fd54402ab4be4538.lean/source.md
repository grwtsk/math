# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PrimeEnumeration.Variant1cf99b072b7922f88a333fa4dc625a8089a57c7f06efb175fd54402ab4be4538

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1448c10332bfd2f9a4867789bb926d6a58239556` · SHA-256 `1cf99b072b7922f88a333fa4dc625a8089a57c7f06efb175fd54402ab4be4538`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.NumberTheory.FundamentalTheorem

/-!
# Folder.NumberTheory.PrimeEnumeration

Radiation role: number-theory
BinaryMatrix spine: This module organizes prime-factor cellular arithmetic before data is encoded into BinaryMatrix carriers.
Ontology: nt.prime_enumeration
Pivot role: arithmetic
Zero typology: none
Contract boundary: definition
Composite stack role: arithmetic
-/

namespace Folder
namespace NumberTheory

def factorizationLabel (_n : PositiveNat) : String :=
  "Nat.factorization label"

def IsNaturalCountingLabel (n : PositiveNat) : Prop :=
  factorProduct (FactorizationMap n) = n.val

theorem naturalCountingLabel_correct
    (n : PositiveNat) :
    IsNaturalCountingLabel n :=
  factorProduct_factorization n

end NumberTheory
end Folder
```
