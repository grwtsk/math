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
