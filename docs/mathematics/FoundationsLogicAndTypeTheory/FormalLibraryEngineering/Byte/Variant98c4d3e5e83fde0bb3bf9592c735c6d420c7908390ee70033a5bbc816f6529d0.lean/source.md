# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Byte.Variant98c4d3e5e83fde0bb3bf9592c735c6d420c7908390ee70033a5bbc816f6529d0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d77da775360e20aa71ea0570dd87e81adbf37da8` · SHA-256 `e47518a4b38ec23ac394221da31d5c81a74e9829d10071d62e8e9896120bb5f8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ByteCodec.Variantaee49ae85a7337c30563c3ece63169c06477ba401bf79bfed74cce00cf786f2e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"aee49ae85a7337c30563c3ece63169c06477ba401bf79bfed74cce00cf786f2e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.ByteCodec.Variantaee49ae85a7337c30563c3ece63169c06477ba401bf79bfed74cce00cf786f2e","mathematical_subject":"Foundations.Unclassified","original_sha256":"aee49ae85a7337c30563c3ece63169c06477ba401bf79bfed74cce00cf786f2e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Archive/Byte.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Carrier.Bit

/-!
# Folder.Archive.Byte

Radiation role: archive-codec
BinaryMatrix spine: This module defines byte values before byte payloads are represented as BinaryMatrix rows.
Ontology: archive.byte
Pivot role: none
Zero typology: none
Contract boundary: contract
Composite stack role: carrier
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ByteCodec.Variantaee49ae85a7337c30563c3ece63169c06477ba401bf79bfed74cce00cf786f2e

namespace Folder
namespace Archive

abbrev Byte := Fin 256

namespace Byte

def toNat (b : Byte) : Nat := b.val

def ofNat? (n : Nat) : Option Byte :=
  if h : n < 256 then some ⟨n, h⟩ else none

structure ByteCodec where
  toBits : Byte → Fin 8 → Carrier.Bit
  ofBits : (Fin 8 → Carrier.Bit) → Byte
  roundtrip : ∀ b, ofBits (toBits b) = b

theorem byteCodec_roundtrip
    (C : ByteCodec)
    (b : Byte) :
    C.ofBits (C.toBits b) = b :=
  C.roundtrip b

def msb0CodecTarget : Prop :=
  Nonempty ByteCodec

end Byte
end Archive
end Folder
```
