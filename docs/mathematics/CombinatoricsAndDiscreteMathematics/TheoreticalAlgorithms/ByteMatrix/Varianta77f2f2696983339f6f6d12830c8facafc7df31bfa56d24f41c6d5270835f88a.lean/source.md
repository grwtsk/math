# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ByteMatrix.Varianta77f2f2696983339f6f6d12830c8facafc7df31bfa56d24f41c6d5270835f88a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d56facd404fd882b33db2d38e12fed04b064a9c0` · SHA-256 `a77f2f2696983339f6f6d12830c8facafc7df31bfa56d24f41c6d5270835f88a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Archive.ByteMatrix

/-!
# Folder.Theorem.Archive.ByteMatrix

Radiation role: theorem-wrapper
BinaryMatrix spine: This wrapper exposes byte-to-BinaryMatrix codec reconstruction.
Ontology: proof.archive.byte_matrix
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: carrier
-/

namespace Folder
namespace Theorem
namespace Archive

theorem matrixToBytes?_bytesToMatrix_of_codec
    (C : Folder.Archive.Byte.ByteCodec)
    (bs : List Folder.Archive.Byte) :
    Folder.Archive.matrixToBytesWith C
      (Folder.Archive.bytesToMatrixWith C bs) = some bs :=
  Folder.Archive.matrixToBytes?_bytesToMatrix_of_codec C bs

end Archive
end Theorem
end Folder
```
