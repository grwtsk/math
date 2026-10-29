-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MonomorphicNormalization.Variant4d778ab774452a3486a98b80659651bcc72778205e244799ec100f247f2a5ad3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4d778ab774452a3486a98b80659651bcc72778205e244799ec100f247f2a5ad3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.MonomorphicNormalization.Variant4d778ab774452a3486a98b80659651bcc72778205e244799ec100f247f2a5ad3","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"4d778ab774452a3486a98b80659651bcc72778205e244799ec100f247f2a5ad3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.worktrees/type-theory-reconstruction/artifacts/type-theory/normalization/port-4.33/FullNormalizationAudit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.TypeTheory.PureTypeSystem.MonomorphicNormalization
import FormalResearch.TypeTheory.PureTypeSystem.BetaFixtures
import Lean.Util.CollectAxioms


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MonomorphicNormalization.Variant4d778ab774452a3486a98b80659651bcc72778205e244799ec100f247f2a5ad3

#check OAI.PureTypeSystem.SystemWeaklyNormalizing
#check OAI.PureTypeSystem.SystemStronglyNormalizing
#check OAI.PureTypeSystem.interfaces_of_exclusion
#check OAI.PureTypeSystem.finite_normalization_of_exclusion
#check OAI.PureTypeSystem.relational_exclusion
#check OAI.PureTypeSystem.weak_implies_strong
#check OAI.PureTypeSystem.Labelled.WitnessFamily.exists_family
#check OAI.PureTypeSystem.Labelled.WitnessFamily.terminal_network
#check OAI.PureTypeSystem.Labelled.LogicSetup.exists_setup
#check OAI.FiniteClassical.Derives.branch
#check OAI.FiniteClassical.Derives.tautology
#check OAI.PureTypeSystem.all_ground_eq_top
#check OAI.PureTypeSystem.ActualPlain.dependency_wellFounded
#check FormalResearch.TypeTheory.IntendedPTS.monomorphic_arrow_weakly_normalizing
#check FormalResearch.TypeTheory.IntendedPTS.monomorphic_arrow_strongly_normalizing
#check FormalResearch.TypeTheory.IntendedPTS.legal_preserved
#check FormalResearch.TypeTheory.IntendedPTS.admitted_normalization_at_fuel
#check FormalResearch.TypeTheory.IntendedPTS.admitted_normalization
#check FormalResearch.TypeTheory.IntendedPTS.admitted_conversion_at_fuel
#check FormalResearch.TypeTheory.IntendedPTS.admitted_conversion
#check FormalResearch.TypeTheory.IntendedPTS.normalizationJurisdiction
#check FormalResearch.TypeTheory.IntendedPTS.normalization_successful_descent
#check FormalResearch.TypeTheory.IntendedPTS.normalization_descent_statement
#print axioms OAI.PureTypeSystem.interfaces_of_exclusion
#print axioms OAI.PureTypeSystem.finite_normalization_of_exclusion
#print axioms OAI.PureTypeSystem.relational_exclusion
#print axioms OAI.PureTypeSystem.weak_implies_strong
#print axioms OAI.PureTypeSystem.Labelled.WitnessFamily.exists_family
#print axioms OAI.PureTypeSystem.Labelled.WitnessFamily.terminal_network
#print axioms OAI.PureTypeSystem.Labelled.LogicSetup.exists_setup
#print axioms OAI.FiniteClassical.Derives.branch
#print axioms OAI.FiniteClassical.Derives.tautology
#print axioms OAI.PureTypeSystem.all_ground_eq_top
#print axioms OAI.PureTypeSystem.ActualPlain.dependency_wellFounded
#print axioms FormalResearch.TypeTheory.IntendedPTS.monomorphic_arrow_weakly_normalizing
#print axioms FormalResearch.TypeTheory.IntendedPTS.monomorphic_arrow_strongly_normalizing
#print axioms FormalResearch.TypeTheory.IntendedPTS.legal_preserved
#print axioms FormalResearch.TypeTheory.IntendedPTS.admitted_normalization_at_fuel
#print axioms FormalResearch.TypeTheory.IntendedPTS.admitted_normalization
#print axioms FormalResearch.TypeTheory.IntendedPTS.admitted_conversion_at_fuel
#print axioms FormalResearch.TypeTheory.IntendedPTS.admitted_conversion
#print axioms FormalResearch.TypeTheory.IntendedPTS.normalization_successful_descent
#print axioms FormalResearch.TypeTheory.IntendedPTS.normalization_descent_statement

