-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IntervalTailDescriptor.Variantc10df0cdb473bc28884f3863435b932aa9d9ceb706cefca47817d8f891e22964","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c10df0cdb473bc28884f3863435b932aa9d9ceb706cefca47817d8f891e22964","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.IntervalTailDescriptor.Variantc10df0cdb473bc28884f3863435b932aa9d9ceb706cefca47817d8f891e22964","mathematical_subject":"Foundations.Unclassified","original_sha256":"c10df0cdb473bc28884f3863435b932aa9d9ceb706cefca47817d8f891e22964","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/SemiLocalDefect/QSeries/IntervalTail.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.UnknownLedger


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IntervalTailDescriptor.Variantc10df0cdb473bc28884f3863435b932aa9d9ceb706cefca47817d8f891e22964

namespace Mathematics.SemiLocalDefect.QSeries

structure IntervalTailDescriptor where
  tailRef : String
  intervalRef : String
  positivityCertificateRef : Option String
  status : OpenBridgeStatus :=
    openBridgeStatus .intervalTail

end Mathematics.SemiLocalDefect.QSeries
