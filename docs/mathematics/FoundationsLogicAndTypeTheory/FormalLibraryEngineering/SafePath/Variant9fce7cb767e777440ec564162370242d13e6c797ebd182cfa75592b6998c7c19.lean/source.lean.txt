-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SafeRelPath.Variantfb3ac7eab87ed9412b7ee2d12ae09910f041a2284c4d32ab27a3fa4b6ca20038","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fb3ac7eab87ed9412b7ee2d12ae09910f041a2284c4d32ab27a3fa4b6ca20038","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.SafeRelPath.Variantfb3ac7eab87ed9412b7ee2d12ae09910f041a2284c4d32ab27a3fa4b6ca20038","mathematical_subject":"Foundations.Unclassified","original_sha256":"fb3ac7eab87ed9412b7ee2d12ae09910f041a2284c4d32ab27a3fa4b6ca20038","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Archive/SafePath.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Basic

/-!
# Folder.Archive.SafePath

Radiation role: archive-manifest
BinaryMatrix spine: This module constrains archive paths before payloads are materialized as BinaryMatrix layers.
Ontology: archive.safe_path
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SafeRelPath.Variantfb3ac7eab87ed9412b7ee2d12ae09910f041a2284c4d32ab27a3fa4b6ca20038

namespace Folder
namespace Archive

structure SafeRelPath where
  value : String
  not_empty : value ≠ ""
  no_dotdot : ¬ ".." ∈ value.splitOn "/"
  not_absolute : ¬ value.startsWith "/"
  no_empty_components : ∀ c ∈ value.splitOn "/", c ≠ ""

theorem safeRelPath_no_dotdot
    (p : SafeRelPath) :
    ¬ ".." ∈ p.value.splitOn "/" :=
  p.no_dotdot

theorem safeRelPath_not_empty
    (p : SafeRelPath) :
    p.value ≠ "" :=
  p.not_empty

end Archive
end Folder