open Lean Elab Command

set_option pp.explicit false in
set_option pp.fullNames true in
run_cmd do
  let env ← getEnv
  let selected : Array String := #["FormalResearch.TypeTheory.PureTypeSystem.Basic", "FormalResearch.TypeTheory.PureTypeSystem.Reduction", "FormalResearch.TypeTheory.PureTypeSystem.Typing", "FormalResearch.TypeTheory.PureTypeSystem.Restriction", "FormalResearch.TypeTheory.PureTypeSystem.Contexts", "FormalResearch.TypeTheory.PureTypeSystem.Candidates", "FormalResearch.TypeTheory.PureTypeSystem.Profiles", "FormalResearch.TypeTheory.PureTypeSystem.Potential", "FormalResearch.TypeTheory.PureTypeSystem.Interface", "FormalResearch.TypeTheory.PureTypeSystem.Components", "FormalResearch.TypeTheory.PureTypeSystem.Signed", "FormalResearch.TypeTheory.PureTypeSystem.OneChild", "FormalResearch.TypeTheory.PureTypeSystem.Spaces", "FormalResearch.TypeTheory.PureTypeSystem.Plain", "FormalResearch.TypeTheory.PureTypeSystem.Values", "FormalResearch.TypeTheory.PureTypeSystem.Evaluation", "FormalResearch.TypeTheory.PureTypeSystem.Bounds", "FormalResearch.TypeTheory.PureTypeSystem.Congruence", "FormalResearch.TypeTheory.PureTypeSystem.Substitution", "FormalResearch.TypeTheory.PureTypeSystem.ObservationReduction", "FormalResearch.TypeTheory.PureTypeSystem.ObservationCandidates", "FormalResearch.TypeTheory.PureTypeSystem.Labelled", "FormalResearch.TypeTheory.PureTypeSystem.Wrappers", "FormalResearch.TypeTheory.PureTypeSystem.Logic", "FormalResearch.TypeTheory.PureTypeSystem.Channels", "FormalResearch.TypeTheory.PureTypeSystem.Relations", "FormalResearch.TypeTheory.PureTypeSystem.Pairs", "FormalResearch.TypeTheory.PureTypeSystem.Relational", "FormalResearch.TypeTheory.PureTypeSystem.Specialization", "FormalResearch.TypeTheory.PureTypeSystem.Equivalence", "FormalResearch.TypeTheory.PureTypeSystem.Response", "FormalResearch.TypeTheory.PureTypeSystem.Diagonal", "FormalResearch.TypeTheory.PureTypeSystem.Normalization", "FormalResearch.TypeTheory.PureTypeSystem.IntendedPTS", "FormalResearch.TypeTheory.PureTypeSystem.IndependentWN", "FormalResearch.TypeTheory.PureTypeSystem.BetaNext", "FormalResearch.TypeTheory.PureTypeSystem.BetaNormalizer", "FormalResearch.TypeTheory.PureTypeSystem.BetaFixtures", "FormalResearch.TypeTheory.PureTypeSystem.BetaDenotation", "FormalResearch.TypeTheory.PureTypeSystem.BetaConversion", "FormalResearch.TypeTheory.PureTypeSystem.MonomorphicNormalization"]
  for expected in selected do
    if !(env.header.moduleNames.any fun mod => mod.toString == expected) then
      throwError "Port module absent from native import closure: {expected}"
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
        let record := Json.mkObj [
          ("name", toJson name.toString),
          ("module", toJson mod.toString),
          ("kind", toJson kind),
          ("type", toJson declarationType.pretty),
          ("axioms", toJson (axioms.map Name.toString))]
        logInfo m!"PORT_AUDIT {record.compress}"
        inspected := inspected + 1
  logInfo m!"PORT_AUDIT_COUNT {inspected}"
