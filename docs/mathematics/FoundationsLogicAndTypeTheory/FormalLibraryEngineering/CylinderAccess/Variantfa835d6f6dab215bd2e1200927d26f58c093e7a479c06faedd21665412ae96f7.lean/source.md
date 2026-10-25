# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CylinderAccess.Variantfa835d6f6dab215bd2e1200927d26f58c093e7a479c06faedd21665412ae96f7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `538876c1a993a73bf38fe26175a174cfff646472` · SHA-256 `49011fd9a171ec620183a70f443c65caa16564d6176119432625e8f7d60f8557`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PrimeCompressionCylinder.Variant9044f65d0de8faf71d3fb678790d9e735c92359a4e6f516e33be186eb48d9a51","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9044f65d0de8faf71d3fb678790d9e735c92359a4e6f516e33be186eb48d9a51","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.PrimeCompressionCylinder.Variant9044f65d0de8faf71d3fb678790d9e735c92359a4e6f516e33be186eb48d9a51","mathematical_subject":"Foundations.Unclassified","original_sha256":"9044f65d0de8faf71d3fb678790d9e735c92359a4e6f516e33be186eb48d9a51","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemiLocalDefect/Access/CylinderAccess.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.Access.ReleaseProfile

/-!
# Cofinal prime/compression cylinders
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PrimeCompressionCylinder.Variant9044f65d0de8faf71d3fb678790d9e735c92359a4e6f516e33be186eb48d9a51

namespace Mathematics.SemiLocalDefect.Access

structure PrimeCompressionCylinder where
  primeUniverse : FinitePrimeUniverse
  compressionRank : Nat
  stage : Nat
  cutDigest : CapacityDigest
  compressionDigest : CompressionId

structure CylinderEmbedding
    (source target : PrimeCompressionCylinder) where
  primeEmbedding :
    PrimeUniverseEmbedding
      source.primeUniverse target.primeUniverse
  rankMonotone :
    source.compressionRank ≤
      target.compressionRank
  stageStrict :
    source.stage < target.stage
  capacityCompatible : Prop
  capacityCompatibleProof :
    capacityCompatible
  compressionCompatible : Prop
  compressionCompatibleProof :
    compressionCompatible

structure CylinderAccessReceipt
    (cylinder : PrimeCompressionCylinder) where
  inspectedCutCount : Nat
  inspectedCompressionCount : Nat
  compatibilityChecked : Bool
  authority :
    CertificateStatus
  digest : CertificateDigest
  noLimitClaim :
    authority ≠ .certified →
      True

end Mathematics.SemiLocalDefect.Access
```
