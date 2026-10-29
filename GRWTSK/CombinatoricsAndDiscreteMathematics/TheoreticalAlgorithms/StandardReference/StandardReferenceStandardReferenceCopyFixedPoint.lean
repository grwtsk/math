import Folder.Archive.SymmetricArchiveCodec
import Folder.Archive.FixedPoint
import Folder.Archive.FactorTreeIndex

/-!
# Folder.Archive.StandardReference

Radiation role: archive-standard-reference
BinaryMatrix spine: This module names the copy standard reference for symbolic BinaryMatrixStream archives.
Ontology: archive.standard_reference
Pivot role: arithmetic
Zero typology: none
Contract boundary: proved
Composite stack role: carrier
-/

namespace Folder
namespace Archive

def standardReferenceCopyFixedPoint
    (M : Carrier.BinaryMatrix) :
    FixedPointCertificate copyRule M :=
  copyFixedPointCertificate M

theorem standardReference_manifestSerializer_roundtrip_copy
    (S : ManifestSerializer)
    (T : FolderTree) :
    decodeArchiveWith S copyPresentationEncoder
      (encodeArchiveWith S copyPresentationEncoder T) = some T :=
  manifestSerializer_decode_encode_copy_with S T

theorem standardReference_copyArchive_materializes_file_layers
    (C : Byte.ByteCodec)
    (files : List (List Byte)) :
    materializeArchiveStream?
      (encodeCopyFileMatrixArchiveWith C files) =
        some (binaryMatrixStreamOfList (fileByteMatricesWith C files)) :=
  copyArchive_materializes_file_layers_with C files

def standardReference_rectV4_runtime_target : Prop :=
  rectV4ActionContractTarget

end Archive
end Folder
