# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.DependentFunctions.SuppliedArchiveValueFunctions.Variant33c84900907631c8.ArchiveValueMapsAndEquations

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bec89bf4291fc59e40d6c5a0dfe47c5c39b3d8fa` · SHA-256 `7c3f8ad3c8d141898ccbd7bf92f5c27e5f9434afebde237e94a834e0bc49ee57`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
ArchiveValueMapsAndEquations — individually reviewed exact source
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 33c84900907631c8a0518b09213858cf9816aeb400124d2d450c7ceda4fe25b6
Organized SHA-256: 2879e58d075fd5f8e7279803e87e064e89e421aec5b4130b9be434dd5c80becd
PMD: 510.0.070.020.010 dependent functions (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Whole archive package/metadata, all exact maps and all four source equations retained. encodeArchiveWith uses P.encodeMatrices [] and empty metadata; decodeArchiveWith reads only manifestBytes and ignores P/stream/metadata. Copy-list packaging instead uses empty manifest bytes. No consistency, serialized payload recovery, path/hash validation, concrete serializer/byte codec or filesystem IO is proved. -/

import Folder.Archive.Byte
import Folder.Archive.ByteMatrix
import Folder.Archive.FolderTree
import Folder.Archive.Manifest
import Folder.Archive.MatrixOrbit

import GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.DependentFunctions.SuppliedArchiveValueFunctions.Variant33c84900907631c8.SuppliedManifestRetraction
import GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.DependentFunctions.SuppliedArchiveValueFunctions.Variant33c84900907631c8.SuppliedPresentationEncoder

/-!
# Folder.Archive.SymmetricArchiveCodec

Radiation role: archive-codec
BinaryMatrix spine: This module separates manifest serializer roundtrip from copy-presentation BinaryMatrixStream materialization.
Ontology: archive.symmetric_bitmatrix_stream
Pivot role: none
Zero typology: none
Contract boundary: proved
Composite stack role: carrier
-/

namespace GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.DependentFunctions.SuppliedArchiveValueFunctions.Variant33c84900907631c8

open Folder
open Folder.Archive

structure SymmetricArchivePackage (A : MatrixAction) where
  manifestBytes : List Byte
  stream : SymmetricMatrixStream A copyRuleEngine
  manifest : ArchiveManifest


def emptyArchiveManifest : ArchiveManifest where
  dirs := []
  files := []
  atomCount := 0
  logicalLayerCount := 0
  symmetryGroup := "copy"
  rulebookId := "copy"


def encodeArchiveWith
    (S : ManifestSerializer)
    (P : PresentationEncoder A)
    (T : FolderTree) :
    SymmetricArchivePackage A where
  manifestBytes := S.serialize T
  stream := P.encodeMatrices []
  manifest := emptyArchiveManifest


def decodeArchiveWith
    (S : ManifestSerializer)
    (_P : PresentationEncoder A)
    (B : SymmetricArchivePackage A) :
    Option FolderTree :=
  S.deserialize B.manifestBytes


noncomputable def materializeArchiveStream?
    (B : SymmetricArchivePackage A) :
    Option Carrier.BinaryMatrixStream :=
  materialize? B.stream


def encodeCopyMatrixArchive
    (xs : List Carrier.BinaryMatrix) :
    SymmetricArchivePackage copyAction where
  manifestBytes := []
  stream := copyAtomStream xs
  manifest := {
    emptyArchiveManifest with
    atomCount := xs.length
    logicalLayerCount := xs.length
  }


def fileByteMatricesWith
    (C : Byte.ByteCodec)
    (files : List (List Byte)) :
    List Carrier.BinaryMatrix :=
  files.map (bytesToMatrixWith C)


def encodeCopyFileMatrixArchiveWith
    (C : Byte.ByteCodec)
    (files : List (List Byte)) :
    SymmetricArchivePackage copyAction :=
  encodeCopyMatrixArchive (fileByteMatricesWith C files)


theorem manifestSerializer_decode_encode_with
    (S : ManifestSerializer)
    (P : PresentationEncoder A)
    (T : FolderTree) :
    decodeArchiveWith S P (encodeArchiveWith S P T) = some T :=
  S.roundtrip T


theorem manifestSerializer_decode_encode_copy_with
    (S : ManifestSerializer)
    (T : FolderTree) :
    decodeArchiveWith S copyPresentationEncoder
      (encodeArchiveWith S copyPresentationEncoder T) = some T :=
  S.roundtrip T


theorem encodeCopyMatrixArchive_materializes
    (xs : List Carrier.BinaryMatrix) :
    materializeArchiveStream? (encodeCopyMatrixArchive xs) =
      some (binaryMatrixStreamOfList xs) :=
  materialize_copy_atom_stream xs


theorem copyArchive_materializes_file_layers_with
    (C : Byte.ByteCodec)
    (files : List (List Byte)) :
    materializeArchiveStream?
      (encodeCopyFileMatrixArchiveWith C files) =
        some (binaryMatrixStreamOfList (fileByteMatricesWith C files)) :=
  materialize_copy_atom_stream (fileByteMatricesWith C files)


end GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.DependentFunctions.SuppliedArchiveValueFunctions.Variant33c84900907631c8
```
