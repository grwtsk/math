import Folder.Archive.Reconstruction

/-!
# Folder.Theorem.Archive.Reconstruction

Radiation role: theorem-wrapper
BinaryMatrix spine: This wrapper exposes stable archive reconstruction theorem names.
Ontology: proof.archive.reconstruction
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: carrier
-/

namespace Folder
namespace Theorem
namespace Archive

theorem manifest_serializer_decode_encode_copy
    (S : Folder.Archive.ManifestSerializer)
    (T : Folder.Archive.FolderTree) :
    Folder.Archive.decodeArchiveWith S Folder.Archive.copyPresentationEncoder
      (Folder.Archive.encodeArchiveWith S Folder.Archive.copyPresentationEncoder T) =
        some T :=
  Folder.Archive.manifest_serializer_decode_encode_copy S T

theorem copy_archive_materializes_file_layers_with
    (C : Folder.Archive.Byte.ByteCodec)
    (files : List (List Folder.Archive.Byte)) :
    Folder.Archive.materializeArchiveStream?
      (Folder.Archive.encodeCopyFileMatrixArchiveWith C files) =
        some (Folder.Archive.binaryMatrixStreamOfList
          (Folder.Archive.fileByteMatricesWith C files)) :=
  Folder.Archive.copy_archive_materializes_file_layers_with C files

theorem materialize_index_spin_copy
    (D : Folder.Archive.MatrixAtomDictionary)
    (i : Nat)
    (M : Folder.Carrier.BinaryMatrix)
    (h : D.get? i = some M) :
    Folder.Archive.realizeIndexSpin? Folder.Archive.copyAction D
      { index := i, spin := () } = some M :=
  Folder.Archive.materialize_index_spin_copy D i M h

end Archive
end Theorem
end Folder
