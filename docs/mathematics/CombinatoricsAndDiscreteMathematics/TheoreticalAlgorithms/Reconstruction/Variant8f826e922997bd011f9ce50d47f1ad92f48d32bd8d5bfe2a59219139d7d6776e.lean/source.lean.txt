import Folder.Archive.StandardReference

/-!
# Folder.Archive.Reconstruction

Radiation role: archive-reconstruction
BinaryMatrix spine: This module exposes stable reconstruction theorem names for symbolic BinaryMatrixStream archives.
Ontology: archive.reconstruction
Pivot role: none
Zero typology: none
Contract boundary: proved
Composite stack role: carrier
-/

namespace Folder
namespace Archive

theorem manifest_serializer_decode_encode_with
    (S : ManifestSerializer)
    (P : PresentationEncoder A)
    (T : FolderTree) :
    decodeArchiveWith S P (encodeArchiveWith S P T) = some T :=
  manifestSerializer_decode_encode_with S P T

theorem manifest_serializer_decode_encode_copy
    (S : ManifestSerializer)
    (T : FolderTree) :
    decodeArchiveWith S copyPresentationEncoder
      (encodeArchiveWith S copyPresentationEncoder T) = some T :=
  manifestSerializer_decode_encode_copy_with S T

theorem copy_archive_materializes_file_layers_with
    (C : Byte.ByteCodec)
    (files : List (List Byte)) :
    materializeArchiveStream?
      (encodeCopyFileMatrixArchiveWith C files) =
        some (binaryMatrixStreamOfList (fileByteMatricesWith C files)) :=
  Folder.Archive.copyArchive_materializes_file_layers_with C files

theorem materialize_index_spin_copy
    (D : MatrixAtomDictionary)
    (i : Nat)
    (M : Carrier.BinaryMatrix)
    (h : D.get? i = some M) :
    realizeIndexSpin? copyAction D
      { index := i, spin := () } = some M :=
  realize_copy_id D i M h

end Archive
end Folder
