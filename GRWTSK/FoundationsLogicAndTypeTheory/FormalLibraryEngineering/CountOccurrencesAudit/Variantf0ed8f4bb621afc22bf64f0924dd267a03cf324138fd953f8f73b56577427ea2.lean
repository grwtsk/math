-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CountOccurrences.Variante4e4e61d9c71f001aac1c66f022d846adab167bb0097a5e49068d24985cc8f9c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e4e4e61d9c71f001aac1c66f022d846adab167bb0097a5e49068d24985cc8f9c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.CountOccurrences.Variante4e4e61d9c71f001aac1c66f022d846adab167bb0097a5e49068d24985cc8f9c","mathematical_subject":"Foundations.Unclassified","original_sha256":"e4e4e61d9c71f001aac1c66f022d846adab167bb0097a5e49068d24985cc8f9c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/common-mean-stieltjes-20261004/count-audit/CountOccurrencesAudit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import scratch.common_mean_stieltjes_20261004.CountOccurrences

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CountOccurrences.Variante4e4e61d9c71f001aac1c66f022d846adab167bb0097a5e49068d24985cc8f9c

#print CommonMeanStieltjes.PositiveOccurrenceWindow
#print CommonMeanStieltjes.PositiveCountFibres
#check CommonMeanStieltjes.positiveOccurrenceWindowEquiv
#print axioms CommonMeanStieltjes.positiveOccurrenceWindowEquiv
#check CommonMeanStieltjes.positive_occurrence_window_finite
#print axioms CommonMeanStieltjes.positive_occurrence_window_finite
#check CommonMeanStieltjes.positive_occurrence_window_card_eq_count
#print axioms CommonMeanStieltjes.positive_occurrence_window_card_eq_count
open Lean in
run_meta do
  let env ← getEnv
  for name in env.header.moduleNames do
    logInfo m!"CLOSURE_MODULE {name}"
