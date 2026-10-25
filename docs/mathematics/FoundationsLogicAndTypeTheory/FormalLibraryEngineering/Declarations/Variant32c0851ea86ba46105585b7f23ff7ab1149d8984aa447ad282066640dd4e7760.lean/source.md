# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Declarations.Variant32c0851ea86ba46105585b7f23ff7ab1149d8984aa447ad282066640dd4e7760

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b0c7e67cf38bdd10f01f8bed9ec49b2144d44d2f` · SHA-256 `a2ff10a96825670c34254db57511aa44b2712fa51ba01510434c0bb529c86d1e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Reconstruction.Variant92a97b6fe975c3acc4dc80c41d409b498bbe4f4aa6364680574046f9ee5bdd48","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"92a97b6fe975c3acc4dc80c41d409b498bbe4f4aa6364680574046f9ee5bdd48","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceOrganization.SourceCorpus.Reconstruction.Variant92a97b6fe975c3acc4dc80c41d409b498bbe4f4aa6364680574046f9ee5bdd48","mathematical_subject":"MathematicalTooling.SourceOrganization","original_sha256":"92a97b6fe975c3acc4dc80c41d409b498bbe4f4aa6364680574046f9ee5bdd48","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.worktrees/type-theory-reconstruction/artifacts/type-theory/export-first-26/Declarations.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.MathematicalTooling.Coverage.Reconstruction
import FormalResearch.MathematicalTooling.Coverage.Ownership
import FormalResearch.MathematicalTooling.Coverage.Finite
import FormalResearch.MathematicalTooling.Coverage.Cardinal
import FormalResearch.MathematicalTooling.Coverage.SingularReconstruction
import FormalResearch.MathematicalTooling.Coverage.UniverseBounds
import FormalResearch.MathematicalTooling.Coverage.CardinalCounterexamples
import FormalResearch.MathematicalTooling.Coverage.BethCatalogue
import FormalResearch.MathematicalTooling.Coverage.ReducedProduct
import FormalResearch.MathematicalTooling.Coverage.RevisedPower
import FormalResearch.MathematicalTooling.Coverage.SingularReconstructionFixtures
import FormalResearch.MathematicalTooling.Reduction.Simulation
import FormalResearch.MathematicalTooling.Reduction.FiniteHeight
import FormalResearch.MathematicalTooling.Reduction.Fixtures
import FormalResearch.MathematicalTooling.Certificates.Bound
import FormalResearch.MathematicalTooling.Certificates.Composition
import FormalResearch.PositiveAtlas.ObservationRepresentation
import FormalResearch.PositiveAtlas.ObservationRepresentationFixtures
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.OwnershipReconstruction
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.TagReduction
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.TagMachine
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.DerivationSemantics
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.TypedReconstruction
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.WireNormalization
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SourceOwnership
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SourceBoundCertificates
import Lean.Util.CollectAxioms


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Reconstruction.Variant92a97b6fe975c3acc4dc80c41d409b498bbe4f4aa6364680574046f9ee5bdd48

open Lean Elab Command
set_option pp.universes true
set_option pp.fullNames true
run_cmd do
  let env ← getEnv
  let selected : Array String := #["FormalResearch.MathematicalTooling.Coverage.Reconstruction", "FormalResearch.MathematicalTooling.Coverage.Ownership", "FormalResearch.MathematicalTooling.Coverage.Finite", "FormalResearch.MathematicalTooling.Coverage.Cardinal", "FormalResearch.MathematicalTooling.Coverage.SingularReconstruction", "FormalResearch.MathematicalTooling.Coverage.UniverseBounds", "FormalResearch.MathematicalTooling.Coverage.CardinalCounterexamples", "FormalResearch.MathematicalTooling.Coverage.BethCatalogue", "FormalResearch.MathematicalTooling.Coverage.ReducedProduct", "FormalResearch.MathematicalTooling.Coverage.RevisedPower", "FormalResearch.MathematicalTooling.Coverage.SingularReconstructionFixtures", "FormalResearch.MathematicalTooling.Reduction.Simulation", "FormalResearch.MathematicalTooling.Reduction.FiniteHeight", "FormalResearch.MathematicalTooling.Reduction.Fixtures", "FormalResearch.MathematicalTooling.Certificates.Bound", "FormalResearch.MathematicalTooling.Certificates.Composition", "FormalResearch.PositiveAtlas.ObservationRepresentation", "FormalResearch.PositiveAtlas.ObservationRepresentationFixtures", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.OwnershipReconstruction", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.TagReduction", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.TagMachine", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.DerivationSemantics", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.TypedReconstruction", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.WireNormalization", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SourceOwnership", "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SourceBoundCertificates"]
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
