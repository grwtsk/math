# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Attribute.Variante2e9f248987a82e3c7198ef532862b90ae9c3e416bfa45f5db67036b7aadd28a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9f001e6acf18c4892bf3fed67d3ef3ad43e61752` · SHA-256 `849da8fbb8bf9d0617d733517f09366ae9183294a2d65f4806bc7d34b6f58614`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DeclarationAttribute.Variant1613a922a9f212ac895ce55a369cf3fec8868bf5d3c8639a8fc2b4660225f9c9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1613a922a9f212ac895ce55a369cf3fec8868bf5d3c8639a8fc2b4660225f9c9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.DeclarationAttribute.Variant1613a922a9f212ac895ce55a369cf3fec8868bf5d3c8639a8fc2b4660225f9c9","mathematical_subject":"Foundations.Unclassified","original_sha256":"1613a922a9f212ac895ce55a369cf3fec8868bf5d3c8639a8fc2b4660225f9c9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Ingestion/Attribute.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Ingestion.Declaration

/-! # Declaration attributes -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DeclarationAttribute.Variant1613a922a9f212ac895ce55a369cf3fec8868bf5d3c8639a8fc2b4660225f9c9

namespace Mathematics.Ingestion

structure DeclarationAttribute where
  declaration : ProjectDeclarationId
  attributeName : String
  payloadDigest : Digest
  sourceArtifactId : Ecosystem.ArtifactId
  deriving DecidableEq, Repr

end Mathematics.Ingestion
```
