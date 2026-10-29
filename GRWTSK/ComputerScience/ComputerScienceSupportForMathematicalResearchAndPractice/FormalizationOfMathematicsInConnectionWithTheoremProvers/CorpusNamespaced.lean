-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CarrierModule.Variant90345bce23c71713a8c71221d1a30af9866fb054b1ab3d1fb68a099c2b0d11d7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"90345bce23c71713a8c71221d1a30af9866fb054b1ab3d1fb68a099c2b0d11d7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.CarrierModule.Variant90345bce23c71713a8c71221d1a30af9866fb054b1ab3d1fb68a099c2b0d11d7","mathematical_subject":"Foundations.Unclassified","original_sha256":"90345bce23c71713a8c71221d1a30af9866fb054b1ab3d1fb68a099c2b0d11d7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Boolean/Corpus.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Discovery.IdeasCorpus

/-!
# Boolean corpus module addresses

These are exact router prefixes for the four Boolean modules retained in
`ideas.md`.  They carry provenance only.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CarrierModule.Variant90345bce23c71713a8c71221d1a30af9866fb054b1ab3d1fb68a099c2b0d11d7

namespace Mathematics.Boolean.Corpus

open Mathematics
open Mathematics.Discovery

def carrierModule : CorpusModuleAddress where
  corpus := ideasCorpus
  moduleOrdinal := 27
  modulePath := "Algebra.lean"
  modulePath_nonempty := by decide
  moduleDigest := {
    value := "802b028e0803892f788fcadb0f2af0bfa96ab776e5243901539962ab8e650616"
  }
  moduleDigest_valid := by
    unfold Digest.Valid
    native_decide

def boolModule : CorpusModuleAddress where
  corpus := ideasCorpus
  moduleOrdinal := 28
  modulePath := "Algebra/Bool.lean"
  modulePath_nonempty := by decide
  moduleDigest := {
    value := "b6de79d6ee570d61d1fac4af2f6e34de572da714ccce4545e6ad09b6ae50204b"
  }
  moduleDigest_valid := by
    unfold Digest.Valid
    native_decide

def formulaModule : CorpusModuleAddress where
  corpus := ideasCorpus
  moduleOrdinal := 29
  modulePath := "Algebra/Formula.lean"
  modulePath_nonempty := by decide
  moduleDigest := {
    value := "bc2045c5e516f71dad8574fbbde071bf6a91693b7416a6164754ba2375fa807f"
  }
  moduleDigest_valid := by
    unfold Digest.Valid
    native_decide

def lawsModule : CorpusModuleAddress where
  corpus := ideasCorpus
  moduleOrdinal := 30
  modulePath := "Algebra/Laws.lean"
  modulePath_nonempty := by decide
  moduleDigest := {
    value := "66ef8d5aaabd10c06bebd757f25c24fb23fe731161972dc62a9a1a83bec21aca"
  }
  moduleDigest_valid := by
    unfold Digest.Valid
    native_decide

end Mathematics.Boolean.Corpus
