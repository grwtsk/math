# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SymmetricArchiveCodec.Variant32842b4000f01c9a22869b87b76bf098ba318c2f500db444ddfcad40c736602c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `87d54ac3543a83e48dd2708861e80948a6656326` · SHA-256 `32842b4000f01c9a22869b87b76bf098ba318c2f500db444ddfcad40c736602c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Archive.SymmetricArchiveCodec

/-!
# Folder.Theorem.Archive.SymmetricArchiveCodec

Radiation role: theorem-wrapper
BinaryMatrix spine: This wrapper exposes manifest serializer and copy archive materialization theorems.
Ontology: proof.archive.symmetric_archive_codec
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: carrier
-/

namespace Folder
namespace Theorem
namespace Archive

theorem manifestSerializer_decode_encode_copy_with
    (S : Folder.Archive.ManifestSerializer)
    (T : Folder.Archive.FolderTree) :
    Folder.Archive.decodeArchiveWith S Folder.Archive.copyPresentationEncoder
      (Folder.Archive.encodeArchiveWith S Folder.Archive.copyPresentationEncoder T) =
        some T :=
  Folder.Archive.manifestSerializer_decode_encode_copy_with S T

theorem copyArchive_materializes_file_layers_with
    (C : Folder.Archive.Byte.ByteCodec)
    (files : List (List Folder.Archive.Byte)) :
    Folder.Archive.materializeArchiveStream?
      (Folder.Archive.encodeCopyFileMatrixArchiveWith C files) =
        some (Folder.Archive.binaryMatrixStreamOfList
          (Folder.Archive.fileByteMatricesWith C files)) :=
  Folder.Archive.copyArchive_materializes_file_layers_with C files

end Archive
end Theorem
end Folder
```
