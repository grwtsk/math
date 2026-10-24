# Complete source: GRWTSK.Algebra.LinearAlgebra.PrimeFactorCellularArithmetic.Variant3afa99a7e91d99b3464c8ac7ff681fb95b4c384a1309c1ea41877a096bfd3501

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `31943831c648ed279536122237f161a3ed88572d` · SHA-256 `3afa99a7e91d99b3464c8ac7ff681fb95b4c384a1309c1ea41877a096bfd3501`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.NumberTheory.FundamentalTheorem
import Folder.CellularArithmetic.CellularRepresentation
import Folder.CellularArithmetic.BinaryMatrixEncoding
import Folder.Core.Ontology

/-!
# Folder.Core.PrimeFactorCellularArithmetic

Radiation role: core
BinaryMatrix spine: This module organizes prime-factor cellular arithmetic before data is encoded into BinaryMatrix carriers.
Ontology: concept.prime_factor_cellular_arithmetic
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/

namespace Folder
namespace Core

theorem prime_factor_cellular_decode_encode
    (n : NumberTheory.PositiveNat) :
    (CellularArithmetic.encodePositiveNat n).decode = n.val :=
  CellularArithmetic.decode_encode_positiveNat n

end Core
end Folder
```
