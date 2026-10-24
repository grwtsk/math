# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.StandardReference.Variant9821c5cdbc1720e16b1f02b71ca5276ad72de8baf53d29f37e69d913e1bb80b8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `068ac60ea4a3ef489a0e7d8ad4f48e279de3f6ea` · SHA-256 `9821c5cdbc1720e16b1f02b71ca5276ad72de8baf53d29f37e69d913e1bb80b8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
