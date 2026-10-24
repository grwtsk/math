# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Contract.Variant9274c344eb20a5c7d51d6ddec7c6d0feee46e6a692446acdba34b96e18857046

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `567864fc5f7d3c32a0000021584f52c1b764283d` · SHA-256 `9274c344eb20a5c7d51d6ddec7c6d0feee46e6a692446acdba34b96e18857046`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-!
# Machine-readable stratified boundary contract

The contract keeps ordinal stratum, boundary address, projective state, and
limit spectral observable in separate reference fields.  It is an immutable
observation envelope and has no authority-bearing constructor.
-/

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
