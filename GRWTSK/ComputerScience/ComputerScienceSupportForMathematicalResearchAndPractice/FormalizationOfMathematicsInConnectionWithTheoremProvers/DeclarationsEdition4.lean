import FormalResearch.Construct.Envelope
import FormalResearch.Construct.OperationalRevoke
import FormalResearch.MathematicalTooling.Certificates.Bound
import FormalResearch.MathematicalTooling.Certificates.Composition
import FormalResearch.MathematicalTooling.Coverage.BethCatalogue
import FormalResearch.MathematicalTooling.Coverage.Cardinal
import FormalResearch.MathematicalTooling.Coverage.CardinalCounterexamples
import FormalResearch.MathematicalTooling.Coverage.Finite
import FormalResearch.MathematicalTooling.Coverage.Ownership
import FormalResearch.MathematicalTooling.Coverage.Reconstruction
import FormalResearch.MathematicalTooling.Coverage.ReducedProduct
import FormalResearch.MathematicalTooling.Coverage.RevisedPower
import FormalResearch.MathematicalTooling.Coverage.SingularReconstruction
import FormalResearch.MathematicalTooling.Coverage.SingularReconstructionFixtures
import FormalResearch.MathematicalTooling.Coverage.UniverseBounds
import FormalResearch.MathematicalTooling.Reduction.FiniteHeight
import FormalResearch.MathematicalTooling.Reduction.Fixtures
import FormalResearch.MathematicalTooling.Reduction.Simulation
import FormalResearch.PositiveAtlas.CertificationEquivalence
import FormalResearch.PositiveAtlas.CertificationSourceScale
import FormalResearch.PositiveAtlas.ObservationRepresentation
import FormalResearch.PositiveAtlas.ObservationRepresentationFixtures
import FormalResearch.PositiveAtlas.SourceAtlasConsumer
import FormalResearch.PositiveAtlas.SourceProfileAtlas
import FormalResearch.PositiveAtlas.SourceScaleReconstruction
import FormalResearch.PositiveAtlas.SourceStorageDescent
import FormalResearch.PositiveAtlas.StorageDescent
import FormalResearch.RiemannHypothesis.GevreyDerivativeEnergy
import FormalResearch.RiemannHypothesis.GevreyNormalization
import FormalResearch.RiemannHypothesis.GevreyPolynomial
import FormalResearch.RiemannHypothesis.GevreyProfile
import FormalResearch.RiemannHypothesis.SourceCausalEnergy
import FormalResearch.RiemannHypothesis.SourceContinuousHalfEnergy
import FormalResearch.RiemannHypothesis.SourceCorrelationEnergy
import FormalResearch.RiemannHypothesis.SourceDerivativeCoefficientBound
import FormalResearch.RiemannHypothesis.SourceDerivativeEnergy
import FormalResearch.RiemannHypothesis.SourceDiagonalMainTerm
import FormalResearch.RiemannHypothesis.SourceDiagonalPrimeAbel
import FormalResearch.RiemannHypothesis.SourceDiagonalShortWindow
import FormalResearch.RiemannHypothesis.SourceFirstPrimeAbel
import FormalResearch.RiemannHypothesis.SourceHankelReflection
import FormalResearch.RiemannHypothesis.SourceKapitzaCompensatedReadout
import FormalResearch.RiemannHypothesis.SourceKapitzaCycle
import FormalResearch.RiemannHypothesis.SourceKapitzaDiscrete
import FormalResearch.RiemannHypothesis.SourceKapitzaEventBalance
import FormalResearch.RiemannHypothesis.SourceKapitzaReconstruction
import FormalResearch.RiemannHypothesis.SourceKapitzaSignedReduction
import FormalResearch.RiemannHypothesis.SourceKapitzaSourceStorage
import FormalResearch.RiemannHypothesis.SourceKapitzaStorage
import FormalResearch.RiemannHypothesis.SourceMangoldtAbel
import FormalResearch.RiemannHypothesis.SourcePrimePowerPartition
import FormalResearch.RiemannHypothesis.SourcePrimeSquareMainTerm
import FormalResearch.RiemannHypothesis.SourceScaleVariation
import FormalResearch.RiemannHypothesis.WeightedPrimeAbel
import FormalResearch.RiemannHypothesis.WeightedPrimeMertens
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.AdmissionDirect
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.AdmissionSource
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Assumptions
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.BridgeAdmissibility
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.BridgeFourier
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.BridgeMultiplier
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.BridgeNormalization
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CoordinationMemoryTargets
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CoordinationSupplement
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CoordinationTargets
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationAssembly
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationMoment
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationRegularity
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.DivisibilityPacking
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateCorrelation
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateKernelMoments
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateLogSampling
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateLogSamplingIntegrals
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMertensAbel
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMertensResidual
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMobiusIntegerTransport
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMobiusSplit
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMomentReflection
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimatePrimeSmoothDefect
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateReduction
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateSourceMobiusKernel
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateTailReduction
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateTwoMomentSampling
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateTwoMomentSamplingBound
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.FactorState
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.GaloisObservation
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.HistoricalContinuity
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Intuition
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.AssemblyFixtures
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.CausalFixtures
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.Congruence
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.CriticalInvolution
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.DerivationSemantics
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.Descent
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.Fixtures
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.FullDeclaration
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.FullFixtures
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.Ledger
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.OwnershipReconstruction
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.ReconstructionControls
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.RolesGrammar
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.Snapshot
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.Syntax
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.TagMachine
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.TagReduction
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.Targets
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.TypedReconstruction
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.WireNormalization
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.NoGo
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Notion
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Observation
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.PackingObservations
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.PrimePowerDescent
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ProofHorizon
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.RHAdapter
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Resources
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SourceBoundCertificates
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SourceCorrectionEstimate
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SourceOwnership
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SourcePlancherel
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SpectralObservation
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Towers
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Trust
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.WeightReflection
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroEta
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroObject
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroShellCount
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroShellCountFixtures
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroShellGrowth
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroSideTargets
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroSmoothing
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroSmoothingDerivative
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroSmoothingL2
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroSmoothingL2Core
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroSmoothingLogarithmic
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroSmoothingMultiplier
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroSmoothingTransform
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroSummability
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroTestRegularity
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroTransform
import FormalResearch.TypeTheory.PureTypeSystem.Basic
import FormalResearch.TypeTheory.PureTypeSystem.BetaConversion
import FormalResearch.TypeTheory.PureTypeSystem.BetaDenotation
import FormalResearch.TypeTheory.PureTypeSystem.BetaFixtures
import FormalResearch.TypeTheory.PureTypeSystem.BetaNext
import FormalResearch.TypeTheory.PureTypeSystem.BetaNormalizer
import FormalResearch.TypeTheory.PureTypeSystem.Bounds
import FormalResearch.TypeTheory.PureTypeSystem.Candidates
import FormalResearch.TypeTheory.PureTypeSystem.Channels
import FormalResearch.TypeTheory.PureTypeSystem.Components
import FormalResearch.TypeTheory.PureTypeSystem.Congruence
import FormalResearch.TypeTheory.PureTypeSystem.Contexts
import FormalResearch.TypeTheory.PureTypeSystem.Diagonal
import FormalResearch.TypeTheory.PureTypeSystem.Equivalence
import FormalResearch.TypeTheory.PureTypeSystem.Evaluation
import FormalResearch.TypeTheory.PureTypeSystem.IndependentWN
import FormalResearch.TypeTheory.PureTypeSystem.IntendedPTS
import FormalResearch.TypeTheory.PureTypeSystem.Interface
import FormalResearch.TypeTheory.PureTypeSystem.Labelled
import FormalResearch.TypeTheory.PureTypeSystem.Logic
import FormalResearch.TypeTheory.PureTypeSystem.MonomorphicNormalization
import FormalResearch.TypeTheory.PureTypeSystem.Normalization
import FormalResearch.TypeTheory.PureTypeSystem.ObservationCandidates
import FormalResearch.TypeTheory.PureTypeSystem.ObservationReduction
import FormalResearch.TypeTheory.PureTypeSystem.OneChild
import FormalResearch.TypeTheory.PureTypeSystem.Pairs
import FormalResearch.TypeTheory.PureTypeSystem.Plain
import FormalResearch.TypeTheory.PureTypeSystem.Potential
import FormalResearch.TypeTheory.PureTypeSystem.Profiles
import FormalResearch.TypeTheory.PureTypeSystem.Reduction
import FormalResearch.TypeTheory.PureTypeSystem.Relational
import FormalResearch.TypeTheory.PureTypeSystem.Relations
import FormalResearch.TypeTheory.PureTypeSystem.Response
import FormalResearch.TypeTheory.PureTypeSystem.Restriction
import FormalResearch.TypeTheory.PureTypeSystem.Signed
import FormalResearch.TypeTheory.PureTypeSystem.Spaces
import FormalResearch.TypeTheory.PureTypeSystem.Specialization
import FormalResearch.TypeTheory.PureTypeSystem.Substitution
import FormalResearch.TypeTheory.PureTypeSystem.Typing
import FormalResearch.TypeTheory.PureTypeSystem.Values
import FormalResearch.TypeTheory.PureTypeSystem.Wrappers
import Lean.Util.CollectAxioms

