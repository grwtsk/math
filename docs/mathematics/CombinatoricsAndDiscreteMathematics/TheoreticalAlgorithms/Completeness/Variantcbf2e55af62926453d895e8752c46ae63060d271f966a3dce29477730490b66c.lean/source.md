# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Completeness.Variantcbf2e55af62926453d895e8752c46ae63060d271f966a3dce29477730490b66c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `28b56aabd127e19b4b8d771e1cbb8bc95ae5dde5` · SHA-256 `d001f792070719c93f60343efc9723135acceb0d6a3c4515740120508290a95b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ModuleFailure.Variant7fde9db07b8e89d8343b7623a6771268f29deecd6d72339e0673abffb716591f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7fde9db07b8e89d8343b7623a6771268f29deecd6d72339e0673abffb716591f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ModuleFailure.Variant7fde9db07b8e89d8343b7623a6771268f29deecd6d72339e0673abffb716591f","mathematical_subject":"Computation.DataStructures","original_sha256":"7fde9db07b8e89d8343b7623a6771268f29deecd6d72339e0673abffb716591f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/revoked-artifacts/source-structure/2487c9da77d9d8ececb8ffd882948a360b9125bba2b28ca69972182b0e8e2352/failed-candidates/post-application-e89443c73810dcdf/MathDiscovery/Extractor/Completeness.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import MathDiscovery.Extractor.Trust

/-!
# Extraction completeness certificate

Serialized Boolean fields are executable claims. `Valid` is the proposition a
sound decoder must establish before treating the ledger as complete evidence.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ModuleFailure.Variant7fde9db07b8e89d8343b7623a6771268f29deecd6d72339e0673abffb716591f

namespace MathDiscovery.Extractor

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

end MathDiscovery.Extractor
```
