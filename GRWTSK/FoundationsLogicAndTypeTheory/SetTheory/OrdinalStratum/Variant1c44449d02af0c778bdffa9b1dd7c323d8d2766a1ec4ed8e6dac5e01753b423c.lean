-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.SetTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.OrdinalStratumAccessRef.Variant42ef50825aababd4b0b120870d6ab294d92c9d30fb6be5493c93dcec698436f8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"42ef50825aababd4b0b120870d6ab294d92c9d30fb6be5493c93dcec698436f8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.SetTheory.SourceCorpus.OrdinalStratumAccessRef.Variant42ef50825aababd4b0b120870d6ab294d92c9d30fb6be5493c93dcec698436f8","mathematical_subject":"Logic.SetTheory","original_sha256":"42ef50825aababd4b0b120870d6ab294d92c9d30fb6be5493c93dcec698436f8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/GraphAccess/Integration/OrdinalStratum.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-!
# Ordinal-stratum access references
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.OrdinalStratumAccessRef.Variant42ef50825aababd4b0b120870d6ab294d92c9d30fb6be5493c93dcec698436f8

namespace Mathematics.GraphAccess

structure OrdinalStratumAccessRef where
  cutRef : String
  stratumRef : String
  localRankRef : Option String
  persistentIdentityRef : String
deriving DecidableEq, Repr

end Mathematics.GraphAccess
