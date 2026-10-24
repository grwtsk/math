# Complete source: GRWTSK.Algebra.LinearAlgebra.Checkerboard.Variant3bb1bb32cc7a2e26bc38f8ee80da6045242d269e3f3809e662afe85e92c89440

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9a5d07e8362819983dc2e0a45b22a757a32b19b5` · SHA-256 `3bb1bb32cc7a2e26bc38f8ee80da6045242d269e3f3809e662afe85e92c89440`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
