# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Contract.Varianta9a809dedf165df1f675de9d5d4be9cac2cf162be1e3597db2915eba7a26629f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4a865816a615f5d5ecf5ab3d576325a421b644ff` · SHA-256 `469b94cd58c5b315139786e52c56f37174ac224e98e70682d8ca7279dd8bca5c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrdinalStratumMode.Variant9274c344eb20a5c7d51d6ddec7c6d0feee46e6a692446acdba34b96e18857046","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9274c344eb20a5c7d51d6ddec7c6d0feee46e6a692446acdba34b96e18857046","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.OrdinalStratumMode.Variant9274c344eb20a5c7d51d6ddec7c6d0feee46e6a692446acdba34b96e18857046","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"9274c344eb20a5c7d51d6ddec7c6d0feee46e6a692446acdba34b96e18857046","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/StratifiedBoundary/Contract.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-!
# Machine-readable stratified boundary contract

The contract keeps ordinal stratum, boundary address, projective state, and
limit spectral observable in separate reference fields.  It is an immutable
observation envelope and has no authority-bearing constructor.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrdinalStratumMode.Variant9274c344eb20a5c7d51d6ddec7c6d0feee46e6a692446acdba34b96e18857046

namespace Mathematics.StratifiedBoundary

inductive OrdinalStratumMode
  | executable
  | registeredCountableLimit
  deriving DecidableEq, Repr, Fintype

inductive ReducedTraceMode
  | centralSector
  | cornerAlgebra
  deriving DecidableEq, Repr, Fintype

inductive LimitSpectralMode
  | traceObservable
  | limitOperator
  deriving DecidableEq, Repr, Fintype

structure StratifiedBoundaryTraceContract where
  schemaVersion : String
  cutRef : String
  predecessorCutRef : Option String

  ordinalStratumMode : OrdinalStratumMode
  ordinalStratumRef : String
  executableOrdinalRef : Option String
  ordinalNormalizerRef : Option String
  registeredCountableLimitRef : Option String
  fundamentalSequenceRef : Option String
  cofinalityCertificateRef : Option String

  finiteTallyOrderRef : String
  majorityCrossingFrontierRef : Option String
  localFrontierRankRef : String
  stratumBoundaryIndexRef : String
  boundaryAddressRef : String
  persistentIdentityRef : String
  limitAddressSeparationRef : Option String

  finiteStateSpaceRef : String
  stateProjectionRef : Option String
  projectiveBoundaryStateRef : Option String
  limitStateNonemptyRef : Option String
  separatedMetricRef : String

  scheduleFamilyRef : String
  kernelRef : String
  contractionFactorRef : String
  uniformContractionMarginRef : String
  projectiveContractiveCouplingRef : Option String
  equivarianceRef : String
  admissibilityPreservationRef : String

  finiteInvariantLawRef : String
  projectiveInvariantLawRef : Option String
  projectiveMeasureExistenceRef : Option String
  projectiveMeasureSupportRef : Option String
  limitKernelRef : Option String

  automorphismGroupRef : String
  persistentGroupLiftRef : Option String
  crossedProductAlgebraRef : String
  crossedProductConnectorRef : Option String
  fiberTraceEmbeddingRef : Option String
  invariantTraceRef : String
  reducedTraceMode : ReducedTraceMode
  invariantProjectionRef : String
  reducedTraceRef : String

  algebraConnectingMorphismsRef : Option String
  inductiveLimitAlgebraRef : Option String
  compatibleTraceBoundednessRef : Option String
  limitSpectralMode : LimitSpectralMode
  limitTraceObservableRef : Option String
  limitSpectralOperatorRef : Option String
  resolventCompatibilityRef : Option String

  kernelPerturbationBudgetRef : String
  boundaryDisplacementBoundRef : String
  traceLipschitzBoundRef : String
  operatorPerturbationBoundRef : String
  correspondencePerturbationBoundRef : String

  arithmeticTraceCertificateRef : Option String
  successorArithmeticCompatibilityRef : Option String
  testSpaceCompatibilityRef : Option String
  normalizedLimitCorrespondenceRef : Option String
  normalizedLimitCompactnessRef : Option String
  uniformCofinalScaleRef : Option String
  localGlobalArithmeticCompatibilityRef : Option String
  squareRootScaleCertificateRef : Option String

  unresolvedRefs : List String
  authorityRef : String
  authoritativeEffect : Bool := false
  authoritativeEffectFalse :
    authoritativeEffect = false := by
      rfl

end Mathematics.StratifiedBoundary
```
