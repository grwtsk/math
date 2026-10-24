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
