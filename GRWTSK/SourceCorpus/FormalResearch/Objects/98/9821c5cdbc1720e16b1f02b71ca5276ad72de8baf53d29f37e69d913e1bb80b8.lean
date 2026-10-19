import Folder.Archive.StandardReference

/-!
# Folder.Theorem.Archive.StandardReference

Radiation role: theorem-wrapper
BinaryMatrix spine: This wrapper exposes standard manifest and copy materialization archive reference theorems.
Ontology: proof.archive.standard_reference
Pivot role: arithmetic
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: carrier
-/

namespace Folder
namespace Theorem
namespace Archive

theorem standardReference_manifestSerializer_roundtrip_copy
    (S : Folder.Archive.ManifestSerializer)
    (T : Folder.Archive.FolderTree) :
    Folder.Archive.decodeArchiveWith S Folder.Archive.copyPresentationEncoder
      (Folder.Archive.encodeArchiveWith S Folder.Archive.copyPresentationEncoder T) =
        some T :=
  Folder.Archive.standardReference_manifestSerializer_roundtrip_copy S T

theorem standardReference_copyArchive_materializes_file_layers
    (C : Folder.Archive.Byte.ByteCodec)
    (files : List (List Folder.Archive.Byte)) :
    Folder.Archive.materializeArchiveStream?
      (Folder.Archive.encodeCopyFileMatrixArchiveWith C files) =
        some (Folder.Archive.binaryMatrixStreamOfList
          (Folder.Archive.fileByteMatricesWith C files)) :=
  Folder.Archive.standardReference_copyArchive_materializes_file_layers C files

end Archive
end Theorem
end Folder
