-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FiniteCertificate.Variant8e2174358b9381fec72690a701f6a227dd65a228af0ed1c8c3486298da9b9d30","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8e2174358b9381fec72690a701f6a227dd65a228af0ed1c8c3486298da9b9d30","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.FiniteCertificate.Variant8e2174358b9381fec72690a701f6a227dd65a228af0ed1c8c3486298da9b9d30","mathematical_subject":"Foundations.Unclassified","original_sha256":"8e2174358b9381fec72690a701f6a227dd65a228af0ed1c8c3486298da9b9d30","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/common-mean-20261004/finite-independent-review/Audit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FiniteCertificate


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FiniteCertificate.Variant8e2174358b9381fec72690a701f6a227dd65a228af0ed1c8c3486298da9b9d30

#print CommonMean20261004.FiniteCertificate.rationalTailBound
#print CommonMean20261004.FiniteCertificate.tailBound
#print CommonMean20261004.FiniteCertificate.FinitePremises
#print CommonMean20261004.FiniteCertificate.rationalTailBound_lt
#print axioms CommonMean20261004.FiniteCertificate.rationalTailBound_lt
#print CommonMean20261004.FiniteCertificate.rationalTailBound_nonneg
#print axioms CommonMean20261004.FiniteCertificate.rationalTailBound_nonneg
#print CommonMean20261004.FiniteCertificate.tailBound_lt
#print axioms CommonMean20261004.FiniteCertificate.tailBound_lt
#print CommonMean20261004.FiniteCertificate.tailBound_nonneg
#print axioms CommonMean20261004.FiniteCertificate.tailBound_nonneg
#print CommonMean20261004.FiniteCertificate.spectral_lower_of_head_tail
#print axioms CommonMean20261004.FiniteCertificate.spectral_lower_of_head_tail
#print CommonMean20261004.FiniteCertificate.residual_upper_of_spectral_lower
#print axioms CommonMean20261004.FiniteCertificate.residual_upper_of_spectral_lower
#print CommonMean20261004.FiniteCertificate.residual_negative_of_upper
#print axioms CommonMean20261004.FiniteCertificate.residual_negative_of_upper
#print CommonMean20261004.FiniteCertificate.finite_bounds
#print axioms CommonMean20261004.FiniteCertificate.finite_bounds

open Lean in
run_meta do
  let env ← getEnv
  for name in env.header.moduleNames do
    logInfo m!"CLOSURE_MODULE {name}"
