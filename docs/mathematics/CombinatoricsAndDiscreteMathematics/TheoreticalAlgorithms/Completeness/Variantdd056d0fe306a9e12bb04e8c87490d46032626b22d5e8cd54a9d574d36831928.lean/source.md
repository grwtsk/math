# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Completeness.Variantdd056d0fe306a9e12bb04e8c87490d46032626b22d5e8cd54a9d574d36831928

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2db1474d165f1760173a1685b66f440a260e21b3` · SHA-256 `9b334ed88a50586fb32bf0db37c964198c523fc6f2df1596adb01300cc993740`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ModuleFailure.Variant94a5036455d77a60a9a033757964a83eecb989190f854c96a3c18b58c22e677b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"94a5036455d77a60a9a033757964a83eecb989190f854c96a3c18b58c22e677b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ModuleFailure.Variant94a5036455d77a60a9a033757964a83eecb989190f854c96a3c18b58c22e677b","mathematical_subject":"Computation.DataStructures","original_sha256":"94a5036455d77a60a9a033757964a83eecb989190f854c96a3c18b58c22e677b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/oracle/recovery/e7ca3ab08a9941d3b0d081a02fe454bdf10e695cc272c56d32f3ad446cc76aee-superseded-json-wrapper-grid-v1/candidate-tree/Mathematics/Extractor/Completeness.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Extractor.Trust

/-!
# Extraction completeness certificate

Serialized Boolean fields are executable claims. `Valid` is the proposition a
sound decoder must establish before treating the ledger as complete evidence.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ModuleFailure.Variant94a5036455d77a60a9a033757964a83eecb989190f854c96a3c18b58c22e677b

namespace Mathematics.Extractor

structure ModuleFailure where
  moduleName : Lean.Name
  message : String
  deriving DecidableEq, Repr, Inhabited

structure CompletenessCertificate where
  certificateId : CompletenessCertificateId
  selectedModules : Array Lean.Name
  loadedModules : Array Lean.Name
  failedModules : Array ModuleFailure
  coverageScope : String
  visibleConstantObservationCount : Nat
  environmentConstantCount : Nat
  emittedConstantCount : Nat
  ownedConstantCount : Nat
  emittedOwnedConstantCount : Nat
  externalReferenceCount : Nat
  unsupportedExtensions : Array Lean.Name
  unresolvedOwners : Array Lean.Name
  unresolvedSources : Array Lean.Name
  exactConstantCoverage : Bool
  exactOwnedCoverage : Bool
  deriving DecidableEq, Repr, Inhabited

namespace CompletenessCertificate

structure Valid (certificate : CompletenessCertificate) : Prop where
  selectedModulesUnique : certificate.selectedModules.toList.Nodup
  loadedModulesUnique : certificate.loadedModules.toList.Nodup
  selectedModulesLoadedExactly :
    ∀ moduleName,
      moduleName ∈ certificate.selectedModules ↔
        moduleName ∈ certificate.loadedModules
  noFailedModules : certificate.failedModules.isEmpty = true
  visibleConstantsObserved :
    certificate.visibleConstantObservationCount = certificate.environmentConstantCount
  exactConstants :
    certificate.environmentConstantCount = certificate.emittedConstantCount
  exactOwnedConstants :
    certificate.ownedConstantCount = certificate.emittedOwnedConstantCount
  accountedConstants :
    certificate.emittedConstantCount =
      certificate.emittedOwnedConstantCount + certificate.externalReferenceCount
  exactConstantFlagAgrees :
    certificate.exactConstantCoverage = decide
      (certificate.environmentConstantCount = certificate.emittedConstantCount)
  exactOwnedFlagAgrees :
    certificate.exactOwnedCoverage = decide
      (certificate.ownedConstantCount = certificate.emittedOwnedConstantCount)

end CompletenessCertificate

end Mathematics.Extractor
```
