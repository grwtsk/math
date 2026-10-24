# Complete source: GRWTSK.Algebra.LinearAlgebra.MatrixSymmetry.Variant650758e163db1f97f8340faa7198e00de28c9cc450fe6b7e5e4bf34e40bbe35f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8b1fdb8619e25b077a4e4438f6f4cfc66c9ca396` · SHA-256 `650758e163db1f97f8340faa7198e00de28c9cc450fe6b7e5e4bf34e40bbe35f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Archive.MatrixSymmetry

/-!
# Folder.Theorem.Archive.MatrixSymmetry

Radiation role: theorem-wrapper
BinaryMatrix spine: This wrapper exposes copy-action matrix symmetry facts.
Ontology: proof.archive.matrix_symmetry
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: carrier
-/

namespace Folder
namespace Theorem
namespace Archive

theorem copyAction_id_act
    (M : Folder.Carrier.BinaryMatrix) :
    Folder.Archive.copyAction.act Folder.Archive.copyAction.id M = M :=
  Folder.Archive.copyAction_id_act M

end Archive
end Theorem
end Folder
```
