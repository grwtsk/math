# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Completeness.Variant94a5036455d77a60a9a033757964a83eecb989190f854c96a3c18b58c22e677b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `70f9258448bcd47eab219462c56bdd25810957e6` · SHA-256 `94a5036455d77a60a9a033757964a83eecb989190f854c96a3c18b58c22e677b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Extractor.Trust

/-!
# Extraction completeness certificate

Serialized Boolean fields are executable claims. `Valid` is the proposition a
sound decoder must establish before treating the ledger as complete evidence.
-/

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
