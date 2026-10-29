-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TwoPrimeInteractionDescriptor.Varianta1d331aa28057dc9e7ef3ccdbf2603c5ec08df430ecc58b1f9d4cbf9c62ff0fc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a1d331aa28057dc9e7ef3ccdbf2603c5ec08df430ecc58b1f9d4cbf9c62ff0fc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.TwoPrimeInteractionDescriptor.Varianta1d331aa28057dc9e7ef3ccdbf2603c5ec08df430ecc58b1f9d4cbf9c62ff0fc","mathematical_subject":"Foundations.Unclassified","original_sha256":"a1d331aa28057dc9e7ef3ccdbf2603c5ec08df430ecc58b1f9d4cbf9c62ff0fc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/SemiLocalDefect/QSeries/TwoPrimeInteraction.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.UnknownLedger


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TwoPrimeInteractionDescriptor.Varianta1d331aa28057dc9e7ef3ccdbf2603c5ec08df430ecc58b1f9d4cbf9c62ff0fc

namespace Mathematics.SemiLocalDefect.QSeries

structure TwoPrimeInteractionDescriptor where
  firstPrimeRef : String
  secondPrimeRef : String
  compressionRank : Nat
  signCertificateRef : Option String
  status : OpenBridgeStatus :=
    openBridgeStatus .twoPrimeInteraction

end Mathematics.SemiLocalDefect.QSeries
