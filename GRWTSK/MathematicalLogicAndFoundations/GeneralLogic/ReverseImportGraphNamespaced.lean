-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ReverseImports.Variantf49910b5253d32f48beacceb03c010c2c857f571137ed67fc0aadb3fcc941088","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f49910b5253d32f48beacceb03c010c2c857f571137ed67fc0aadb3fcc941088","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.ReverseImports.Variantf49910b5253d32f48beacceb03c010c2c857f571137ed67fc0aadb3fcc941088","mathematical_subject":"Foundations.Unclassified","original_sha256":"f49910b5253d32f48beacceb03c010c2c857f571137ed67fc0aadb3fcc941088","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Incremental/ReverseImportGraph.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Incremental.ImportGraph


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ReverseImports.Variantf49910b5253d32f48beacceb03c010c2c857f571137ed67fc0aadb3fcc941088

namespace Surface
namespace Incremental

def reverseImports
    (G : ImportGraph)
    (I M : ModuleKey) : Prop :=
  imports G M I

theorem reverseImports_iff_imports
    (G : ImportGraph)
    (I M : ModuleKey) :
    reverseImports G I M ↔ imports G M I := by
  rfl

end Incremental
end Surface
