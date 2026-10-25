# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Declarations.Variante967c7da48af2d6f66887274c245de17cf3ac2043ad6bff80b80b996186c4c39

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b57da17638db7dd0b62db395a8c0c4075865c571` · SHA-256 `e967c7da48af2d6f66887274c245de17cf3ac2043ad6bff80b80b996186c4c39`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.Construct.Envelope
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
import FormalResearch.PositiveAtlas.ObservationRepresentation
import FormalResearch.PositiveAtlas.ObservationRepresentationFixtures
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
import Lean.Util.CollectAxioms

open Lean Elab Command
set_option pp.universes true
set_option pp.fullNames true
run_cmd do
  let env ← getEnv
  let selected : Array String := #["FormalResearch.Construct.Envelope", "FormalResearch.MathematicalTooling.Certificates.Bound", "FormalResearch.MathematicalTooling.Certificates.Composition", "FormalResearch.MathematicalTooling.Coverage.BethCatalogue", "FormalResearch.MathematicalTooling.Coverage.Cardinal", "FormalResearch.MathematicalTooling.Coverage.CardinalCounterexamples", "FormalResearch.MathematicalTooling.Coverage.Finite", "FormalResearch.MathematicalTooling.Coverage.Ownership", "FormalResearch.MathematicalTooling.Coverage.Reconstruction", "FormalResearch.MathematicalTooling.Coverage.ReducedProduct", "FormalResearch.MathematicalTooling.Coverage.RevisedPower", "FormalResearch.MathematicalTooling.Coverage.SingularReconstruction", "FormalResearch.MathematicalTooling.Coverage.SingularReconstructionFixtures", "FormalResearch.MathematicalTooling.Coverage.UniverseBounds", "FormalResearch.MathematicalTooling.Reduction.FiniteHeight", "FormalResearch.MathematicalTooling.Reduction.Fixtures", "FormalResearch.MathematicalTooling.Reduction.Simulation", "FormalResearch.PositiveAtlas.ObservationRepresentation", "FormalResearch.PositiveAtlas.ObservationRepresentationFixtures", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.AdmissionDirect", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.AdmissionSource", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Assumptions", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.BridgeAdmissibility", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.BridgeFourier", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.BridgeMultiplier", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.BridgeNormalization", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CoordinationMemoryTargets", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CoordinationSupplement", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CoordinationTargets", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationAssembly", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationMoment", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationRegularity", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.DivisibilityPacking", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateCorrelation", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateKernelMoments", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateLogSampling", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateLogSamplingIntegrals", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMertensAbel", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMertensResidual", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMobiusIntegerTransport", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMobiusSplit", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMomentReflection", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimatePrimeSmoothDefect", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateReduction", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateSourceMobiusKernel", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateTailReduction", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateTwoMomentSampling", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateTwoMomentSamplingBound", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.FactorState", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.GaloisObservation", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.HistoricalContinuity", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Intuition", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.AssemblyFixtures", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.CausalFixtures", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.Congruence", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.CriticalInvolution", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.DerivationSemantics", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.Descent", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.Fixtures", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.FullDeclaration", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.FullFixtures", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.Ledger", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.OwnershipReconstruction", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.RolesGrammar", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.Snapshot", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.Syntax", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.TagMachine", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.TagReduction", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.Targets", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.TypedReconstruction", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.WireNormalization", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.NoGo", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Notion", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Observation", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.PackingObservations", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.PrimePowerDescent", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ProofHorizon", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.RHAdapter", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Resources", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SourceBoundCertificates", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SourceCorrectionEstimate", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SourceOwnership", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SourcePlancherel", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SpectralObservation", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Towers", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Trust", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.WeightReflection", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroEta", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroObject", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroShellCount", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroShellCountFixtures", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroShellGrowth", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroSideTargets", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroSmoothing", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroSmoothingDerivative", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroSmoothingL2", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroSmoothingL2Core", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroSmoothingLogarithmic", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroSmoothingMultiplier", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroSmoothingTransform", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroSummability", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroTestRegularity", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroTransform"]
  let profile : Array String := #["FormalResearch.Construct.Envelope", "FormalResearch.MathematicalTooling.Coverage.Reconstruction", "FormalResearch.MathematicalTooling.Coverage.Ownership", "FormalResearch.MathematicalTooling.Coverage.Finite", "FormalResearch.MathematicalTooling.Coverage.Cardinal", "FormalResearch.MathematicalTooling.Coverage.SingularReconstruction", "FormalResearch.MathematicalTooling.Coverage.UniverseBounds", "FormalResearch.MathematicalTooling.Coverage.CardinalCounterexamples", "FormalResearch.MathematicalTooling.Coverage.BethCatalogue", "FormalResearch.MathematicalTooling.Coverage.ReducedProduct", "FormalResearch.MathematicalTooling.Coverage.RevisedPower", "FormalResearch.MathematicalTooling.Coverage.SingularReconstructionFixtures", "FormalResearch.MathematicalTooling.Reduction.Simulation", "FormalResearch.MathematicalTooling.Reduction.FiniteHeight", "FormalResearch.MathematicalTooling.Reduction.Fixtures", "FormalResearch.MathematicalTooling.Certificates.Bound", "FormalResearch.MathematicalTooling.Certificates.Composition", "FormalResearch.PositiveAtlas.ObservationRepresentation", "FormalResearch.PositiveAtlas.ObservationRepresentationFixtures", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.OwnershipReconstruction", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.TagReduction", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.TagMachine", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.DerivationSemantics", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.TypedReconstruction", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.WireNormalization", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SourceOwnership", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SourceBoundCertificates"]
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
```