open Lean Elab Command
set_option pp.universes true
set_option pp.fullNames true
run_cmd do
  let env ← getEnv
  let selected : Array String := #["FormalResearch.Construct.Envelope", "FormalResearch.Construct.OperationalRevoke", "FormalResearch.MathematicalTooling.Certificates.Bound", "FormalResearch.MathematicalTooling.Certificates.Composition", "FormalResearch.MathematicalTooling.Coverage.BethCatalogue", "FormalResearch.MathematicalTooling.Coverage.Cardinal", "FormalResearch.MathematicalTooling.Coverage.CardinalCounterexamples", "FormalResearch.MathematicalTooling.Coverage.Finite", "FormalResearch.MathematicalTooling.Coverage.Ownership", "FormalResearch.MathematicalTooling.Coverage.Reconstruction", "FormalResearch.MathematicalTooling.Coverage.ReducedProduct", "FormalResearch.MathematicalTooling.Coverage.RevisedPower", "FormalResearch.MathematicalTooling.Coverage.SingularReconstruction", "FormalResearch.MathematicalTooling.Coverage.SingularReconstructionFixtures", "FormalResearch.MathematicalTooling.Coverage.UniverseBounds", "FormalResearch.MathematicalTooling.Reduction.FiniteHeight", "FormalResearch.MathematicalTooling.Reduction.Fixtures", "FormalResearch.MathematicalTooling.Reduction.Simulation", "FormalResearch.PositiveAtlas.CertificationEquivalence", "FormalResearch.PositiveAtlas.CertificationSourceScale", "FormalResearch.PositiveAtlas.ObservationRepresentation", "FormalResearch.PositiveAtlas.ObservationRepresentationFixtures", "FormalResearch.PositiveAtlas.SourceAtlasConsumer", "FormalResearch.PositiveAtlas.SourceProfileAtlas", "FormalResearch.PositiveAtlas.SourceScaleReconstruction", "FormalResearch.PositiveAtlas.SourceStorageDescent", "FormalResearch.PositiveAtlas.StorageDescent", "FormalResearch.RiemannHypothesis.GevreyDerivativeEnergy", "FormalResearch.RiemannHypothesis.GevreyNormalization", "FormalResearch.RiemannHypothesis.GevreyPolynomial", "FormalResearch.RiemannHypothesis.GevreyProfile", "FormalResearch.RiemannHypothesis.SourceCausalEnergy", "FormalResearch.RiemannHypothesis.SourceContinuousHalfEnergy", "FormalResearch.RiemannHypothesis.SourceCorrelationEnergy", "FormalResearch.RiemannHypothesis.SourceDerivativeCoefficientBound", "FormalResearch.RiemannHypothesis.SourceDerivativeEnergy", "FormalResearch.RiemannHypothesis.SourceDiagonalMainTerm", "FormalResearch.RiemannHypothesis.SourceDiagonalPrimeAbel", "FormalResearch.RiemannHypothesis.SourceDiagonalShortWindow", "FormalResearch.RiemannHypothesis.SourceFirstPrimeAbel", "FormalResearch.RiemannHypothesis.SourceHankelReflection", "FormalResearch.RiemannHypothesis.SourceKapitzaCompensatedReadout", "FormalResearch.RiemannHypothesis.SourceKapitzaCycle", "FormalResearch.RiemannHypothesis.SourceKapitzaDiscrete", "FormalResearch.RiemannHypothesis.SourceKapitzaEventBalance", "FormalResearch.RiemannHypothesis.SourceKapitzaReconstruction", "FormalResearch.RiemannHypothesis.SourceKapitzaSignedReduction", "FormalResearch.RiemannHypothesis.SourceKapitzaSourceStorage", "FormalResearch.RiemannHypothesis.SourceKapitzaStorage", "FormalResearch.RiemannHypothesis.SourceMangoldtAbel", "FormalResearch.RiemannHypothesis.SourcePrimePowerPartition", "FormalResearch.RiemannHypothesis.SourcePrimeSquareMainTerm", "FormalResearch.RiemannHypothesis.SourceScaleVariation", "FormalResearch.RiemannHypothesis.WeightedPrimeAbel", "FormalResearch.RiemannHypothesis.WeightedPrimeMertens", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.AdmissionDirect", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.AdmissionSource", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Assumptions", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.BridgeAdmissibility", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.BridgeFourier", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.BridgeMultiplier", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.BridgeNormalization", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CoordinationMemoryTargets", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CoordinationSupplement", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CoordinationTargets", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationAssembly", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationMoment", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationRegularity", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.DivisibilityPacking", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateCorrelation", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateKernelMoments", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateLogSampling", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateLogSamplingIntegrals", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMertensAbel", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMertensResidual", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMobiusIntegerTransport", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMobiusSplit", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMomentReflection", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimatePrimeSmoothDefect", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateReduction", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateSourceMobiusKernel", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateTailReduction", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateTwoMomentSampling", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateTwoMomentSamplingBound", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.FactorState", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.GaloisObservation", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.HistoricalContinuity", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Intuition", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.AssemblyFixtures", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.CausalFixtures", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.Congruence", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.CriticalInvolution", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.DerivationSemantics", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.Descent", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.Fixtures", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.FullDeclaration", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.FullFixtures", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.Ledger", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.OwnershipReconstruction", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.ReconstructionControls", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.RolesGrammar", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.Snapshot", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.Syntax", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.TagMachine", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.TagReduction", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.Targets", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.TypedReconstruction", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.WireNormalization", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.NoGo", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Notion", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Observation", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.PackingObservations", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.PrimePowerDescent", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ProofHorizon", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.RHAdapter", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Resources", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SourceBoundCertificates", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SourceCorrectionEstimate", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SourceOwnership", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SourcePlancherel", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SpectralObservation", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Towers", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Trust", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.WeightReflection", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroEta", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroObject", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroShellCount", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroShellCountFixtures", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroShellGrowth", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroSideTargets", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroSmoothing", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroSmoothingDerivative", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroSmoothingL2", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroSmoothingL2Core", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroSmoothingLogarithmic", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroSmoothingMultiplier", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroSmoothingTransform", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroSummability", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroTestRegularity", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroTransform", "FormalResearch.TypeTheory.PureTypeSystem.Basic", "FormalResearch.TypeTheory.PureTypeSystem.BetaConversion", "FormalResearch.TypeTheory.PureTypeSystem.BetaDenotation", "FormalResearch.TypeTheory.PureTypeSystem.BetaFixtures", "FormalResearch.TypeTheory.PureTypeSystem.BetaNext", "FormalResearch.TypeTheory.PureTypeSystem.BetaNormalizer", "FormalResearch.TypeTheory.PureTypeSystem.Bounds", "FormalResearch.TypeTheory.PureTypeSystem.Candidates", "FormalResearch.TypeTheory.PureTypeSystem.Channels", "FormalResearch.TypeTheory.PureTypeSystem.Components", "FormalResearch.TypeTheory.PureTypeSystem.Congruence", "FormalResearch.TypeTheory.PureTypeSystem.Contexts", "FormalResearch.TypeTheory.PureTypeSystem.Diagonal", "FormalResearch.TypeTheory.PureTypeSystem.Equivalence", "FormalResearch.TypeTheory.PureTypeSystem.Evaluation", "FormalResearch.TypeTheory.PureTypeSystem.IndependentWN", "FormalResearch.TypeTheory.PureTypeSystem.IntendedPTS", "FormalResearch.TypeTheory.PureTypeSystem.Interface", "FormalResearch.TypeTheory.PureTypeSystem.Labelled", "FormalResearch.TypeTheory.PureTypeSystem.Logic", "FormalResearch.TypeTheory.PureTypeSystem.MonomorphicNormalization", "FormalResearch.TypeTheory.PureTypeSystem.Normalization", "FormalResearch.TypeTheory.PureTypeSystem.ObservationCandidates", "FormalResearch.TypeTheory.PureTypeSystem.ObservationReduction", "FormalResearch.TypeTheory.PureTypeSystem.OneChild", "FormalResearch.TypeTheory.PureTypeSystem.Pairs", "FormalResearch.TypeTheory.PureTypeSystem.Plain", "FormalResearch.TypeTheory.PureTypeSystem.Potential", "FormalResearch.TypeTheory.PureTypeSystem.Profiles", "FormalResearch.TypeTheory.PureTypeSystem.Reduction", "FormalResearch.TypeTheory.PureTypeSystem.Relational", "FormalResearch.TypeTheory.PureTypeSystem.Relations", "FormalResearch.TypeTheory.PureTypeSystem.Response", "FormalResearch.TypeTheory.PureTypeSystem.Restriction", "FormalResearch.TypeTheory.PureTypeSystem.Signed", "FormalResearch.TypeTheory.PureTypeSystem.Spaces", "FormalResearch.TypeTheory.PureTypeSystem.Specialization", "FormalResearch.TypeTheory.PureTypeSystem.Substitution", "FormalResearch.TypeTheory.PureTypeSystem.Typing", "FormalResearch.TypeTheory.PureTypeSystem.Values", "FormalResearch.TypeTheory.PureTypeSystem.Wrappers"]
  let profile : Array String := #["FormalResearch.Construct.Envelope", "FormalResearch.Construct.OperationalRevoke", "FormalResearch.TypeTheory.PureTypeSystem.Basic", "FormalResearch.TypeTheory.PureTypeSystem.Reduction", "FormalResearch.TypeTheory.PureTypeSystem.Typing", "FormalResearch.TypeTheory.PureTypeSystem.IntendedPTS", "FormalResearch.TypeTheory.PureTypeSystem.IndependentWN", "FormalResearch.TypeTheory.PureTypeSystem.BetaNext", "FormalResearch.TypeTheory.PureTypeSystem.BetaNormalizer", "FormalResearch.TypeTheory.PureTypeSystem.BetaFixtures", "FormalResearch.TypeTheory.PureTypeSystem.BetaDenotation", "FormalResearch.TypeTheory.PureTypeSystem.BetaConversion", "FormalResearch.MathematicalTooling.Coverage.Reconstruction", "FormalResearch.MathematicalTooling.Coverage.Ownership", "FormalResearch.MathematicalTooling.Coverage.Finite", "FormalResearch.MathematicalTooling.Coverage.Cardinal", "FormalResearch.MathematicalTooling.Coverage.SingularReconstruction", "FormalResearch.MathematicalTooling.Coverage.UniverseBounds", "FormalResearch.MathematicalTooling.Coverage.CardinalCounterexamples", "FormalResearch.MathematicalTooling.Coverage.BethCatalogue", "FormalResearch.MathematicalTooling.Coverage.ReducedProduct", "FormalResearch.MathematicalTooling.Coverage.RevisedPower", "FormalResearch.MathematicalTooling.Coverage.SingularReconstructionFixtures", "FormalResearch.MathematicalTooling.Reduction.Simulation", "FormalResearch.MathematicalTooling.Reduction.FiniteHeight", "FormalResearch.MathematicalTooling.Reduction.Fixtures", "FormalResearch.MathematicalTooling.Certificates.Bound", "FormalResearch.MathematicalTooling.Certificates.Composition", "FormalResearch.PositiveAtlas.ObservationRepresentation", "FormalResearch.PositiveAtlas.ObservationRepresentationFixtures", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.OwnershipReconstruction", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.ReconstructionControls", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.TagReduction", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.TagMachine", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.DerivationSemantics", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.TypedReconstruction", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.WireNormalization", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SourceOwnership", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SourceBoundCertificates", "FormalResearch.PositiveAtlas.CertificationEquivalence", "FormalResearch.RiemannHypothesis.WeightedPrimeMertens", "FormalResearch.RiemannHypothesis.WeightedPrimeAbel", "FormalResearch.RiemannHypothesis.GevreyProfile", "FormalResearch.RiemannHypothesis.GevreyNormalization", "FormalResearch.RiemannHypothesis.GevreyPolynomial", "FormalResearch.RiemannHypothesis.GevreyDerivativeEnergy", "FormalResearch.RiemannHypothesis.SourceDerivativeCoefficientBound", "FormalResearch.RiemannHypothesis.SourceDerivativeEnergy", "FormalResearch.RiemannHypothesis.SourceCorrelationEnergy", "FormalResearch.RiemannHypothesis.SourceDiagonalPrimeAbel", "FormalResearch.RiemannHypothesis.SourceDiagonalShortWindow", "FormalResearch.RiemannHypothesis.SourceDiagonalMainTerm", "FormalResearch.RiemannHypothesis.SourcePrimeSquareMainTerm", "FormalResearch.RiemannHypothesis.SourcePrimePowerPartition", "FormalResearch.RiemannHypothesis.SourceFirstPrimeAbel", "FormalResearch.RiemannHypothesis.SourceMangoldtAbel", "FormalResearch.RiemannHypothesis.SourceCausalEnergy", "FormalResearch.RiemannHypothesis.SourceContinuousHalfEnergy", "FormalResearch.RiemannHypothesis.SourceKapitzaReconstruction", "FormalResearch.RiemannHypothesis.SourceKapitzaStorage", "FormalResearch.RiemannHypothesis.SourceKapitzaSourceStorage", "FormalResearch.RiemannHypothesis.SourceKapitzaDiscrete", "FormalResearch.RiemannHypothesis.SourceKapitzaCycle", "FormalResearch.RiemannHypothesis.SourceKapitzaEventBalance", "FormalResearch.RiemannHypothesis.SourceKapitzaCompensatedReadout", "FormalResearch.RiemannHypothesis.SourceKapitzaSignedReduction", "FormalResearch.PositiveAtlas.CertificationSourceScale", "FormalResearch.RiemannHypothesis.SourceHankelReflection", "FormalResearch.RiemannHypothesis.SourceScaleVariation", "FormalResearch.PositiveAtlas.SourceProfileAtlas", "FormalResearch.PositiveAtlas.StorageDescent", "FormalResearch.PositiveAtlas.SourceStorageDescent", "FormalResearch.PositiveAtlas.SourceAtlasConsumer", "FormalResearch.PositiveAtlas.SourceScaleReconstruction", "FormalResearch.TypeTheory.PureTypeSystem.Restriction", "FormalResearch.TypeTheory.PureTypeSystem.Contexts", "FormalResearch.TypeTheory.PureTypeSystem.Candidates", "FormalResearch.TypeTheory.PureTypeSystem.Profiles", "FormalResearch.TypeTheory.PureTypeSystem.Potential", "FormalResearch.TypeTheory.PureTypeSystem.Interface", "FormalResearch.TypeTheory.PureTypeSystem.Components", "FormalResearch.TypeTheory.PureTypeSystem.Signed", "FormalResearch.TypeTheory.PureTypeSystem.OneChild", "FormalResearch.TypeTheory.PureTypeSystem.Spaces", "FormalResearch.TypeTheory.PureTypeSystem.Plain", "FormalResearch.TypeTheory.PureTypeSystem.Values", "FormalResearch.TypeTheory.PureTypeSystem.Evaluation", "FormalResearch.TypeTheory.PureTypeSystem.Bounds", "FormalResearch.TypeTheory.PureTypeSystem.Congruence", "FormalResearch.TypeTheory.PureTypeSystem.Substitution", "FormalResearch.TypeTheory.PureTypeSystem.ObservationReduction", "FormalResearch.TypeTheory.PureTypeSystem.ObservationCandidates", "FormalResearch.TypeTheory.PureTypeSystem.Labelled", "FormalResearch.TypeTheory.PureTypeSystem.Wrappers", "FormalResearch.TypeTheory.PureTypeSystem.Logic", "FormalResearch.TypeTheory.PureTypeSystem.Channels", "FormalResearch.TypeTheory.PureTypeSystem.Relations", "FormalResearch.TypeTheory.PureTypeSystem.Pairs", "FormalResearch.TypeTheory.PureTypeSystem.Relational", "FormalResearch.TypeTheory.PureTypeSystem.Specialization", "FormalResearch.TypeTheory.PureTypeSystem.Equivalence", "FormalResearch.TypeTheory.PureTypeSystem.Response", "FormalResearch.TypeTheory.PureTypeSystem.Diagonal", "FormalResearch.TypeTheory.PureTypeSystem.Normalization", "FormalResearch.TypeTheory.PureTypeSystem.MonomorphicNormalization"]
  for mod in env.header.moduleNames do
    logInfo m!"TT_IMPORT {mod}"
  for (name, info) in env.constants do
    if let some idx := env.getModuleIdxFor? name then
      let mod := env.header.moduleNames[idx.toNat]!
      if selected.contains mod.toString && !name.isInternal then
        let axioms ← Lean.collectAxioms name
        if axioms.contains ``sorryAx then
          throwError "Rejected sorryAx dependency: {name}"
        for axiomName in axioms do
          if !#[``propext, ``Classical.choice, ``Quot.sound].contains axiomName then
            throwError "Unadmitted axiom {axiomName} in {name}"
        if !profile.contains mod.toString then
          let record := Json.mkObj [
            ("name", toJson name.toString),
            ("module", toJson mod.toString),
            ("axioms", toJson (axioms.map Name.toString))]
          logInfo m!"TT_AUDIT {record.compress}"
          continue
        let kind := match info with
          | .thmInfo _ => "theorem"
          | .axiomInfo _ => "axiom"
          | .defnInfo _ => "definition"
          | .opaqueInfo _ => "opaque"
          | .inductInfo _ => "inductive"
          | .ctorInfo _ => "constructor"
          | .recInfo _ => "recursor"
          | .quotInfo _ => "quotient"
        let declarationType ← liftTermElabM <| PrettyPrinter.ppExpr info.type
        let mut definitionBody : Json := Json.null
        let mut kernelDefinition : Json := Json.null
        if #["FormalResearch.MathematicalTooling.Coverage.RevisedCoveringStatement",
            "FormalResearch.MathematicalTooling.Coverage.RevisedGCHStatement",
            "FormalResearch.MathematicalTooling.Coverage.RevisedPowerCandidate",
            "FormalResearch.MathematicalTooling.Coverage.RevisedPowerEquals",
            "FormalResearch.Construct.Envelope.EnvelopeValid",
            "FormalResearch.Construct.Envelope.Closed",
            "FormalResearch.Construct.OperationalRevoke.RecordValid",
            "FormalResearch.Construct.OperationalRevoke.StateValid",
            "FormalResearch.Construct.OperationalRevoke.EventValid",
            "FormalResearch.Construct.OperationalRevoke.HostMatches",
            "FormalResearch.Construct.OperationalRevoke.ScopeMatches",
            "FormalResearch.Construct.OperationalRevoke.Admission",
            "FormalResearch.Construct.OperationalRevoke.TokenValid",
            "FormalResearch.Construct.OperationalRevoke.KeyValid",
            "FormalResearch.Construct.OperationalRevoke.ScopeValid",
            "FormalResearch.Construct.OperationalRevoke.GrantDataValid",
            "FormalResearch.Construct.OperationalRevoke.TargetValid",
            "FormalResearch.PositiveAtlas.SourceProfileAtlas.sChart",
            "FormalResearch.PositiveAtlas.SourceProfileAtlas.tChart",
            "FormalResearch.PositiveAtlas.SourceProfileAtlas.denominator",
            "FormalResearch.PositiveAtlas.SourceProfileAtlas.sourceCoordinate",
            "FormalResearch.PositiveAtlas.SourceProfileAtlas.sDecoder",
            "FormalResearch.PositiveAtlas.SourceProfileAtlas.tDecoder",
            "FormalResearch.PositiveAtlas.CertificationSourceScale.family",
            "FormalResearch.TypeTheory.IntendedPTS.normalizationJurisdiction",
            "FormalResearch.TypeTheory.IntendedPTS.normalizationTranslation",
            "FormalResearch.TypeTheory.IntendedPTS.normalizationReplay",
            "FormalResearch.TypeTheory.IntendedPTS.monomorphicArrow",
            "OAI.PureTypeSystem.Legal",
            "OAI.PureTypeSystem.SystemWeaklyNormalizing",
            "OAI.PureTypeSystem.SystemStronglyNormalizing",
            "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.WireNormalization.PacketValid",
            "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.TagAssignmentValid"].contains name.toString then
          if let some value := info.value? then
            definitionBody := toJson (← liftTermElabM <| PrettyPrinter.ppExpr value).pretty
            kernelDefinition := toJson (reprStr value)
        let record := Json.mkObj [
          ("name", toJson name.toString),
          ("module", toJson mod.toString),
          ("kind", toJson kind),
          ("universe_parameters", toJson (info.levelParams.map Name.toString)),
          ("type", toJson declarationType.pretty),
          ("kernel_type_repr", toJson (reprStr info.type)),
          ("definition_body", definitionBody),
          ("kernel_definition_repr", kernelDefinition),
          ("axioms", toJson (axioms.map Name.toString))]
        logInfo m!"TT_DECL {record.compress}"
