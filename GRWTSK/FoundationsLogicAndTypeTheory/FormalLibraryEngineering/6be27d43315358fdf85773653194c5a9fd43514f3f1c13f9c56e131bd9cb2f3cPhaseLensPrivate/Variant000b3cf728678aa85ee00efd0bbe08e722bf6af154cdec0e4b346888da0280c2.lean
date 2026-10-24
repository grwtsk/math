-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FormalResearch.Variant6be27d43315358fdf85773653194c5a9fd43514f3f1c13f9c56e131bd9cb2f3c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6be27d43315358fdf85773653194c5a9fd43514f3f1c13f9c56e131bd9cb2f3c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.FormalResearch.Variant6be27d43315358fdf85773653194c5a9fd43514f3f1c13f9c56e131bd9cb2f3c","mathematical_subject":"Foundations.Unclassified","original_sha256":"6be27d43315358fdf85773653194c5a9fd43514f3f1c13f9c56e131bd9cb2f3c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/6b/6be27d43315358fdf85773653194c5a9fd43514f3f1c13f9c56e131bd9cb2f3c--PhaseLensPrivateNames.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FormalResearch.Variant6be27d43315358fdf85773653194c5a9fd43514f3f1c13f9c56e131bd9cb2f3c

open Lean Elab Command
elab "phase_audit_private " input:str : command => do
  let name := input.getString.splitOn "." |>.foldl (fun n s =>
    match s.toNat? with
    | some k => Name.num n k
    | none => Name.str n s) Name.anonymous
  let id := mkIdent name
  elabCommand (← `(command| #print $id:ident))
  elabCommand (← `(command| #print axioms $id:ident))

phase_audit_private "_private.FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateHigherPrimePowers.0.FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateHigherPrimePowers.sqrt_nat_pow"
phase_audit_private "_private.FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateHigherPrimePowers.0.FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateHigherPrimePowers.log_div_sqrt_cube_le"
phase_audit_private "_private.FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateHigherPrimePowers.0.FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateHigherPrimePowers.prime_inv_sqrt_le_three_quarters"
phase_audit_private "_private.FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateHigherPrimePowers.0.FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateHigherPrimePowers.higher_prime_weight_le"
