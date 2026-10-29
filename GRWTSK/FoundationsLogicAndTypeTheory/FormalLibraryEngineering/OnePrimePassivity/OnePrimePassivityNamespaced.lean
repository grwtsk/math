-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OnePrimePassivityDescriptor.Variant726a13745fcd26ebad4234374e0f23259a250ab35b842867a4aa594fb18ba470","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"726a13745fcd26ebad4234374e0f23259a250ab35b842867a4aa594fb18ba470","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.OnePrimePassivityDescriptor.Variant726a13745fcd26ebad4234374e0f23259a250ab35b842867a4aa594fb18ba470","mathematical_subject":"Foundations.Unclassified","original_sha256":"726a13745fcd26ebad4234374e0f23259a250ab35b842867a4aa594fb18ba470","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/SemiLocalDefect/QSeries/OnePrimePassivity.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.UnknownLedger


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OnePrimePassivityDescriptor.Variant726a13745fcd26ebad4234374e0f23259a250ab35b842867a4aa594fb18ba470

namespace Mathematics.SemiLocalDefect.QSeries

structure OnePrimePassivityDescriptor where
  primeRef : String
  compressionRank : Nat
  exactCertificateRef : Option String
  status : OpenBridgeStatus :=
    openBridgeStatus .onePrimePassivity

end Mathematics.SemiLocalDefect.QSeries
