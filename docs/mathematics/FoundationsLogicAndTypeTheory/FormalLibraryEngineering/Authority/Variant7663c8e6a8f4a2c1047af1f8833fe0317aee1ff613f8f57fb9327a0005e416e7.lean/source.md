# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Authority.Variant7663c8e6a8f4a2c1047af1f8833fe0317aee1ff613f8f57fb9327a0005e416e7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `29c70b241b9d637efb5acb662286d37a382da9a1` · SHA-256 `7663c8e6a8f4a2c1047af1f8833fe0317aee1ff613f8f57fb9327a0005e416e7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-!
# Authority classes for continuous assurance

The authority assigned to an artifact is explicit.  Trusted kernels, declared
axiomatic extensions, kernel-checked formal source, declarative artifacts, and
external capabilities are different constructors; none is silently promoted
to another authority class.
-/

namespace Surface.ContinuousAssurance

/-- The five disjoint authority classes used by the assurance ledger. -/
inductive AuthorityClass
  | kernelTrustedBase
  | declaredAxiomaticExtension
  | certifiedSource
  | declarativeArtifact
  | externalCapability
  deriving DecidableEq, Repr

/-- Evidence describes how a fact was obtained, independently of its owner. -/
inductive EvidenceClass
  | kernelProof
  | translatedProof
  | conditionalTheorem
  | executableConformance
  | testEvidence
  | proseOrMetadata
  deriving DecidableEq, Repr

/-- The authority constructors are pairwise distinct. -/
theorem authorityClass_pairwise_disjoint :
    [AuthorityClass.kernelTrustedBase,
      AuthorityClass.declaredAxiomaticExtension,
      AuthorityClass.certifiedSource,
      AuthorityClass.declarativeArtifact,
      AuthorityClass.externalCapability].Nodup := by
  decide

/-- The four checking-boundary roles cannot be conflated. -/
theorem checkingBoundaryRoles_pairwise_disjoint :
    [AuthorityClass.kernelTrustedBase,
      AuthorityClass.certifiedSource,
      AuthorityClass.declarativeArtifact,
      AuthorityClass.externalCapability].Nodup := by
  decide

/-- The evidence constructors are pairwise distinct. -/
theorem evidenceClass_pairwise_disjoint :
    [EvidenceClass.kernelProof,
      EvidenceClass.translatedProof,
      EvidenceClass.conditionalTheorem,
      EvidenceClass.executableConformance,
      EvidenceClass.testEvidence,
      EvidenceClass.proseOrMetadata].Nodup := by
  decide

end Surface.ContinuousAssurance
```
