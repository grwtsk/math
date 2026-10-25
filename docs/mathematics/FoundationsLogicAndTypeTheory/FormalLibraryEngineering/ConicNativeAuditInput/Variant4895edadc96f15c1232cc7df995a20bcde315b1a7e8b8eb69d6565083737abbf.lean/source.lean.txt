import FormalResearch.PositiveAtlas.SourceAtlasConsumer
import Lean.Util.CollectAxioms

open Lean Elab Command
set_option pp.universes true
set_option pp.fullNames true
run_cmd do
  let env ← getEnv
  let selected : Array String := #["FormalResearch.PositiveAtlas.CertificationSourceScale", "FormalResearch.RiemannHypothesis.SourceKapitzaSignedReduction", "FormalResearch.RiemannHypothesis.SourceKapitzaCompensatedReadout", "FormalResearch.RiemannHypothesis.SourceCorrelationEnergy", "FormalResearch.RiemannHypothesis.SourceDerivativeEnergy", "FormalResearch.RiemannHypothesis.SourceDerivativeCoefficientBound", "FormalResearch.RiemannHypothesis.GevreyDerivativeEnergy", "FormalResearch.RiemannHypothesis.GevreyNormalization", "FormalResearch.RiemannHypothesis.GevreyProfile", "FormalResearch.RiemannHypothesis.GevreyPolynomial", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationRegularity", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization", "FormalResearch.RiemannHypothesis.SourcePairing", "FormalResearch.MathematicalTooling.Reflection.Interval", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.BridgeNormalization", "FormalResearch.RiemannHypothesis.SourceKapitzaReconstruction", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateKernelMoments", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMertensResidual", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationMoment", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMobiusIntegerTransport", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateSourceMobiusKernel", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMertensAbel", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMobiusSplit", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimatePrimeSmoothDefect", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.PrimePowerDescent", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateTailReduction", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateReduction", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationAssembly", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SourceCorrectionEstimate", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SourcePlancherel", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateCorrelation", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.AdmissionSource", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.BridgeMultiplier", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.BridgeAdmissibility", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.BridgeFourier", "FormalResearch.Analysis.ReciprocalKernel", "FormalResearch.Analysis.DigammaSeries", "FormalResearch.RiemannHypothesis.SourceContinuousHalfEnergy", "FormalResearch.RiemannHypothesis.SourceCausalEnergy", "FormalResearch.RiemannHypothesis.SourceMangoldtAbel", "FormalResearch.RiemannHypothesis.SourceFirstPrimeAbel", "FormalResearch.RiemannHypothesis.SourcePrimePowerPartition", "FormalResearch.RiemannHypothesis.SourcePrimeSquareMainTerm", "FormalResearch.RiemannHypothesis.SourceDiagonalMainTerm", "FormalResearch.RiemannHypothesis.SourceDiagonalShortWindow", "FormalResearch.RiemannHypothesis.SourceDiagonalPrimeAbel", "FormalResearch.RiemannHypothesis.WeightedPrimeAbel", "FormalResearch.RiemannHypothesis.WeightedPrimeMertens", "FormalResearch.RiemannHypothesis.SourceKapitzaEventBalance", "FormalResearch.RiemannHypothesis.SourceKapitzaSourceStorage", "FormalResearch.RiemannHypothesis.SourceKapitzaStorage", "FormalResearch.RiemannHypothesis.SourceKapitzaCycle", "FormalResearch.RiemannHypothesis.SourceKapitzaDiscrete", "FormalResearch.PositiveAtlas.CertificationEquivalence", "FormalResearch.PositiveAtlas.Certification", "FormalResearch.PositiveAtlas.SourceProfileAtlas", "FormalResearch.RiemannHypothesis.SourceScaleVariation", "FormalResearch.RiemannHypothesis.SourceHankelReflection", "FormalResearch.MathematicalTooling.Reflection.Polarization", "FormalResearch.PositiveAtlas.SourceAtlasConsumer", "FormalResearch.PositiveAtlas.SourceStorageDescent", "FormalResearch.PositiveAtlas.StorageDescent"]
  for expected in selected do
    if !(env.header.moduleNames.any fun mod => mod.toString == expected) then
      throwError "Conic source module absent from native closure: {expected}"
  let mut inspected : Nat := 0
  for (name, info) in env.constants do
    if let some idx := env.getModuleIdxFor? name then
      let mod := env.header.moduleNames[idx.toNat]!
      if selected.contains mod.toString then
        let axioms ← Lean.collectAxioms name
        if axioms.contains ``sorryAx then
          throwError "Rejected sorryAx dependency: {name}"
        for axiomName in axioms do
          if !#[``propext, ``Classical.choice, ``Quot.sound].contains axiomName then
            throwError "Unadmitted axiom {axiomName} in {name}"
        let declarationType ← liftTermElabM <| PrettyPrinter.ppExpr info.type
        let kind := match info with
          | .thmInfo _ => "theorem"
          | .axiomInfo _ => "axiom"
          | .defnInfo _ => "definition"
          | .opaqueInfo _ => "opaque"
          | .inductInfo _ => "inductive"
          | .ctorInfo _ => "constructor"
          | .recInfo _ => "recursor"
          | .quotInfo _ => "quotient"
        let mut definitionBody : Json := Json.null
        if #["FormalResearch.PositiveAtlas.SourceProfileAtlas.sChart",
            "FormalResearch.PositiveAtlas.SourceProfileAtlas.tChart",
            "FormalResearch.PositiveAtlas.SourceProfileAtlas.denominator",
            "FormalResearch.PositiveAtlas.SourceProfileAtlas.sourceCoordinate",
            "FormalResearch.PositiveAtlas.SourceProfileAtlas.sDecoder",
            "FormalResearch.PositiveAtlas.SourceProfileAtlas.tDecoder",
            "FormalResearch.PositiveAtlas.CertificationSourceScale.family"].contains name.toString then
          if let some value := info.value? then
            definitionBody := toJson (← liftTermElabM <| PrettyPrinter.ppExpr value).pretty
        let record := Json.mkObj [
          ("name", toJson name.toString),
          ("module", toJson mod.toString),
          ("kind", toJson kind),
          ("type", toJson declarationType.pretty),
          ("definition_body", definitionBody),
          ("axioms", toJson (axioms.map Name.toString))]
        logInfo m!"CONIC_AUDIT {record.compress}"
        inspected := inspected + 1
  logInfo m!"CONIC_AUDIT_COUNT {inspected}"
