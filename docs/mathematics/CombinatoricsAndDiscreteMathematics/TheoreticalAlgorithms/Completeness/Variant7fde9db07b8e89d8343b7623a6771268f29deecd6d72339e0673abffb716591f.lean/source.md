# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Completeness.Variant7fde9db07b8e89d8343b7623a6771268f29deecd6d72339e0673abffb716591f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `79d36420163061ee38b014706c4e573e2fc275b2` · SHA-256 `7fde9db07b8e89d8343b7623a6771268f29deecd6d72339e0673abffb716591f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import MathDiscovery.Extractor.Trust

/-!
# Extraction completeness certificate

Serialized Boolean fields are executable claims. `Valid` is the proposition a
sound decoder must establish before treating the ledger as complete evidence.
-/

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
