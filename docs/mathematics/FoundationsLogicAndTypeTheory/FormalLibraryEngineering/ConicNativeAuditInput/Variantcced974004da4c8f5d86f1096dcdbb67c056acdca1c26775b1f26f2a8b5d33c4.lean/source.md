# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ConicNativeAuditInput.Variantcced974004da4c8f5d86f1096dcdbb67c056acdca1c26775b1f26f2a8b5d33c4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `66ba4d2436dbd73784c05f603f6e57e858bb296e` · SHA-256 `61430464b380437f69b4f76d3a80f7edd2dcf19a377c5eeee1e9e76f0db8e25f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SourceAtlasConsumer.Variant4895edadc96f15c1232cc7df995a20bcde315b1a7e8b8eb69d6565083737abbf","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4895edadc96f15c1232cc7df995a20bcde315b1a7e8b8eb69d6565083737abbf","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceOrganization.SourceCorpus.SourceAtlasConsumer.Variant4895edadc96f15c1232cc7df995a20bcde315b1a7e8b8eb69d6565083737abbf","mathematical_subject":"MathematicalTooling.SourceOrganization","original_sha256":"4895edadc96f15c1232cc7df995a20bcde315b1a7e8b8eb69d6565083737abbf","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.worktrees/type-theory-reconstruction/artifacts/type-theory/atlas/conic-staging-20261007T225928Z/ConicNativeAudit.input.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.PositiveAtlas.SourceAtlasConsumer
import Lean.Util.CollectAxioms


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SourceAtlasConsumer.Variant4895edadc96f15c1232cc7df995a20bcde315b1a7e8b8eb69d6565083737abbf

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
```
